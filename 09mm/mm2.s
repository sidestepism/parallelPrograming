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
.LCOLDB5:
	.text
.LHOTB5:
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
	subq	$192, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	%rsi, -160(%rbp)
	movq	8(%rdx), %rax
	movq	%fs:40, %rcx
	movq	%rcx, -56(%rbp)
	xorl	%ecx, %ecx
	movq	(%rdx), %rsi
	movq	%rdi, -152(%rbp)
	movq	%rdx, -216(%rbp)
	movq	8(%rdi), %r14
	movq	%rax, -144(%rbp)
	movq	%rsi, -208(%rbp)
	testq	%rsi, %rsi
	jle	.L21
	testq	%r14, %r14
	movl	$1, %edx
	movq	%r14, %r15
	vxorps	%xmm4, %xmm4, %xmm4
	cmovg	%r14, %rdx
	movq	$0, -136(%rbp)
	movq	%rdx, -192(%rbp)
	subq	$8, %rdx
	shrq	$3, %rdx
	addq	$1, %rdx
	movq	%rdx, -120(%rbp)
	salq	$3, %rdx
	movq	%rdx, -200(%rbp)
	.p2align 4,,10
	.p2align 3
.L25:
	cmpq	$0, -144(%rbp)
	jle	.L32
	movq	-216(%rbp), %rcx
	xorl	%r12d, %r12d
	movq	-136(%rbp), %rbx
	imulq	16(%rcx), %rbx
	movq	24(%rcx), %rdi
	leaq	(%rdi,%rbx,4), %r14
	.p2align 4,,10
	.p2align 3
.L33:
#APP
# 7 "mm2.h" 1
	# loopbegin
# 0 "" 2
#NO_APP
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	testq	%r15, %r15
	jle	.L26
	movq	-152(%rbp), %r8
	movq	-160(%rbp), %r9
	movq	-136(%rbp), %rdi
	movq	24(%r8), %rcx
	movq	16(%r9), %rdx
	movq	24(%r9), %rsi
	imulq	16(%r8), %rdi
	cmpq	$7, %r15
	jle	.L35
	leaq	0(,%rdx,4), %r8
	movq	%rdx, %r10
	vmovaps	-112(%rbp), %ymm12
	movq	$1, -184(%rbp)
	leaq	(%r8,%rdx,8), %rbx
	salq	$5, %r10
	leaq	(%rbx,%rbx), %r13
	movq	%r13, -168(%rbp)
	leaq	(%rsi,%r12,4), %rax
	movq	%r10, %r13
	leaq	(%rax,%r8), %r9
	subq	%r8, %r13
	vmovss	(%rax), %xmm3
	movq	%r13, -128(%rbp)
	movq	-120(%rbp), %r13
	leaq	(%rcx,%rdi,4), %r11
	vinsertps	$0x10, (%r9), %xmm3, %xmm8
	vmovss	(%rax,%rbx,2), %xmm2
	vmovss	(%rax,%r8,4), %xmm6
	vinsertps	$0x10, (%r9,%r8,4), %xmm6, %xmm0
	vmovss	(%rax,%r8,2), %xmm7
	vinsertps	$0x10, (%r9,%r8,2), %xmm7, %xmm1
	addq	%r10, %r9
	vmovlhps	%xmm1, %xmm8, %xmm9
	subq	$1, %r13
	andl	$1, %r13d
	movq	%r13, -176(%rbp)
	movq	-128(%rbp), %r13
	vinsertps	$0x10, (%rax,%r13), %xmm2, %xmm5
	addq	%r10, %rax
	cmpq	$1, -120(%rbp)
	vmovlhps	%xmm5, %xmm0, %xmm10
	vinsertf128	$0x1, %xmm10, %ymm9, %ymm11
	vfmadd132ps	(%r11), %ymm12, %ymm11
	vmovaps	%ymm11, -112(%rbp)
	leaq	32(%r11), %r13
	jbe	.L43
	cmpq	$0, -176(%rbp)
	je	.L44
	movq	-128(%rbp), %r13
	movq	$2, -184(%rbp)
	vmovss	(%rax,%rbx,2), %xmm13
	vmovss	(%rax,%r8,4), %xmm15
	vinsertps	$0x10, (%r9,%r8,4), %xmm15, %xmm6
	vmovss	(%rax,%r8,2), %xmm2
	vinsertps	$0x10, (%r9,%r8,2), %xmm2, %xmm0
	vinsertps	$0x10, (%rax,%r13), %xmm13, %xmm14
	vmovss	(%rax), %xmm5
	addq	%r10, %rax
	vinsertps	$0x10, (%r9), %xmm5, %xmm7
	addq	%r10, %r9
	cmpq	$2, -120(%rbp)
	vmovlhps	%xmm0, %xmm7, %xmm3
	vmovlhps	%xmm14, %xmm6, %xmm1
	vinsertf128	$0x1, %xmm1, %ymm3, %ymm8
	vfmadd231ps	32(%r11), %ymm8, %ymm11
	vmovaps	%ymm11, -112(%rbp)
	leaq	64(%r11), %r13
	jbe	.L43
	movq	%rdx, -176(%rbp)
	movq	-128(%rbp), %rbx
	movl	$2, %r11d
	movq	-168(%rbp), %rdx
.L28:
	vmovss	(%rax,%rdx), %xmm9
	vinsertps	$0x10, (%rax,%rbx), %xmm9, %xmm10
	addq	$2, %r11
	addq	$64, %r13
	vmovss	(%rax,%r8,4), %xmm12
	vinsertps	$0x10, (%r9,%r8,4), %xmm12, %xmm13
	vmovlhps	%xmm10, %xmm13, %xmm5
	vmovss	(%rax,%r8,2), %xmm14
	vinsertps	$0x10, (%r9,%r8,2), %xmm14, %xmm15
	vmovss	(%rax), %xmm6
	addq	%r10, %rax
	vinsertps	$0x10, (%r9), %xmm6, %xmm2
	addq	%r10, %r9
	vmovlhps	%xmm15, %xmm2, %xmm0
	vinsertf128	$0x1, %xmm5, %ymm0, %ymm7
	vfmadd231ps	-64(%r13), %ymm7, %ymm11
	vmovaps	%ymm11, -112(%rbp)
	vmovss	(%rax), %xmm13
	vmovss	(%rax,%rdx), %xmm3
	vinsertps	$0x10, (%r9), %xmm13, %xmm14
	vinsertps	$0x10, (%rax,%rbx), %xmm3, %xmm8
	vmovss	(%rax,%r8,4), %xmm1
	vinsertps	$0x10, (%r9,%r8,4), %xmm1, %xmm9
	vmovlhps	%xmm8, %xmm9, %xmm6
	vmovss	(%rax,%r8,2), %xmm10
	vinsertps	$0x10, (%r9,%r8,2), %xmm10, %xmm12
	addq	%r10, %rax
	vmovlhps	%xmm12, %xmm14, %xmm15
	vinsertf128	$0x1, %xmm6, %ymm15, %ymm2
	addq	%r10, %r9
	vfmadd231ps	-32(%r13), %ymm2, %ymm11
	vmovaps	%ymm11, -112(%rbp)
	cmpq	%r11, -120(%rbp)
	ja	.L28
	movq	-176(%rbp), %rdx
.L43:
	movq	-200(%rbp), %r10
	movq	%r10, %r11
	cmpq	%r10, -192(%rbp)
	je	.L26
.L27:
	movq	%r11, %rax
	vmovss	-112(%rbp), %xmm0
	imulq	%rdx, %rax
	leaq	(%r11,%rdi), %r9
	leaq	1(%r11), %r13
	leaq	(%r12,%rax), %r8
	vmovss	(%rsi,%r8,4), %xmm11
	vfmadd132ss	(%rcx,%r9,4), %xmm0, %xmm11
	vmovss	%xmm11, -112(%rbp)
	cmpq	%r13, %r15
	jle	.L26
	leaq	2(%r11), %r8
	addq	%rdx, %rax
	addq	%rdi, %r13
	leaq	(%r12,%rax), %rbx
	vmovss	(%rcx,%r13,4), %xmm5
	vfmadd231ss	(%rsi,%rbx,4), %xmm5, %xmm11
	vmovss	%xmm11, -112(%rbp)
	cmpq	%r8, %r15
	jle	.L26
	leaq	3(%r11), %r9
	addq	%rdx, %rax
	addq	%rdi, %r8
	leaq	(%r12,%rax), %r10
	vmovss	(%rcx,%r8,4), %xmm7
	vfmadd231ss	(%rsi,%r10,4), %xmm7, %xmm11
	vmovss	%xmm11, -112(%rbp)
	cmpq	%r9, %r15
	jle	.L26
	leaq	4(%r11), %rbx
	addq	%rdx, %rax
	addq	%rdi, %r9
	leaq	(%rax,%r12), %r13
	vmovss	(%rcx,%r9,4), %xmm3
	vfmadd231ss	(%rsi,%r13,4), %xmm3, %xmm11
	vmovss	%xmm11, -112(%rbp)
	cmpq	%rbx, %r15
	jle	.L26
	leaq	5(%r11), %r10
	addq	%rdx, %rax
	addq	%rdi, %rbx
	leaq	(%rax,%r12), %r8
	vmovss	(%rcx,%rbx,4), %xmm8
	vfmadd231ss	(%rsi,%r8,4), %xmm8, %xmm11
	vmovss	%xmm11, -112(%rbp)
	cmpq	%r10, %r15
	jle	.L26
	addq	%rdx, %rax
	addq	%rdi, %r10
	addq	$6, %r11
	addq	%r12, %rax
	vmovss	(%rcx,%r10,4), %xmm1
	vfmadd231ss	(%rsi,%rax,4), %xmm1, %xmm11
	vmovss	%xmm11, -112(%rbp)
	cmpq	%r11, %r15
	jle	.L26
	addq	%rdx, %rax
	addq	%rdi, %r11
	vmovss	(%rsi,%rax,4), %xmm9
	vfmadd231ss	(%rcx,%r11,4), %xmm9, %xmm11
	vmovss	%xmm11, -112(%rbp)
.L26:
	vaddss	-112(%rbp), %xmm4, %xmm10
	vaddss	-108(%rbp), %xmm10, %xmm12
	vaddss	-104(%rbp), %xmm12, %xmm13
	vaddss	-100(%rbp), %xmm13, %xmm14
	vaddss	-96(%rbp), %xmm14, %xmm15
	vaddss	-92(%rbp), %xmm15, %xmm6
	vaddss	-88(%rbp), %xmm6, %xmm2
#APP
# 12 "mm2.h" 1
	# loopend
# 0 "" 2
#NO_APP
	vaddss	-84(%rbp), %xmm2, %xmm11
	addq	$1, %r12
	addq	$4, %r14
	vaddss	-4(%r14), %xmm11, %xmm0
	vmovss	%xmm0, -4(%r14)
	cmpq	%r12, -144(%rbp)
	jne	.L33
.L32:
	addq	$1, -136(%rbp)
	movq	-136(%rbp), %rcx
	cmpq	%rcx, -208(%rbp)
	jne	.L25
	vzeroupper
.L21:
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L48
	addq	$192, %rsp
	popq	%rbx
	popq	%rsi
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%rsi), %rsp
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L35:
	.cfi_restore_state
	xorl	%r11d, %r11d
	jmp	.L27
	.p2align 4,,10
	.p2align 3
.L44:
	movq	%rdx, -176(%rbp)
	movq	-128(%rbp), %rbx
	movl	$1, %r11d
	movq	-168(%rbp), %rdx
	jmp	.L28
.L48:
	call	__stack_chk_fail
	.cfi_endproc
.LFE4901:
	.size	_Z4gemmR6matrixS0_S0_, .-_Z4gemmR6matrixS0_S0_
	.section	.text.unlikely
.LCOLDE5:
	.text
.LHOTE5:
	.section	.text.unlikely
.LCOLDB7:
	.text
.LHOTB7:
	.p2align 4,,15
	.globl	_Z8diff_tscxx
	.type	_Z8diff_tscxx, @function
_Z8diff_tscxx:
.LFB4902:
	.cfi_startproc
	subq	%rsi, %rdi
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rdi, %xmm0, %xmm1
	vmulsd	.LC6(%rip), %xmm1, %xmm2
	vcvttsd2siq	%xmm2, %rax
	ret
	.cfi_endproc
.LFE4902:
	.size	_Z8diff_tscxx, .-_Z8diff_tscxx
	.section	.text.unlikely
.LCOLDE7:
	.text
.LHOTE7:
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
	jle	.L94
	leaq	0(,%r8,4), %rbp
	xorl	%r11d, %r11d
	vxorps	%xmm0, %xmm0, %xmm0
	.p2align 4,,10
	.p2align 3
.L54:
	testq	%rbx, %rbx
	jle	.L52
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
	je	.L52
	testq	%r12, %r12
	je	.L53
	cmpq	$1, %r12
	je	.L81
	cmpq	$2, %r12
	je	.L82
	cmpq	$3, %r12
	je	.L83
	cmpq	$4, %r12
	je	.L84
	cmpq	$5, %r12
	je	.L85
	cmpq	$6, %r12
	je	.L86
	vmovss	4(%r13), %xmm3
	leaq	8(%r13), %rdx
	vfmadd231ss	(%rax), %xmm3, %xmm0
	addq	%r8, %rax
.L86:
	vmovss	(%rdx), %xmm4
	addq	$4, %rdx
	vfmadd231ss	(%rax), %xmm4, %xmm0
	addq	%r8, %rax
.L85:
	vmovss	(%rdx), %xmm5
	addq	$4, %rdx
	vfmadd231ss	(%rax), %xmm5, %xmm0
	addq	%r8, %rax
.L84:
	vmovss	(%rdx), %xmm6
	addq	$4, %rdx
	vfmadd231ss	(%rax), %xmm6, %xmm0
	addq	%r8, %rax
.L83:
	vmovss	(%rdx), %xmm7
	addq	$4, %rdx
	vfmadd231ss	(%rax), %xmm7, %xmm0
	addq	%r8, %rax
.L82:
	vmovss	(%rdx), %xmm1
	addq	$4, %rdx
	vfmadd231ss	(%rax), %xmm1, %xmm0
	addq	%r8, %rax
.L81:
	vmovss	(%rdx), %xmm8
	addq	$4, %rdx
	vfmadd231ss	(%rax), %xmm8, %xmm0
	addq	%r8, %rax
	cmpq	%rdx, %r10
	je	.L52
.L53:
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
	jne	.L53
.L52:
	addq	$1, %r11
	cmpq	%r11, %r9
	jne	.L54
.L94:
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
.LC9:
	.string	"M = %ld, N = %ld, K = %ld\n"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC10:
	.string	"A : %ld x %ld (ld=%ld) %ld bytes\n"
	.align 8
.LC11:
	.string	"B : %ld x %ld (ld=%ld) %ld bytes\n"
	.align 8
.LC12:
	.string	"C : %ld x %ld (ld=%ld) %ld bytes\n"
	.section	.rodata.str1.1
.LC13:
	.string	"total = %ld bytes\n"
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"repeat %d times (%.0f flops) ... "
	.section	.rodata.str1.1
.LC15:
	.string	"done"
.LC16:
	.string	" in %.f clocks\n"
.LC17:
	.string	" %f flops/clock\n"
	.section	.rodata.str1.8
	.align 8
.LC19:
	.string	"C(%ld,%ld) = %f, ans = %f, |C(%ld,%ld) - s| = %.9f\n"
	.section	.text.unlikely
.LCOLDB20:
	.section	.text.startup,"ax",@progbits
.LHOTB20:
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
	subq	$216, %rsp
	.cfi_def_cfa_offset 272
	movq	%fs:40, %rax
	movq	%rax, 200(%rsp)
	xorl	%eax, %eax
	cmpl	$1, %edi
	jle	.L135
	movl	%edi, %r12d
	movq	8(%rsi), %rdi
	movq	%rsi, %r13
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, 16(%rsp)
	cmpl	$2, %r12d
	je	.L97
	movq	16(%r13), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, 24(%rsp)
	cmpl	$3, %r12d
	je	.L98
	movq	24(%r13), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, 8(%rsp)
	cmpl	$4, %r12d
	je	.L256
	movq	32(%r13), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, %rbx
	cmpl	$5, %r12d
	je	.L257
	movq	40(%r13), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, %rbp
	cmpl	$6, %r12d
	je	.L258
	movq	48(%r13), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, %rcx
	cmpl	$7, %r12d
	je	.L259
	movq	56(%r13), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, 32(%rsp)
	call	strtol
	cmpl	$8, %r12d
	movq	32(%rsp), %rcx
	movq	%rax, %r14
	movl	%eax, 52(%rsp)
	je	.L260
	movq	64(%r13), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rcx, 32(%rsp)
	call	strtol
	cmpl	$9, %r12d
	movq	32(%rsp), %rcx
	movq	%rax, 56(%rsp)
	je	.L261
	movq	72(%r13), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	movq	%rcx, 40(%rsp)
	movslq	%r14d, %r15
	call	strtol
	movq	8(%rsp), %r12
	movq	%rax, %r10
	movq	%rax, %r11
	movl	%eax, %r13d
	movq	40(%rsp), %rcx
	shrq	$16, %r10
	shrq	$8, %r11
	movq	%r10, 32(%rsp)
	movq	%r11, %r14
	leaq	0(,%r12,4), %r12
	jmp	.L110
.L135:
	movq	$40, 16(%rsp)
.L97:
	movq	$32, 24(%rsp)
.L98:
	movl	$256, %r12d
	xorl	%ebx, %ebx
	movq	$64, 8(%rsp)
.L102:
	xorl	%ebp, %ebp
.L104:
	xorl	%ecx, %ecx
.L106:
	movl	$10, %r15d
	movl	$10, 52(%rsp)
.L108:
	movl	$-26736, %r8d
	movl	$-16529, %r13d
	movl	$-28481, %r14d
	movq	$1, 56(%rsp)
	movw	%r8w, 32(%rsp)
.L110:
	movq	24(%rsp), %rax
	testq	%rbx, %rbx
	cmove	8(%rsp), %rbx
	testq	%rbp, %rbp
	movq	%rbx, %rdx
	movq	%rbp, %rbx
	cmove	%rax, %rbx
	testq	%rcx, %rcx
	movq	%rdx, %rsi
	movq	%rdx, 72(%rsp)
	cmove	%rax, %rcx
	imulq	%rbx, %r12
	movq	%rcx, %rbp
	movq	16(%rsp), %rcx
	salq	$2, %rcx
	imulq	%rcx, %rsi
	movq	%rcx, 64(%rsp)
	movq	%rsi, %rdi
	movq	%rsi, 80(%rsp)
	call	_Z7alloc64m
	movq	%r12, %rdi
	movq	%r12, 88(%rsp)
	movq	%rax, 40(%rsp)
	call	_Z7alloc64m
	movq	64(%rsp), %r8
	movq	%rax, %r12
	imulq	%rbp, %r8
	movq	%r8, %rdi
	movq	%r8, 64(%rsp)
	call	_Z7alloc64m
	movq	16(%rsp), %r9
	movq	8(%rsp), %rdx
	movq	%rax, %rcx
	movq	72(%rsp), %r10
	movq	40(%rsp), %r11
	movq	%r9, 96(%rsp)
	movq	%rdx, 104(%rsp)
	movq	%r10, 112(%rsp)
	testq	%r11, %r11
	je	.L114
	movq	%r11, 120(%rsp)
.L115:
	movq	24(%rsp), %rax
	movq	%rdx, 128(%rsp)
	movq	%rbx, 144(%rsp)
	movq	%rax, 136(%rsp)
	testq	%r12, %r12
	je	.L116
	movq	%r12, 152(%rsp)
.L117:
	movq	16(%rsp), %rbx
	movq	%rbp, 176(%rsp)
	movq	24(%rsp), %rsi
	movq	%rbx, 160(%rsp)
	movq	%rsi, 168(%rsp)
	testq	%rcx, %rcx
	je	.L118
	movq	%rcx, 184(%rsp)
.L119:
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm3, %xmm3, %xmm3
	vxorpd	%xmm6, %xmm6, %xmm6
	vxorpd	%xmm9, %xmm9, %xmm9
	vcvtsi2sdq	16(%rsp), %xmm0, %xmm1
	movzwl	32(%rsp), %ebp
	movw	%r14w, 194(%rsp)
	vcvtsi2sdq	24(%rsp), %xmm3, %xmm4
	movw	%r13w, 196(%rsp)
	vcvtsi2sdq	8(%rsp), %xmm6, %xmm7
	vcvtsi2sd	52(%rsp), %xmm9, %xmm10
	vaddsd	%xmm1, %xmm1, %xmm2
	leaq	192(%rsp), %rsi
	movw	%bp, 192(%rsp)
	leaq	96(%rsp), %rdi
	vmulsd	%xmm4, %xmm2, %xmm5
	vmulsd	%xmm7, %xmm5, %xmm8
	vmulsd	%xmm10, %xmm8, %xmm11
	vmovsd	%xmm11, 40(%rsp)
	call	_ZN6matrix9rand_initEPt
	leaq	128(%rsp), %rdi
	leaq	192(%rsp), %rsi
	call	_ZN6matrix9rand_initEPt
	movq	160(%rsp), %rdi
	movq	%rdi, 32(%rsp)
	testq	%rdi, %rdi
	jle	.L124
	movq	168(%rsp), %rbp
	leaq	-1(%rdi), %r8
	movq	184(%rsp), %r14
	andl	$3, %r8d
	movq	176(%rsp), %r12
	leaq	0(,%rbp,4), %r13
	testq	%rbp, %rbp
	jle	.L240
	movq	%r13, %rdx
	xorl	%esi, %esi
	movq	%r14, %rdi
	movq	%r8, 64(%rsp)
	call	memset
	movq	64(%rsp), %r8
.L240:
	movl	$1, %ebx
	movq	%r12, %r9
	cmpq	32(%rsp), %rbx
	je	.L124
	testq	%r8, %r8
	je	.L251
	cmpq	$1, %r8
	je	.L218
	cmpq	$2, %r8
	je	.L219
	testq	%rbp, %rbp
	jle	.L243
	leaq	(%r14,%r12,4), %rdi
	movq	%r13, %rdx
	xorl	%esi, %esi
	movq	%r12, 64(%rsp)
	call	memset
	movq	64(%rsp), %r9
.L243:
	addq	$1, %rbx
	addq	%r12, %r9
.L219:
	testq	%rbp, %rbp
	jle	.L244
	leaq	(%r14,%r9,4), %rdi
	movq	%r13, %rdx
	xorl	%esi, %esi
	movq	%r9, 64(%rsp)
	call	memset
	movq	64(%rsp), %r9
.L244:
	addq	$1, %rbx
	addq	%r12, %r9
.L218:
	testq	%rbp, %rbp
	jle	.L245
	leaq	(%r14,%r9,4), %rdi
	movq	%r13, %rdx
	xorl	%esi, %esi
	movq	%r9, 64(%rsp)
	call	memset
	movq	64(%rsp), %r9
.L245:
	addq	$1, %rbx
	addq	%r12, %r9
	cmpq	32(%rsp), %rbx
	je	.L124
.L251:
	movq	%r15, 64(%rsp)
	movq	%r9, %r15
.L125:
	testq	%rbp, %rbp
	jle	.L126
	leaq	(%r14,%r15,4), %rdi
	movq	%r13, %rdx
	xorl	%esi, %esi
	call	memset
.L126:
	addq	$1, %rbx
	addq	%r12, %r15
	testq	%rbp, %rbp
	jle	.L241
	leaq	(%r14,%r15,4), %rdi
	movq	%r13, %rdx
	xorl	%esi, %esi
	call	memset
.L241:
	addq	%r12, %r15
	testq	%rbp, %rbp
	jle	.L246
	leaq	(%r14,%r15,4), %rdi
	movq	%r13, %rdx
	xorl	%esi, %esi
	call	memset
.L246:
	addq	%r12, %r15
	testq	%rbp, %rbp
	jle	.L247
	leaq	(%r14,%r15,4), %rdi
	movq	%r13, %rdx
	xorl	%esi, %esi
	call	memset
.L247:
	addq	$3, %rbx
	addq	%r12, %r15
	cmpq	32(%rsp), %rbx
	jne	.L125
	movq	64(%rsp), %r15
.L124:
	movq	8(%rsp), %r8
	movl	$.LC9, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	movq	24(%rsp), %rcx
	movq	16(%rsp), %rdx
	call	__printf_chk
	movq	96(%rsp), %rdx
	movl	$.LC10, %esi
	xorl	%eax, %eax
	movq	104(%rsp), %rcx
	movl	$1, %edi
	movq	112(%rsp), %r8
	movq	%rdx, %r9
	imulq	%rcx, %r9
	salq	$2, %r9
	call	__printf_chk
	movq	128(%rsp), %rdx
	movl	$.LC11, %esi
	xorl	%eax, %eax
	movq	136(%rsp), %rcx
	movl	$1, %edi
	movq	144(%rsp), %r8
	movq	%rdx, %r9
	imulq	%rcx, %r9
	salq	$2, %r9
	call	__printf_chk
	movq	160(%rsp), %rdx
	movl	$.LC12, %esi
	xorl	%eax, %eax
	movq	168(%rsp), %rcx
	movl	$1, %edi
	movq	176(%rsp), %r8
	movq	%rdx, %r9
	imulq	%rcx, %r9
	salq	$2, %r9
	call	__printf_chk
	movq	96(%rsp), %r10
	movl	$.LC13, %esi
	movl	$1, %edi
	imulq	104(%rsp), %r10
	movq	128(%rsp), %rax
	imulq	136(%rsp), %rax
	movq	160(%rsp), %rdx
	imulq	168(%rsp), %rdx
	addq	%r10, %rax
	addq	%rax, %rdx
	xorl	%eax, %eax
	salq	$2, %rdx
	call	__printf_chk
	movl	52(%rsp), %edx
	movl	$.LC14, %esi
	movl	$1, %edi
	vmovsd	40(%rsp), %xmm0
	movl	$1, %eax
	call	__printf_chk
	movq	stdout(%rip), %rdi
	call	fflush
	rdtsc
	salq	$32, %rdx
	orq	%rdx, %rax
	movq	%rax, %r12
	testq	%r15, %r15
	jle	.L121
	leaq	-1(%r15), %r14
	movl	$1, %ebp
	leaq	160(%rsp), %rdx
	andl	$7, %r14d
	leaq	128(%rsp), %rsi
	leaq	96(%rsp), %rdi
	call	_Z4gemmR6matrixS0_S0_
	cmpq	%r15, %rbp
	je	.L121
	testq	%r14, %r14
	je	.L129
	cmpq	$1, %r14
	je	.L212
	cmpq	$2, %r14
	je	.L213
	cmpq	$3, %r14
	je	.L214
	cmpq	$4, %r14
	je	.L215
	cmpq	$5, %r14
	je	.L216
	cmpq	$6, %r14
	je	.L217
	leaq	160(%rsp), %rdx
	movl	$2, %ebp
	leaq	128(%rsp), %rsi
	leaq	96(%rsp), %rdi
	call	_Z4gemmR6matrixS0_S0_
.L217:
	leaq	160(%rsp), %rdx
	addq	$1, %rbp
	leaq	128(%rsp), %rsi
	leaq	96(%rsp), %rdi
	call	_Z4gemmR6matrixS0_S0_
.L216:
	leaq	160(%rsp), %rdx
	addq	$1, %rbp
	leaq	128(%rsp), %rsi
	leaq	96(%rsp), %rdi
	call	_Z4gemmR6matrixS0_S0_
.L215:
	leaq	160(%rsp), %rdx
	addq	$1, %rbp
	leaq	128(%rsp), %rsi
	leaq	96(%rsp), %rdi
	call	_Z4gemmR6matrixS0_S0_
.L214:
	leaq	160(%rsp), %rdx
	addq	$1, %rbp
	leaq	128(%rsp), %rsi
	leaq	96(%rsp), %rdi
	call	_Z4gemmR6matrixS0_S0_
.L213:
	leaq	160(%rsp), %rdx
	addq	$1, %rbp
	leaq	128(%rsp), %rsi
	leaq	96(%rsp), %rdi
	call	_Z4gemmR6matrixS0_S0_
.L212:
	leaq	160(%rsp), %rdx
	addq	$1, %rbp
	leaq	128(%rsp), %rsi
	leaq	96(%rsp), %rdi
	call	_Z4gemmR6matrixS0_S0_
	cmpq	%r15, %rbp
	je	.L121
.L129:
	leaq	160(%rsp), %rdx
	addq	$8, %rbp
	leaq	128(%rsp), %rsi
	leaq	96(%rsp), %rdi
	call	_Z4gemmR6matrixS0_S0_
	leaq	160(%rsp), %rdx
	leaq	128(%rsp), %rsi
	leaq	96(%rsp), %rdi
	call	_Z4gemmR6matrixS0_S0_
	leaq	160(%rsp), %rdx
	leaq	128(%rsp), %rsi
	leaq	96(%rsp), %rdi
	call	_Z4gemmR6matrixS0_S0_
	leaq	160(%rsp), %rdx
	leaq	128(%rsp), %rsi
	leaq	96(%rsp), %rdi
	call	_Z4gemmR6matrixS0_S0_
	leaq	160(%rsp), %rdx
	leaq	128(%rsp), %rsi
	leaq	96(%rsp), %rdi
	call	_Z4gemmR6matrixS0_S0_
	leaq	160(%rsp), %rdx
	leaq	128(%rsp), %rsi
	leaq	96(%rsp), %rdi
	call	_Z4gemmR6matrixS0_S0_
	leaq	160(%rsp), %rdx
	leaq	128(%rsp), %rsi
	leaq	96(%rsp), %rdi
	call	_Z4gemmR6matrixS0_S0_
	leaq	160(%rsp), %rdx
	leaq	128(%rsp), %rsi
	leaq	96(%rsp), %rdi
	call	_Z4gemmR6matrixS0_S0_
	cmpq	%r15, %rbp
	jne	.L129
.L121:
	rdtsc
	vxorpd	%xmm12, %xmm12, %xmm12
	vxorpd	%xmm15, %xmm15, %xmm15
	movl	$.LC15, %edi
	salq	$32, %rdx
	orq	%rdx, %rax
	subq	%r12, %rax
	vcvtsi2sdq	%rax, %xmm12, %xmm13
	vmulsd	.LC6(%rip), %xmm13, %xmm14
	vcvttsd2siq	%xmm14, %rcx
	vcvtsi2sdq	%rcx, %xmm15, %xmm0
	vmovsd	%xmm0, 8(%rsp)
	call	puts
	vmovsd	8(%rsp), %xmm0
	movl	$.LC16, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
	movl	$.LC17, %esi
	movl	$1, %edi
	movl	$1, %eax
	vmovsd	40(%rsp), %xmm1
	vdivsd	8(%rsp), %xmm1, %xmm0
	call	__printf_chk
	cmpq	$0, 56(%rsp)
	jne	.L262
.L128:
	xorl	%eax, %eax
	movq	200(%rsp), %rbx
	xorq	%fs:40, %rbx
	jne	.L263
	addq	$216, %rsp
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
.L262:
	.cfi_restore_state
	leaq	192(%rsp), %rdi
	call	nrand48
	leaq	192(%rsp), %rdi
	cqto
	idivq	16(%rsp)
	movq	%rdx, %rbx
	call	nrand48
	movq	104(%rsp), %r11
	vxorps	%xmm10, %xmm10, %xmm10
	cqto
	idivq	24(%rsp)
	movq	%rdx, %rcx
	testq	%r15, %r15
	jle	.L130
	movq	%rbx, %r9
	movq	120(%rsp), %r13
	vxorps	%xmm10, %xmm10, %xmm10
	imulq	112(%rsp), %r9
	movq	144(%rsp), %rdi
	movq	152(%rsp), %rsi
	leaq	0(%r13,%r9,4), %r8
	addq	%r11, %r9
	salq	$2, %rdi
	leaq	(%rsi,%rdx,4), %r10
	xorl	%edx, %edx
	leaq	0(%r13,%r9,4), %rax
	.p2align 4,,10
	.p2align 3
.L133:
	testq	%r11, %r11
	jle	.L131
	leaq	4(%r8), %r12
	movq	%rax, %r14
	vmovss	(%r8), %xmm2
	vfmadd231ss	(%r10), %xmm2, %xmm10
	leaq	(%r10,%rdi), %rbp
	subq	%r8, %r14
	subq	$4, %r14
	shrq	$2, %r14
	andl	$7, %r14d
	cmpq	%r12, %rax
	je	.L131
	testq	%r14, %r14
	je	.L132
	cmpq	$1, %r14
	je	.L206
	cmpq	$2, %r14
	je	.L207
	cmpq	$3, %r14
	je	.L208
	cmpq	$4, %r14
	je	.L209
	cmpq	$5, %r14
	je	.L210
	cmpq	$6, %r14
	je	.L211
	vmovss	4(%r8), %xmm3
	leaq	8(%r8), %r12
	vfmadd231ss	0(%rbp), %xmm3, %xmm10
	addq	%rdi, %rbp
.L211:
	vmovss	(%r12), %xmm4
	addq	$4, %r12
	vfmadd231ss	0(%rbp), %xmm4, %xmm10
	addq	%rdi, %rbp
.L210:
	vmovss	(%r12), %xmm5
	addq	$4, %r12
	vfmadd231ss	0(%rbp), %xmm5, %xmm10
	addq	%rdi, %rbp
.L209:
	vmovss	(%r12), %xmm6
	addq	$4, %r12
	vfmadd231ss	0(%rbp), %xmm6, %xmm10
	addq	%rdi, %rbp
.L208:
	vmovss	(%r12), %xmm7
	addq	$4, %r12
	vfmadd231ss	0(%rbp), %xmm7, %xmm10
	addq	%rdi, %rbp
.L207:
	vmovss	(%r12), %xmm8
	addq	$4, %r12
	vfmadd231ss	0(%rbp), %xmm8, %xmm10
	addq	%rdi, %rbp
.L206:
	vmovss	(%r12), %xmm9
	addq	$4, %r12
	vfmadd231ss	0(%rbp), %xmm9, %xmm10
	addq	%rdi, %rbp
	cmpq	%r12, %rax
	je	.L131
.L132:
	vmovss	(%r12), %xmm11
	vfmadd231ss	0(%rbp), %xmm11, %xmm10
	addq	%rdi, %rbp
	addq	$32, %r12
	vmovss	-28(%r12), %xmm12
	vfmadd231ss	0(%rbp), %xmm12, %xmm10
	addq	%rdi, %rbp
	vmovss	-24(%r12), %xmm13
	vfmadd231ss	0(%rbp), %xmm13, %xmm10
	addq	%rdi, %rbp
	vmovss	-20(%r12), %xmm14
	vfmadd231ss	0(%rbp), %xmm14, %xmm10
	addq	%rdi, %rbp
	vmovss	-16(%r12), %xmm15
	vfmadd231ss	0(%rbp), %xmm15, %xmm10
	addq	%rdi, %rbp
	vmovss	-12(%r12), %xmm0
	vfmadd231ss	0(%rbp), %xmm0, %xmm10
	addq	%rdi, %rbp
	vmovss	-8(%r12), %xmm1
	vfmadd231ss	0(%rbp), %xmm1, %xmm10
	addq	%rdi, %rbp
	vmovss	-4(%r12), %xmm2
	vfmadd231ss	0(%rbp), %xmm2, %xmm10
	addq	%rdi, %rbp
	cmpq	%r12, %rax
	jne	.L132
.L131:
	addq	$1, %rdx
	cmpq	%r15, %rdx
	jne	.L133
.L130:
	movq	%rbx, %r15
	movq	%rcx, %r9
	movq	%rbx, %r8
	vcvtss2sd	%xmm10, %xmm1, %xmm1
	movq	184(%rsp), %r13
	movq	%rbx, %rdx
	movl	$.LC19, %esi
	movl	$1, %edi
	imulq	176(%rsp), %r15
	movl	$3, %eax
	vmovss	.LC18(%rip), %xmm3
	addq	%rcx, %r15
	vmovss	0(%r13,%r15,4), %xmm4
	vsubss	%xmm10, %xmm4, %xmm5
	vcvtss2sd	%xmm4, %xmm0, %xmm0
	vandps	%xmm3, %xmm5, %xmm6
	vcvtss2sd	%xmm6, %xmm2, %xmm2
	call	__printf_chk
	jmp	.L128
.L118:
	movq	64(%rsp), %rdi
	call	_Z7alloc64m
	movq	%rax, 184(%rsp)
	jmp	.L119
.L114:
	movq	80(%rsp), %rdi
	movq	%rax, 40(%rsp)
	call	_Z7alloc64m
	movq	40(%rsp), %rcx
	movq	%rax, 120(%rsp)
	movq	8(%rsp), %rdx
	jmp	.L115
.L116:
	movq	88(%rsp), %rdi
	movq	%rcx, 40(%rsp)
	call	_Z7alloc64m
	movq	40(%rsp), %rcx
	movq	%rax, 152(%rsp)
	jmp	.L117
.L261:
	movq	8(%rsp), %r9
	movslq	%r14d, %r15
	movl	$-16529, %r13d
	movl	$-28481, %r14d
	movw	$-26736, 32(%rsp)
	leaq	0(,%r9,4), %r12
	jmp	.L110
.L257:
	movq	8(%rsp), %rax
	xorl	%ebp, %ebp
	leaq	0(,%rax,4), %r12
	jmp	.L104
.L258:
	movq	8(%rsp), %rdx
	leaq	0(,%rdx,4), %r12
	jmp	.L104
.L259:
	movq	8(%rsp), %rsi
	leaq	0(,%rsi,4), %r12
	jmp	.L106
.L260:
	movq	8(%rsp), %rdi
	movslq	%eax, %r15
	leaq	0(,%rdi,4), %r12
	jmp	.L108
.L263:
	call	__stack_chk_fail
.L256:
	leaq	0(,%rax,4), %r12
	xorl	%ebx, %ebx
	jmp	.L102
	.cfi_endproc
.LFE4904:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE20:
	.section	.text.startup
.LHOTE20:
	.section	.rodata
	.align 16
	.type	_ZZ7alloc64mE19__PRETTY_FUNCTION__, @object
	.size	_ZZ7alloc64mE19__PRETTY_FUNCTION__, 22
_ZZ7alloc64mE19__PRETTY_FUNCTION__:
	.string	"void* alloc64(size_t)"
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC6:
	.long	186737709
	.long	1072875609
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC18:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
