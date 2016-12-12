	.file	"integral.cc"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4,,15
	.globl	_Z8integralddl
	.type	_Z8integralddl, @function
_Z8integralddl:
.LFB4919:
	.cfi_startproc
	vxorpd	%xmm2, %xmm2, %xmm2
	vcvtsi2sdq	%rdi, %xmm2, %xmm3
	vsubsd	%xmm0, %xmm1, %xmm1
	vdivsd	%xmm3, %xmm1, %xmm4
#APP
# 7 "integral0.h" 1
	# loopbegin
# 0 "" 2
#NO_APP
	vxorpd	%xmm5, %xmm5, %xmm5
	testq	%rdi, %rdi
	jle	.L2
	leaq	-1(%rdi), %rdx
	vmovapd	%xmm0, %xmm5
	movl	$1, %eax
	vfmadd213sd	.LC0(%rip), %xmm0, %xmm5
	andl	$7, %edx
	vaddsd	%xmm4, %xmm0, %xmm0
	cmpq	$1, %rdi
	je	.L2
	testq	%rdx, %rdx
	je	.L3
	cmpq	$1, %rdx
	je	.L29
	cmpq	$2, %rdx
	je	.L30
	cmpq	$3, %rdx
	je	.L31
	cmpq	$4, %rdx
	je	.L32
	cmpq	$5, %rdx
	je	.L33
	cmpq	$6, %rdx
	je	.L34
	vfmadd231sd	%xmm0, %xmm0, %xmm5
	vaddsd	%xmm4, %xmm0, %xmm0
	movl	$2, %eax
.L34:
	vfmadd231sd	%xmm0, %xmm0, %xmm5
	vaddsd	%xmm4, %xmm0, %xmm0
	addq	$1, %rax
.L33:
	vfmadd231sd	%xmm0, %xmm0, %xmm5
	vaddsd	%xmm4, %xmm0, %xmm0
	addq	$1, %rax
.L32:
	vfmadd231sd	%xmm0, %xmm0, %xmm5
	vaddsd	%xmm4, %xmm0, %xmm0
	addq	$1, %rax
.L31:
	vfmadd231sd	%xmm0, %xmm0, %xmm5
	vaddsd	%xmm4, %xmm0, %xmm0
	addq	$1, %rax
.L30:
	vfmadd231sd	%xmm0, %xmm0, %xmm5
	vaddsd	%xmm4, %xmm0, %xmm0
	addq	$1, %rax
.L29:
	addq	$1, %rax
	vfmadd231sd	%xmm0, %xmm0, %xmm5
	vaddsd	%xmm4, %xmm0, %xmm0
	cmpq	%rax, %rdi
	je	.L2
.L3:
	vaddsd	%xmm4, %xmm0, %xmm6
	addq	$8, %rax
	vfmadd231sd	%xmm0, %xmm0, %xmm5
	vaddsd	%xmm4, %xmm6, %xmm7
	vfmadd231sd	%xmm6, %xmm6, %xmm5
	vaddsd	%xmm4, %xmm7, %xmm8
	vfmadd231sd	%xmm7, %xmm7, %xmm5
	vaddsd	%xmm4, %xmm8, %xmm9
	vfmadd231sd	%xmm8, %xmm8, %xmm5
	vaddsd	%xmm4, %xmm9, %xmm10
	vfmadd231sd	%xmm9, %xmm9, %xmm5
	vaddsd	%xmm4, %xmm10, %xmm11
	vfmadd231sd	%xmm10, %xmm10, %xmm5
	vaddsd	%xmm4, %xmm11, %xmm12
	vfmadd231sd	%xmm11, %xmm11, %xmm5
	vaddsd	%xmm4, %xmm12, %xmm0
	vfmadd231sd	%xmm12, %xmm12, %xmm5
	cmpq	%rax, %rdi
	jne	.L3
.L2:
#APP
# 12 "integral0.h" 1
	# loopend
# 0 "" 2
#NO_APP
	vmulsd	%xmm5, %xmm4, %xmm0
	ret
	.cfi_endproc
.LFE4919:
	.size	_Z8integralddl, .-_Z8integralddl
	.section	.text.unlikely
.LCOLDE1:
	.text
.LHOTE1:
	.section	.text.unlikely
.LCOLDB3:
	.text
.LHOTB3:
	.p2align 4,,15
	.globl	_Z8diff_tscxx
	.type	_Z8diff_tscxx, @function
_Z8diff_tscxx:
.LFB4920:
	.cfi_startproc
	subq	%rsi, %rdi
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rdi, %xmm0, %xmm1
	vmulsd	.LC2(%rip), %xmm1, %xmm2
	vcvttsd2siq	%xmm2, %rax
	ret
	.cfi_endproc
.LFE4920:
	.size	_Z8diff_tscxx, .-_Z8diff_tscxx
	.section	.text.unlikely
.LCOLDE3:
	.text
.LHOTE3:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC5:
	.string	"n = %ld\n"
.LC6:
	.string	"I = %.10f\n"
.LC7:
	.string	" %.0f muls %.0f adds\n"
.LC8:
	.string	"%.0f clocks\n"
.LC9:
	.string	"%f muls/clock\n"
.LC10:
	.string	"%f adds/clock\n"
.LC11:
	.string	"%f clocks/n\n"
	.section	.text.unlikely
.LCOLDB12:
	.section	.text.startup,"ax",@progbits
.LHOTB12:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB4921:
	.cfi_startproc
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movl	$100000000, %r8d
	cmpl	$1, %edi
	jle	.L45
	movq	8(%rsi), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, %r8
.L45:
	rdtsc
	vxorpd	%xmm5, %xmm5, %xmm5
	vmovsd	.LC4(%rip), %xmm2
	vcvtsi2sdq	%r8, %xmm5, %xmm0
	salq	$32, %rdx
	orq	%rdx, %rax
	movq	%rax, %rsi
	vmovsd	%xmm0, 16(%rsp)
	vdivsd	%xmm0, %xmm2, %xmm6
#APP
# 7 "integral0.h" 1
	# loopbegin
# 0 "" 2
#NO_APP
	vxorpd	%xmm4, %xmm4, %xmm4
	testq	%r8, %r8
	jle	.L46
	vxorpd	%xmm1, %xmm1, %xmm1
	leaq	-1(%r8), %rdi
	vaddsd	%xmm6, %xmm1, %xmm3
	vmovapd	%xmm1, %xmm4
	andl	$7, %edi
	vfmadd132sd	%xmm1, %xmm1, %xmm4
	movl	$1, %ecx
	cmpq	$1, %r8
	je	.L46
	testq	%rdi, %rdi
	je	.L47
	cmpq	$1, %rdi
	je	.L74
	cmpq	$2, %rdi
	je	.L75
	cmpq	$3, %rdi
	je	.L76
	cmpq	$4, %rdi
	je	.L77
	cmpq	$5, %rdi
	je	.L78
	cmpq	$6, %rdi
	je	.L79
	vfmadd231sd	%xmm3, %xmm3, %xmm4
	vaddsd	%xmm6, %xmm3, %xmm3
	movl	$2, %ecx
.L79:
	vfmadd231sd	%xmm3, %xmm3, %xmm4
	vaddsd	%xmm6, %xmm3, %xmm3
	addq	$1, %rcx
.L78:
	vfmadd231sd	%xmm3, %xmm3, %xmm4
	vaddsd	%xmm6, %xmm3, %xmm3
	addq	$1, %rcx
.L77:
	vfmadd231sd	%xmm3, %xmm3, %xmm4
	vaddsd	%xmm6, %xmm3, %xmm3
	addq	$1, %rcx
.L76:
	vfmadd231sd	%xmm3, %xmm3, %xmm4
	vaddsd	%xmm6, %xmm3, %xmm3
	addq	$1, %rcx
.L75:
	vfmadd231sd	%xmm3, %xmm3, %xmm4
	vaddsd	%xmm6, %xmm3, %xmm3
	addq	$1, %rcx
.L74:
	addq	$1, %rcx
	vfmadd231sd	%xmm3, %xmm3, %xmm4
	vaddsd	%xmm6, %xmm3, %xmm3
	cmpq	%rcx, %r8
	je	.L46
.L47:
	vaddsd	%xmm6, %xmm3, %xmm7
	addq	$8, %rcx
	vfmadd231sd	%xmm3, %xmm3, %xmm4
	vaddsd	%xmm6, %xmm7, %xmm8
	vfmadd231sd	%xmm7, %xmm7, %xmm4
	vaddsd	%xmm6, %xmm8, %xmm9
	vfmadd231sd	%xmm8, %xmm8, %xmm4
	vaddsd	%xmm6, %xmm9, %xmm10
	vfmadd231sd	%xmm9, %xmm9, %xmm4
	vaddsd	%xmm6, %xmm10, %xmm11
	vfmadd231sd	%xmm10, %xmm10, %xmm4
	vaddsd	%xmm6, %xmm11, %xmm12
	vfmadd231sd	%xmm11, %xmm11, %xmm4
	vaddsd	%xmm6, %xmm12, %xmm13
	vfmadd231sd	%xmm12, %xmm12, %xmm4
	vaddsd	%xmm6, %xmm13, %xmm3
	vfmadd231sd	%xmm13, %xmm13, %xmm4
	cmpq	%rcx, %r8
	jne	.L47
.L46:
	vmovsd	%xmm4, 40(%rsp)
	vmovsd	%xmm6, 32(%rsp)
#APP
# 12 "integral0.h" 1
	# loopend
# 0 "" 2
#NO_APP
	rdtsc
	vxorpd	%xmm14, %xmm14, %xmm14
	vxorpd	%xmm1, %xmm1, %xmm1
	vxorpd	%xmm0, %xmm0, %xmm0
	movl	$1, %edi
	leaq	(%r8,%r8), %r10
	salq	$32, %rdx
	vcvtsi2sdq	%r10, %xmm1, %xmm3
	orq	%rdx, %rax
	subq	%rsi, %rax
	movq	%r8, %rdx
	movl	$.LC5, %esi
	vcvtsi2sdq	%rax, %xmm14, %xmm15
	xorl	%eax, %eax
	vmulsd	.LC2(%rip), %xmm15, %xmm5
	vmovsd	%xmm3, 24(%rsp)
	vcvttsd2siq	%xmm5, %r9
	vcvtsi2sdq	%r9, %xmm0, %xmm2
	vmovsd	%xmm2, 8(%rsp)
	call	__printf_chk
	vmovsd	32(%rsp), %xmm4
	movl	$.LC6, %esi
	movl	$1, %edi
	vmovsd	40(%rsp), %xmm6
	movl	$1, %eax
	vmulsd	%xmm6, %xmm4, %xmm0
	call	__printf_chk
	vmovsd	24(%rsp), %xmm1
	movl	$.LC7, %esi
	movl	$1, %edi
	vmovsd	16(%rsp), %xmm0
	movl	$2, %eax
	call	__printf_chk
	vmovsd	8(%rsp), %xmm0
	movl	$.LC8, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
	movl	$.LC9, %esi
	movl	$1, %edi
	movl	$1, %eax
	vmovsd	16(%rsp), %xmm7
	vdivsd	8(%rsp), %xmm7, %xmm0
	call	__printf_chk
	movl	$.LC10, %esi
	movl	$1, %edi
	movl	$1, %eax
	vmovsd	24(%rsp), %xmm8
	vdivsd	8(%rsp), %xmm8, %xmm0
	call	__printf_chk
	movl	$.LC11, %esi
	movl	$1, %edi
	movl	$1, %eax
	vmovsd	8(%rsp), %xmm9
	vdivsd	16(%rsp), %xmm9, %xmm0
	call	__printf_chk
	xorl	%eax, %eax
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE4921:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE12:
	.section	.text.startup
.LHOTE12:
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	0
	.align 8
.LC2:
	.long	186737709
	.long	1072875609
	.align 8
.LC4:
	.long	0
	.long	1072693248
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
