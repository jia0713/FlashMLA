#include <cuda.h>

#include "flash_mla.h"
#include "static_switch.h"
#include "kernel_traits.h"
#include "flash_qk_debug_32x32_8waves.cuh"

using namespace mcFlashAttn;

template<typename elem_type, bool DoSoftmax>
void run_qk_debug_32x32_8waves_typed(Flash_fwd_mla_params &params, float *out, cudaStream_t stream) {
    using Kernel_traits = Flash_fwd_kernel_traits<
        576,
        32,
        32,
        8,
        true,
        true,
        elem_type,
        false,
        512,
        1>;

    constexpr size_t smem_size = Kernel_traits::kSmemKSize + (32 * 32 + 32 + 32) * sizeof(float);
    auto kernel = &flash::qk_debug_32x32_8waves_kernel<Kernel_traits, Flash_fwd_mla_params, DoSoftmax>;
    if (smem_size >= 32 * 1024) {
        CUDA_CHECK(cudaFuncSetAttribute(kernel, cudaFuncAttributeMaxDynamicSharedMemorySize, smem_size));
    }
    dim3 grid(params.b, params.h);
    kernel<<<grid, Kernel_traits::kNThreads, smem_size, stream>>>(params, out);
    CUDA_KERNEL_LAUNCH_CHECK();
}

void run_qk_debug_32x32_8waves(Flash_fwd_mla_params &params, float *out, cudaStream_t stream) {
    FP16_SWITCH(!params.is_bf16, [&] {
        run_qk_debug_32x32_8waves_typed<elem_type, false>(params, out, stream);
    });
}

void run_qk_softmax_debug_32x32_8waves(Flash_fwd_mla_params &params, float *out, cudaStream_t stream) {
    FP16_SWITCH(!params.is_bf16, [&] {
        run_qk_debug_32x32_8waves_typed<elem_type, true>(params, out, stream);
    });
}
