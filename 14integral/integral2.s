	.file	"integral.cc"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB3:
	.text
.LHOTB3:
	.p2align 4,,15
	.globl	_Z8integralddl
	.type	_Z8integralddl, @function
_Z8integralddl:
.LFB4919:
	.cfi_startproc
	vxorpd	%xmm3, %xmm3, %xmm3
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	vsubsd	%xmm0, %xmm1, %xmm1
	andq	$-32, %rsp
	vcvtsi2sdq	%rdi, %xmm3, %xmm2
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x78,0x6
	vdivsd	%xmm2, %xmm1, %xmm12
	subq	$72, %rsp
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
#APP
# 9 "integral2.h" 1
	# loopbegin
# 0 "" 2
#NO_APP
	leaq	3(%rdi), %rdx
	testq	%rdi, %rdi
	vxorpd	%xmm9, %xmm9, %xmm9
	cmovns	%rdi, %rdx
	sarq	$2, %rdx
	testq	%rdx, %rdx
	jle	.L2
	vmulsd	.LC1(%rip), %xmm12, %xmm5
	vaddsd	%xmm12, %xmm12, %xmm6
	vmulsd	%xmm9, %xmm12, %xmm4
	vmulsd	.LC2(%rip), %xmm12, %xmm13
	vunpcklpd	%xmm5, %xmm6, %xmm7
	.p2align 4,,10
	.p2align 3
.L3:
	vmovddup	%xmm0, %xmm10
	vunpcklpd	%xmm0, %xmm4, %xmm8
	vunpcklpd	%xmm12, %xmm0, %xmm14
	vaddsd	%xmm0, %xmm13, %xmm0
	vinsertf128	$0x1, %xmm10, %ymm8, %ymm11
	vinsertf128	$0x1, %xmm7, %ymm14, %ymm15
	vaddpd	%ymm15, %ymm11, %ymm1
	addq	$8, %rax
	vaddsd	%xmm0, %xmm12, %xmm2
	vmulpd	%ymm1, %ymm1, %ymm3
	vhaddpd	%xmm3, %xmm3, %xmm8
	vextractf128	$0x1, %ymm3, %xmm11
	vmovapd	%xmm11, %xmm10
	vunpckhpd	%xmm11, %xmm11, %xmm15
	vaddsd	%xmm0, %xmm5, %xmm11
	vmovsd	%xmm2, -72(%rbp)
	vaddsd	%xmm10, %xmm8, %xmm14
	vaddsd	%xmm0, %xmm6, %xmm8
	vmovsd	%xmm11, -56(%rbp)
	vaddsd	%xmm15, %xmm14, %xmm1
	vmovsd	%xmm8, -64(%rbp)
	vaddsd	%xmm9, %xmm1, %xmm3
	vaddsd	%xmm4, %xmm0, %xmm9
	vaddsd	%xmm0, %xmm13, %xmm0
	vmovsd	%xmm9, -80(%rbp)
	vmovapd	-80(%rbp), %ymm10
	vaddsd	%xmm0, %xmm12, %xmm15
	vmulpd	%ymm10, %ymm10, %ymm14
	vhaddpd	%xmm14, %xmm14, %xmm1
	vextractf128	$0x1, %ymm14, %xmm2
	vmovapd	%xmm2, %xmm9
	vunpckhpd	%xmm2, %xmm2, %xmm8
	vaddsd	%xmm4, %xmm0, %xmm14
	vaddsd	%xmm0, %xmm5, %xmm2
	vmovsd	%xmm15, -72(%rbp)
	vaddsd	%xmm9, %xmm1, %xmm11
	vaddsd	%xmm0, %xmm6, %xmm1
	vmovsd	%xmm14, -80(%rbp)
	vmovsd	%xmm2, -56(%rbp)
	vaddsd	%xmm0, %xmm13, %xmm0
	vaddsd	%xmm8, %xmm11, %xmm10
	vmovsd	%xmm1, -64(%rbp)
	vmovapd	-80(%rbp), %ymm9
	vaddsd	%xmm0, %xmm12, %xmm8
	vmulpd	%ymm9, %ymm9, %ymm11
	vaddsd	%xmm3, %xmm10, %xmm3
	vextractf128	$0x1, %ymm11, %xmm14
	vmovapd	%xmm14, %xmm15
	vhaddpd	%xmm11, %xmm11, %xmm10
	vunpckhpd	%xmm14, %xmm14, %xmm2
	vaddsd	%xmm4, %xmm0, %xmm11
	vmovsd	%xmm8, -72(%rbp)
	vaddsd	%xmm0, %xmm5, %xmm14
	vaddsd	%xmm15, %xmm10, %xmm1
	vaddsd	%xmm0, %xmm6, %xmm10
	vmovsd	%xmm11, -80(%rbp)
	vmovsd	%xmm14, -56(%rbp)
	vaddsd	%xmm0, %xmm13, %xmm0
	vaddsd	%xmm2, %xmm1, %xmm9
	vmovsd	%xmm10, -64(%rbp)
	vmovapd	-80(%rbp), %ymm15
	vaddsd	%xmm0, %xmm12, %xmm2
	vmulpd	%ymm15, %ymm15, %ymm1
	vaddsd	%xmm3, %xmm9, %xmm3
	vextractf128	$0x1, %ymm1, %xmm8
	vmovapd	%xmm8, %xmm11
	vhaddpd	%xmm1, %xmm1, %xmm9
	vunpckhpd	%xmm8, %xmm8, %xmm14
	vaddsd	%xmm4, %xmm0, %xmm1
	vmovsd	%xmm2, -72(%rbp)
	vaddsd	%xmm0, %xmm5, %xmm8
	vaddsd	%xmm11, %xmm9, %xmm10
	vaddsd	%xmm0, %xmm6, %xmm9
	vmovsd	%xmm1, -80(%rbp)
	vmovsd	%xmm8, -56(%rbp)
	vaddsd	%xmm0, %xmm13, %xmm0
	vaddsd	%xmm14, %xmm10, %xmm15
	vmovsd	%xmm9, -64(%rbp)
	vmovapd	-80(%rbp), %ymm11
	vaddsd	%xmm0, %xmm12, %xmm14
	vmulpd	%ymm11, %ymm11, %ymm10
	vaddsd	%xmm3, %xmm15, %xmm3
	vextractf128	$0x1, %ymm10, %xmm1
	vmovapd	%xmm1, %xmm2
	vhaddpd	%xmm10, %xmm10, %xmm15
	vunpckhpd	%xmm1, %xmm1, %xmm8
	vaddsd	%xmm4, %xmm0, %xmm10
	vmovsd	%xmm14, -72(%rbp)
	vaddsd	%xmm0, %xmm5, %xmm1
	vaddsd	%xmm2, %xmm15, %xmm9
	vaddsd	%xmm0, %xmm6, %xmm15
	vmovsd	%xmm10, -80(%rbp)
	vmovsd	%xmm1, -56(%rbp)
	vaddsd	%xmm0, %xmm13, %xmm0
	vaddsd	%xmm8, %xmm9, %xmm11
	vmovsd	%xmm15, -64(%rbp)
	vmovapd	-80(%rbp), %ymm2
	vaddsd	%xmm0, %xmm12, %xmm8
	vmulpd	%ymm2, %ymm2, %ymm9
	vaddsd	%xmm3, %xmm11, %xmm3
	vextractf128	$0x1, %ymm9, %xmm10
	vmovapd	%xmm10, %xmm14
	vhaddpd	%xmm9, %xmm9, %xmm11
	vunpckhpd	%xmm10, %xmm10, %xmm1
	vaddsd	%xmm4, %xmm0, %xmm9
	vmovsd	%xmm8, -72(%rbp)
	vaddsd	%xmm0, %xmm5, %xmm10
	vaddsd	%xmm14, %xmm11, %xmm15
	vaddsd	%xmm0, %xmm6, %xmm11
	vmovsd	%xmm9, -80(%rbp)
	vmovsd	%xmm10, -56(%rbp)
	vaddsd	%xmm0, %xmm13, %xmm0
	vaddsd	%xmm1, %xmm15, %xmm2
	vmovsd	%xmm11, -64(%rbp)
	vmovapd	-80(%rbp), %ymm14
	vaddsd	%xmm0, %xmm12, %xmm1
	vmulpd	%ymm14, %ymm14, %ymm15
	vaddsd	%xmm3, %xmm2, %xmm3
	vextractf128	$0x1, %ymm15, %xmm8
	vmovapd	%xmm8, %xmm9
	vhaddpd	%xmm15, %xmm15, %xmm2
	vunpckhpd	%xmm8, %xmm8, %xmm10
	vaddsd	%xmm4, %xmm0, %xmm15
	vmovsd	%xmm1, -72(%rbp)
	vaddsd	%xmm0, %xmm5, %xmm8
	vaddsd	%xmm9, %xmm2, %xmm11
	vaddsd	%xmm0, %xmm6, %xmm2
	vmovsd	%xmm15, -80(%rbp)
	vaddsd	%xmm0, %xmm13, %xmm0
	vaddsd	%xmm10, %xmm11, %xmm14
	vmovsd	%xmm2, -64(%rbp)
	vmovsd	%xmm8, -56(%rbp)
	vmovapd	-80(%rbp), %ymm9
	vaddsd	%xmm3, %xmm14, %xmm3
	vmulpd	%ymm9, %ymm9, %ymm11
	vhaddpd	%xmm11, %xmm11, %xmm14
	vextractf128	$0x1, %ymm11, %xmm15
	vmovapd	%xmm15, %xmm1
	vunpckhpd	%xmm15, %xmm15, %xmm8
	vaddsd	%xmm1, %xmm14, %xmm2
	vaddsd	%xmm8, %xmm2, %xmm9
	vaddsd	%xmm3, %xmm9, %xmm9
	cmpq	%rdx, %rax
	jl	.L3
	vzeroupper
.L2:
#APP
# 18 "integral2.h" 1
	# loopend
# 0 "" 2
#NO_APP
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	vmulsd	%xmm9, %xmm12, %xmm0
	jne	.L10
	addq	$72, %rsp
	popq	%rcx
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%rbp
	leaq	-8(%rcx), %rsp
	.cfi_def_cfa 7, 8
	ret
.L10:
	.cfi_restore_state
	call	__stack_chk_fail
	.cfi_endproc
.LFE4919:
	.size	_Z8integralddl, .-_Z8integralddl
	.section	.text.unlikely
.LCOLDE3:
	.text
.LHOTE3:
	.section	.text.unlikely
.LCOLDB5:
	.text
.LHOTB5:
	.p2align 4,,15
	.globl	_Z8diff_tscxx
	.type	_Z8diff_tscxx, @function
_Z8diff_tscxx:
.LFB4920:
	.cfi_startproc
	subq	%rsi, %rdi
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rdi, %xmm0, %xmm1
	vmulsd	.LC4(%rip), %xmm1, %xmm2
	vcvttsd2siq	%xmm2, %rax
	ret
	.cfi_endproc
.LFE4920:
	.size	_Z8diff_tscxx, .-_Z8diff_tscxx
	.section	.text.unlikely
.LCOLDE5:
	.text
.LHOTE5:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC7:
	.string	"n = %ld\n"
.LC8:
	.string	"I = %.10f\n"
.LC9:
	.string	" %.0f muls %.0f adds\n"
.LC10:
	.string	"%.0f clocks\n"
.LC11:
	.string	"%f muls/clock\n"
.LC12:
	.string	"%f adds/clock\n"
.LC13:
	.string	"%f clocks/n\n"
	.section	.text.unlikely
.LCOLDB14:
	.section	.text.startup,"ax",@progbits
.LHOTB14:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB4921:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$100000000, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$40, %rsp
	.cfi_def_cfa_offset 64
	cmpl	$1, %edi
	jle	.L13
	movq	8(%rsi), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, %rbp
.L13:
	rdtsc
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	.LC6(%rip), %xmm1
	salq	$32, %rdx
	movq	%rbp, %rdi
	orq	%rdx, %rax
	movq	%rax, %rbx
	call	_Z8integralddl
	vmovsd	%xmm0, 24(%rsp)
	rdtsc
	vxorpd	%xmm1, %xmm1, %xmm1
	vxorpd	%xmm3, %xmm3, %xmm3
	vxorpd	%xmm5, %xmm5, %xmm5
	vxorpd	%xmm7, %xmm7, %xmm7
	movl	$1, %edi
	leaq	(%rbp,%rbp), %rsi
	salq	$32, %rdx
	vcvtsi2sdq	%rbp, %xmm5, %xmm6
	orq	%rdx, %rax
	subq	%rbx, %rax
	movq	%rbp, %rdx
	vcvtsi2sdq	%rax, %xmm1, %xmm0
	xorl	%eax, %eax
	vmulsd	.LC4(%rip), %xmm0, %xmm2
	vcvtsi2sdq	%rsi, %xmm7, %xmm8
	movl	$.LC7, %esi
	vmovsd	%xmm6, 8(%rsp)
	vcvttsd2siq	%xmm2, %rcx
	vmovsd	%xmm8, 16(%rsp)
	vcvtsi2sdq	%rcx, %xmm3, %xmm4
	vmovsd	%xmm4, (%rsp)
	call	__printf_chk
	vmovsd	24(%rsp), %xmm0
	movl	$.LC8, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
	vmovsd	16(%rsp), %xmm1
	movl	$.LC9, %esi
	movl	$1, %edi
	vmovsd	8(%rsp), %xmm0
	movl	$2, %eax
	call	__printf_chk
	vmovsd	(%rsp), %xmm0
	movl	$.LC10, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
	movl	$.LC11, %esi
	movl	$1, %edi
	movl	$1, %eax
	vmovsd	8(%rsp), %xmm9
	vdivsd	(%rsp), %xmm9, %xmm0
	call	__printf_chk
	movl	$.LC12, %esi
	movl	$1, %edi
	movl	$1, %eax
	vmovsd	16(%rsp), %xmm10
	vdivsd	(%rsp), %xmm10, %xmm0
	call	__printf_chk
	movl	$.LC13, %esi
	movl	$1, %edi
	movl	$1, %eax
	vmovsd	(%rsp), %xmm11
	vdivsd	8(%rsp), %xmm11, %xmm0
	call	__printf_chk
	addq	$40, %rsp
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE4921:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE14:
	.section	.text.startup
.LHOTE14:
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	1074266112
	.align 8
.LC2:
	.long	0
	.long	1074790400
	.align 8
.LC4:
	.long	186737709
	.long	1072875609
	.align 8
.LC6:
	.long	0
	.long	1072693248
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
