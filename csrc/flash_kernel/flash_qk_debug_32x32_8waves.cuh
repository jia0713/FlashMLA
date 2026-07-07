#pragma once

#include <cuda.h>

#include <cute/algorithm/copy.hpp>

#include "block_info.h"
#include "kernel_traits.h"
#include "utils.h"

namespace flash {

using namespace cute;

template<typename Kernel_traits, typename Params, bool DoSoftmax>
__global__ void qk_debug_32x32_8waves_kernel(const Params params, float *__restrict__ out) {
    using Element = typename Kernel_traits::Element;
    using ElementAccum = typename Kernel_traits::ElementAccum;
    using index_t = typename Kernel_traits::index_t;

    extern __shared__ char smem_[];

    const int tidx = threadIdx.x;
    const int lane_idx = tidx % 64;
    const int qk_wave = tidx / 64;

    constexpr int kBlockM = 32;
    constexpr int kBlockN = 32;
    constexpr int kHeadDim = Kernel_traits::kHeadDim;

    static_assert(Kernel_traits::kBlockM == kBlockM);
    static_assert(Kernel_traits::kBlockN == kBlockN);
    static_assert(Kernel_traits::kNWarps == 8);
    static_assert(Kernel_traits::Num_Stages == 1);
    static_assert(Kernel_traits::Share_Q_K_smem && Kernel_traits::Is_Q_in_regs);

    const int bidb = blockIdx.x;
    const int bidh = blockIdx.y;

    const BlockInfo</*Varlen=*/true> binfo(params, bidb);
    if (binfo.actual_seqlen_q < kBlockM || binfo.actual_seqlen_k < kBlockN) { return; }

    const index_t row_offset_q = binfo.q_offset(params.q_batch_stride, params.q_row_stride, bidb)
        + bidh * params.q_head_stride;
    const int *block_table = params.block_table == nullptr ? nullptr : params.block_table + bidb * params.block_table_batch_stride;
    const index_t row_offset_k = (bidh / params.h_h_k_ratio) * params.k_head_stride;

    Tensor gQ = make_tensor(make_gmem_ptr(reinterpret_cast<Element *>(params.q_ptr) + row_offset_q),
                            Shape<Int<kBlockM>, Int<kHeadDim>>{},
                            make_stride(params.q_row_stride, _1{}));
    Tensor gK = make_tensor(make_gmem_ptr(reinterpret_cast<Element *>(params.k_ptr) + row_offset_k),
                            Shape<Int<kBlockN>, Int<kHeadDim>>{},
                            make_stride(params.k_row_stride, _1{}));

    Tensor sQ = make_tensor(make_smem_ptr(reinterpret_cast<Element *>(smem_)),
                            typename Kernel_traits::SmemLayoutQ{});
    Tensor sK = make_tensor(sQ.data(), typename Kernel_traits::SmemLayoutK424{});
    ElementAccum *sS = reinterpret_cast<ElementAccum *>(smem_ + Kernel_traits::kSmemKSize);
    ElementAccum *sRowMax = sS + kBlockM * kBlockN;
    ElementAccum *sRowSum = sRowMax + kBlockM;

    typename Kernel_traits::GmemTiledCopyB64 gmem_tiled_copy_Q;
    auto gmem_thr_copy_Q = gmem_tiled_copy_Q.get_thread_slice(tidx);
    Tensor tQgQ = gmem_thr_copy_Q.partition_S(gQ);
    Tensor tQsQ = gmem_thr_copy_Q.partition_D(sQ);

    Tensor cQ = make_identity_tensor(make_shape(size<0>(sQ), size<1>(sQ)));
    Tensor tQcQ = gmem_thr_copy_Q.partition_S(cQ);

    Tensor tQrQ = make_fragment_like(tQgQ);
    flash::copy_b64</*Is_even_MN=*/true, /*Is_even_K=*/true>(tQgQ, tQrQ, tQcQ, params.d, kBlockM);
    cute::copy(tQrQ, tQsQ);
    flash::sync_threads();

    using TiledMmaQK = TiledMMA<
        typename Kernel_traits::MMA_Atom_QK,
        Layout<Shape<_2, _1, _1>>,
        typename Kernel_traits::ValLayoutMNK>;

    const int tidx_mma_s = tidx & 0x7F;
    TiledMmaQK tiled_mma_qk;
    auto thr_mma_qk = tiled_mma_qk.get_thread_slice(tidx_mma_s);
    const int k_col_block = qk_wave / 2;
    const int sK_col_offset = k_col_block * 16;
    Tensor sK_for_mma = make_tensor(sK.data() + sK.layout()(sK_col_offset, 0, 0),
                                    typename Kernel_traits::SmemLayoutK424{});
    Tensor sK_tile = local_tile(sK_for_mma(_, _, 0), Shape<Int<16>, Int<kHeadDim>>{}, make_coord(0, 0));
    Tensor tSrQ = thr_mma_qk.partition_fragment_A(sQ);
    Tensor tSrK = thr_mma_qk.partition_fragment_B(sK_tile);
    Tensor acc_s = partition_fragment_C(tiled_mma_qk, Shape<Int<kBlockM>, Int<16>>{});
    Tensor cS = make_identity_tensor(Shape<Int<kBlockM>, Int<16>>{});
    Tensor tScS = thr_mma_qk.partition_C(cS);
    clear(acc_s);

    auto smem_tiled_copy_Q = make_tiled_copy_A(typename Kernel_traits::UniversalCopyAtomB64{}, tiled_mma_qk);
    auto smem_thr_copy_Q = smem_tiled_copy_Q.get_thread_slice(tidx_mma_s);
    Tensor tSsQ = smem_thr_copy_Q.partition_S(sQ);
    if (qk_wave < 4) {
        cute::copy(smem_tiled_copy_Q, tSsQ, tSrQ);
    }
    flash::sync_threads();

    typename Kernel_traits::GmemTiledCopyB64 gmem_tiled_copy_K;
    auto gmem_thr_copy_K = gmem_tiled_copy_K.get_thread_slice(tidx);
    Tensor tKgK = gmem_thr_copy_K.partition_S(gK);
    Tensor tKsK = gmem_thr_copy_K.partition_D(sK);
    Tensor cK = make_identity_tensor(make_shape(size<0>(sK), size<1>(sK)));
    Tensor tKcK = gmem_thr_copy_K.partition_S(cK);

    Tensor tKrK = make_fragment_like(tKgK);
    flash::copy_b64_page_one<Kernel_traits, /*Is_even_MN=*/true, /*Is_even_K=*/true>(
        gK, tKgK, tKrK, tKcK, params.d, 0,
        block_table, params.k_batch_stride, params.k_row_stride, params.page_block_size, kBlockN);
    cute::copy(tKrK, tKsK);
    flash::sync_threads();

    auto smem_tiled_copy_K = make_tiled_copy_B(typename Kernel_traits::UniversalCopyAtomB64{}, tiled_mma_qk);
    auto smem_thr_copy_K = smem_tiled_copy_K.get_thread_slice(tidx_mma_s);
    Tensor tSsK = smem_thr_copy_K.partition_S(sK_tile);

    if (qk_wave < 4) {
        flash::gemm</*A_in_regs=*/true>(
            acc_s, tSrQ, tSrK, tSsQ, tSsK, tiled_mma_qk, smem_tiled_copy_Q, smem_tiled_copy_K,
            smem_thr_copy_Q, smem_thr_copy_K);

        #pragma unroll
        for (int mi = 0; mi < size<1>(acc_s); ++mi) {
            #pragma unroll
            for (int nj = 0; nj < size<2>(acc_s); ++nj) {
                #pragma unroll
                for (int j = 0; j < size<0>(acc_s); ++j) {
                    const int row = get<0>(tScS(j, mi, nj));
                    const int col = sK_col_offset + get<1>(tScS(j, mi, nj));
                    sS[row * kBlockN + col] = acc_s(j, mi, nj);
                }
            }
        }
    }
    flash::sync_threads();

    if constexpr (DoSoftmax) {
        #pragma unroll
        for (int row_group = 0; row_group < 4; ++row_group) {
            const int row = row_group * Kernel_traits::kNWarps + qk_wave;

            if (lane_idx == 0) {
                ElementAccum row_max = sS[row * kBlockN];
                #pragma unroll
                for (int col = 1; col < kBlockN; ++col) {
                    row_max = max(row_max, sS[row * kBlockN + col]);
                }

                ElementAccum row_sum = 0.f;
                #pragma unroll
                for (int col = 0; col < kBlockN; ++col) {
                    row_sum += __builtin_exp2f((sS[row * kBlockN + col] - row_max) * params.scale_softmax_log2);
                }
                sRowMax[row] = row_max;
                sRowSum[row] = row_sum;
            }
        }
        flash::sync_threads();

        #pragma unroll
        for (int row_group = 0; row_group < 4; ++row_group) {
            const int row = row_group * Kernel_traits::kNWarps + qk_wave;
            if (lane_idx < kBlockN) {
                const int col = lane_idx;
                const ElementAccum p = __builtin_exp2f((sS[row * kBlockN + col] - sRowMax[row]) * params.scale_softmax_log2) / sRowSum[row];
                const index_t out_offset = ((bidb * params.h + bidh) * kBlockM + row) * kBlockN + col;
                out[out_offset] = p;
            }
        }
    } else {
        #pragma unroll
        for (int linear = tidx; linear < kBlockM * kBlockN; linear += Kernel_traits::kNThreads) {
            const int row = linear / kBlockN;
            const int col = linear % kBlockN;
            const index_t out_offset = ((bidb * params.h + bidh) * kBlockM + row) * kBlockN + col;
            out[out_offset] = sS[row * kBlockN + col];
        }
    }
}

} // namespace flash
