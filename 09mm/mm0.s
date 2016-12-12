	.file	"mm.cc"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"mm.cc"
.LC1:
	.string	"r == 0"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB2:
	.text
.LHOTB2:
	.p2align 4,,15
	.globl	_Z7alloc64m
	.type	_Z7alloc64m, @function
_Z7alloc64m:
.LFB4892:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, %rdx
	movl	$64, %esi
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %rdi
	call	posix_memalign
	testl	%eax, %eax
	jne	.L2
	movq	8(%rsp), %rcx
	xorq	%fs:40, %rcx
	movq	(%rsp), %rax
	jne	.L9
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2:
	.cfi_restore_state
	movl	$_ZZ7alloc64mE19__PRETTY_FUNCTION__, %ecx
	movl	$13, %edx
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	call	__assert_fail
.L9:
	call	__stack_chk_fail
	.cfi_endproc
.LFE4892:
	.size	_Z7alloc64m, .-_Z7alloc64m
	.section	.text.unlikely
.LCOLDE2:
	.text
.LHOTE2:
	.section	.text.unlikely._ZN6matrix9rand_initEPt,"axG",@progbits,_ZN6matrix9rand_initEPt,comdat
	.align 2
.LCOLDB3:
	.section	.text._ZN6matrix9rand_initEPt,"axG",@progbits,_ZN6matrix9rand_initEPt,comdat
.LHOTB3:
	.align 2
	.p2align 4,,15
	.weak	_ZN6matrix9rand_initEPt
	.type	_ZN6matrix9rand_initEPt, @function
_ZN6matrix9rand_initEPt:
.LFB4898:
	.cfi_startproc
	movq	(%rdi), %r8
	testq	%r8, %r8
	jle	.L20
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	xorl	%r13d, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	8(%rdi), %rcx
	.p2align 4,,10
	.p2align 3
.L15:
	testq	%rcx, %rcx
	jle	.L12
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L13:
	movq	%r13, %rax
	movq	24(%rbp), %rdx
	movq	%r12, %rdi
	imulq	16(%rbp), %rax
	addq	%rbx, %rax
	addq	$1, %rbx
	leaq	(%rdx,%rax,4), %r14
	call	erand48
	movq	8(%rbp), %rcx
	vxorps	%xmm1, %xmm1, %xmm1
	vcvtsd2ss	%xmm0, %xmm1, %xmm0
	vmovss	%xmm0, (%r14)
	cmpq	%rbx, %rcx
	jg	.L13
	movq	0(%rbp), %r8
.L12:
	addq	$1, %r13
	cmpq	%r8, %r13
	jl	.L15
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_restore 13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_restore 14
	.cfi_def_cfa_offset 8
.L20:
	ret
	.cfi_endproc
.LFE4898:
	.size	_ZN6matrix9rand_initEPt, .-_ZN6matrix9rand_initEPt
	.section	.text.unlikely._ZN6matrix9rand_initEPt,"axG",@progbits,_ZN6matrix9rand_initEPt,comdat
.LCOLDE3:
	.section	.text._ZN6matrix9rand_initEPt,"axG",@progbits,_ZN6matrix9rand_initEPt,comdat
.LHOTE3:
	.section	.text.unlikely
.LCOLDB4:
	.text
.LHOTB4:
	.p2align 4,,15
	.globl	_Z4gemmR6matrixS0_S0_
	.type	_Z4gemmR6matrixS0_S0_, @function
_Z4gemmR6matrixS0_S0_:
.LFB4901:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	(%rdx), %r15
	movq	8(%rdx), %r14
	movq	8(%rdi), %rbx
	testq	%r15, %r15
	jle	.L71
	movq	%rdi, %r12
	movq	%rsi, %r13
	movq	%rdx, %rbp
	xorl	%edi, %edi
	.p2align 4,,10
	.p2align 3
.L52:
	xorl	%r10d, %r10d
	testq	%r14, %r14
	jle	.L27
	.p2align 4,,10
	.p2align 3
.L53:
	testq	%rbx, %rbx
	jle	.L29
	movq	%rdi, %rax
	movq	%rdi, %r11
	movq	24(%r12), %r8
	imulq	16(%r12), %r11
	imulq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	16(%r13), %rcx
	leaq	(%r8,%r11,4), %r9
	addq	%rbx, %r11
	leaq	(%r8,%r11,4), %r11
	addq	%r10, %rax
	vmovss	(%r9), %xmm0
	leaq	(%rdx,%rax,4), %rsi
	movq	24(%r13), %rax
	movq	%r11, %r8
	leaq	0(,%rcx,4), %rcx
	subq	%r9, %r8
	vmovss	(%rsi), %xmm2
	leaq	4(%r9), %rdx
	subq	$4, %r8
	shrq	$2, %r8
	leaq	(%rax,%r10,4), %rax
	andl	$7, %r8d
	vfmadd132ss	(%rax), %xmm2, %xmm0
	addq	%rcx, %rax
	vmovss	%xmm0, (%rsi)
	cmpq	%rdx, %r11
	je	.L29
	testq	%r8, %r8
	je	.L30
	cmpq	$1, %r8
	je	.L54
	cmpq	$2, %r8
	je	.L55
	cmpq	$3, %r8
	je	.L56
	cmpq	$4, %r8
	je	.L57
	cmpq	$5, %r8
	je	.L58
	cmpq	$6, %r8
	je	.L59
	vmovss	4(%r9), %xmm3
	leaq	8(%r9), %rdx
	vfmadd231ss	(%rax), %xmm3, %xmm0
	addq	%rcx, %rax
	vmovss	%xmm0, (%rsi)
.L59:
	vmovss	(%rdx), %xmm4
	addq	$4, %rdx
	vfmadd231ss	(%rax), %xmm4, %xmm0
	addq	%rcx, %rax
	vmovss	%xmm0, (%rsi)
.L58:
	vmovss	(%rdx), %xmm5
	addq	$4, %rdx
	vfmadd231ss	(%rax), %xmm5, %xmm0
	addq	%rcx, %rax
	vmovss	%xmm0, (%rsi)
.L57:
	vmovss	(%rdx), %xmm6
	addq	$4, %rdx
	vfmadd231ss	(%rax), %xmm6, %xmm0
	addq	%rcx, %rax
	vmovss	%xmm0, (%rsi)
.L56:
	vmovss	(%rdx), %xmm7
	addq	$4, %rdx
	vfmadd231ss	(%rax), %xmm7, %xmm0
	addq	%rcx, %rax
	vmovss	%xmm0, (%rsi)
.L55:
	vmovss	(%rdx), %xmm1
	addq	$4, %rdx
	vfmadd231ss	(%rax), %xmm1, %xmm0
	addq	%rcx, %rax
	vmovss	%xmm0, (%rsi)
.L54:
	vmovss	(%rdx), %xmm8
	addq	$4, %rdx
	vfmadd231ss	(%rax), %xmm8, %xmm0
	addq	%rcx, %rax
	vmovss	%xmm0, (%rsi)
	cmpq	%rdx, %r11
	je	.L29
.L30:
	vmovss	(%rdx), %xmm9
	vfmadd231ss	(%rax), %xmm9, %xmm0
	addq	%rcx, %rax
	vmovss	%xmm0, (%rsi)
	vmovss	4(%rdx), %xmm10
	vfmadd231ss	(%rax), %xmm10, %xmm0
	addq	%rcx, %rax
	vmovss	%xmm0, (%rsi)
	vmovss	8(%rdx), %xmm11
	vfmadd231ss	(%rax), %xmm11, %xmm0
	addq	%rcx, %rax
	vmovss	%xmm0, (%rsi)
	vmovss	12(%rdx), %xmm12
	vfmadd231ss	(%rax), %xmm12, %xmm0
	addq	%rcx, %rax
	vmovss	%xmm0, (%rsi)
	vmovss	16(%rdx), %xmm13
	vfmadd231ss	(%rax), %xmm13, %xmm0
	addq	%rcx, %rax
	vmovss	%xmm0, (%rsi)
	vmovss	20(%rdx), %xmm14
	vfmadd231ss	(%rax), %xmm14, %xmm0
	addq	%rcx, %rax
	vmovss	%xmm0, (%rsi)
	addq	$32, %rdx
	vmovss	-8(%rdx), %xmm15
	vfmadd231ss	(%rax), %xmm15, %xmm0
	addq	%rcx, %rax
	vmovss	%xmm0, (%rsi)
	vmovss	-4(%rdx), %xmm2
	vfmadd231ss	(%rax), %xmm2, %xmm0
	addq	%rcx, %rax
	vmovss	%xmm0, (%rsi)
	cmpq	%rdx, %r11
	jne	.L30
.L29:
	addq	$1, %r10
	cmpq	%r10, %r14
	jne	.L53
.L27:
	addq	$1, %rdi
	cmpq	%rdi, %r15
	jne	.L52
.L71:
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE4901:
	.size	_Z4gemmR6matrixS0_S0_, .-_Z4gemmR6matrixS0_S0_
	.section	.text.unlikely
.LCOLDE4:
	.text
.LHOTE4:
	.section	.text.unlikely
.LCOLDB6:
	.text
.LHOTB6:
	.p2align 4,,15
	.globl	_Z8diff_tscxx
	.type	_Z8diff_tscxx, @function
_Z8diff_tscxx:
.LFB4902:
	.cfi_startproc
	subq	%rsi, %rdi
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rdi, %xmm0, %xmm1
	vmulsd	.LC5(%rip), %xmm1, %xmm2
	vcvttsd2siq	%xmm2, %rax
	ret
	.cfi_endproc
.LFE4902:
	.size	_Z8diff_tscxx, .-_Z8diff_tscxx
	.section	.text.unlikely
.LCOLDE6:
	.text
.LHOTE6:
	.section	.text.unlikely
.LCOLDB8:
	.text
.LHOTB8:
	.p2align 4,,15
	.globl	_Z7comp_ijR6matrixS0_S0_lll
	.type	_Z7comp_ijR6matrixS0_S0_lll, @function
_Z7comp_ijR6matrixS0_S0_lll:
.LFB4903:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	vxorps	%xmm0, %xmm0, %xmm0
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	8(%rdi), %rbx
	testq	%r9, %r9
	jle	.L118
	leaq	0(,%r8,4), %rbp
	xorl	%r11d, %r11d
	vxorps	%xmm0, %xmm0, %xmm0
	.p2align 4,,10
	.p2align 3
.L78:
	testq	%rbx, %rbx
	jle	.L76
	movq	%rcx, %rdx
	movq	24(%rdi), %r10
	imulq	16(%rdi), %rdx
	movq	16(%rsi), %rax
	leaq	(%r10,%rdx,4), %r13
	addq	%rbx, %rdx
	leaq	(%r10,%rdx,4), %r10
	vmovss	0(%r13), %xmm2
	leaq	0(,%rax,4), %r8
	movq	%r10, %r12
	movq	%rbp, %rax
	addq	24(%rsi), %rax
	subq	%r13, %r12
	leaq	4(%r13), %rdx
	subq	$4, %r12
	shrq	$2, %r12
	vfmadd231ss	(%rax), %xmm2, %xmm0
	andl	$7, %r12d
	addq	%r8, %rax
	cmpq	%rdx, %r10
	je	.L76
	testq	%r12, %r12
	je	.L77
	cmpq	$1, %r12
	je	.L105
	cmpq	$2, %r12
	je	.L106
	cmpq	$3, %r12
	je	.L107
	cmpq	$4, %r12
	je	.L108
	cmpq	$5, %r12
	je	.L109
	cmpq	$6, %r12
	je	.L110
	vmovss	4(%r13), %xmm3
	leaq	8(%r13), %rdx
	vfmadd231ss	(%rax), %xmm3, %xmm0
	addq	%r8, %rax
.L110:
	vmovss	(%rdx), %xmm4
	addq	$4, %rdx
	vfmadd231ss	(%rax), %xmm4, %xmm0
	addq	%r8, %rax
.L109:
	vmovss	(%rdx), %xmm5
	addq	$4, %rdx
	vfmadd231ss	(%rax), %xmm5, %xmm0
	addq	%r8, %rax
.L108:
	vmovss	(%rdx), %xmm6
	addq	$4, %rdx
	vfmadd231ss	(%rax), %xmm6, %xmm0
	addq	%r8, %rax
.L107:
	vmovss	(%rdx), %xmm7
	addq	$4, %rdx
	vfmadd231ss	(%rax), %xmm7, %xmm0
	addq	%r8, %rax
.L106:
	vmovss	(%rdx), %xmm1
	addq	$4, %rdx
	vfmadd231ss	(%rax), %xmm1, %xmm0
	addq	%r8, %rax
.L105:
	vmovss	(%rdx), %xmm8
	addq	$4, %rdx
	vfmadd231ss	(%rax), %xmm8, %xmm0
	addq	%r8, %rax
	cmpq	%rdx, %r10
	je	.L76
.L77:
	vmovss	(%rdx), %xmm9
	vfmadd231ss	(%rax), %xmm9, %xmm0
	addq	%r8, %rax
	addq	$32, %rdx
	vmovss	-28(%rdx), %xmm10
	vfmadd231ss	(%rax), %xmm10, %xmm0
	addq	%r8, %rax
	vmovss	-24(%rdx), %xmm11
	vfmadd231ss	(%rax), %xmm11, %xmm0
	addq	%r8, %rax
	vmovss	-20(%rdx), %xmm12
	vfmadd231ss	(%rax), %xmm12, %xmm0
	addq	%r8, %rax
	vmovss	-16(%rdx), %xmm13
	vfmadd231ss	(%rax), %xmm13, %xmm0
	addq	%r8, %rax
	vmovss	-12(%rdx), %xmm14
	vfmadd231ss	(%rax), %xmm14, %xmm0
	addq	%r8, %rax
	vmovss	-8(%rdx), %xmm15
	vfmadd231ss	(%rax), %xmm15, %xmm0
	addq	%r8, %rax
	vmovss	-4(%rdx), %xmm2
	vfmadd231ss	(%rax), %xmm2, %xmm0
	addq	%r8, %rax
	cmpq	%rdx, %r10
	jne	.L77
.L76:
	addq	$1, %r11
	cmpq	%r11, %r9
	jne	.L78
.L118:
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE4903:
	.size	_Z7comp_ijR6matrixS0_S0_lll, .-_Z7comp_ijR6matrixS0_S0_lll
	.section	.text.unlikely
.LCOLDE8:
	.text
.LHOTE8:
	.section	.rodata.str1.1
.LC10:
	.string	"M = %ld, N = %ld, K = %ld\n"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC11:
	.string	"A : %ld x %ld (ld=%ld) %ld bytes\n"
	.align 8
.LC12:
	.string	"B : %ld x %ld (ld=%ld) %ld bytes\n"
	.align 8
.LC13:
	.string	"C : %ld x %ld (ld=%ld) %ld bytes\n"
	.section	.rodata.str1.1
.LC14:
	.string	"total = %ld bytes\n"
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"repeat %d times (%.0f flops) ... "
	.section	.rodata.str1.1
.LC16:
	.string	"done"
.LC17:
	.string	" in %.f clocks\n"
.LC18:
	.string	" %f flops/clock\n"
	.section	.rodata.str1.8
	.align 8
.LC20:
	.string	"C(%ld,%ld) = %f, ans = %f, |C(%ld,%ld) - s| = %.9f\n"
	.section	.text.unlikely
.LCOLDB21:
	.section	.text.startup,"ax",@progbits
.LHOTB21:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB4904:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$232, %rsp
	.cfi_def_cfa_offset 288
	movq	%fs:40, %rax
	movq	%rax, 216(%rsp)
	xorl	%eax, %eax
	cmpl	$1, %edi
	jg	.L290
	movl	$5120, %r15d
	movl	$1280, %r13d
	movl	$160, %edx
	movq	$40, 8(%rsp)
.L121:
	movl	$32, %ebx
.L124:
	movl	$256, %esi
	movl	$64, %edi
	movl	$64, %r12d
.L126:
	xorl	%r14d, %r14d
.L128:
	movq	$0, 16(%rsp)
.L130:
	xorl	%ebp, %ebp
.L132:
	movq	$10, 72(%rsp)
	movl	$10, 64(%rsp)
.L134:
	movl	$-16529, %eax
	movl	$-28481, %ecx
	movl	$-26736, %r8d
	movq	$1, 96(%rsp)
	movw	%ax, 80(%rsp)
	movw	%cx, 32(%rsp)
	movw	%r8w, 24(%rsp)
.L136:
	testq	%r14, %r14
	je	.L170
	movq	%r14, %rdi
.L137:
	movq	16(%rsp), %r9
	movq	%rsi, 104(%rsp)
	movq	%rdx, 120(%rsp)
	testq	%r9, %r9
	cmove	%rbx, %r9
	testq	%rbp, %rbp
	cmove	%rbx, %rbp
	movq	%r9, 88(%rsp)
	imulq	%rdx, %rdi
	movq	%rbp, 16(%rsp)
	movq	%rdi, 136(%rsp)
	call	_Z7alloc64m
	movq	104(%rsp), %r11
	imulq	88(%rsp), %r11
	movq	%rax, 128(%rsp)
	movq	%r11, %rdi
	movq	%r11, 104(%rsp)
	call	_Z7alloc64m
	movq	120(%rsp), %rsi
	movq	%rax, 112(%rsp)
	imulq	%rbp, %rsi
	movq	%rsi, %rdi
	movq	%rsi, 120(%rsp)
	call	_Z7alloc64m
	movq	%r14, 160(%rsp)
	movq	128(%rsp), %r14
	movq	8(%rsp), %rdi
	movq	%rax, %rbp
	movq	%r12, 152(%rsp)
	movq	136(%rsp), %rcx
	testq	%r14, %r14
	movq	%rdi, 144(%rsp)
	je	.L140
	movq	%r14, 168(%rsp)
.L141:
	movq	88(%rsp), %r8
	movq	%r12, 176(%rsp)
	movq	112(%rsp), %rax
	movq	%rbx, 184(%rsp)
	movq	%r8, 192(%rsp)
	testq	%rax, %rax
	je	.L291
.L287:
	movq	%rax, 200(%rsp)
	testq	%rbp, %rbp
	je	.L292
.L144:
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm3, %xmm3, %xmm3
	vxorpd	%xmm6, %xmm6, %xmm6
	vxorpd	%xmm9, %xmm9, %xmm9
	movq	8(%rsp), %r14
	leaq	208(%rsp), %rsi
	vcvtsi2sdq	%rbx, %xmm3, %xmm4
	movzwl	24(%rsp), %eax
	vcvtsi2sdq	%r12, %xmm6, %xmm7
	movzwl	32(%rsp), %r9d
	vcvtsi2sd	64(%rsp), %xmm9, %xmm10
	movzwl	80(%rsp), %edx
	vcvtsi2sdq	%r14, %xmm0, %xmm1
	leaq	144(%rsp), %rdi
	movw	%ax, 208(%rsp)
	movw	%r9w, 210(%rsp)
	movw	%dx, 212(%rsp)
	vaddsd	%xmm1, %xmm1, %xmm2
	vmulsd	%xmm4, %xmm2, %xmm5
	vmulsd	%xmm7, %xmm5, %xmm8
	vmulsd	%xmm10, %xmm8, %xmm11
	vmovsd	%xmm11, 88(%rsp)
	call	_ZN6matrix9rand_initEPt
	leaq	208(%rsp), %rsi
	leaq	176(%rsp), %rdi
	call	_ZN6matrix9rand_initEPt
	leaq	0(,%rbx,4), %r10
	movq	%r10, 24(%rsp)
	testq	%r14, %r14
	jle	.L149
	movq	8(%rsp), %rsi
	leaq	-1(%rsi), %rdi
	andl	$3, %edi
	testq	%rbx, %rbx
	jle	.L271
	movq	%rdi, 32(%rsp)
	leaq	0(,%rbx,4), %rdx
	movq	%rbp, %rdi
	xorl	%esi, %esi
	call	memset
	movq	32(%rsp), %rdi
.L271:
	movq	16(%rsp), %r8
	movl	$1, %r14d
	movq	%r8, %rdx
	cmpq	8(%rsp), %r14
	je	.L149
	testq	%rdi, %rdi
	je	.L250
	cmpq	$1, %rdi
	je	.L251
	cmpq	$2, %rdi
	je	.L252
	testq	%rbx, %rbx
	jle	.L275
	leaq	0(,%rbx,4), %rdx
	xorl	%esi, %esi
	movq	%r8, 32(%rsp)
	leaq	0(%rbp,%r8,4), %rdi
	call	memset
	movq	32(%rsp), %rdx
.L275:
	addq	16(%rsp), %rdx
	addq	$1, %r14
.L252:
	testq	%rbx, %rbx
	jle	.L276
	leaq	0(%rbp,%rdx,4), %rdi
	movq	%rdx, 32(%rsp)
	xorl	%esi, %esi
	leaq	0(,%rbx,4), %rdx
	call	memset
	movq	32(%rsp), %rdx
.L276:
	addq	16(%rsp), %rdx
	addq	$1, %r14
.L251:
	testq	%rbx, %rbx
	jle	.L277
	leaq	0(%rbp,%rdx,4), %rdi
	movq	%rdx, 32(%rsp)
	xorl	%esi, %esi
	leaq	0(,%rbx,4), %rdx
	call	memset
	movq	32(%rsp), %rdx
.L277:
	addq	$1, %r14
	addq	16(%rsp), %rdx
	cmpq	8(%rsp), %r14
	je	.L149
.L250:
	testq	%rbx, %rbx
	jle	.L151
	leaq	0(%rbp,%rdx,4), %rdi
	movq	%rdx, 32(%rsp)
	movq	24(%rsp), %rdx
	xorl	%esi, %esi
	call	memset
	movq	32(%rsp), %rdx
.L151:
	movq	16(%rsp), %r9
	leaq	1(%r14), %rax
	movq	%rax, 32(%rsp)
	leaq	(%rdx,%r9), %r14
	testq	%rbx, %rbx
	jle	.L272
	movq	24(%rsp), %rdx
	leaq	0(%rbp,%r14,4), %rdi
	xorl	%esi, %esi
	call	memset
.L272:
	addq	16(%rsp), %r14
	testq	%rbx, %rbx
	jle	.L278
	movq	24(%rsp), %rdx
	xorl	%esi, %esi
	leaq	0(%rbp,%r14,4), %rdi
	call	memset
.L278:
	movq	16(%rsp), %rcx
	leaq	(%r14,%rcx), %rdx
	testq	%rbx, %rbx
	jle	.L279
	leaq	0(%rbp,%rdx,4), %rdi
	movq	%rdx, 80(%rsp)
	movq	24(%rsp), %rdx
	xorl	%esi, %esi
	call	memset
	movq	80(%rsp), %rdx
.L279:
	movq	32(%rsp), %r14
	addq	16(%rsp), %rdx
	addq	$3, %r14
	cmpq	8(%rsp), %r14
	jne	.L250
.L149:
	movq	%r12, %r8
	movq	8(%rsp), %r12
	movq	%rbx, %rcx
	xorl	%eax, %eax
	movl	$.LC10, %esi
	movl	$1, %edi
	movq	%r12, %rdx
	call	__printf_chk
	movq	144(%rsp), %rdx
	movl	$.LC11, %esi
	xorl	%eax, %eax
	movq	152(%rsp), %rcx
	movl	$1, %edi
	movq	160(%rsp), %r8
	movq	%rdx, %r9
	imulq	%rcx, %r9
	salq	$2, %r9
	call	__printf_chk
	movq	176(%rsp), %rdx
	movl	$.LC12, %esi
	xorl	%eax, %eax
	movq	184(%rsp), %rcx
	movl	$1, %edi
	movq	192(%rsp), %r8
	movq	%rdx, %r9
	imulq	%rcx, %r9
	salq	$2, %r9
	call	__printf_chk
	movq	16(%rsp), %r8
	movq	%r15, %r9
	movq	%rbx, %rcx
	movq	%r12, %rdx
	movl	$.LC13, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movq	144(%rsp), %rdx
	movl	$.LC14, %esi
	xorl	%eax, %eax
	imulq	152(%rsp), %rdx
	movl	$1, %edi
	movq	176(%rsp), %r15
	imulq	184(%rsp), %r15
	addq	%r15, %rdx
	addq	%r13, %rdx
	salq	$2, %rdx
	call	__printf_chk
	movl	64(%rsp), %edx
	movl	$.LC15, %esi
	movl	$1, %edi
	vmovsd	88(%rsp), %xmm0
	movl	$1, %eax
	call	__printf_chk
	movq	stdout(%rip), %rdi
	call	fflush
	rdtsc
	salq	$32, %rdx
	orq	%rdx, %rax
	cmpq	$0, 72(%rsp)
	movq	%rax, 112(%rsp)
	jle	.L146
	movq	152(%rsp), %r13
	movq	$0, 80(%rsp)
	movq	160(%rsp), %rsi
	movq	168(%rsp), %r10
	movq	200(%rsp), %r11
	movq	192(%rsp), %rdi
	leaq	0(,%r13,4), %r8
	salq	$2, %rsi
	movq	%r8, 64(%rsp)
	movq	%rsi, 24(%rsp)
	movq	%r10, 104(%rsp)
	movq	%r11, 32(%rsp)
	leaq	0(,%rdi,4), %rsi
.L155:
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	cmpq	$0, 8(%rsp)
	movq	104(%rsp), %r10
	jle	.L157
	.p2align 4,,10
	.p2align 3
.L236:
	testq	%rbx, %rbx
	jle	.L160
	movq	64(%rsp), %rcx
	leaq	(%rbx,%r14), %r12
	movq	%r14, %r8
	movq	32(%rsp), %r9
	leaq	(%rcx,%r10), %r11
	.p2align 4,,10
	.p2align 3
.L161:
	testq	%r13, %r13
	jle	.L162
	leaq	0(%rbp,%r8,4), %rcx
	movq	%r11, %rdi
	vmovss	(%r10), %xmm12
	leaq	4(%r10), %rdx
	subq	%r10, %rdi
	vmovss	(%rcx), %xmm13
	vfmadd132ss	(%r9), %xmm13, %xmm12
	leaq	(%r9,%rsi), %rax
	subq	$4, %rdi
	vmovss	%xmm12, (%rcx)
	shrq	$2, %rdi
	andl	$7, %edi
	cmpq	%r11, %rdx
	je	.L162
	testq	%rdi, %rdi
	je	.L163
	cmpq	$1, %rdi
	je	.L244
	cmpq	$2, %rdi
	je	.L245
	cmpq	$3, %rdi
	je	.L246
	cmpq	$4, %rdi
	je	.L247
	cmpq	$5, %rdi
	je	.L248
	cmpq	$6, %rdi
	je	.L249
	vmovss	(%rdx), %xmm14
	leaq	8(%r10), %rdx
	vfmadd231ss	(%rax), %xmm14, %xmm12
	addq	%rsi, %rax
	vmovss	%xmm12, (%rcx)
.L249:
	vmovss	(%rdx), %xmm15
	addq	$4, %rdx
	vfmadd231ss	(%rax), %xmm15, %xmm12
	addq	%rsi, %rax
	vmovss	%xmm12, (%rcx)
.L248:
	vmovss	(%rdx), %xmm0
	addq	$4, %rdx
	vfmadd231ss	(%rax), %xmm0, %xmm12
	addq	%rsi, %rax
	vmovss	%xmm12, (%rcx)
.L247:
	vmovss	(%rdx), %xmm1
	addq	$4, %rdx
	vfmadd231ss	(%rax), %xmm1, %xmm12
	addq	%rsi, %rax
	vmovss	%xmm12, (%rcx)
.L246:
	vmovss	(%rdx), %xmm2
	addq	$4, %rdx
	vfmadd231ss	(%rax), %xmm2, %xmm12
	addq	%rsi, %rax
	vmovss	%xmm12, (%rcx)
.L245:
	vmovss	(%rdx), %xmm3
	addq	$4, %rdx
	vfmadd231ss	(%rax), %xmm3, %xmm12
	addq	%rsi, %rax
	vmovss	%xmm12, (%rcx)
.L244:
	vmovss	(%rdx), %xmm4
	addq	$4, %rdx
	vfmadd231ss	(%rax), %xmm4, %xmm12
	addq	%rsi, %rax
	vmovss	%xmm12, (%rcx)
	cmpq	%r11, %rdx
	je	.L162
.L163:
	vmovss	(%rdx), %xmm5
	vfmadd231ss	(%rax), %xmm5, %xmm12
	addq	%rsi, %rax
	vmovss	%xmm12, (%rcx)
	vmovss	4(%rdx), %xmm6
	vfmadd231ss	(%rax), %xmm6, %xmm12
	addq	%rsi, %rax
	vmovss	%xmm12, (%rcx)
	vmovss	8(%rdx), %xmm7
	vfmadd231ss	(%rax), %xmm7, %xmm12
	addq	%rsi, %rax
	vmovss	%xmm12, (%rcx)
	vmovss	12(%rdx), %xmm8
	vfmadd231ss	(%rax), %xmm8, %xmm12
	addq	%rsi, %rax
	vmovss	%xmm12, (%rcx)
	vmovss	16(%rdx), %xmm9
	vfmadd231ss	(%rax), %xmm9, %xmm12
	addq	%rsi, %rax
	vmovss	%xmm12, (%rcx)
	vmovss	20(%rdx), %xmm10
	vfmadd231ss	(%rax), %xmm10, %xmm12
	addq	%rsi, %rax
	vmovss	%xmm12, (%rcx)
	addq	$32, %rdx
	vmovss	-8(%rdx), %xmm11
	vfmadd231ss	(%rax), %xmm11, %xmm12
	addq	%rsi, %rax
	vmovss	%xmm12, (%rcx)
	vmovss	-4(%rdx), %xmm13
	vfmadd231ss	(%rax), %xmm13, %xmm12
	addq	%rsi, %rax
	vmovss	%xmm12, (%rcx)
	cmpq	%r11, %rdx
	jne	.L163
.L162:
	addq	$1, %r8
	addq	$4, %r9
	cmpq	%r12, %r8
	jne	.L161
.L160:
	addq	$1, %r15
	addq	16(%rsp), %r14
	addq	24(%rsp), %r10
	cmpq	8(%rsp), %r15
	jne	.L236
.L157:
	addq	$1, 80(%rsp)
	movq	80(%rsp), %rcx
	cmpq	72(%rsp), %rcx
	jne	.L155
.L146:
	rdtsc
	vxorpd	%xmm12, %xmm12, %xmm12
	vxorpd	%xmm0, %xmm0, %xmm0
	salq	$32, %rdx
	orq	%rdx, %rax
	subq	112(%rsp), %rax
	vcvtsi2sdq	%rax, %xmm12, %xmm14
	vmulsd	.LC5(%rip), %xmm14, %xmm15
	vcvttsd2siq	%xmm15, %rdi
	vcvtsi2sdq	%rdi, %xmm0, %xmm1
	movl	$.LC16, %edi
	vmovsd	%xmm1, 24(%rsp)
	call	puts
	vmovsd	24(%rsp), %xmm0
	movl	$.LC17, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
	movl	$.LC18, %esi
	movl	$1, %edi
	movl	$1, %eax
	vmovsd	88(%rsp), %xmm2
	vdivsd	24(%rsp), %xmm2, %xmm0
	call	__printf_chk
	cmpq	$0, 96(%rsp)
	jne	.L293
.L153:
	xorl	%eax, %eax
	movq	216(%rsp), %rbx
	xorq	%fs:40, %rbx
	jne	.L294
	addq	$232, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L170:
	.cfi_restore_state
	movq	%r12, %r14
	jmp	.L137
.L290:
	movl	%edi, %r13d
	movq	8(%rsi), %rdi
	movq	%rsi, %r15
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, 8(%rsp)
	cmpl	$2, %r13d
	jne	.L122
	leaq	0(,%rax,4), %rdx
	movq	%rax, %r13
	salq	$7, %rax
	salq	$5, %r13
	movq	%rax, %r15
	jmp	.L121
.L292:
	movq	120(%rsp), %rdi
	call	_Z7alloc64m
	movq	%rax, %rbp
	jmp	.L144
.L122:
	movq	16(%r15), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, %rbx
	cmpl	$3, %r13d
	je	.L295
	movq	24(%r15), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, %r12
	cmpl	$4, %r13d
	je	.L296
	movq	32(%r15), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, %r14
	cmpl	$5, %r13d
	je	.L297
	movq	40(%r15), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, 16(%rsp)
	cmpl	$6, %r13d
	je	.L298
	movq	48(%r15), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, %rbp
	cmpl	$7, %r13d
	je	.L299
	movq	56(%r15), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movl	%eax, 64(%rsp)
	cmpl	$8, %r13d
	je	.L300
	movq	64(%r15), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	movq	%rax, 24(%rsp)
	call	strtol
	cmpl	$9, %r13d
	movq	24(%rsp), %rdx
	movq	%rax, 96(%rsp)
	je	.L301
	movq	72(%r15), %rdi
	movq	%rdx, 24(%rsp)
	xorl	%esi, %esi
	movl	$10, %edx
	call	strtol
	movq	24(%rsp), %rsi
	movq	%rax, %rcx
	movq	%rax, %r8
	movw	%ax, 80(%rsp)
	movq	8(%rsp), %rax
	shrq	$16, %rcx
	shrq	$8, %r8
	movq	%rcx, 24(%rsp)
	movslq	%esi, %rdi
	movq	%r8, 32(%rsp)
	leaq	0(,%rax,4), %rdx
	movq	%rdi, 72(%rsp)
	movq	%r12, %rdi
	imulq	%rbx, %rax
	leaq	0(,%r12,4), %rsi
	leaq	0(,%rax,4), %r15
	movq	%rax, %r13
	jmp	.L136
.L291:
	movq	104(%rsp), %rdi
	call	_Z7alloc64m
	jmp	.L287
.L294:
	call	__stack_chk_fail
.L293:
	leaq	208(%rsp), %rdi
	call	nrand48
	leaq	208(%rsp), %rdi
	cqto
	idivq	8(%rsp)
	movq	%rdx, %r12
	call	nrand48
	vxorpd	%xmm1, %xmm1, %xmm1
	vxorps	%xmm11, %xmm11, %xmm11
	movq	152(%rsp), %r10
	cqto
	idivq	%rbx
	cmpq	$0, 72(%rsp)
	movq	%rdx, %rcx
	jle	.L164
	movq	%r12, %r13
	movq	168(%rsp), %r9
	vxorps	%xmm11, %xmm11, %xmm11
	imulq	160(%rsp), %r13
	movq	192(%rsp), %rbx
	movq	200(%rsp), %rsi
	leaq	(%r9,%r13,4), %r8
	addq	%r10, %r13
	leaq	(%rsi,%rdx,4), %r11
	leaq	0(,%rbx,4), %rdi
	leaq	(%r9,%r13,4), %rdx
	xorl	%r9d, %r9d
.L167:
	testq	%r10, %r10
	jle	.L165
	leaq	4(%r8), %rax
	movq	%rdx, %r14
	vmovss	(%r8), %xmm3
	vfmadd231ss	(%r11), %xmm3, %xmm11
	leaq	(%r11,%rdi), %r15
	subq	%r8, %r14
	subq	$4, %r14
	shrq	$2, %r14
	andl	$7, %r14d
	cmpq	%rdx, %rax
	je	.L165
	testq	%r14, %r14
	je	.L166
	cmpq	$1, %r14
	je	.L238
	cmpq	$2, %r14
	je	.L239
	cmpq	$3, %r14
	je	.L240
	cmpq	$4, %r14
	je	.L241
	cmpq	$5, %r14
	je	.L242
	cmpq	$6, %r14
	je	.L243
	vmovss	4(%r8), %xmm4
	leaq	8(%r8), %rax
	vfmadd231ss	(%r15), %xmm4, %xmm11
	addq	%rdi, %r15
.L243:
	vmovss	(%rax), %xmm5
	addq	$4, %rax
	vfmadd231ss	(%r15), %xmm5, %xmm11
	addq	%rdi, %r15
.L242:
	vmovss	(%rax), %xmm6
	addq	$4, %rax
	vfmadd231ss	(%r15), %xmm6, %xmm11
	addq	%rdi, %r15
.L241:
	vmovss	(%rax), %xmm7
	addq	$4, %rax
	vfmadd231ss	(%r15), %xmm7, %xmm11
	addq	%rdi, %r15
.L240:
	vmovss	(%rax), %xmm8
	addq	$4, %rax
	vfmadd231ss	(%r15), %xmm8, %xmm11
	addq	%rdi, %r15
.L239:
	vmovss	(%rax), %xmm9
	addq	$4, %rax
	vfmadd231ss	(%r15), %xmm9, %xmm11
	addq	%rdi, %r15
.L238:
	vmovss	(%rax), %xmm10
	addq	$4, %rax
	vfmadd231ss	(%r15), %xmm10, %xmm11
	addq	%rdi, %r15
	cmpq	%rdx, %rax
	je	.L165
.L166:
	vmovss	(%rax), %xmm13
	vfmadd231ss	(%r15), %xmm13, %xmm11
	addq	%rdi, %r15
	addq	$32, %rax
	vmovss	-28(%rax), %xmm12
	vfmadd231ss	(%r15), %xmm12, %xmm11
	addq	%rdi, %r15
	vmovss	-24(%rax), %xmm14
	vfmadd231ss	(%r15), %xmm14, %xmm11
	addq	%rdi, %r15
	vmovss	-20(%rax), %xmm15
	vfmadd231ss	(%r15), %xmm15, %xmm11
	addq	%rdi, %r15
	vmovss	-16(%rax), %xmm0
	vfmadd231ss	(%r15), %xmm0, %xmm11
	addq	%rdi, %r15
	vmovss	-12(%rax), %xmm1
	vfmadd231ss	(%r15), %xmm1, %xmm11
	addq	%rdi, %r15
	vmovss	-8(%rax), %xmm2
	vfmadd231ss	(%r15), %xmm2, %xmm11
	addq	%rdi, %r15
	vmovss	-4(%rax), %xmm3
	vfmadd231ss	(%r15), %xmm3, %xmm11
	addq	%rdi, %r15
	cmpq	%rdx, %rax
	jne	.L166
.L165:
	addq	$1, %r9
	cmpq	72(%rsp), %r9
	jne	.L167
	vxorpd	%xmm4, %xmm4, %xmm4
	vcvtss2sd	%xmm11, %xmm4, %xmm1
.L164:
	movq	16(%rsp), %r13
	movq	%rcx, %r9
	movq	%r12, %r8
	movq	%r12, %rdx
	movl	$.LC20, %esi
	movl	$1, %edi
	movl	$3, %eax
	vmovss	.LC19(%rip), %xmm7
	imulq	%r12, %r13
	addq	%rcx, %r13
	vmovss	0(%rbp,%r13,4), %xmm5
	vsubss	%xmm11, %xmm5, %xmm6
	vcvtss2sd	%xmm5, %xmm0, %xmm0
	vandps	%xmm7, %xmm6, %xmm8
	vcvtss2sd	%xmm8, %xmm2, %xmm2
	call	__printf_chk
	jmp	.L153
.L140:
	movq	%rcx, %rdi
	call	_Z7alloc64m
	movq	%rax, 168(%rsp)
	jmp	.L141
.L301:
	movq	8(%rsp), %r15
	movslq	%edx, %r13
	movq	%r12, %rdi
	movl	$-16529, %r9d
	movl	$-28481, %r10d
	movl	$-26736, %r11d
	movq	%r13, 72(%rsp)
	leaq	0(,%r12,4), %rsi
	movw	%r9w, 80(%rsp)
	movw	%r10w, 32(%rsp)
	leaq	0(,%r15,4), %rdx
	movw	%r11w, 24(%rsp)
	imulq	%rbx, %r15
	movq	%r15, %r13
	leaq	0(,%r15,4), %r15
	jmp	.L136
.L300:
	movq	8(%rsp), %r11
	movslq	%eax, %r10
	movq	%r12, %rdi
	movq	%r10, 72(%rsp)
	leaq	0(,%r12,4), %rsi
	leaq	0(,%r11,4), %rdx
	imulq	%rbx, %r11
	leaq	0(,%r11,4), %r15
	movq	%r11, %r13
	jmp	.L134
.L299:
	movq	8(%rsp), %r9
	leaq	0(,%r12,4), %rsi
	movq	%r12, %rdi
	leaq	0(,%r9,4), %rdx
	imulq	%rbx, %r9
	leaq	0(,%r9,4), %r15
	movq	%r9, %r13
	jmp	.L132
.L298:
	movq	8(%rsp), %r8
	leaq	0(,%r12,4), %rsi
	movq	%r12, %rdi
	leaq	0(,%r8,4), %rdx
	imulq	%rbx, %r8
	leaq	0(,%r8,4), %r15
	movq	%r8, %r13
	jmp	.L130
.L297:
	movq	8(%rsp), %rbp
	leaq	0(,%r12,4), %rsi
	movq	%r12, %rdi
	leaq	0(,%rbp,4), %rdx
	imulq	%rbx, %rbp
	leaq	0(,%rbp,4), %r15
	movq	%rbp, %r13
	jmp	.L128
.L296:
	movq	8(%rsp), %rcx
	leaq	0(,%rax,4), %rsi
	movq	%rax, %rdi
	leaq	0(,%rcx,4), %rdx
	imulq	%rbx, %rcx
	leaq	0(,%rcx,4), %r15
	movq	%rcx, %r13
	jmp	.L126
.L295:
	movq	8(%rsp), %rax
	leaq	0(,%rax,4), %rdx
	imulq	%rbx, %rax
	leaq	0(,%rax,4), %r15
	movq	%rax, %r13
	jmp	.L124
	.cfi_endproc
.LFE4904:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE21:
	.section	.text.startup
.LHOTE21:
	.section	.rodata
	.align 16
	.type	_ZZ7alloc64mE19__PRETTY_FUNCTION__, @object
	.size	_ZZ7alloc64mE19__PRETTY_FUNCTION__, 22
_ZZ7alloc64mE19__PRETTY_FUNCTION__:
	.string	"void* alloc64(size_t)"
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC5:
	.long	186737709
	.long	1072875609
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC19:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
