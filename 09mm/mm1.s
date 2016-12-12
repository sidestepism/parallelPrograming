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
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	(%rdx), %rax
	movq	8(%rdx), %r15
	movq	8(%rdi), %rbx
	movq	%rax, -56(%rbp)
	testq	%rax, %rax
	jle	.L68
	movq	%rdi, %r13
	movq	%rsi, %r14
	movq	%rdx, %r12
	xorl	%edi, %edi
	.p2align 4,,10
	.p2align 3
.L52:
	xorl	%edx, %edx
	testq	%r15, %r15
	jle	.L27
	.p2align 4,,10
	.p2align 3
.L53:
	testq	%rbx, %rbx
	jle	.L29
	movq	%rdi, %r8
	movq	%rdi, %r10
	movq	24(%r13), %rsi
	imulq	16(%r13), %r10
	imulq	16(%r12), %r8
	movq	24(%r12), %rcx
	movq	16(%r14), %rax
	leaq	(%rsi,%r10,4), %r11
	addq	%rbx, %r10
	leaq	(%rsi,%r10,4), %rsi
	addq	%rdx, %r8
	vbroadcastss	(%r11), %ymm0
	leaq	(%rcx,%r8,4), %r9
	movq	24(%r14), %rcx
	movq	%rsi, %r10
	leaq	0(,%rax,4), %r8
	subq	%r11, %r10
	vmovaps	(%r9), %ymm2
	subq	$4, %r10
	shrq	$2, %r10
	leaq	(%rcx,%rdx,4), %rax
	andl	$7, %r10d
	leaq	4(%r11), %rcx
	vfmadd132ps	(%rax), %ymm2, %ymm0
	addq	%r8, %rax
	vmovaps	%ymm0, (%r9)
	cmpq	%rcx, %rsi
	je	.L29
	testq	%r10, %r10
	je	.L30
	cmpq	$1, %r10
	je	.L54
	cmpq	$2, %r10
	je	.L55
	cmpq	$3, %r10
	je	.L56
	cmpq	$4, %r10
	je	.L57
	cmpq	$5, %r10
	je	.L58
	cmpq	$6, %r10
	je	.L59
	vbroadcastss	4(%r11), %ymm1
	leaq	8(%r11), %rcx
	vfmadd231ps	(%rax), %ymm1, %ymm0
	addq	%r8, %rax
	vmovaps	%ymm0, (%r9)
.L59:
	vbroadcastss	(%rcx), %ymm3
	addq	$4, %rcx
	vfmadd231ps	(%rax), %ymm3, %ymm0
	addq	%r8, %rax
	vmovaps	%ymm0, (%r9)
.L58:
	vbroadcastss	(%rcx), %ymm4
	addq	$4, %rcx
	vfmadd231ps	(%rax), %ymm4, %ymm0
	addq	%r8, %rax
	vmovaps	%ymm0, (%r9)
.L57:
	vbroadcastss	(%rcx), %ymm5
	addq	$4, %rcx
	vfmadd231ps	(%rax), %ymm5, %ymm0
	addq	%r8, %rax
	vmovaps	%ymm0, (%r9)
.L56:
	vbroadcastss	(%rcx), %ymm6
	addq	$4, %rcx
	vfmadd231ps	(%rax), %ymm6, %ymm0
	addq	%r8, %rax
	vmovaps	%ymm0, (%r9)
.L55:
	vbroadcastss	(%rcx), %ymm7
	addq	$4, %rcx
	vfmadd231ps	(%rax), %ymm7, %ymm0
	addq	%r8, %rax
	vmovaps	%ymm0, (%r9)
.L54:
	vbroadcastss	(%rcx), %ymm8
	addq	$4, %rcx
	vfmadd231ps	(%rax), %ymm8, %ymm0
	addq	%r8, %rax
	vmovaps	%ymm0, (%r9)
	cmpq	%rcx, %rsi
	je	.L29
.L30:
	vbroadcastss	(%rcx), %ymm9
	vfmadd231ps	(%rax), %ymm9, %ymm0
	addq	%r8, %rax
	vmovaps	%ymm0, (%r9)
	vbroadcastss	4(%rcx), %ymm10
	vfmadd231ps	(%rax), %ymm10, %ymm0
	addq	%r8, %rax
	vmovaps	%ymm0, (%r9)
	vbroadcastss	8(%rcx), %ymm11
	vfmadd231ps	(%rax), %ymm11, %ymm0
	addq	%r8, %rax
	vmovaps	%ymm0, (%r9)
	vbroadcastss	12(%rcx), %ymm12
	vfmadd132ps	(%rax), %ymm0, %ymm12
	addq	%r8, %rax
	vmovaps	%ymm12, (%r9)
	vbroadcastss	16(%rcx), %ymm13
	vfmadd231ps	(%rax), %ymm13, %ymm12
	addq	%r8, %rax
	vmovaps	%ymm12, (%r9)
	vbroadcastss	20(%rcx), %ymm14
	vfmadd231ps	(%rax), %ymm14, %ymm12
	addq	%r8, %rax
	vmovaps	%ymm12, (%r9)
	addq	$32, %rcx
	vbroadcastss	-8(%rcx), %ymm15
	vfmadd231ps	(%rax), %ymm15, %ymm12
	addq	%r8, %rax
	vmovaps	%ymm12, (%r9)
	vbroadcastss	-4(%rcx), %ymm0
	vfmadd132ps	(%rax), %ymm12, %ymm0
	addq	%r8, %rax
	vmovaps	%ymm0, (%r9)
	cmpq	%rcx, %rsi
	jne	.L30
.L29:
	addq	$8, %rdx
	cmpq	%rdx, %r15
	jg	.L53
.L27:
	addq	$1, %rdi
	cmpq	%rdi, -56(%rbp)
	jne	.L52
	vzeroupper
.L68:
	popq	%rbx
	popq	%r9
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r9), %rsp
	.cfi_def_cfa 7, 8
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
	jle	.L115
	leaq	0(,%r8,4), %rbp
	xorl	%r11d, %r11d
	vxorps	%xmm0, %xmm0, %xmm0
	.p2align 4,,10
	.p2align 3
.L75:
	testq	%rbx, %rbx
	jle	.L73
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
	je	.L73
	testq	%r12, %r12
	je	.L74
	cmpq	$1, %r12
	je	.L102
	cmpq	$2, %r12
	je	.L103
	cmpq	$3, %r12
	je	.L104
	cmpq	$4, %r12
	je	.L105
	cmpq	$5, %r12
	je	.L106
	cmpq	$6, %r12
	je	.L107
	vmovss	4(%r13), %xmm3
	leaq	8(%r13), %rdx
	vfmadd231ss	(%rax), %xmm3, %xmm0
	addq	%r8, %rax
.L107:
	vmovss	(%rdx), %xmm4
	addq	$4, %rdx
	vfmadd231ss	(%rax), %xmm4, %xmm0
	addq	%r8, %rax
.L106:
	vmovss	(%rdx), %xmm5
	addq	$4, %rdx
	vfmadd231ss	(%rax), %xmm5, %xmm0
	addq	%r8, %rax
.L105:
	vmovss	(%rdx), %xmm6
	addq	$4, %rdx
	vfmadd231ss	(%rax), %xmm6, %xmm0
	addq	%r8, %rax
.L104:
	vmovss	(%rdx), %xmm7
	addq	$4, %rdx
	vfmadd231ss	(%rax), %xmm7, %xmm0
	addq	%r8, %rax
.L103:
	vmovss	(%rdx), %xmm1
	addq	$4, %rdx
	vfmadd231ss	(%rax), %xmm1, %xmm0
	addq	%r8, %rax
.L102:
	vmovss	(%rdx), %xmm8
	addq	$4, %rdx
	vfmadd231ss	(%rax), %xmm8, %xmm0
	addq	%r8, %rax
	cmpq	%rdx, %r10
	je	.L73
.L74:
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
	jne	.L74
.L73:
	addq	$1, %r11
	cmpq	%r11, %r9
	jne	.L75
.L115:
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
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	subq	$224, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	cmpl	$1, %edi
	jg	.L287
	movq	$5120, -152(%rbp)
	movl	$1280, %r14d
	movl	$160, %ebx
	movl	$40, %r15d
.L118:
	movq	$32, -136(%rbp)
.L121:
	movl	$256, %ecx
	movl	$64, %edi
	movl	$64, %r12d
.L123:
	xorl	%r13d, %r13d
.L125:
	movq	$0, -144(%rbp)
.L127:
	movq	$0, -224(%rbp)
.L129:
	movq	$10, -216(%rbp)
	movl	$10, -168(%rbp)
.L131:
	movl	$-16529, %edx
	movl	$-28481, %esi
	movl	$-26736, %r8d
	movq	$1, -240(%rbp)
	movw	%dx, -176(%rbp)
	movw	%si, -208(%rbp)
	movw	%r8w, -160(%rbp)
.L133:
	testq	%r13, %r13
	je	.L167
	movq	%r13, %rdi
.L134:
	movq	-144(%rbp), %r9
	movq	%rcx, -248(%rbp)
	movq	-136(%rbp), %r11
	movq	-224(%rbp), %rax
	testq	%r9, %r9
	cmove	%r11, %r9
	testq	%rax, %rax
	cmove	%r11, %rax
	movq	%r9, -232(%rbp)
	imulq	%rbx, %rdi
	movq	%rax, -144(%rbp)
	movq	%rdi, -272(%rbp)
	call	_Z7alloc64m
	movq	-248(%rbp), %rdx
	imulq	-232(%rbp), %rdx
	movq	%rax, -264(%rbp)
	movq	%rdx, %rdi
	movq	%rdx, -224(%rbp)
	call	_Z7alloc64m
	imulq	-144(%rbp), %rbx
	movq	%rax, -248(%rbp)
	movq	%rbx, %rdi
	movq	%rbx, -256(%rbp)
	call	_Z7alloc64m
	movq	%r13, -112(%rbp)
	movq	-264(%rbp), %r13
	movq	%rax, %rbx
	movq	%r15, -128(%rbp)
	movq	-272(%rbp), %rsi
	movq	%r12, -120(%rbp)
	testq	%r13, %r13
	je	.L137
	movq	%r13, -104(%rbp)
.L138:
	movq	-136(%rbp), %r8
	movq	%r12, -96(%rbp)
	movq	-232(%rbp), %r9
	movq	-248(%rbp), %rax
	movq	%r8, -88(%rbp)
	movq	%r9, -80(%rbp)
	testq	%rax, %rax
	je	.L288
.L284:
	movq	%rax, -72(%rbp)
	testq	%rbx, %rbx
	je	.L289
.L141:
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm3, %xmm3, %xmm3
	vxorpd	%xmm6, %xmm6, %xmm6
	vxorpd	%xmm9, %xmm9, %xmm9
	movq	-136(%rbp), %r13
	leaq	-64(%rbp), %rsi
	vcvtsi2sdq	%r15, %xmm0, %xmm1
	movzwl	-160(%rbp), %r11d
	vcvtsi2sdq	%r12, %xmm6, %xmm7
	movzwl	-208(%rbp), %r10d
	vcvtsi2sd	-168(%rbp), %xmm9, %xmm10
	movzwl	-176(%rbp), %eax
	vcvtsi2sdq	%r13, %xmm3, %xmm4
	vaddsd	%xmm1, %xmm1, %xmm2
	leaq	-128(%rbp), %rdi
	movw	%r11w, -64(%rbp)
	movw	%r10w, -62(%rbp)
	movw	%ax, -60(%rbp)
	vmulsd	%xmm4, %xmm2, %xmm5
	vmulsd	%xmm7, %xmm5, %xmm8
	vmulsd	%xmm10, %xmm8, %xmm11
	vmovsd	%xmm11, -232(%rbp)
	call	_ZN6matrix9rand_initEPt
	leaq	-64(%rbp), %rsi
	leaq	-96(%rbp), %rdi
	call	_ZN6matrix9rand_initEPt
	movq	%r13, %rcx
	salq	$2, %rcx
	movq	%rcx, -160(%rbp)
	testq	%r15, %r15
	jle	.L146
	leaq	-1(%r15), %rdi
	andl	$3, %edi
	cmpq	$0, -136(%rbp)
	jle	.L268
	movq	%rdi, -208(%rbp)
	movq	%rcx, %rdx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	call	memset
	movq	-208(%rbp), %rdi
.L268:
	movq	-144(%rbp), %rdx
	movl	$1, %r13d
	movq	%rdx, %r11
	cmpq	%r15, %r13
	je	.L146
	testq	%rdi, %rdi
	je	.L246
	cmpq	$1, %rdi
	je	.L247
	cmpq	$2, %rdi
	je	.L248
	cmpq	$0, -136(%rbp)
	jle	.L272
	movq	%rdx, -208(%rbp)
	leaq	(%rbx,%rdx,4), %rdi
	xorl	%esi, %esi
	movq	-160(%rbp), %rdx
	call	memset
	movq	-208(%rbp), %r11
.L272:
	addq	-144(%rbp), %r11
	addq	$1, %r13
.L248:
	cmpq	$0, -136(%rbp)
	jle	.L273
	movq	-160(%rbp), %rdx
	leaq	(%rbx,%r11,4), %rdi
	xorl	%esi, %esi
	movq	%r11, -208(%rbp)
	call	memset
	movq	-208(%rbp), %r11
.L273:
	addq	-144(%rbp), %r11
	addq	$1, %r13
.L247:
	cmpq	$0, -136(%rbp)
	jle	.L274
	movq	-160(%rbp), %rdx
	leaq	(%rbx,%r11,4), %rdi
	xorl	%esi, %esi
	movq	%r11, -208(%rbp)
	call	memset
	movq	-208(%rbp), %r11
.L274:
	addq	$1, %r13
	addq	-144(%rbp), %r11
	cmpq	%r15, %r13
	je	.L146
.L246:
	cmpq	$0, -136(%rbp)
	jle	.L148
	movq	-160(%rbp), %rdx
	leaq	(%rbx,%r11,4), %rdi
	xorl	%esi, %esi
	movq	%r11, -208(%rbp)
	call	memset
	movq	-208(%rbp), %r11
.L148:
	movq	-144(%rbp), %r8
	leaq	1(%r13), %rsi
	cmpq	$0, -136(%rbp)
	movq	%rsi, -208(%rbp)
	leaq	(%r11,%r8), %r13
	jle	.L269
	movq	-160(%rbp), %rdx
	leaq	(%rbx,%r13,4), %rdi
	xorl	%esi, %esi
	call	memset
.L269:
	addq	-144(%rbp), %r13
	cmpq	$0, -136(%rbp)
	jle	.L275
	movq	-160(%rbp), %rdx
	leaq	(%rbx,%r13,4), %rdi
	xorl	%esi, %esi
	call	memset
.L275:
	movq	-144(%rbp), %r9
	cmpq	$0, -136(%rbp)
	leaq	0(%r13,%r9), %r11
	jle	.L276
	movq	-160(%rbp), %rdx
	leaq	(%rbx,%r11,4), %rdi
	xorl	%esi, %esi
	movq	%r11, -176(%rbp)
	call	memset
	movq	-176(%rbp), %r11
.L276:
	movq	-208(%rbp), %r13
	addq	-144(%rbp), %r11
	addq	$3, %r13
	cmpq	%r15, %r13
	jne	.L246
.L146:
	movq	%r12, %r8
	movq	-136(%rbp), %r12
	movq	%r15, %rdx
	xorl	%eax, %eax
	movl	$.LC10, %esi
	movl	$1, %edi
	movq	%r12, %rcx
	call	__printf_chk
	movq	-128(%rbp), %rdx
	movl	$.LC11, %esi
	xorl	%eax, %eax
	movq	-120(%rbp), %rcx
	movl	$1, %edi
	movq	-112(%rbp), %r8
	movq	%rdx, %r9
	imulq	%rcx, %r9
	salq	$2, %r9
	call	__printf_chk
	movq	-96(%rbp), %rdx
	movl	$.LC12, %esi
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	movl	$1, %edi
	movq	-80(%rbp), %r8
	movq	%rdx, %r9
	imulq	%rcx, %r9
	salq	$2, %r9
	call	__printf_chk
	movq	%r12, %rcx
	movq	%r15, %rdx
	movl	$.LC13, %esi
	movq	-152(%rbp), %r9
	movl	$1, %edi
	xorl	%eax, %eax
	movq	-144(%rbp), %r8
	call	__printf_chk
	movq	-128(%rbp), %rdx
	movl	$.LC14, %esi
	xorl	%eax, %eax
	imulq	-120(%rbp), %rdx
	movl	$1, %edi
	movq	-96(%rbp), %r10
	imulq	-88(%rbp), %r10
	addq	%r10, %rdx
	addq	%r14, %rdx
	salq	$2, %rdx
	call	__printf_chk
	movl	-168(%rbp), %edx
	movl	$.LC15, %esi
	movl	$1, %edi
	vmovsd	-232(%rbp), %xmm0
	movl	$1, %eax
	call	__printf_chk
	movq	stdout(%rip), %rdi
	call	fflush
	rdtsc
	salq	$32, %rdx
	orq	%rdx, %rax
	cmpq	$0, -216(%rbp)
	movq	%rax, -256(%rbp)
	jle	.L143
	movq	-136(%rbp), %r8
	movq	%r15, -152(%rbp)
	movq	-120(%rbp), %r13
	movq	$0, -224(%rbp)
	movq	-112(%rbp), %rdi
	movq	-104(%rbp), %r14
	movq	-72(%rbp), %rcx
	subq	$1, %r8
	movq	-80(%rbp), %rsi
	leaq	0(,%r13,4), %r9
	andq	$-8, %r8
	salq	$2, %rdi
	addq	$8, %r8
	movq	%r9, -168(%rbp)
	movq	%r14, -248(%rbp)
	movq	%rcx, -208(%rbp)
	movq	%rdi, -160(%rbp)
	leaq	0(,%rsi,4), %rsi
	movq	%r8, -176(%rbp)
.L152:
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	cmpq	$0, -152(%rbp)
	movq	-248(%rbp), %r10
	jle	.L154
	.p2align 4,,10
	.p2align 3
.L266:
	cmpq	$0, -136(%rbp)
	jle	.L157
	movq	-176(%rbp), %r11
	movq	%r14, %r8
	movq	-168(%rbp), %rax
	movq	-208(%rbp), %r9
	leaq	(%r11,%r14), %r12
	leaq	(%rax,%r10), %r11
	.p2align 4,,10
	.p2align 3
.L158:
	testq	%r13, %r13
	jle	.L159
	leaq	(%rbx,%r8,4), %rcx
	movq	%r11, %rdi
	vbroadcastss	(%r10), %ymm12
	leaq	4(%r10), %rdx
	subq	%r10, %rdi
	vmovaps	(%rcx), %ymm13
	vfmadd132ps	(%r9), %ymm13, %ymm12
	leaq	(%r9,%rsi), %rax
	subq	$4, %rdi
	vmovaps	%ymm12, (%rcx)
	shrq	$2, %rdi
	andl	$7, %edi
	cmpq	%r11, %rdx
	je	.L159
	testq	%rdi, %rdi
	je	.L160
	cmpq	$1, %rdi
	je	.L240
	cmpq	$2, %rdi
	je	.L241
	cmpq	$3, %rdi
	je	.L242
	cmpq	$4, %rdi
	je	.L243
	cmpq	$5, %rdi
	je	.L244
	cmpq	$6, %rdi
	je	.L245
	vbroadcastss	(%rdx), %ymm14
	leaq	8(%r10), %rdx
	vfmadd231ps	(%rax), %ymm14, %ymm12
	addq	%rsi, %rax
	vmovaps	%ymm12, (%rcx)
.L245:
	vbroadcastss	(%rdx), %ymm15
	addq	$4, %rdx
	vfmadd231ps	(%rax), %ymm15, %ymm12
	addq	%rsi, %rax
	vmovaps	%ymm12, (%rcx)
.L244:
	vbroadcastss	(%rdx), %ymm0
	addq	$4, %rdx
	vfmadd231ps	(%rax), %ymm0, %ymm12
	addq	%rsi, %rax
	vmovaps	%ymm12, (%rcx)
.L243:
	vbroadcastss	(%rdx), %ymm1
	addq	$4, %rdx
	vfmadd231ps	(%rax), %ymm1, %ymm12
	addq	%rsi, %rax
	vmovaps	%ymm12, (%rcx)
.L242:
	vbroadcastss	(%rdx), %ymm2
	addq	$4, %rdx
	vfmadd231ps	(%rax), %ymm2, %ymm12
	addq	%rsi, %rax
	vmovaps	%ymm12, (%rcx)
.L241:
	vbroadcastss	(%rdx), %ymm3
	addq	$4, %rdx
	vfmadd231ps	(%rax), %ymm3, %ymm12
	addq	%rsi, %rax
	vmovaps	%ymm12, (%rcx)
.L240:
	vbroadcastss	(%rdx), %ymm4
	addq	$4, %rdx
	vfmadd231ps	(%rax), %ymm4, %ymm12
	addq	%rsi, %rax
	vmovaps	%ymm12, (%rcx)
	cmpq	%r11, %rdx
	je	.L159
.L160:
	vbroadcastss	(%rdx), %ymm5
	vfmadd231ps	(%rax), %ymm5, %ymm12
	addq	%rsi, %rax
	vmovaps	%ymm12, (%rcx)
	vbroadcastss	4(%rdx), %ymm6
	vfmadd231ps	(%rax), %ymm6, %ymm12
	addq	%rsi, %rax
	vmovaps	%ymm12, (%rcx)
	vbroadcastss	8(%rdx), %ymm7
	vfmadd231ps	(%rax), %ymm7, %ymm12
	addq	%rsi, %rax
	vmovaps	%ymm12, (%rcx)
	vbroadcastss	12(%rdx), %ymm8
	vfmadd231ps	(%rax), %ymm8, %ymm12
	addq	%rsi, %rax
	vmovaps	%ymm12, (%rcx)
	vbroadcastss	16(%rdx), %ymm9
	vfmadd231ps	(%rax), %ymm9, %ymm12
	addq	%rsi, %rax
	vmovaps	%ymm12, (%rcx)
	vbroadcastss	20(%rdx), %ymm10
	vfmadd231ps	(%rax), %ymm10, %ymm12
	addq	%rsi, %rax
	vmovaps	%ymm12, (%rcx)
	addq	$32, %rdx
	vbroadcastss	-8(%rdx), %ymm11
	vfmadd231ps	(%rax), %ymm11, %ymm12
	addq	%rsi, %rax
	vmovaps	%ymm12, (%rcx)
	vbroadcastss	-4(%rdx), %ymm13
	vfmadd231ps	(%rax), %ymm13, %ymm12
	addq	%rsi, %rax
	vmovaps	%ymm12, (%rcx)
	cmpq	%r11, %rdx
	jne	.L160
.L159:
	addq	$8, %r8
	addq	$32, %r9
	cmpq	%r8, %r12
	jne	.L158
.L157:
	addq	$1, %r15
	addq	-144(%rbp), %r14
	addq	-160(%rbp), %r10
	cmpq	-152(%rbp), %r15
	jne	.L266
.L154:
	addq	$1, -224(%rbp)
	movq	-224(%rbp), %rcx
	cmpq	-216(%rbp), %rcx
	jne	.L152
	movq	-152(%rbp), %r15
	vzeroupper
.L143:
	rdtsc
	vxorpd	%xmm12, %xmm12, %xmm12
	vxorpd	%xmm0, %xmm0, %xmm0
	salq	$32, %rdx
	orq	%rdx, %rax
	subq	-256(%rbp), %rax
	vcvtsi2sdq	%rax, %xmm12, %xmm14
	vmulsd	.LC5(%rip), %xmm14, %xmm15
	vcvttsd2siq	%xmm15, %rdi
	vcvtsi2sdq	%rdi, %xmm0, %xmm1
	movl	$.LC16, %edi
	vmovsd	%xmm1, -152(%rbp)
	call	puts
	movl	$.LC17, %esi
	movl	$1, %edi
	vmovsd	-152(%rbp), %xmm0
	movl	$1, %eax
	call	__printf_chk
	movl	$.LC18, %esi
	movl	$1, %edi
	movl	$1, %eax
	vmovsd	-232(%rbp), %xmm2
	vdivsd	-152(%rbp), %xmm2, %xmm0
	call	__printf_chk
	cmpq	$0, -240(%rbp)
	jne	.L290
.L150:
	xorl	%eax, %eax
	movq	-56(%rbp), %rbx
	xorq	%fs:40, %rbx
	jne	.L291
	addq	$224, %rsp
	popq	%rbx
	popq	%rcx
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%rcx), %rsp
	.cfi_def_cfa 7, 8
	ret
.L167:
	.cfi_restore_state
	movq	%r12, %r13
	jmp	.L134
.L287:
	movl	%edi, %ebx
	movq	8(%rsi), %rdi
	movq	%rsi, %r14
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, %r15
	cmpl	$2, %ebx
	jne	.L119
	leaq	0(,%rax,4), %rbx
	movq	%rax, %r14
	salq	$7, %rax
	salq	$5, %r14
	movq	%rax, -152(%rbp)
	jmp	.L118
.L289:
	movq	-256(%rbp), %rdi
	call	_Z7alloc64m
	movq	%rax, %rbx
	jmp	.L141
.L119:
	movq	16(%r14), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, -136(%rbp)
	cmpl	$3, %ebx
	je	.L292
	movq	24(%r14), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, %r12
	cmpl	$4, %ebx
	je	.L293
	movq	32(%r14), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, %r13
	cmpl	$5, %ebx
	je	.L294
	movq	40(%r14), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, -144(%rbp)
	cmpl	$6, %ebx
	je	.L295
	movq	48(%r14), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, -224(%rbp)
	cmpl	$7, %ebx
	je	.L296
	movq	56(%r14), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movl	%eax, -168(%rbp)
	cmpl	$8, %ebx
	je	.L297
	movq	64(%r14), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, -152(%rbp)
	call	strtol
	cmpl	$9, %ebx
	movq	-152(%rbp), %rbx
	movq	%rax, -240(%rbp)
	je	.L298
	movq	72(%r14), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	movq	%rbx, -152(%rbp)
	leaq	0(,%r15,4), %rbx
	call	strtol
	movq	-136(%rbp), %r14
	movq	-152(%rbp), %rcx
	movq	%rax, %rdx
	movq	%rax, %rsi
	movw	%ax, -176(%rbp)
	shrq	$16, %rdx
	shrq	$8, %rsi
	movq	%rdx, -160(%rbp)
	imulq	%r15, %r14
	movq	%rsi, -208(%rbp)
	movslq	%ecx, %rdi
	movq	%rdi, -216(%rbp)
	leaq	0(,%r12,4), %rcx
	movq	%r12, %rdi
	leaq	0(,%r14,4), %r8
	movq	%r8, -152(%rbp)
	jmp	.L133
.L288:
	movq	-224(%rbp), %rdi
	call	_Z7alloc64m
	jmp	.L284
.L291:
	call	__stack_chk_fail
.L290:
	leaq	-64(%rbp), %rdi
	call	nrand48
	leaq	-64(%rbp), %rdi
	cqto
	idivq	%r15
	movq	%rdx, %r12
	call	nrand48
	movq	-120(%rbp), %r10
	vxorpd	%xmm1, %xmm1, %xmm1
	vxorps	%xmm11, %xmm11, %xmm11
	cqto
	idivq	-136(%rbp)
	cmpq	$0, -216(%rbp)
	movq	%rdx, %rcx
	jle	.L161
	movq	%r12, %r13
	movq	-104(%rbp), %r9
	vxorps	%xmm11, %xmm11, %xmm11
	imulq	-112(%rbp), %r13
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rsi
	leaq	(%r9,%r13,4), %r8
	addq	%r10, %r13
	salq	$2, %rdi
	leaq	(%rsi,%rdx,4), %r11
	leaq	(%r9,%r13,4), %rdx
	xorl	%r9d, %r9d
.L164:
	testq	%r10, %r10
	jle	.L162
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
	je	.L162
	testq	%r14, %r14
	je	.L163
	cmpq	$1, %r14
	je	.L234
	cmpq	$2, %r14
	je	.L235
	cmpq	$3, %r14
	je	.L236
	cmpq	$4, %r14
	je	.L237
	cmpq	$5, %r14
	je	.L238
	cmpq	$6, %r14
	je	.L239
	vmovss	4(%r8), %xmm4
	leaq	8(%r8), %rax
	vfmadd231ss	(%r15), %xmm4, %xmm11
	addq	%rdi, %r15
.L239:
	vmovss	(%rax), %xmm5
	addq	$4, %rax
	vfmadd231ss	(%r15), %xmm5, %xmm11
	addq	%rdi, %r15
.L238:
	vmovss	(%rax), %xmm6
	addq	$4, %rax
	vfmadd231ss	(%r15), %xmm6, %xmm11
	addq	%rdi, %r15
.L237:
	vmovss	(%rax), %xmm7
	addq	$4, %rax
	vfmadd231ss	(%r15), %xmm7, %xmm11
	addq	%rdi, %r15
.L236:
	vmovss	(%rax), %xmm8
	addq	$4, %rax
	vfmadd231ss	(%r15), %xmm8, %xmm11
	addq	%rdi, %r15
.L235:
	vmovss	(%rax), %xmm9
	addq	$4, %rax
	vfmadd231ss	(%r15), %xmm9, %xmm11
	addq	%rdi, %r15
.L234:
	vmovss	(%rax), %xmm10
	addq	$4, %rax
	vfmadd231ss	(%r15), %xmm10, %xmm11
	addq	%rdi, %r15
	cmpq	%rdx, %rax
	je	.L162
.L163:
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
	jne	.L163
.L162:
	addq	$1, %r9
	cmpq	-216(%rbp), %r9
	jne	.L164
	vxorpd	%xmm4, %xmm4, %xmm4
	vcvtss2sd	%xmm11, %xmm4, %xmm1
.L161:
	movq	-144(%rbp), %r13
	movq	%rcx, %r9
	movq	%r12, %r8
	movq	%r12, %rdx
	movl	$.LC20, %esi
	movl	$1, %edi
	movl	$3, %eax
	vmovss	.LC19(%rip), %xmm7
	imulq	%r12, %r13
	addq	%rcx, %r13
	vmovss	(%rbx,%r13,4), %xmm5
	vsubss	%xmm11, %xmm5, %xmm6
	vcvtss2sd	%xmm5, %xmm0, %xmm0
	vandps	%xmm7, %xmm6, %xmm8
	vcvtss2sd	%xmm8, %xmm2, %xmm2
	call	__printf_chk
	jmp	.L150
.L137:
	movq	%rsi, %rdi
	call	_Z7alloc64m
	movq	%rax, -104(%rbp)
	jmp	.L138
.L298:
	movslq	%ebx, %r14
	movl	$-16529, %r11d
	movl	$-28481, %r10d
	movq	%r14, -216(%rbp)
	movl	$-26736, %eax
	movq	-136(%rbp), %r14
	movq	%r12, %rdi
	leaq	0(,%r12,4), %rcx
	movw	%r11w, -176(%rbp)
	leaq	0(,%r15,4), %rbx
	movw	%r10w, -208(%rbp)
	movw	%ax, -160(%rbp)
	imulq	%r15, %r14
	leaq	0(,%r14,4), %r9
	movq	%r9, -152(%rbp)
	jmp	.L133
.L297:
	movq	-136(%rbp), %r14
	movslq	%eax, %r10
	movq	%r12, %rdi
	movq	%r10, -216(%rbp)
	leaq	0(,%r12,4), %rcx
	leaq	0(,%r15,4), %rbx
	imulq	%r15, %r14
	leaq	0(,%r14,4), %rax
	movq	%rax, -152(%rbp)
	jmp	.L131
.L296:
	movq	-136(%rbp), %r14
	movq	%r12, %rdi
	leaq	0(,%r12,4), %rcx
	leaq	0(,%r15,4), %rbx
	imulq	%r15, %r14
	leaq	0(,%r14,4), %r11
	movq	%r11, -152(%rbp)
	jmp	.L129
.L295:
	movq	-136(%rbp), %r14
	movq	%r12, %rdi
	leaq	0(,%r12,4), %rcx
	leaq	0(,%r15,4), %rbx
	imulq	%r15, %r14
	leaq	0(,%r14,4), %r9
	movq	%r9, -152(%rbp)
	jmp	.L127
.L294:
	movq	-136(%rbp), %r14
	movq	%r12, %rdi
	leaq	0(,%r12,4), %rcx
	leaq	0(,%r15,4), %rbx
	imulq	%r15, %r14
	leaq	0(,%r14,4), %r8
	movq	%r8, -152(%rbp)
	jmp	.L125
.L293:
	movq	-136(%rbp), %r14
	movq	%rax, %rdi
	leaq	0(,%rax,4), %rcx
	leaq	0(,%r15,4), %rbx
	imulq	%r15, %r14
	leaq	0(,%r14,4), %rsi
	movq	%rsi, -152(%rbp)
	jmp	.L123
.L292:
	leaq	0(,%r15,4), %rbx
	movq	%rax, %r14
	imulq	%r15, %r14
	leaq	0(,%r14,4), %rdx
	movq	%rdx, -152(%rbp)
	jmp	.L121
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
