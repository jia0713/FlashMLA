	.text
	.weak	__cxa_pure_virtual              ; -- Begin function __cxa_pure_virtual
	.p2align	3
	.type	__cxa_pure_virtual,@function
__cxa_pure_virtual:                     ; @__cxa_pure_virtual
; %bb.0:                                ; %entry
	arrive 0
	trap 2
.Lfunc_end0:
	.size	__cxa_pure_virtual, .Lfunc_end0-__cxa_pure_virtual
                                        ; -- End function
	.section	.MetaXGPU.csdata
; Function info:
; codeLenInByte = 16
; NumSTRegs: 0
; NumMTRegs: 1
; PrivateSize: 0
	.text
	.weak	__cxa_deleted_virtual           ; -- Begin function __cxa_deleted_virtual
	.p2align	3
	.type	__cxa_deleted_virtual,@function
__cxa_deleted_virtual:                  ; @__cxa_deleted_virtual
; %bb.0:                                ; %entry
	arrive 0
	trap 2
.Lfunc_end1:
	.size	__cxa_deleted_virtual, .Lfunc_end1-__cxa_deleted_virtual
                                        ; -- End function
	.section	.MetaXGPU.csdata
; Function info:
; codeLenInByte = 16
; NumSTRegs: 0
; NumMTRegs: 1
; PrivateSize: 0
	.section	.text._ZN5flash28qk_debug_32x32_8waves_kernelI23Flash_fwd_kernel_traitsILi576ELi32ELi32ELi8ELb1ELb1EN7mctlass6half_tELb0ELi512ELi1E19Flash_kernel_traitsILi576ELi32ELi32ELi8ES3_EEN11mcFlashAttn20Flash_fwd_mla_paramsEEEvT0_Pf,#alloc,#execinstr
	.protected	_ZN5flash28qk_debug_32x32_8waves_kernelI23Flash_fwd_kernel_traitsILi576ELi32ELi32ELi8ELb1ELb1EN7mctlass6half_tELb0ELi512ELi1E19Flash_kernel_traitsILi576ELi32ELi32ELi8ES3_EEN11mcFlashAttn20Flash_fwd_mla_paramsEEEvT0_Pf ; -- Begin function _ZN5flash28qk_debug_32x32_8waves_kernelI23Flash_fwd_kernel_traitsILi576ELi32ELi32ELi8ELb1ELb1EN7mctlass6half_tELb0ELi512ELi1E19Flash_kernel_traitsILi576ELi32ELi32ELi8ES3_EEN11mcFlashAttn20Flash_fwd_mla_paramsEEEvT0_Pf
	.globl	_ZN5flash28qk_debug_32x32_8waves_kernelI23Flash_fwd_kernel_traitsILi576ELi32ELi32ELi8ELb1ELb1EN7mctlass6half_tELb0ELi512ELi1E19Flash_kernel_traitsILi576ELi32ELi32ELi8ES3_EEN11mcFlashAttn20Flash_fwd_mla_paramsEEEvT0_Pf
	.p2align	8
	.type	_ZN5flash28qk_debug_32x32_8waves_kernelI23Flash_fwd_kernel_traitsILi576ELi32ELi32ELi8ELb1ELb1EN7mctlass6half_tELb0ELi512ELi1E19Flash_kernel_traitsILi576ELi32ELi32ELi8ES3_EEN11mcFlashAttn20Flash_fwd_mla_paramsEEEvT0_Pf,@function
_ZN5flash28qk_debug_32x32_8waves_kernelI23Flash_fwd_kernel_traitsILi576ELi32ELi32ELi8ELb1ELb1EN7mctlass6half_tELb0ELi512ELi1E19Flash_kernel_traitsILi576ELi32ELi32ELi8ES3_EEN11mcFlashAttn20Flash_fwd_mla_paramsEEEvT0_Pf: ; @_ZN5flash28qk_debug_32x32_8waves_kernelI23Flash_fwd_kernel_traitsILi576ELi32ELi32ELi8ELb1ELb1EN7mctlass6half_tELb0ELi512ELi1E19Flash_kernel_traitsILi576ELi32ELi32ELi8ES3_EEN11mcFlashAttn20Flash_fwd_mla_paramsEEEvT0_Pf
; %bb.0:                                ; %entry
	mov_b32 r1, 0
	ldu_b256 s16, s0, 0xe8
	ldu_b64 s8, s0, 0x268
	ldg_u8 r1, s0, r1, 0x1f2
	ldu_b64 s10, s0, 0x110
	smov_b32 s6, -1
	smov_b32 s2, s4
	and_b32 r0, 0x3ff, r0
	arrive slcnt(0)
	cmp_lg_u64 s26, s16, 0
	scmp_eq_u64 s16, 0
	smov_b32 s4, s6
	bra_smsks LBB2_2
; %bb.1:                                ; %cond.false.i36780
	smov_b32 s3, 0
	sshl_b64 s12, 2, s2
	sadd_co_u32 s12, s16, s12
	saddc_co_u32 s13, s17, s13
	ldu_b32 s4, s12, 0x0
LBB2_2:                                 ; %cond.end.i36783
	cmp_lg_u64 s24, s18, 0
	scmp_eq_u64 s18, 0
	snop 0
	bra_smsks LBB2_5
; %bb.3:                                ; %lor.lhs.false.i
	arrive gvmcnt(0)
	mov_b32 r2, r1
	and_b32 r2, r2, 1
	cmp_eq_u32 s12, r2, 0
	smov_b32 s3, 0
	snop 2
	sand_b64 cmsk, xmsk, s12
	snop 0
	bra_cmsks LBB2_5
; %bb.4:                                ; %cond.false5.i
	sshl_b64 s6, 2, s2
	sadd_co_u32 s6, s18, s6
	saddc_co_u32 s7, s19, s7
	ldu_b32 s6, s6, 0x0
LBB2_5:                                 ; %cond.end9.i
	ldu_b128 s12, s0, 0xb4
	sandn_b64 cmsk, xmsk, s26
	snop 0
	bra_cmsks LBB2_7
; %bb.6:                                ; %cond.false14.i
	smov_b32 s3, 0
	sshl_b64 s26, 2, s2
	sadd_co_u32 s16, s16, s26
	saddc_co_u32 s17, s17, s27
	ldu_b32 s3, s16, 0x4
	arrive slcnt(0)
	ssub_co_i32 s12, s3, s4
LBB2_7:                                 ; %cond.end19.i
	scmp_eq_u64 s20, 0
	snop 0
	bra_smsks LBB2_9
; %bb.8:                                ; %cond.false24.i
	smov_b32 s3, 0
	sshl_b64 s16, 2, s2
	sadd_co_u32 s16, s20, s16
	saddc_co_u32 s17, s21, s17
	ldu_b32 s7, s16, 0x0
	sandn_b64 cmsk, xmsk, s24
	snop 0
	bra_cmskz LBB2_10
	bra LBB2_14
LBB2_9:
	smov_b32 s7, 0
	sandn_b64 cmsk, xmsk, s24
	snop 0
	bra_cmsks LBB2_14
LBB2_10:                                ; %cond.false33.i
	arrive gvmcnt(0)
	and_b32 r1, r1, 1
	cmp_eq_u32 s20, r1, 0
	smov_b32 s3, 0
	sshl_b64 s16, 2, s2
	sadd_co_u32 s16, s18, s16
	saddc_co_u32 s17, s19, s17
	sand_b64 cmsk, xmsk, s20
	snop 0
	bra_cmskz LBB2_12
; %bb.11:                               ; %cond.false43.i
	arrive slcnt(0)
	ldu_b32 s13, s16, 0x0
	bra_xmskz LBB2_13
	bra LBB2_14
LBB2_12:
LBB2_13:                                ; %cond.true36.i
	ldu_b32 s3, s16, 0x4
	arrive slcnt(0)
	ssub_co_i32 s13, s3, s6
LBB2_14:                                ; %cond.end49.i
	scmp_eq_u64 s22, 0
	smov_b64 s16, 0
	bra_smsks LBB2_27
; %bb.15:                               ; %cond.true53.i
	smov_b32 s3, 0
	sshl_b64 s18, 2, s2
	sadd_co_u32 s18, s22, s18
	saddc_co_u32 s19, s23, s19
	ldu_b32 s3, s18, 0x0
	arrive slcnt(0)
	ssub_co_i32 s3, s3, s7
	sandn_b64 cmsk, xmsk, s16
	arrive gvmcnt(0)
	mov_b32 r1, s3
	bra_cmsks LBB2_17
LBB2_16:                                ; %cond.false59.i
	cmp_eq_u64 s10, s10, 0
	arrive slcnt(0)
	mov_b32 r1, s14
	snop 1
	csel_b32 r1, 0, r1, s10
	sub_u32 r1, r1, s7
	add_u32 r1, r1, s13
LBB2_17:                                ; %_ZN5flash9BlockInfoILb1EEC2IN11mcFlashAttn20Flash_fwd_mla_paramsEEERKT_i.exit
	arrive slcnt(0)
	min_i32 r1, s12, r1
	cmp_lt_i32 s6, r1, 32
	snop 3
	sand_b64 cmsk, xmsk, s6
	snop 0
	bra_cmsks LBB2_26
; %bb.18:                               ; %if.end
	ldu_b128 s12, s0, 0x18
	ldu_b128 s16, s0, 0x30
	ldu_b128 s24, s0, 0x48
	smov_b32 s30, 0
	ldu_b128 s36, s0, 0x198
	cmp_eq_u32 s10, s4, -1
	ldu_b128 s20, s0, 0x0
	arrive slcnt(0)
	smul_i32 s6, s13, s2
	smul_hi_u32 s7, s12, s2
	sadd_co_i32 s31, s7, s6
	smul_i32 s6, s12, s2
	smov_b32 s7, 0
	sor_b64 s12, s6, s30
	smul_i32 s6, s17, s4
	smul_hi_u32 s7, s16, s4
	sadd_co_i32 s31, s7, s6
	smul_i32 s6, s16, s4
	smov_b32 s7, 0
	sor_b64 s6, s6, s30
	mov_b32 r2, s7
	mov_b32 r1, s13
	csel_b32 r3, r1, r2, s10
	mov_b32 r2, s6
	smul_i32 s4, s25, s5
	smul_hi_u32 s6, s24, s5
	sadd_co_i32 s31, s6, s4
	mov_b32 r1, s12
	smul_i32 s6, s24, s5
	smov_b32 s7, 0
	csel_b32 r2, r1, r2, s10
	sor_b64 s10, s6, s30
	smul_i32 s4, s39, s2
	smul_hi_u32 s6, s38, s2
	sadd_co_i32 s31, s6, s4
	smul_i32 s6, s38, s2
	sor_b64 s6, s6, s30
	sshl_b64 s6, 2, s6
	shl_b64 r2, 1, r2
	sadd_co_u32 s4, s36, s6
	add_co_u32 r1, s20, r2
	mov_b32 r2, s21
	saddc_co_u32 s6, s37, s7
	addc_co_u32 r2, r2, r3
	sshl_b64 s10, 1, s10
	add_co_u32 r1, r1, s10
	mov_b32 r3, s11
	shr_b32 r6, 4, r0
	addc_co_u32 r2, r2, r3
	mul_u32 r3, s17, r6
	mul_hi_u32 r7, s16, r6
	add_u32 r9, r7, r3
	mul_u32 r8, s16, r6
	shl_b32 r4, 2, r0
	shl_b64 r8, 1, r8
	add_co_u32 r1, r1, r8
	and_b32 r5, r4, 60
	addc_co_u32 r2, r2, r9
	shl_b32 r3, 1, r5
	add_co_u32 r8, r1, r3
	addc_co_u32 r9, r2, 0
	ldu_b32 s3, s0, 0x68
	shl_b32 r7, 6, r6
	ldg_b64 r12, r8, 0x80 ret0_en
	ldg_b64 r10, r8, 0x0 ret0_en
	ldg_b64 r16, r8, 0x180 ret0_en
	ldg_b64 r14, r8, 0x100 ret0_en
	ldg_b64 r20, r8, 0x280 ret0_en
	ldg_b64 r18, r8, 0x200 ret0_en
	ldg_b64 r24, r8, 0x380 ret0_en
	ldg_b64 r22, r8, 0x300 ret0_en
	ldg_b64 r26, r8, 0x400 ret0_en
	and_b32 r1, 0x1c0, r7
	and_or_b32 r2, r4, 56, r1
	shr_b32 r1, 3, r1
	xor_b32 r1, r2, r1
	smov_b32 s7, 0xe04
	arrive slcnt(0)
	ssub_co_i32 s10, 0, s3
	and_or_b32 r1, r4, s7, r1
	sashr_i32 s7, 31, s3
	smax_i32 s3, s3, s10
	cvt_u32tof32 r8, s3
	rcpi_f32 r8, r8
	mov_b32 r2, s4
	mul_f32 r8, 0x4f7ffffe, r8
	ssub_co_i32 s4, 0, s3
	cvt_f32tou32 r8, r8
	mul_u32 r9, s4, r8
	mul_hi_u32 r9, r8, r9
	add_u32 r8, r8, r9
	mul_hi_u32 r8, s5, r8
	mul_u32 r9, r8, s3
	sub_u32 r9, s5, r9
	cmp_eq_u64 s12, s36, 0
	cmp_ge_u32 s10, r9, s3
	mov_b32 r3, s6
	shl_add_u32 r1, 1, r1, 0
	snop 0
	csel_b32 r88, 0, r2, s12
	sub_u32 r2, r9, s3
	csel_b32 r2, r2, r9, s10
	csel_b32 r89, 0, r3, s12
	cmp_ge_u32 s12, r2, s3
	add_u32 r2, r8, 1
	csel_b32 r2, r2, r8, s10
	add_u32 r3, r2, 1
	snop 0
	csel_b32 r2, r3, r2, s12
	xor_b32 r2, r2, s7
	sub_u32 r2, r2, s7
	ashr_i32 r3, 31, r2
	mul_hi_u32 r8, s26, r2
	mul_u32 r9, s27, r2
	mul_u32 r28, s26, r2
	mul_u32 r2, s26, r3
	add_u32 r2, r8, r2
	add_u32 r29, r2, r9
	arrive gvmcnt(7)
	sts_st_b64x2 r1, 0x0, 0x8, r10, r12
	arrive gvmcnt(5)
	sts_st_b64x2 r1, 0x10, 0x18, r14, r16
	arrive gvmcnt(3)
	sts_st_b64x2 r1, 0x20, 0x28, r18, r20
	arrive gvmcnt(1)
	sts_st_b64x2 r1, 0x30, 0x38, r22, r24
	arrive gvmcnt(0)
	sts_b64 r1, 0x8000, r26
	arrive bsmcnt(0)
	;;#ASMSTART
	barrier
	;;#ASMEND
	shl_b64 r2, 1, r28
	cmp_gt_u32 s6, 0x100, r0
	cmp_lt_u32 s10, 0xff, r0
	shr_b32 r1, 3, r0
	add_co_u32 r12, s22, r2
	mov_b32 r2, s23
	and_b32 r1, 0x70, r1
	addc_co_u32 r13, r2, r3
	shr_b32 r14, 2, r0
	and_b32 r3, r0, 15
	shl_add_u32 r8, 7, r1, 0
	and_b32 r2, r14, 12
	and_or_b32 r3, r14, 16, r3
                                        ; implicit-def: $mtreg_32bit_9
                                        ; implicit-def: $mtreg_32bit_10
                                        ; implicit-def: $mtreg_32bit_11
	and_xmsk s12, s10
	sxor_b64 s10, xmsk, s12
	bra_xmskz LBB2_20
; %bb.19:                               ; %if.end.if.end185_crit_edge
	shl_b32 r9, 6, r0
	shl_b32 r10, 2, r6
	and_b32 r11, r0, 4
                                        ; implicit-def: $mtreg_32bit_14
LBB2_20:                                ; %Flow37593
	or_xmsk s10, s10
	ldu_b32 s3, s0, 0x1a8
	shl_b64 r56, 0, 0
	shl_b64 r62, 0, r56
	shl_b64 r64, 0, r56
	shl_b64 r66, 0, r56
	shl_b64 r60, 0, r56
	shl_b64 r50, 0, r56
	shl_b64 r46, 0, r56
	shl_b64 r34, 0, r56
	shl_b64 r58, 0, r56
	shl_b64 r48, 0, r56
	shl_b64 r44, 0, r56
	shl_b64 r32, 0, r56
	shl_b64 r42, 0, r56
	shl_b64 r30, 0, r56
	shl_b64 r22, 0, r56
	shl_b64 r18, 0, r56
	shl_b64 r40, 0, r56
	shl_b64 r28, 0, r56
	shl_b64 r20, 0, r56
	shl_b64 r16, 0, r56
	shl_b64 r26, 0, r56
	shl_b64 r38, 0, r56
	shl_b64 r54, 0, r56
	shl_b64 r70, 0, r56
	shl_b64 r24, 0, r56
	shl_b64 r36, 0, r56
	shl_b64 r52, 0, r56
	shl_b64 r68, 0, r56
	shl_b64 r74, 0, r56
	shl_b64 r78, 0, r56
	shl_b64 r82, 0, r56
	shl_b64 r86, 0, r56
	shl_b64 r72, 0, r56
	shl_b64 r76, 0, r56
	shl_b64 r80, 0, r56
	shl_b64 r84, 0, r56
	sxor_b64 xmsk, xmsk, s10
	snop 0
	bra_xmskz LBB2_22
; %bb.21:                               ; %if.then184
	shl_b32 r9, 6, r0
	and_b32 r10, 0x1c0, r9
	shl_b32 r15, 4, r0
	and_or_b32 r11, r14, 8, r10
	shr_b32 r10, 3, r10
	xor_b32 r11, r11, r10
	shl_b32 r10, 2, r6
	and_b32 r15, 0x400, r15
	smov_b32 s4, 0x200
	and_b32 r14, r10, 4
	and_or_b32 r15, r9, s4, r15
	or3_b32 r11, r15, r14, r11
	shl_add_u32 r14, 1, r11, 0
	and_b32 r11, r0, 2
	cmp_eq_u32 s12, r11, 0
	and_b32 r11, r0, 4
	cmp_eq_u32 s16, r11, 0
	mov_b32 r15, 0xffffffe0
	mov_b32 r16, 0xffffffc0
	csel_b32 r15, 32, r15, s12
	add_u32 r15, r14, r15
	csel_b32 r16, 64, r16, s16
	add_u32 r56, r14, r16
	add_u32 r57, r15, r16
	lds_st_b64x2 r84, r14, 0x0, 0x8
	lds_st_b64x2 r80, r15, 0x0, 0x8
	lds_st_b64x2 r76, r56, 0x0, 0x8
	lds_st_b64x2 r72, r57, 0x0, 0x8
	lds_b64 r62, r56, 0x8000
	lds_b64 r64, r15, 0x8000
	lds_b64 r66, r14, 0x8000
	lds_st_b64x2 r58, r57, 0x30, 0x38
	lds_st_b64x2 r48, r56, 0x30, 0x38
	lds_st_b64x2 r44, r15, 0x30, 0x38
	lds_st_b64x2 r32, r14, 0x30, 0x38
	lds_st_b64x2 r40, r57, 0x20, 0x28
	lds_st_b64x2 r28, r56, 0x20, 0x28
	lds_st_b64x2 r20, r15, 0x20, 0x28
	lds_st_b64x2 r16, r14, 0x20, 0x28
	lds_st_b64x2 r24, r57, 0x10, 0x18
	lds_st_b64x2 r52, r15, 0x10, 0x18
	lds_st_b64x2 r68, r14, 0x10, 0x18
	lds_st_b64x2 r36, r56, 0x10, 0x18
	lds_b64 r56, r57, 0x8000
LBB2_22:                                ; %if.end185
	sor_b64 xmsk, xmsk, s10
	ldu_b32 s0, s0, 0x60
	arrive bsmcnt(0)
	;;#ASMSTART
	barrier
	;;#ASMEND
	arrive slcnt(0)
	ssub_co_i32 s1, 0, s3
	smax_i32 s1, s3, s1
	cvt_u32tof32 r14, s1
	rcpi_f32 r14, r14
	ssub_co_i32 s4, 0, s1
	mul_f32 r14, 0x4f7ffffe, r14
	cvt_f32tou32 r14, r14
	mul_u32 r15, s4, r14
	mul_hi_u32 r15, r14, r15
	add_u32 r14, r14, r15
	mul_hi_u32 r14, r6, r14
	mul_u32 r15, r14, s1
	sub_u32 r15, r6, r15
	cmp_ge_u32 s10, r15, s1
	sub_u32 r90, r15, s1
	sashr_i32 s4, 31, s3
	snop 1
	csel_b32 r15, r90, r15, s10
	cmp_ge_u32 s12, r15, s1
	add_u32 r15, r14, 1
	csel_b32 r14, r15, r14, s10
	add_u32 r15, r14, 1
	smov_b32 s1, 0xc00
	csel_b32 r14, r15, r14, s12
	xor_b32 r14, r14, s4
	sub_u32 r14, r14, s4
	mad_i32 r88, r14, 4, r88
	mul_u32 r14, r14, s3
	sub_u32 r6, r6, r14
	ldg_b32 r15, r88, 0x0
	mul_hi_i32 r91, s18, r6
	mul_u32 r90, s18, r6
	shl_b64 r90, 1, r90
	shl_b32 r88, 1, r5
	arrive gvmcnt(0)
	mul_hi_i32 r93, s14, r15
	mul_u32 r92, s14, r15
	shl_b64 r14, 1, r92
	add_co_u32 r6, r12, r14
	addc_co_u32 r12, r13, r15
	add_co_u32 r6, r6, r90
	addc_co_u32 r12, r12, r91
	add_co_u32 r14, r6, r88
	addc_co_u32 r15, r12, 0
	and_b32 r6, 0x3c0, r7
	or_b32 r5, r6, r5
	ldg_b64 r88, r14, 0x80 ret0_en
	ldg_b64 r12, r14, 0x0 ret0_en
	ldg_b64 r92, r14, 0x180 ret0_en
	ldg_b64 r90, r14, 0x100 ret0_en
	ldg_b64 r96, r14, 0x280 ret0_en
	ldg_b64 r94, r14, 0x200 ret0_en
	ldg_b64 r100, r14, 0x380 ret0_en
	ldg_b64 r98, r14, 0x300 ret0_en
	ldg_b64 r14, r14, 0x400 ret0_en
	shr_b32 r6, 4, r6
	xor_b32 r5, r5, r6
	and_or_b32 r4, r4, s1, r5
	shl_add_u32 r4, 1, r4, 0
	arrive gvmcnt(7)
	snop 0
	sts_st_b64x2 r4, 0x0, 0x8, r12, r88
	arrive gvmcnt(5)
	sts_st_b64x2 r4, 0x10, 0x18, r90, r92
	arrive gvmcnt(3)
	sts_st_b64x2 r4, 0x20, 0x28, r94, r96
	arrive gvmcnt(1)
	sts_st_b64x2 r4, 0x30, 0x38, r98, r100
	arrive gvmcnt(0)
	sts_b64 r4, 0x8000, r14
	arrive bsmcnt(0)
	;;#ASMSTART
	barrier
	;;#ASMEND
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_24
; %bb.23:                               ; %for.body.i32697
	and_b32 r4, 0x3c0, r9
	and_or_b32 r5, r10, 12, r4
	shr_b32 r4, 4, r4
	xor_b32 r4, r5, r4
	and_b32 r5, r0, 8
	cmp_eq_u32 s6, r5, 0
	cmp_eq_u32 s12, r11, 0
	shl_add_u32 r8, 1, r4, r8
	mov_b32 r4, 0xffffffc0
	shl_b64 r6, 0, 0
	csel_b32 r9, 64, r4, s6
	mov_b32 r4, 0xffffffe0
	lds_st_b64x2 r12, r8, 0x0, 0x8
	csel_b32 r4, 32, r4, s12
	add_u32 r10, r8, r4
	shl_b64 r4, 0, 0
	add_u32 r11, r8, r9
	lds_st_b64x2 r88, r10, 0x0, 0x8
	arrive bsmcnt(1)
	mma_16x16x16f16 r4, r12, r84, r4
	lds_st_b64x2 r92, r11, 0x0, 0x8
	add_u32 r9, r10, r9
	shl_b32 r2, 2, r2
	shl_or_b32 r2, 7, r3, r2
	arrive bsmcnt(1)
	mma_16x16x16f16 r4, r88, r80, r4
	lds_st_b64x2 r96, r9, 0x0, 0x8
	add_u32 r2, 0, r2
	shl_add_u32 r1, 2, r1, r2
	arrive bsmcnt(1)
	mma_16x16x16f16 r4, r92, r76, r4
	arrive bsmcnt(0)
	mma_16x16x16f16 r4, r96, r72, r4
	mma_16x16x16f16 r4, r14, r86, r4
	lds_st_b64x2 r12, r8, 0x10, 0x18
	lds_st_b64x2 r84, r10, 0x10, 0x18
	mma_16x16x16f16 r4, r90, r82, r4
	lds_st_b64x2 r80, r11, 0x10, 0x18
	lds_st_b64x2 r88, r9, 0x10, 0x18
	mma_16x16x16f16 r4, r94, r78, r4
	mma_16x16x16f16 r4, r98, r74, r4
	arrive bsmcnt(3)
	mma_16x16x16f16 r4, r12, r68, r4
	arrive bsmcnt(2)
	mma_16x16x16f16 r4, r84, r52, r4
	lds_st_b64x2 r76, r8, 0x20, 0x28
	lds_st_b64x2 r92, r10, 0x20, 0x28
	arrive bsmcnt(3)
	mma_16x16x16f16 r4, r80, r36, r4
	lds_st_b64x2 r72, r11, 0x20, 0x28
	lds_st_b64x2 r96, r9, 0x20, 0x28
	arrive bsmcnt(4)
	mma_16x16x16f16 r4, r88, r24, r4
	mma_16x16x16f16 r4, r14, r70, r4
	mma_16x16x16f16 r4, r86, r54, r4
	mma_16x16x16f16 r4, r82, r38, r4
	lds_st_b64x2 r12, r8, 0x30, 0x38
	lds_st_b64x2 r68, r10, 0x30, 0x38
	mma_16x16x16f16 r4, r90, r26, r4
	lds_st_b64x2 r52, r11, 0x30, 0x38
	lds_st_b64x2 r84, r9, 0x30, 0x38
	arrive bsmcnt(7)
	mma_16x16x16f16 r4, r76, r16, r4
	arrive bsmcnt(6)
	mma_16x16x16f16 r4, r92, r20, r4
	arrive bsmcnt(5)
	mma_16x16x16f16 r4, r72, r28, r4
	arrive bsmcnt(4)
	mma_16x16x16f16 r4, r96, r40, r4
	lds_b64 r24, r8, 0x8000
	lds_b64 r36, r10, 0x8000
	lds_b64 r10, r11, 0x8000
	mma_16x16x16f16 r4, r78, r18, r4
	lds_b64 r8, r9, 0x8000
	mma_16x16x16f16 r4, r94, r22, r4
	mma_16x16x16f16 r4, r74, r30, r4
	mma_16x16x16f16 r4, r98, r42, r4
	arrive bsmcnt(7)
	mma_16x16x16f16 r4, r12, r32, r4
	arrive bsmcnt(6)
	mma_16x16x16f16 r4, r68, r44, r4
	arrive bsmcnt(5)
	mma_16x16x16f16 r4, r52, r48, r4
	arrive bsmcnt(4)
	mma_16x16x16f16 r4, r84, r58, r4
	mma_16x16x16f16 r4, r14, r34, r4
	mma_16x16x16f16 r4, r70, r46, r4
	mma_16x16x16f16 r4, r54, r50, r4
	mma_16x16x16f16 r4, r86, r60, r4
	arrive bsmcnt(3)
	mma_16x16x16f16 r4, r24, r66, r4
	arrive bsmcnt(2)
	mma_16x16x16f16 r4, r36, r64, r4
	arrive bsmcnt(1)
	mma_16x16x16f16 r4, r10, r62, r4
	arrive bsmcnt(0)
	mma_16x16x16f16 r4, r8, r56, r4
	snop 5
	sts_b128 r1, 0x9000, r4
LBB2_24:                                ; %if.end278
	sor_b64 xmsk, xmsk, s10
	arrive bsmcnt(0)
	;;#ASMSTART
	barrier
	;;#ASMEND
	shl_add_u32 r2, 2, r0, 0
	smul_i32 s0, s0, s2
	sadd_co_i32 s0, s0, s5
	lds_b32 r2, r2, 0x9000
	cmp_gt_u32 s2, 0x200, r0
	sshl_b32 s0, 10, s0
	or_b32 r1, r0, s0
	mad_i32 r4, r1, 4, s8
	arrive bsmcnt(0)
	snop 0
	stg_b32 r4, 0x0, r2 devc
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_26
; %bb.25:                               ; %for.body282.1
	or_b32 r0, 0x200, r0
	or_b32 r1, r0, s0
	shl_add_u32 r0, 2, r0, 0
	mad_i32 r2, r1, 4, s8
	snop 0
	lds_b32 r0, r0, 0x9000
	arrive bsmcnt(0)
	stg_b32 r2, 0x0, r0 devc
LBB2_26:                                ; %cleanup
	snop 1
	endk
LBB2_27:
                                        ; implicit-def: $streg_32bit_3
	arrive gvmcnt(0)
	mov_b32 r1, s3
	bra LBB2_16
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.macahca_kernel _ZN5flash28qk_debug_32x32_8waves_kernelI23Flash_fwd_kernel_traitsILi576ELi32ELi32ELi8ELb1ELb1EN7mctlass6half_tELb0ELi512ELi1E19Flash_kernel_traitsILi576ELi32ELi32ELi8ES3_EEN11mcFlashAttn20Flash_fwd_mla_paramsEEEvT0_Pf
		.macahca_mtreg_size 13
		.macahca_streg_size 3
		.macahca_priority 0
		.macahca_float_mode 192
		.macahca_privilege 0
		.macahca_debug_mode 0
		.macahca_ieee_mode 1
		.macahca_bulky_mode 0
		.macahca_fp16_overflow_mode 0
		.macahca_perf_on 0
		.macahca_priv_segm_on 0
		.macahca_user_streg_count 4
		.macahca_user_trap_handler_on 0
		.macahca_streg_block_id_x_on 1
		.macahca_streg_block_id_y_on 1
		.macahca_streg_block_id_z_on 0
		.macahca_streg_block_info_on 0
		.macahca_enable_mtreg_thread_id 0
		.macahca_exception_address_watch_on 0
		.macahca_exception_memory_violation_on 0
		.macahca_bsm_size 0
		.macahca_exception_on 0
		.macahca_streg_kernarg_segm_ptr_on 1
		.macahca_streg_dispatch_ptr_on 0
		.macahca_streg_prvt_init_on 0
		.macahca_streg_prvt_segm_size_on 0
		.macahca_unorder_dispatch_on 0
		.macahca_warps_per_dpc 416
		.macahca_blocks_per_ap 16
	.end_macahca_kernel
	.section	.text._ZN5flash28qk_debug_32x32_8waves_kernelI23Flash_fwd_kernel_traitsILi576ELi32ELi32ELi8ELb1ELb1EN7mctlass6half_tELb0ELi512ELi1E19Flash_kernel_traitsILi576ELi32ELi32ELi8ES3_EEN11mcFlashAttn20Flash_fwd_mla_paramsEEEvT0_Pf,#alloc,#execinstr
	.text
	.fill 4, 8, 0x2320
	.p2align 8
	.section	.text._ZN5flash28qk_debug_32x32_8waves_kernelI23Flash_fwd_kernel_traitsILi576ELi32ELi32ELi8ELb1ELb1EN7mctlass6half_tELb0ELi512ELi1E19Flash_kernel_traitsILi576ELi32ELi32ELi8ES3_EEN11mcFlashAttn20Flash_fwd_mla_paramsEEEvT0_Pf,#alloc,#execinstr
.Lfunc_end2:
	.size	_ZN5flash28qk_debug_32x32_8waves_kernelI23Flash_fwd_kernel_traitsILi576ELi32ELi32ELi8ELb1ELb1EN7mctlass6half_tELb0ELi512ELi1E19Flash_kernel_traitsILi576ELi32ELi32ELi8ES3_EEN11mcFlashAttn20Flash_fwd_mla_paramsEEEvT0_Pf, .Lfunc_end2-_ZN5flash28qk_debug_32x32_8waves_kernelI23Flash_fwd_kernel_traitsILi576ELi32ELi32ELi8ELb1ELb1EN7mctlass6half_tELb0ELi512ELi1E19Flash_kernel_traitsILi576ELi32ELi32ELi8ES3_EEN11mcFlashAttn20Flash_fwd_mla_paramsEEEvT0_Pf
                                        ; -- End function
	.section	.MetaXGPU.csdata
; Function info:
; codeLenInByte = 4400
; NumMTRegsForWarps/PEU: 102
; NumSTRegsForWarps/PEU: 44
; MaxWarpsPerPEU: 4
	.section	.text._ZN5flash28qk_debug_32x32_8waves_kernelI23Flash_fwd_kernel_traitsILi576ELi32ELi32ELi8ELb1ELb1EN7mctlass10bfloat16_tELb0ELi512ELi1E19Flash_kernel_traitsILi576ELi32ELi32ELi8ES3_EEN11mcFlashAttn20Flash_fwd_mla_paramsEEEvT0_Pf,#alloc,#execinstr
	.protected	_ZN5flash28qk_debug_32x32_8waves_kernelI23Flash_fwd_kernel_traitsILi576ELi32ELi32ELi8ELb1ELb1EN7mctlass10bfloat16_tELb0ELi512ELi1E19Flash_kernel_traitsILi576ELi32ELi32ELi8ES3_EEN11mcFlashAttn20Flash_fwd_mla_paramsEEEvT0_Pf ; -- Begin function _ZN5flash28qk_debug_32x32_8waves_kernelI23Flash_fwd_kernel_traitsILi576ELi32ELi32ELi8ELb1ELb1EN7mctlass10bfloat16_tELb0ELi512ELi1E19Flash_kernel_traitsILi576ELi32ELi32ELi8ES3_EEN11mcFlashAttn20Flash_fwd_mla_paramsEEEvT0_Pf
	.globl	_ZN5flash28qk_debug_32x32_8waves_kernelI23Flash_fwd_kernel_traitsILi576ELi32ELi32ELi8ELb1ELb1EN7mctlass10bfloat16_tELb0ELi512ELi1E19Flash_kernel_traitsILi576ELi32ELi32ELi8ES3_EEN11mcFlashAttn20Flash_fwd_mla_paramsEEEvT0_Pf
	.p2align	8
	.type	_ZN5flash28qk_debug_32x32_8waves_kernelI23Flash_fwd_kernel_traitsILi576ELi32ELi32ELi8ELb1ELb1EN7mctlass10bfloat16_tELb0ELi512ELi1E19Flash_kernel_traitsILi576ELi32ELi32ELi8ES3_EEN11mcFlashAttn20Flash_fwd_mla_paramsEEEvT0_Pf,@function
_ZN5flash28qk_debug_32x32_8waves_kernelI23Flash_fwd_kernel_traitsILi576ELi32ELi32ELi8ELb1ELb1EN7mctlass10bfloat16_tELb0ELi512ELi1E19Flash_kernel_traitsILi576ELi32ELi32ELi8ES3_EEN11mcFlashAttn20Flash_fwd_mla_paramsEEEvT0_Pf: ; @_ZN5flash28qk_debug_32x32_8waves_kernelI23Flash_fwd_kernel_traitsILi576ELi32ELi32ELi8ELb1ELb1EN7mctlass10bfloat16_tELb0ELi512ELi1E19Flash_kernel_traitsILi576ELi32ELi32ELi8ES3_EEN11mcFlashAttn20Flash_fwd_mla_paramsEEEvT0_Pf
; %bb.0:                                ; %entry
	mov_b32 r1, 0
	ldu_b256 s16, s0, 0xe8
	ldu_b64 s8, s0, 0x268
	ldg_u8 r1, s0, r1, 0x1f2
	ldu_b64 s10, s0, 0x110
	smov_b32 s6, -1
	smov_b32 s2, s4
	and_b32 r0, 0x3ff, r0
	arrive slcnt(0)
	cmp_lg_u64 s26, s16, 0
	scmp_eq_u64 s16, 0
	smov_b32 s4, s6
	bra_smsks LBB3_2
; %bb.1:                                ; %cond.false.i
	smov_b32 s3, 0
	sshl_b64 s12, 2, s2
	sadd_co_u32 s12, s16, s12
	saddc_co_u32 s13, s17, s13
	ldu_b32 s4, s12, 0x0
LBB3_2:                                 ; %cond.end.i25367
	cmp_lg_u64 s24, s18, 0
	scmp_eq_u64 s18, 0
	snop 0
	bra_smsks LBB3_5
; %bb.3:                                ; %lor.lhs.false.i
	arrive gvmcnt(0)
	mov_b32 r2, r1
	and_b32 r2, r2, 1
	cmp_eq_u32 s12, r2, 0
	smov_b32 s3, 0
	snop 2
	sand_b64 cmsk, xmsk, s12
	snop 0
	bra_cmsks LBB3_5
; %bb.4:                                ; %cond.false5.i
	sshl_b64 s6, 2, s2
	sadd_co_u32 s6, s18, s6
	saddc_co_u32 s7, s19, s7
	ldu_b32 s6, s6, 0x0
LBB3_5:                                 ; %cond.end9.i
	ldu_b128 s12, s0, 0xb4
	sandn_b64 cmsk, xmsk, s26
	snop 0
	bra_cmsks LBB3_7
; %bb.6:                                ; %cond.false14.i
	smov_b32 s3, 0
	sshl_b64 s26, 2, s2
	sadd_co_u32 s16, s16, s26
	saddc_co_u32 s17, s17, s27
	ldu_b32 s3, s16, 0x4
	arrive slcnt(0)
	ssub_co_i32 s12, s3, s4
LBB3_7:                                 ; %cond.end19.i
	scmp_eq_u64 s20, 0
	snop 0
	bra_smsks LBB3_9
; %bb.8:                                ; %cond.false24.i
	smov_b32 s3, 0
	sshl_b64 s16, 2, s2
	sadd_co_u32 s16, s20, s16
	saddc_co_u32 s17, s21, s17
	ldu_b32 s7, s16, 0x0
	sandn_b64 cmsk, xmsk, s24
	snop 0
	bra_cmskz LBB3_10
	bra LBB3_14
LBB3_9:
	smov_b32 s7, 0
	sandn_b64 cmsk, xmsk, s24
	snop 0
	bra_cmsks LBB3_14
LBB3_10:                                ; %cond.false33.i
	arrive gvmcnt(0)
	and_b32 r1, r1, 1
	cmp_eq_u32 s20, r1, 0
	smov_b32 s3, 0
	sshl_b64 s16, 2, s2
	sadd_co_u32 s16, s18, s16
	saddc_co_u32 s17, s19, s17
	sand_b64 cmsk, xmsk, s20
	snop 0
	bra_cmskz LBB3_12
; %bb.11:                               ; %cond.false43.i
	arrive slcnt(0)
	ldu_b32 s13, s16, 0x0
	bra_xmskz LBB3_13
	bra LBB3_14
LBB3_12:
LBB3_13:                                ; %cond.true36.i
	ldu_b32 s3, s16, 0x4
	arrive slcnt(0)
	ssub_co_i32 s13, s3, s6
LBB3_14:                                ; %cond.end49.i
	scmp_eq_u64 s22, 0
	smov_b64 s16, 0
	bra_smsks LBB3_27
; %bb.15:                               ; %cond.true53.i
	smov_b32 s3, 0
	sshl_b64 s18, 2, s2
	sadd_co_u32 s18, s22, s18
	saddc_co_u32 s19, s23, s19
	ldu_b32 s3, s18, 0x0
	arrive slcnt(0)
	ssub_co_i32 s3, s3, s7
	sandn_b64 cmsk, xmsk, s16
	arrive gvmcnt(0)
	mov_b32 r1, s3
	bra_cmsks LBB3_17
LBB3_16:                                ; %cond.false59.i
	cmp_eq_u64 s10, s10, 0
	arrive slcnt(0)
	mov_b32 r1, s14
	snop 1
	csel_b32 r1, 0, r1, s10
	sub_u32 r1, r1, s7
	add_u32 r1, r1, s13
LBB3_17:                                ; %_ZN5flash9BlockInfoILb1EEC2IN11mcFlashAttn20Flash_fwd_mla_paramsEEERKT_i.exit
	arrive slcnt(0)
	min_i32 r1, s12, r1
	cmp_lt_i32 s6, r1, 32
	snop 3
	sand_b64 cmsk, xmsk, s6
	snop 0
	bra_cmsks LBB3_26
; %bb.18:                               ; %if.end
	ldu_b128 s12, s0, 0x18
	ldu_b128 s16, s0, 0x30
	ldu_b128 s24, s0, 0x48
	smov_b32 s30, 0
	ldu_b128 s36, s0, 0x198
	cmp_eq_u32 s10, s4, -1
	ldu_b128 s20, s0, 0x0
	arrive slcnt(0)
	smul_i32 s6, s13, s2
	smul_hi_u32 s7, s12, s2
	sadd_co_i32 s31, s7, s6
	smul_i32 s6, s12, s2
	smov_b32 s7, 0
	sor_b64 s12, s6, s30
	smul_i32 s6, s17, s4
	smul_hi_u32 s7, s16, s4
	sadd_co_i32 s31, s7, s6
	smul_i32 s6, s16, s4
	smov_b32 s7, 0
	sor_b64 s6, s6, s30
	mov_b32 r2, s7
	mov_b32 r1, s13
	csel_b32 r3, r1, r2, s10
	mov_b32 r2, s6
	smul_i32 s4, s25, s5
	smul_hi_u32 s6, s24, s5
	sadd_co_i32 s31, s6, s4
	mov_b32 r1, s12
	smul_i32 s6, s24, s5
	smov_b32 s7, 0
	csel_b32 r2, r1, r2, s10
	sor_b64 s10, s6, s30
	smul_i32 s4, s39, s2
	smul_hi_u32 s6, s38, s2
	sadd_co_i32 s31, s6, s4
	smul_i32 s6, s38, s2
	sor_b64 s6, s6, s30
	sshl_b64 s6, 2, s6
	shl_b64 r2, 1, r2
	sadd_co_u32 s4, s36, s6
	add_co_u32 r1, s20, r2
	mov_b32 r2, s21
	saddc_co_u32 s6, s37, s7
	addc_co_u32 r2, r2, r3
	sshl_b64 s10, 1, s10
	add_co_u32 r1, r1, s10
	mov_b32 r3, s11
	shr_b32 r6, 4, r0
	addc_co_u32 r2, r2, r3
	mul_u32 r3, s17, r6
	mul_hi_u32 r7, s16, r6
	add_u32 r9, r7, r3
	mul_u32 r8, s16, r6
	shl_b32 r4, 2, r0
	shl_b64 r8, 1, r8
	add_co_u32 r1, r1, r8
	and_b32 r5, r4, 60
	addc_co_u32 r2, r2, r9
	shl_b32 r3, 1, r5
	add_co_u32 r8, r1, r3
	addc_co_u32 r9, r2, 0
	ldu_b32 s3, s0, 0x68
	shl_b32 r7, 6, r6
	ldg_b64 r12, r8, 0x80 ret0_en
	ldg_b64 r10, r8, 0x0 ret0_en
	ldg_b64 r16, r8, 0x180 ret0_en
	ldg_b64 r14, r8, 0x100 ret0_en
	ldg_b64 r20, r8, 0x280 ret0_en
	ldg_b64 r18, r8, 0x200 ret0_en
	ldg_b64 r24, r8, 0x380 ret0_en
	ldg_b64 r22, r8, 0x300 ret0_en
	ldg_b64 r26, r8, 0x400 ret0_en
	and_b32 r1, 0x1c0, r7
	and_or_b32 r2, r4, 56, r1
	shr_b32 r1, 3, r1
	xor_b32 r1, r2, r1
	smov_b32 s7, 0xe04
	arrive slcnt(0)
	ssub_co_i32 s10, 0, s3
	and_or_b32 r1, r4, s7, r1
	sashr_i32 s7, 31, s3
	smax_i32 s3, s3, s10
	cvt_u32tof32 r8, s3
	rcpi_f32 r8, r8
	mov_b32 r2, s4
	mul_f32 r8, 0x4f7ffffe, r8
	ssub_co_i32 s4, 0, s3
	cvt_f32tou32 r8, r8
	mul_u32 r9, s4, r8
	mul_hi_u32 r9, r8, r9
	add_u32 r8, r8, r9
	mul_hi_u32 r8, s5, r8
	mul_u32 r9, r8, s3
	sub_u32 r9, s5, r9
	cmp_eq_u64 s12, s36, 0
	cmp_ge_u32 s10, r9, s3
	mov_b32 r3, s6
	shl_add_u32 r1, 1, r1, 0
	snop 0
	csel_b32 r88, 0, r2, s12
	sub_u32 r2, r9, s3
	csel_b32 r2, r2, r9, s10
	csel_b32 r89, 0, r3, s12
	cmp_ge_u32 s12, r2, s3
	add_u32 r2, r8, 1
	csel_b32 r2, r2, r8, s10
	add_u32 r3, r2, 1
	snop 0
	csel_b32 r2, r3, r2, s12
	xor_b32 r2, r2, s7
	sub_u32 r2, r2, s7
	ashr_i32 r3, 31, r2
	mul_hi_u32 r8, s26, r2
	mul_u32 r9, s27, r2
	mul_u32 r28, s26, r2
	mul_u32 r2, s26, r3
	add_u32 r2, r8, r2
	add_u32 r29, r2, r9
	arrive gvmcnt(7)
	sts_st_b64x2 r1, 0x0, 0x8, r10, r12
	arrive gvmcnt(5)
	sts_st_b64x2 r1, 0x10, 0x18, r14, r16
	arrive gvmcnt(3)
	sts_st_b64x2 r1, 0x20, 0x28, r18, r20
	arrive gvmcnt(1)
	sts_st_b64x2 r1, 0x30, 0x38, r22, r24
	arrive gvmcnt(0)
	sts_b64 r1, 0x8000, r26
	arrive bsmcnt(0)
	;;#ASMSTART
	barrier
	;;#ASMEND
	shl_b64 r2, 1, r28
	cmp_gt_u32 s6, 0x100, r0
	cmp_lt_u32 s10, 0xff, r0
	shr_b32 r1, 3, r0
	add_co_u32 r12, s22, r2
	mov_b32 r2, s23
	and_b32 r1, 0x70, r1
	addc_co_u32 r13, r2, r3
	shr_b32 r14, 2, r0
	and_b32 r3, r0, 15
	shl_add_u32 r8, 7, r1, 0
	and_b32 r2, r14, 12
	and_or_b32 r3, r14, 16, r3
                                        ; implicit-def: $mtreg_32bit_9
                                        ; implicit-def: $mtreg_32bit_10
                                        ; implicit-def: $mtreg_32bit_11
	and_xmsk s12, s10
	sxor_b64 s10, xmsk, s12
	bra_xmskz LBB3_20
; %bb.19:                               ; %if.end.if.end185_crit_edge
	shl_b32 r9, 6, r0
	shl_b32 r10, 2, r6
	and_b32 r11, r0, 4
                                        ; implicit-def: $mtreg_32bit_14
LBB3_20:                                ; %Flow26171
	or_xmsk s10, s10
	ldu_b32 s3, s0, 0x1a8
	shl_b64 r56, 0, 0
	shl_b64 r62, 0, r56
	shl_b64 r64, 0, r56
	shl_b64 r66, 0, r56
	shl_b64 r60, 0, r56
	shl_b64 r50, 0, r56
	shl_b64 r46, 0, r56
	shl_b64 r34, 0, r56
	shl_b64 r58, 0, r56
	shl_b64 r48, 0, r56
	shl_b64 r44, 0, r56
	shl_b64 r32, 0, r56
	shl_b64 r42, 0, r56
	shl_b64 r30, 0, r56
	shl_b64 r22, 0, r56
	shl_b64 r18, 0, r56
	shl_b64 r40, 0, r56
	shl_b64 r28, 0, r56
	shl_b64 r20, 0, r56
	shl_b64 r16, 0, r56
	shl_b64 r26, 0, r56
	shl_b64 r38, 0, r56
	shl_b64 r54, 0, r56
	shl_b64 r70, 0, r56
	shl_b64 r24, 0, r56
	shl_b64 r36, 0, r56
	shl_b64 r52, 0, r56
	shl_b64 r68, 0, r56
	shl_b64 r74, 0, r56
	shl_b64 r78, 0, r56
	shl_b64 r82, 0, r56
	shl_b64 r86, 0, r56
	shl_b64 r72, 0, r56
	shl_b64 r76, 0, r56
	shl_b64 r80, 0, r56
	shl_b64 r84, 0, r56
	sxor_b64 xmsk, xmsk, s10
	snop 0
	bra_xmskz LBB3_22
; %bb.21:                               ; %if.then184
	shl_b32 r9, 6, r0
	and_b32 r10, 0x1c0, r9
	shl_b32 r15, 4, r0
	and_or_b32 r11, r14, 8, r10
	shr_b32 r10, 3, r10
	xor_b32 r11, r11, r10
	shl_b32 r10, 2, r6
	and_b32 r15, 0x400, r15
	smov_b32 s4, 0x200
	and_b32 r14, r10, 4
	and_or_b32 r15, r9, s4, r15
	or3_b32 r11, r15, r14, r11
	shl_add_u32 r14, 1, r11, 0
	and_b32 r11, r0, 2
	cmp_eq_u32 s12, r11, 0
	and_b32 r11, r0, 4
	cmp_eq_u32 s16, r11, 0
	mov_b32 r15, 0xffffffe0
	mov_b32 r16, 0xffffffc0
	csel_b32 r15, 32, r15, s12
	add_u32 r15, r14, r15
	csel_b32 r16, 64, r16, s16
	add_u32 r56, r14, r16
	add_u32 r57, r15, r16
	lds_st_b64x2 r84, r14, 0x0, 0x8
	lds_st_b64x2 r80, r15, 0x0, 0x8
	lds_st_b64x2 r76, r56, 0x0, 0x8
	lds_st_b64x2 r72, r57, 0x0, 0x8
	lds_b64 r62, r56, 0x8000
	lds_b64 r64, r15, 0x8000
	lds_b64 r66, r14, 0x8000
	lds_st_b64x2 r58, r57, 0x30, 0x38
	lds_st_b64x2 r48, r56, 0x30, 0x38
	lds_st_b64x2 r44, r15, 0x30, 0x38
	lds_st_b64x2 r32, r14, 0x30, 0x38
	lds_st_b64x2 r40, r57, 0x20, 0x28
	lds_st_b64x2 r28, r56, 0x20, 0x28
	lds_st_b64x2 r20, r15, 0x20, 0x28
	lds_st_b64x2 r16, r14, 0x20, 0x28
	lds_st_b64x2 r24, r57, 0x10, 0x18
	lds_st_b64x2 r52, r15, 0x10, 0x18
	lds_st_b64x2 r68, r14, 0x10, 0x18
	lds_st_b64x2 r36, r56, 0x10, 0x18
	lds_b64 r56, r57, 0x8000
LBB3_22:                                ; %if.end185
	sor_b64 xmsk, xmsk, s10
	ldu_b32 s0, s0, 0x60
	arrive bsmcnt(0)
	;;#ASMSTART
	barrier
	;;#ASMEND
	arrive slcnt(0)
	ssub_co_i32 s1, 0, s3
	smax_i32 s1, s3, s1
	cvt_u32tof32 r14, s1
	rcpi_f32 r14, r14
	ssub_co_i32 s4, 0, s1
	mul_f32 r14, 0x4f7ffffe, r14
	cvt_f32tou32 r14, r14
	mul_u32 r15, s4, r14
	mul_hi_u32 r15, r14, r15
	add_u32 r14, r14, r15
	mul_hi_u32 r14, r6, r14
	mul_u32 r15, r14, s1
	sub_u32 r15, r6, r15
	cmp_ge_u32 s10, r15, s1
	sub_u32 r90, r15, s1
	sashr_i32 s4, 31, s3
	snop 1
	csel_b32 r15, r90, r15, s10
	cmp_ge_u32 s12, r15, s1
	add_u32 r15, r14, 1
	csel_b32 r14, r15, r14, s10
	add_u32 r15, r14, 1
	smov_b32 s1, 0xc00
	csel_b32 r14, r15, r14, s12
	xor_b32 r14, r14, s4
	sub_u32 r14, r14, s4
	mad_i32 r88, r14, 4, r88
	mul_u32 r14, r14, s3
	sub_u32 r6, r6, r14
	ldg_b32 r15, r88, 0x0
	mul_hi_i32 r91, s18, r6
	mul_u32 r90, s18, r6
	shl_b64 r90, 1, r90
	shl_b32 r88, 1, r5
	arrive gvmcnt(0)
	mul_hi_i32 r93, s14, r15
	mul_u32 r92, s14, r15
	shl_b64 r14, 1, r92
	add_co_u32 r6, r12, r14
	addc_co_u32 r12, r13, r15
	add_co_u32 r6, r6, r90
	addc_co_u32 r12, r12, r91
	add_co_u32 r14, r6, r88
	addc_co_u32 r15, r12, 0
	and_b32 r6, 0x3c0, r7
	or_b32 r5, r6, r5
	ldg_b64 r88, r14, 0x80 ret0_en
	ldg_b64 r12, r14, 0x0 ret0_en
	ldg_b64 r92, r14, 0x180 ret0_en
	ldg_b64 r90, r14, 0x100 ret0_en
	ldg_b64 r96, r14, 0x280 ret0_en
	ldg_b64 r94, r14, 0x200 ret0_en
	ldg_b64 r100, r14, 0x380 ret0_en
	ldg_b64 r98, r14, 0x300 ret0_en
	ldg_b64 r14, r14, 0x400 ret0_en
	shr_b32 r6, 4, r6
	xor_b32 r5, r5, r6
	and_or_b32 r4, r4, s1, r5
	shl_add_u32 r4, 1, r4, 0
	arrive gvmcnt(7)
	snop 0
	sts_st_b64x2 r4, 0x0, 0x8, r12, r88
	arrive gvmcnt(5)
	sts_st_b64x2 r4, 0x10, 0x18, r90, r92
	arrive gvmcnt(3)
	sts_st_b64x2 r4, 0x20, 0x28, r94, r96
	arrive gvmcnt(1)
	sts_st_b64x2 r4, 0x30, 0x38, r98, r100
	arrive gvmcnt(0)
	sts_b64 r4, 0x8000, r14
	arrive bsmcnt(0)
	;;#ASMSTART
	barrier
	;;#ASMEND
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB3_24
; %bb.23:                               ; %for.body.i22139
	and_b32 r4, 0x3c0, r9
	and_or_b32 r5, r10, 12, r4
	shr_b32 r4, 4, r4
	xor_b32 r4, r5, r4
	and_b32 r5, r0, 8
	cmp_eq_u32 s6, r5, 0
	cmp_eq_u32 s12, r11, 0
	shl_add_u32 r8, 1, r4, r8
	mov_b32 r4, 0xffffffc0
	shl_b64 r6, 0, 0
	csel_b32 r9, 64, r4, s6
	mov_b32 r4, 0xffffffe0
	lds_st_b64x2 r12, r8, 0x0, 0x8
	csel_b32 r4, 32, r4, s12
	add_u32 r10, r8, r4
	shl_b64 r4, 0, 0
	add_u32 r11, r8, r9
	lds_st_b64x2 r88, r10, 0x0, 0x8
	arrive bsmcnt(1)
	mma_16x16x16bf16 r4, r12, r84, r4
	lds_st_b64x2 r92, r11, 0x0, 0x8
	add_u32 r9, r10, r9
	shl_b32 r2, 2, r2
	shl_or_b32 r2, 7, r3, r2
	arrive bsmcnt(1)
	mma_16x16x16bf16 r4, r88, r80, r4
	lds_st_b64x2 r96, r9, 0x0, 0x8
	add_u32 r2, 0, r2
	shl_add_u32 r1, 2, r1, r2
	arrive bsmcnt(1)
	mma_16x16x16bf16 r4, r92, r76, r4
	arrive bsmcnt(0)
	mma_16x16x16bf16 r4, r96, r72, r4
	mma_16x16x16bf16 r4, r14, r86, r4
	lds_st_b64x2 r12, r8, 0x10, 0x18
	lds_st_b64x2 r84, r10, 0x10, 0x18
	mma_16x16x16bf16 r4, r90, r82, r4
	lds_st_b64x2 r80, r11, 0x10, 0x18
	lds_st_b64x2 r88, r9, 0x10, 0x18
	mma_16x16x16bf16 r4, r94, r78, r4
	mma_16x16x16bf16 r4, r98, r74, r4
	arrive bsmcnt(3)
	mma_16x16x16bf16 r4, r12, r68, r4
	arrive bsmcnt(2)
	mma_16x16x16bf16 r4, r84, r52, r4
	lds_st_b64x2 r76, r8, 0x20, 0x28
	lds_st_b64x2 r92, r10, 0x20, 0x28
	arrive bsmcnt(3)
	mma_16x16x16bf16 r4, r80, r36, r4
	lds_st_b64x2 r72, r11, 0x20, 0x28
	lds_st_b64x2 r96, r9, 0x20, 0x28
	arrive bsmcnt(4)
	mma_16x16x16bf16 r4, r88, r24, r4
	mma_16x16x16bf16 r4, r14, r70, r4
	mma_16x16x16bf16 r4, r86, r54, r4
	mma_16x16x16bf16 r4, r82, r38, r4
	lds_st_b64x2 r12, r8, 0x30, 0x38
	lds_st_b64x2 r68, r10, 0x30, 0x38
	mma_16x16x16bf16 r4, r90, r26, r4
	lds_st_b64x2 r52, r11, 0x30, 0x38
	lds_st_b64x2 r84, r9, 0x30, 0x38
	arrive bsmcnt(7)
	mma_16x16x16bf16 r4, r76, r16, r4
	arrive bsmcnt(6)
	mma_16x16x16bf16 r4, r92, r20, r4
	arrive bsmcnt(5)
	mma_16x16x16bf16 r4, r72, r28, r4
	arrive bsmcnt(4)
	mma_16x16x16bf16 r4, r96, r40, r4
	lds_b64 r24, r8, 0x8000
	lds_b64 r36, r10, 0x8000
	lds_b64 r10, r11, 0x8000
	mma_16x16x16bf16 r4, r78, r18, r4
	lds_b64 r8, r9, 0x8000
	mma_16x16x16bf16 r4, r94, r22, r4
	mma_16x16x16bf16 r4, r74, r30, r4
	mma_16x16x16bf16 r4, r98, r42, r4
	arrive bsmcnt(7)
	mma_16x16x16bf16 r4, r12, r32, r4
	arrive bsmcnt(6)
	mma_16x16x16bf16 r4, r68, r44, r4
	arrive bsmcnt(5)
	mma_16x16x16bf16 r4, r52, r48, r4
	arrive bsmcnt(4)
	mma_16x16x16bf16 r4, r84, r58, r4
	mma_16x16x16bf16 r4, r14, r34, r4
	mma_16x16x16bf16 r4, r70, r46, r4
	mma_16x16x16bf16 r4, r54, r50, r4
	mma_16x16x16bf16 r4, r86, r60, r4
	arrive bsmcnt(3)
	mma_16x16x16bf16 r4, r24, r66, r4
	arrive bsmcnt(2)
	mma_16x16x16bf16 r4, r36, r64, r4
	arrive bsmcnt(1)
	mma_16x16x16bf16 r4, r10, r62, r4
	arrive bsmcnt(0)
	mma_16x16x16bf16 r4, r8, r56, r4
	snop 5
	sts_b128 r1, 0x9000, r4
LBB3_24:                                ; %if.end278
	sor_b64 xmsk, xmsk, s10
	arrive bsmcnt(0)
	;;#ASMSTART
	barrier
	;;#ASMEND
	shl_add_u32 r2, 2, r0, 0
	smul_i32 s0, s0, s2
	sadd_co_i32 s0, s0, s5
	lds_b32 r2, r2, 0x9000
	cmp_gt_u32 s2, 0x200, r0
	sshl_b32 s0, 10, s0
	or_b32 r1, r0, s0
	mad_i32 r4, r1, 4, s8
	arrive bsmcnt(0)
	snop 0
	stg_b32 r4, 0x0, r2 devc
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_26
; %bb.25:                               ; %for.body282.1
	or_b32 r0, 0x200, r0
	or_b32 r1, r0, s0
	shl_add_u32 r0, 2, r0, 0
	mad_i32 r2, r1, 4, s8
	snop 0
	lds_b32 r0, r0, 0x9000
	arrive bsmcnt(0)
	stg_b32 r2, 0x0, r0 devc
LBB3_26:                                ; %cleanup
	snop 1
	endk
LBB3_27:
                                        ; implicit-def: $streg_32bit_3
	arrive gvmcnt(0)
	mov_b32 r1, s3
	bra LBB3_16
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.macahca_kernel _ZN5flash28qk_debug_32x32_8waves_kernelI23Flash_fwd_kernel_traitsILi576ELi32ELi32ELi8ELb1ELb1EN7mctlass10bfloat16_tELb0ELi512ELi1E19Flash_kernel_traitsILi576ELi32ELi32ELi8ES3_EEN11mcFlashAttn20Flash_fwd_mla_paramsEEEvT0_Pf
		.macahca_mtreg_size 13
		.macahca_streg_size 3
		.macahca_priority 0
		.macahca_float_mode 192
		.macahca_privilege 0
		.macahca_debug_mode 0
		.macahca_ieee_mode 1
		.macahca_bulky_mode 0
		.macahca_fp16_overflow_mode 0
		.macahca_perf_on 0
		.macahca_priv_segm_on 0
		.macahca_user_streg_count 4
		.macahca_user_trap_handler_on 0
		.macahca_streg_block_id_x_on 1
		.macahca_streg_block_id_y_on 1
		.macahca_streg_block_id_z_on 0
		.macahca_streg_block_info_on 0
		.macahca_enable_mtreg_thread_id 0
		.macahca_exception_address_watch_on 0
		.macahca_exception_memory_violation_on 0
		.macahca_bsm_size 0
		.macahca_exception_on 0
		.macahca_streg_kernarg_segm_ptr_on 1
		.macahca_streg_dispatch_ptr_on 0
		.macahca_streg_prvt_init_on 0
		.macahca_streg_prvt_segm_size_on 0
		.macahca_unorder_dispatch_on 0
		.macahca_warps_per_dpc 416
		.macahca_blocks_per_ap 16
	.end_macahca_kernel
	.section	.text._ZN5flash28qk_debug_32x32_8waves_kernelI23Flash_fwd_kernel_traitsILi576ELi32ELi32ELi8ELb1ELb1EN7mctlass10bfloat16_tELb0ELi512ELi1E19Flash_kernel_traitsILi576ELi32ELi32ELi8ES3_EEN11mcFlashAttn20Flash_fwd_mla_paramsEEEvT0_Pf,#alloc,#execinstr
	.text
	.fill 4, 8, 0x2320
	.p2align 8
	.section	.text._ZN5flash28qk_debug_32x32_8waves_kernelI23Flash_fwd_kernel_traitsILi576ELi32ELi32ELi8ELb1ELb1EN7mctlass10bfloat16_tELb0ELi512ELi1E19Flash_kernel_traitsILi576ELi32ELi32ELi8ES3_EEN11mcFlashAttn20Flash_fwd_mla_paramsEEEvT0_Pf,#alloc,#execinstr
.Lfunc_end3:
	.size	_ZN5flash28qk_debug_32x32_8waves_kernelI23Flash_fwd_kernel_traitsILi576ELi32ELi32ELi8ELb1ELb1EN7mctlass10bfloat16_tELb0ELi512ELi1E19Flash_kernel_traitsILi576ELi32ELi32ELi8ES3_EEN11mcFlashAttn20Flash_fwd_mla_paramsEEEvT0_Pf, .Lfunc_end3-_ZN5flash28qk_debug_32x32_8waves_kernelI23Flash_fwd_kernel_traitsILi576ELi32ELi32ELi8ELb1ELb1EN7mctlass10bfloat16_tELb0ELi512ELi1E19Flash_kernel_traitsILi576ELi32ELi32ELi8ES3_EEN11mcFlashAttn20Flash_fwd_mla_paramsEEEvT0_Pf
                                        ; -- End function
	.section	.MetaXGPU.csdata
; Function info:
; codeLenInByte = 4400
; NumMTRegsForWarps/PEU: 102
; NumSTRegsForWarps/PEU: 44
; MaxWarpsPerPEU: 4
	.protected	_ZN5flash5smem_E
	.protected	mcDeviceMemoryInfo      ; @mcDeviceMemoryInfo
	.type	mcDeviceMemoryInfo,@object
	.section	.bss,#alloc,#write
	.weak	mcDeviceMemoryInfo
	.p2align	3, 0x0
mcDeviceMemoryInfo:
	.zero	16
	.size	mcDeviceMemoryInfo, 16

	.section	".note.GNU-stack"
	.addrsig
	.addrsig_sym mcDeviceMemoryInfo
	.metaxgpu_metadata
---
macahca.kernels:
  - .args:
      - .arg_offset_bytes: 0
        .arg_param_pass: by_value
        .arg_size_bytes: 616
      - .arg_name:       out.coerce
        .arg_offset_bytes: 616
        .arg_param_pass: global_buffer
        .arg_size_bytes: 8
      - .arg_offset_bytes: 624
        .arg_param_pass: hidden_global_offset_x
        .arg_size_bytes: 8
      - .arg_offset_bytes: 632
        .arg_param_pass: hidden_global_offset_y
        .arg_size_bytes: 8
      - .arg_offset_bytes: 640
        .arg_param_pass: hidden_global_offset_z
        .arg_size_bytes: 8
      - .arg_offset_bytes: 648
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
      - .arg_offset_bytes: 656
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
      - .arg_offset_bytes: 664
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
      - .arg_offset_bytes: 672
        .arg_param_pass: hidden_multigrid_sync_arg
        .arg_size_bytes: 8
      - .arg_offset_bytes: 680
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
      - .arg_offset_bytes: 688
        .arg_param_pass: hidden_gridsync
        .arg_size_bytes: 8
      - .arg_offset_bytes: 696
        .arg_param_pass: hidden_device_runtime_info_addr
        .arg_size_bytes: 8
      - .arg_offset_bytes: 704
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
      - .arg_offset_bytes: 712
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
      - .arg_offset_bytes: 720
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
      - .arg_offset_bytes: 728
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
      - .arg_offset_bytes: 736
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
    .dcompcapab:     8
    .kd_symbol:      _ZN5flash28qk_debug_32x32_8waves_kernelI23Flash_fwd_kernel_traitsILi576ELi32ELi32ELi8ELb1ELb1EN7mctlass6half_tELb0ELi512ELi1E19Flash_kernel_traitsILi576ELi32ELi32ELi8ES3_EEN11mcFlashAttn20Flash_fwd_mla_paramsEEEvT0_Pf.kd
    .kernarg_align_bytes: 8
    .kernarg_size_bytes: 704
    .max_block_size: 512
    .mtreg_count:    102
    .name:           _ZN5flash28qk_debug_32x32_8waves_kernelI23Flash_fwd_kernel_traitsILi576ELi32ELi32ELi8ELb1ELb1EN7mctlass6half_tELb0ELi512ELi1E19Flash_kernel_traitsILi576ELi32ELi32ELi8ES3_EEN11mcFlashAttn20Flash_fwd_mla_paramsEEEvT0_Pf
    .private_memory_size: 0
    .share_memory_size: 0
    .streg_count:    44
  - .args:
      - .arg_offset_bytes: 0
        .arg_param_pass: by_value
        .arg_size_bytes: 616
      - .arg_name:       out.coerce
        .arg_offset_bytes: 616
        .arg_param_pass: global_buffer
        .arg_size_bytes: 8
      - .arg_offset_bytes: 624
        .arg_param_pass: hidden_global_offset_x
        .arg_size_bytes: 8
      - .arg_offset_bytes: 632
        .arg_param_pass: hidden_global_offset_y
        .arg_size_bytes: 8
      - .arg_offset_bytes: 640
        .arg_param_pass: hidden_global_offset_z
        .arg_size_bytes: 8
      - .arg_offset_bytes: 648
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
      - .arg_offset_bytes: 656
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
      - .arg_offset_bytes: 664
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
      - .arg_offset_bytes: 672
        .arg_param_pass: hidden_multigrid_sync_arg
        .arg_size_bytes: 8
      - .arg_offset_bytes: 680
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
      - .arg_offset_bytes: 688
        .arg_param_pass: hidden_gridsync
        .arg_size_bytes: 8
      - .arg_offset_bytes: 696
        .arg_param_pass: hidden_device_runtime_info_addr
        .arg_size_bytes: 8
      - .arg_offset_bytes: 704
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
      - .arg_offset_bytes: 712
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
      - .arg_offset_bytes: 720
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
      - .arg_offset_bytes: 728
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
      - .arg_offset_bytes: 736
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
    .dcompcapab:     8
    .kd_symbol:      _ZN5flash28qk_debug_32x32_8waves_kernelI23Flash_fwd_kernel_traitsILi576ELi32ELi32ELi8ELb1ELb1EN7mctlass10bfloat16_tELb0ELi512ELi1E19Flash_kernel_traitsILi576ELi32ELi32ELi8ES3_EEN11mcFlashAttn20Flash_fwd_mla_paramsEEEvT0_Pf.kd
    .kernarg_align_bytes: 8
    .kernarg_size_bytes: 704
    .max_block_size: 512
    .mtreg_count:    102
    .name:           _ZN5flash28qk_debug_32x32_8waves_kernelI23Flash_fwd_kernel_traitsILi576ELi32ELi32ELi8ELb1ELb1EN7mctlass10bfloat16_tELb0ELi512ELi1E19Flash_kernel_traitsILi576ELi32ELi32ELi8ES3_EEN11mcFlashAttn20Flash_fwd_mla_paramsEEEvT0_Pf
    .private_memory_size: 0
    .share_memory_size: 0
    .streg_count:    44
macahca.version:
  - 1
  - 0
...

	.end_metaxgpu_metadata
