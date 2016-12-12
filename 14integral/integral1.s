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
	vxorpd	%xmm2, %xmm2, %xmm2
	vcvtsi2sdq	%rdi, %xmm2, %xmm3
	vsubsd	%xmm0, %xmm1, %xmm1
	vdivsd	%xmm3, %xmm1, %xmm1
#APP
# 9 "integral1.h" 1
	# loopbegin
# 0 "" 2
#NO_APP
	vxorpd	%xmm3, %xmm3, %xmm3
	cmpq	$3, %rdi
	jle	.L2
	vmulsd	%xmm3, %xmm1, %xmm6
	vaddsd	%xmm1, %xmm1, %xmm5
	vbroadcastsd	%xmm0, %ymm11
	vmulsd	.LC1(%rip), %xmm1, %xmm4
	subq	$4, %rdi
	movl	$4, %eax
	vmulsd	.LC2(%rip), %xmm1, %xmm7
	shrq	$2, %rdi
	leaq	4(,%rdi,4), %rdx
	andl	$3, %edi
	vunpcklpd	%xmm1, %xmm6, %xmm9
	vunpcklpd	%xmm4, %xmm5, %xmm8
	vinsertf128	$0x1, %xmm8, %ymm9, %ymm10
	vaddpd	%ymm10, %ymm11, %ymm12
	vmulpd	%ymm12, %ymm12, %ymm13
	vhaddpd	%xmm13, %xmm13, %xmm15
	vextractf128	$0x1, %ymm13, %xmm6
	vmovapd	%xmm6, %xmm2
	vunpckhpd	%xmm6, %xmm6, %xmm4
	vaddsd	%xmm2, %xmm15, %xmm5
	vaddsd	%xmm7, %xmm0, %xmm2
	vaddsd	%xmm4, %xmm5, %xmm8
	vaddsd	%xmm8, %xmm3, %xmm3
	cmpq	%rdx, %rax
	je	.L23
	testq	%rdi, %rdi
	je	.L3
	cmpq	$1, %rdi
	je	.L17
	cmpq	$2, %rdi
	je	.L18
	vbroadcastsd	%xmm2, %ymm0
	vaddsd	%xmm7, %xmm2, %xmm2
	movl	$8, %eax
	vaddpd	%ymm10, %ymm0, %ymm9
	vmulpd	%ymm9, %ymm9, %ymm11
	vhaddpd	%xmm11, %xmm11, %xmm13
	vextractf128	$0x1, %ymm11, %xmm14
	vmovapd	%xmm14, %xmm15
	vunpckhpd	%xmm14, %xmm14, %xmm5
	vaddsd	%xmm15, %xmm13, %xmm6
	vaddsd	%xmm5, %xmm6, %xmm4
	vaddsd	%xmm4, %xmm3, %xmm3
.L18:
	vbroadcastsd	%xmm2, %ymm8
	vaddsd	%xmm7, %xmm2, %xmm2
	addq	$4, %rax
	vaddpd	%ymm10, %ymm8, %ymm0
	vmulpd	%ymm0, %ymm0, %ymm9
	vhaddpd	%xmm9, %xmm9, %xmm12
	vextractf128	$0x1, %ymm9, %xmm13
	vmovapd	%xmm13, %xmm14
	vunpckhpd	%xmm13, %xmm13, %xmm6
	vaddsd	%xmm14, %xmm12, %xmm15
	vaddsd	%xmm6, %xmm15, %xmm5
	vaddsd	%xmm5, %xmm3, %xmm3
.L17:
	vbroadcastsd	%xmm2, %ymm4
	vaddsd	%xmm7, %xmm2, %xmm2
	addq	$4, %rax
	vaddpd	%ymm10, %ymm4, %ymm8
	vmulpd	%ymm8, %ymm8, %ymm0
	vhaddpd	%xmm0, %xmm0, %xmm11
	vextractf128	$0x1, %ymm0, %xmm12
	vmovapd	%xmm12, %xmm13
	vunpckhpd	%xmm12, %xmm12, %xmm15
	vaddsd	%xmm13, %xmm11, %xmm14
	vaddsd	%xmm15, %xmm14, %xmm6
	vaddsd	%xmm6, %xmm3, %xmm3
	cmpq	%rdx, %rax
	je	.L23
.L3:
	vbroadcastsd	%xmm2, %ymm5
	addq	$16, %rax
	vaddpd	%ymm10, %ymm5, %ymm4
	vmulpd	%ymm4, %ymm4, %ymm8
	vhaddpd	%xmm8, %xmm8, %xmm9
	vextractf128	$0x1, %ymm8, %xmm11
	vmovapd	%xmm11, %xmm12
	vunpckhpd	%xmm11, %xmm11, %xmm14
	vaddsd	%xmm12, %xmm9, %xmm13
	vaddsd	%xmm14, %xmm13, %xmm15
	vaddsd	%xmm15, %xmm3, %xmm6
	vaddsd	%xmm7, %xmm2, %xmm3
	vbroadcastsd	%xmm3, %ymm2
	vaddpd	%ymm10, %ymm2, %ymm5
	vmulpd	%ymm5, %ymm5, %ymm4
	vhaddpd	%xmm4, %xmm4, %xmm0
	vextractf128	$0x1, %ymm4, %xmm9
	vmovapd	%xmm9, %xmm11
	vunpckhpd	%xmm9, %xmm9, %xmm13
	vaddsd	%xmm11, %xmm0, %xmm12
	vaddsd	%xmm13, %xmm12, %xmm14
	vaddsd	%xmm14, %xmm6, %xmm15
	vaddsd	%xmm7, %xmm3, %xmm6
	vbroadcastsd	%xmm6, %ymm3
	vaddpd	%ymm10, %ymm3, %ymm2
	vmulpd	%ymm2, %ymm2, %ymm5
	vhaddpd	%xmm5, %xmm5, %xmm0
	vextractf128	$0x1, %ymm5, %xmm8
	vmovapd	%xmm8, %xmm9
	vunpckhpd	%xmm8, %xmm8, %xmm12
	vaddsd	%xmm9, %xmm0, %xmm11
	vaddsd	%xmm12, %xmm11, %xmm13
	vaddsd	%xmm13, %xmm15, %xmm14
	vaddsd	%xmm7, %xmm6, %xmm15
	vbroadcastsd	%xmm15, %ymm6
	vaddpd	%ymm10, %ymm6, %ymm3
	vmulpd	%ymm3, %ymm3, %ymm2
	vhaddpd	%xmm2, %xmm2, %xmm4
	vextractf128	$0x1, %ymm2, %xmm0
	vmovapd	%xmm0, %xmm8
	vunpckhpd	%xmm0, %xmm0, %xmm11
	vaddsd	%xmm7, %xmm15, %xmm2
	vaddsd	%xmm8, %xmm4, %xmm9
	vaddsd	%xmm11, %xmm9, %xmm12
	vaddsd	%xmm12, %xmm14, %xmm3
	cmpq	%rdx, %rax
	jne	.L3
.L23:
	vzeroupper
.L2:
#APP
# 16 "integral1.h" 1
	# loopend
# 0 "" 2
#NO_APP
	vmulsd	%xmm3, %xmm1, %xmm0
	ret
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movl	$100000000, %r8d
	cmpl	$1, %edi
	jle	.L27
	movq	8(%rsi), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, %r8
.L27:
	rdtsc
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	.LC6(%rip), %xmm1
	salq	$32, %rdx
	movq	%r8, %rdi
	orq	%rdx, %rax
	movq	%rax, %rcx
	call	_Z8integralddl
	vmovsd	%xmm0, 24(%rsp)
	rdtsc
	vxorpd	%xmm1, %xmm1, %xmm1
	vxorpd	%xmm3, %xmm3, %xmm3
	vxorpd	%xmm5, %xmm5, %xmm5
	vxorpd	%xmm7, %xmm7, %xmm7
	leaq	(%r8,%r8), %rdi
	salq	$32, %rdx
	vcvtsi2sdq	%rdi, %xmm7, %xmm8
	orq	%rdx, %rax
	subq	%rcx, %rax
	movq	%r8, %rdx
	movl	$1, %edi
	vcvtsi2sdq	%rax, %xmm1, %xmm0
	xorl	%eax, %eax
	vmulsd	.LC4(%rip), %xmm0, %xmm2
	vcvtsi2sdq	%r8, %xmm5, %xmm6
	vmovsd	%xmm8, 16(%rsp)
	vcvttsd2siq	%xmm2, %rsi
	vmovsd	%xmm6, 8(%rsp)
	vcvtsi2sdq	%rsi, %xmm3, %xmm4
	movl	$.LC7, %esi
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
	xorl	%eax, %eax
	addq	$40, %rsp
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
