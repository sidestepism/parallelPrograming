	.file	"mem.cc"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.globl	_Z11epapi_startv
	.type	_Z11epapi_startv, @function
_Z11epapi_startv:
.LFB356:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE356:
	.size	_Z11epapi_startv, .-_Z11epapi_startv
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.section	.text.unlikely
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4,,15
	.globl	_Z10epapi_readv
	.type	_Z10epapi_readv, @function
_Z10epapi_readv:
.LFB354:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE354:
	.size	_Z10epapi_readv, .-_Z10epapi_readv
	.section	.text.unlikely
.LCOLDE1:
	.text
.LHOTE1:
	.section	.text.unlikely
.LCOLDB2:
	.text
.LHOTB2:
	.p2align 4,,15
	.globl	_Z10epapi_stopv
	.type	_Z10epapi_stopv, @function
_Z10epapi_stopv:
.LFB352:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE352:
	.size	_Z10epapi_stopv, .-_Z10epapi_stopv
	.section	.text.unlikely
.LCOLDE2:
	.text
.LHOTE2:
	.section	.text.unlikely
.LCOLDB3:
	.text
.LHOTB3:
	.p2align 4,,15
	.globl	_Z19epapi_show_countersv
	.type	_Z19epapi_show_countersv, @function
_Z19epapi_show_countersv:
.LFB3:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE3:
	.size	_Z19epapi_show_countersv, .-_Z19epapi_show_countersv
	.section	.text.unlikely
.LCOLDE3:
	.text
.LHOTE3:
	.section	.text.unlikely
.LCOLDB5:
	.text
.LHOTB5:
	.p2align 4,,15
	.globl	_Z8cur_timev
	.type	_Z8cur_timev, @function
_Z8cur_timev:
.LFB80:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	xorl	%esi, %esi
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %rdi
	call	gettimeofday
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	movq	24(%rsp), %rax
	xorq	%fs:40, %rax
	vcvtsi2sdq	8(%rsp), %xmm0, %xmm0
	vcvtsi2sdq	(%rsp), %xmm1, %xmm2
	vfmadd132sd	.LC4(%rip), %xmm2, %xmm0
	jne	.L10
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L10:
	.cfi_restore_state
	call	__stack_chk_fail
	.cfi_endproc
.LFE80:
	.size	_Z8cur_timev, .-_Z8cur_timev
	.section	.text.unlikely
.LCOLDE5:
	.text
.LHOTE5:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC6:
	.string	"mem.cc"
.LC7:
	.string	"c[p - a] == 0"
.LC8:
	.string	"p - a >= 0"
.LC9:
	.string	"p - a < n"
.LC10:
	.string	"c[p - a]"
	.section	.text.unlikely
.LCOLDB11:
	.text
.LHOTB11:
	.p2align 4,,15
	.globl	_Z18check_links_cyclicP6recordl
	.type	_Z18check_links_cyclicP6recordl, @function
_Z18check_links_cyclicP6recordl:
.LFB81:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	movl	$1, %edi
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	calloc
	testq	%rbp, %rbp
	jle	.L21
	cmpb	$0, (%rax)
	movq	%rbx, %rcx
	jne	.L16
	leaq	-1(%rbp), %r8
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movq	%rax, %rdx
	andl	$3, %r8d
	je	.L17
	movq	(%rbx), %rdi
	movb	$1, (%rax)
	movl	$1, %esi
	movq	%rdi, %rdx
	subq	%rbx, %rdx
	cmpq	$-63, %rdx
	jl	.L110
	sarq	$6, %rdx
	cmpq	%rdx, %rbp
	jle	.L111
	addq	%rax, %rdx
	cmpb	$0, (%rdx)
	jne	.L16
	cmpq	$1, %r8
	je	.L17
	cmpq	$2, %r8
	je	.L95
	movq	(%rdi), %rdi
	movb	$1, (%rdx)
	movl	$2, %esi
	movq	%rdi, %rdx
	subq	%rbx, %rdx
	cmpq	$-63, %rdx
	jl	.L110
	sarq	$6, %rdx
	cmpq	%rdx, %rbp
	jle	.L111
	addq	%rax, %rdx
	cmpb	$0, (%rdx)
	jne	.L16
.L95:
	movq	(%rdi), %rdi
	movb	$1, (%rdx)
	addq	$1, %rsi
	movq	%rdi, %rdx
	subq	%rbx, %rdx
	cmpq	$-63, %rdx
	jge	.L115
	jmp	.L110
	.p2align 4,,10
	.p2align 3
.L108:
	movq	%rdi, %rdx
	subq	%rbx, %rdx
	cmpq	$-63, %rdx
	jl	.L110
	sarq	$6, %rdx
	cmpq	%rdx, %rbp
	jle	.L111
	addq	%rax, %rdx
	cmpb	$0, (%rdx)
	jne	.L16
	movq	(%rdi), %r9
	movb	$1, (%rdx)
	movq	%r9, %r10
	subq	%rbx, %r10
	cmpq	$-63, %r10
	jl	.L110
	sarq	$6, %r10
	cmpq	%r10, %rbp
	jle	.L111
	addq	%rax, %r10
	cmpb	$0, (%r10)
	jne	.L16
	movq	(%r9), %r11
	movb	$1, (%r10)
	movq	%r11, %r8
	subq	%rbx, %r8
	cmpq	$-63, %r8
	jl	.L110
	sarq	$6, %r8
	cmpq	%r8, %rbp
	jle	.L111
	addq	%rax, %r8
	cmpb	$0, (%r8)
	jne	.L16
	movq	(%r11), %rdi
	movb	$1, (%r8)
	addq	$3, %rsi
	movq	%rdi, %rdx
	subq	%rbx, %rdx
	cmpq	$-63, %rdx
	jl	.L110
.L115:
	sarq	$6, %rdx
	cmpq	%rdx, %rbp
	jle	.L111
	addq	%rax, %rdx
	cmpb	$0, (%rdx)
	jne	.L16
.L17:
	addq	$1, %rsi
	movb	$1, (%rdx)
	movq	(%rdi), %rdi
	cmpq	%rsi, %rbp
	jne	.L108
	cmpb	$0, (%rax)
	je	.L23
	leaq	-1(%rbp), %rsi
	xorl	%r9d, %r9d
	andl	$7, %esi
	je	.L20
	movq	(%rbx), %rbx
	movl	$1, %r9d
	movq	%rbx, %r10
	subq	%rcx, %r10
	sarq	$6, %r10
	cmpb	$0, (%rax,%r10)
	je	.L23
	cmpq	$1, %rsi
	je	.L20
	cmpq	$2, %rsi
	je	.L84
	cmpq	$3, %rsi
	je	.L85
	cmpq	$4, %rsi
	je	.L86
	cmpq	$5, %rsi
	je	.L87
	cmpq	$6, %rsi
	je	.L88
	movq	(%rbx), %rbx
	addq	$1, %r9
	movq	%rbx, %r11
	subq	%rcx, %r11
	sarq	$6, %r11
	cmpb	$0, (%rax,%r11)
	je	.L23
.L88:
	movq	(%rbx), %rbx
	addq	$1, %r9
	movq	%rbx, %r8
	subq	%rcx, %r8
	sarq	$6, %r8
	cmpb	$0, (%rax,%r8)
	je	.L23
.L87:
	movq	(%rbx), %rbx
	addq	$1, %r9
	movq	%rbx, %rdi
	subq	%rcx, %rdi
	sarq	$6, %rdi
	cmpb	$0, (%rax,%rdi)
	je	.L23
.L86:
	movq	(%rbx), %rbx
	addq	$1, %r9
	movq	%rbx, %rdx
	subq	%rcx, %rdx
	sarq	$6, %rdx
	cmpb	$0, (%rax,%rdx)
	je	.L23
.L85:
	movq	(%rbx), %rbx
	addq	$1, %r9
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	sarq	$6, %rsi
	cmpb	$0, (%rax,%rsi)
	je	.L23
.L84:
	movq	(%rbx), %rbx
	addq	$1, %r9
.L117:
	movq	%rbx, %r10
	subq	%rcx, %r10
	sarq	$6, %r10
	cmpb	$0, (%rax,%r10)
	je	.L23
.L20:
	leaq	1(%r9), %r11
	movq	(%rbx), %rbx
	cmpq	%r11, %rbp
	je	.L21
	movq	%rbx, %r8
	subq	%rcx, %r8
	sarq	$6, %r8
	cmpb	$0, (%rax,%r8)
	je	.L23
	movq	(%rbx), %rdi
	movq	%rdi, %rdx
	subq	%rcx, %rdx
	sarq	$6, %rdx
	cmpb	$0, (%rax,%rdx)
	je	.L23
	movq	(%rdi), %r10
	movq	%r10, %rsi
	subq	%rcx, %rsi
	sarq	$6, %rsi
	cmpb	$0, (%rax,%rsi)
	je	.L23
	movq	(%r10), %rbx
	movq	%rbx, %r11
	subq	%rcx, %r11
	sarq	$6, %r11
	cmpb	$0, (%rax,%r11)
	je	.L23
	movq	(%rbx), %r8
	movq	%r8, %rdi
	subq	%rcx, %rdi
	sarq	$6, %rdi
	cmpb	$0, (%rax,%rdi)
	je	.L23
	movq	(%r8), %rdx
	movq	%rdx, %r10
	subq	%rcx, %r10
	sarq	$6, %r10
	cmpb	$0, (%rax,%r10)
	je	.L23
	movq	(%rdx), %rbx
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	sarq	$6, %rsi
	cmpb	$0, (%rax,%rsi)
	je	.L23
	movq	(%rbx), %rbx
	addq	$8, %r9
	jmp	.L117
	.p2align 4,,10
	.p2align 3
.L21:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rax, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	free
.L16:
	.cfi_restore_state
	movl	$_ZZ18check_links_cyclicP6recordlE19__PRETTY_FUNCTION__, %ecx
	movl	$71, %edx
	movl	$.LC6, %esi
	movl	$.LC7, %edi
	call	__assert_fail
.L111:
	movl	$_ZZ18check_links_cyclicP6recordlE19__PRETTY_FUNCTION__, %ecx
	movl	$70, %edx
	movl	$.LC6, %esi
	movl	$.LC9, %edi
	call	__assert_fail
.L110:
	movl	$_ZZ18check_links_cyclicP6recordlE19__PRETTY_FUNCTION__, %ecx
	movl	$69, %edx
	movl	$.LC6, %esi
	movl	$.LC8, %edi
	call	__assert_fail
.L23:
	movl	$_ZZ18check_links_cyclicP6recordlE19__PRETTY_FUNCTION__, %ecx
	movl	$77, %edx
	movl	$.LC6, %esi
	movl	$.LC10, %edi
	call	__assert_fail
	.cfi_endproc
.LFE81:
	.size	_Z18check_links_cyclicP6recordl, .-_Z18check_links_cyclicP6recordl
	.section	.text.unlikely
.LCOLDE11:
	.text
.LHOTE11:
	.section	.text.unlikely
.LCOLDB12:
	.text
.LHOTB12:
	.p2align 4,,15
	.globl	_Z8is_primel
	.type	_Z8is_primel, @function
_Z8is_primel:
.LFB82:
	.cfi_startproc
	cmpq	$1, %rdi
	je	.L127
	cmpq	$3, %rdi
	jle	.L125
	testb	$1, %dil
	je	.L127
	movl	$2, %ecx
	jmp	.L122
	.p2align 4,,10
	.p2align 3
.L123:
	movq	%rdi, %rax
	cqto
	idivq	%rcx
	testq	%rdx, %rdx
	je	.L127
.L122:
	addq	$1, %rcx
	movq	%rcx, %rax
	imulq	%rcx, %rax
	cmpq	%rax, %rdi
	jge	.L123
.L125:
	movl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L127:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE82:
	.size	_Z8is_primel, .-_Z8is_primel
	.section	.text.unlikely
.LCOLDE12:
	.text
.LHOTE12:
	.section	.rodata.str1.1
.LC13:
	.string	"n % 4 == 3"
.LC14:
	.string	"next_idx >= 0"
.LC15:
	.string	"next_idx < n"
.LC16:
	.string	"is_prime(n)"
	.section	.text.unlikely
.LCOLDB17:
	.text
.LHOTB17:
	.p2align 4,,15
	.globl	_Z23randomize_next_pointersP6recordl
	.type	_Z23randomize_next_pointersP6recordl, @function
_Z23randomize_next_pointersP6recordl:
.LFB87:
	.cfi_startproc
	movq	%rsi, %rdx
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	sarq	$63, %rdx
	shrq	$62, %rdx
	leaq	(%rsi,%rdx), %rax
	andl	$3, %eax
	subq	%rdx, %rax
	cmpq	$3, %rax
	jne	.L191
	cmpq	$1, %rsi
	je	.L131
	cmpq	$3, %rsi
	jle	.L132
	testb	$1, %sil
	je	.L131
	movl	$2, %ecx
	jmp	.L135
	.p2align 4,,10
	.p2align 3
.L136:
	movq	%rsi, %rax
	cqto
	idivq	%rcx
	testq	%rdx, %rdx
	je	.L131
.L135:
	addq	$1, %rcx
	movq	%rcx, %r8
	imulq	%rcx, %r8
	cmpq	%r8, %rsi
	jge	.L136
.L134:
	leaq	-1(%rsi), %r11
	movl	$1, %r8d
	xorl	%eax, %eax
	sarq	%r11
	xorl	%ecx, %ecx
	testb	$1, %sil
	jne	.L145
	cmpq	$0, %r11
	jle	.L155
	movq	%r8, %rax
	subq	%rsi, %rax
	js	.L181
	movq	%rax, %r9
	subq	%rsi, %r9
	cmovns	%r9, %rax
.L156:
	cmpq	%rax, %rsi
	jle	.L182
	movq	%rax, %r10
	movl	$1, %ecx
	movl	$3, %r8d
	salq	$6, %r10
	addq	%rdi, %r10
	movq	%r10, (%rdi)
	cmpq	%rcx, %r11
	jle	.L137
	.p2align 4,,10
	.p2align 3
.L192:
	leaq	1(%rax,%rcx,2), %rdx
	movq	%rdx, %r9
	subq	%rsi, %r9
	js	.L139
	movq	%r9, %rdx
	subq	%rsi, %rdx
	cmovs	%r9, %rdx
.L142:
	cmpq	%rdx, %rsi
	jle	.L182
	movq	%rdx, %r10
	salq	$6, %rax
	addq	$1, %rcx
	salq	$6, %r10
	addq	%rdi, %rax
	addq	$2, %r8
	addq	%rdi, %r10
	movq	%r10, (%rax)
	cmpq	%rcx, %rsi
	je	.L187
	cmpq	%rcx, %r11
	jle	.L162
	leaq	1(%rdx,%rcx,2), %rax
	movq	%rax, %r9
	subq	%rsi, %r9
	js	.L185
	movq	%r9, %rax
	subq	%rsi, %rax
	cmovs	%r9, %rax
.L163:
	cmpq	%rax, %rsi
	jle	.L182
	movq	%rax, %r10
	salq	$6, %rdx
	addq	$1, %rcx
	salq	$6, %r10
	addq	%rdi, %rdx
	addq	$2, %r8
	addq	%rdi, %r10
	movq	%r10, (%rdx)
.L145:
	cmpq	%rcx, %r11
	jg	.L192
.L137:
	je	.L193
	movq	%rax, %rdx
	subq	%r8, %rdx
	jns	.L142
	addq	%rsi, %rdx
	jns	.L142
	addq	%rsi, %rdx
.L139:
	testq	%rdx, %rdx
	jns	.L142
.L177:
	movl	$_ZZ23randomize_next_pointersP6recordlE19__PRETTY_FUNCTION__, %ecx
	movl	$143, %edx
	movl	$.LC6, %esi
	movl	$.LC14, %edi
	call	__assert_fail
	.p2align 4,,10
	.p2align 3
.L131:
	movl	$_ZZ23randomize_next_pointersP6recordlE19__PRETTY_FUNCTION__, %ecx
	movl	$139, %edx
	movl	$.LC6, %esi
	movl	$.LC16, %edi
	call	__assert_fail
	.p2align 4,,10
	.p2align 3
.L162:
	je	.L183
	movq	%rdx, %rax
	subq	%r8, %rax
	jns	.L163
	addq	%rsi, %rax
	jns	.L163
	addq	%rsi, %rax
.L185:
	testq	%rax, %rax
	jns	.L163
	jmp	.L177
	.p2align 4,,10
	.p2align 3
.L193:
	movq	%rsi, %rdx
	subq	%rax, %rdx
	jmp	.L139
	.p2align 4,,10
	.p2align 3
.L183:
	movq	%rsi, %rax
	subq	%rdx, %rax
	jmp	.L185
.L132:
	testq	%rsi, %rsi
	jg	.L134
.L187:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L155:
	.cfi_restore_state
	movq	%rsi, %rax
	je	.L180
	subq	$1, %rax
	jns	.L156
	addq	%rsi, %rax
.L180:
	testq	%rax, %rax
	jns	.L156
	jmp	.L177
	.p2align 4,,10
	.p2align 3
.L181:
	movl	$1, %eax
	jmp	.L180
.L182:
	movl	$_ZZ23randomize_next_pointersP6recordlE19__PRETTY_FUNCTION__, %ecx
	movl	$144, %edx
	movl	$.LC6, %esi
	movl	$.LC15, %edi
	call	__assert_fail
.L191:
	movl	$_ZZ23randomize_next_pointersP6recordlE19__PRETTY_FUNCTION__, %ecx
	movl	$138, %edx
	movl	$.LC6, %esi
	movl	$.LC13, %edi
	call	__assert_fail
	.cfi_endproc
.LFE87:
	.size	_Z23randomize_next_pointersP6recordl, .-_Z23randomize_next_pointersP6recordl
	.section	.text.unlikely
.LCOLDE17:
	.text
.LHOTE17:
	.section	.text.unlikely
.LCOLDB18:
	.text
.LHOTB18:
	.p2align 4,,15
	.globl	_Z9mk_arraysliP6recordPS0_i
	.type	_Z9mk_arraysliP6recordPS0_i, @function
_Z9mk_arraysliP6recordPS0_i:
.LFB88:
	.cfi_startproc
	testl	%esi, %esi
	jle	.L243
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	leal	-1(%rsi), %eax
	movq	%rcx, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdx, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	leaq	8(%rcx,%rax,8), %r12
	salq	$6, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%r8d, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	.p2align 4,,10
	.p2align 3
.L201:
	testq	%rbx, %rbx
	jle	.L199
	leaq	-1(%rbx), %r8
	movl	$1, %esi
	leaq	64(%r14), %rdi
	movq	%rsi, %rax
	andl	$7, %r8d
	cqto
	idivq	%rbx
	salq	$6, %rdx
	addq	%r14, %rdx
	movq	%rdx, (%r14)
	cmpq	$1, %rbx
	je	.L199
	testq	%r8, %r8
	je	.L225
	cmpq	$1, %r8
	je	.L226
	cmpq	$2, %r8
	je	.L227
	cmpq	$3, %r8
	je	.L228
	cmpq	$4, %r8
	je	.L229
	cmpq	$5, %r8
	je	.L230
	cmpq	$6, %r8
	je	.L231
	movl	$2, %esi
	movq	%rsi, %rax
	cqto
	idivq	%rbx
	salq	$6, %rdx
	addq	%r14, %rdx
	movq	%rdx, (%rdi)
	leaq	128(%r14), %rdi
.L231:
	addq	$1, %rsi
	addq	$64, %rdi
	movq	%rsi, %rax
	cqto
	idivq	%rbx
	salq	$6, %rdx
	addq	%r14, %rdx
	movq	%rdx, -64(%rdi)
.L230:
	addq	$1, %rsi
	addq	$64, %rdi
	movq	%rsi, %rax
	cqto
	idivq	%rbx
	salq	$6, %rdx
	addq	%r14, %rdx
	movq	%rdx, -64(%rdi)
.L229:
	addq	$1, %rsi
	addq	$64, %rdi
	movq	%rsi, %rax
	cqto
	idivq	%rbx
	salq	$6, %rdx
	addq	%r14, %rdx
	movq	%rdx, -64(%rdi)
.L228:
	addq	$1, %rsi
	addq	$64, %rdi
	movq	%rsi, %rax
	cqto
	idivq	%rbx
	salq	$6, %rdx
	addq	%r14, %rdx
	movq	%rdx, -64(%rdi)
.L227:
	addq	$1, %rsi
	addq	$64, %rdi
	movq	%rsi, %rax
	cqto
	idivq	%rbx
	salq	$6, %rdx
	addq	%r14, %rdx
	movq	%rdx, -64(%rdi)
.L226:
	addq	$1, %rsi
	addq	$64, %rdi
	movq	%rsi, %rax
	cqto
	idivq	%rbx
	salq	$6, %rdx
	addq	%r14, %rdx
	movq	%rdx, -64(%rdi)
	cmpq	%rsi, %rbx
	je	.L199
.L225:
	leaq	1(%rsi), %rax
	cqto
	idivq	%rbx
	leaq	2(%rsi), %rax
	salq	$6, %rdx
	addq	%r14, %rdx
	movq	%rdx, (%rdi)
	cqto
	idivq	%rbx
	leaq	3(%rsi), %rax
	salq	$6, %rdx
	addq	%r14, %rdx
	movq	%rdx, 64(%rdi)
	cqto
	idivq	%rbx
	leaq	4(%rsi), %rax
	salq	$6, %rdx
	addq	%r14, %rdx
	movq	%rdx, 128(%rdi)
	cqto
	idivq	%rbx
	leaq	5(%rsi), %rax
	salq	$6, %rdx
	addq	%r14, %rdx
	movq	%rdx, 192(%rdi)
	cqto
	idivq	%rbx
	leaq	6(%rsi), %rax
	salq	$6, %rdx
	addq	%r14, %rdx
	movq	%rdx, 256(%rdi)
	cqto
	idivq	%rbx
	leaq	7(%rsi), %rax
	salq	$6, %rdx
	addq	$8, %rsi
	addq	%r14, %rdx
	movq	%rdx, 320(%rdi)
	cqto
	idivq	%rbx
	salq	$6, %rdx
	movq	%rsi, %rax
	addq	%r14, %rdx
	movq	%rdx, 384(%rdi)
	cqto
	idivq	%rbx
	salq	$6, %rdx
	addq	%r14, %rdx
	addq	$512, %rdi
	movq	%rdx, -64(%rdi)
	cmpq	%rsi, %rbx
	jne	.L225
.L199:
	testl	%ebp, %ebp
	jne	.L245
.L198:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	addq	$8, %r15
	call	_Z18check_links_cyclicP6recordl
	movq	%r14, -8(%r15)
	addq	%r13, %r14
	cmpq	%r15, %r12
	jne	.L201
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_restore 13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_restore 14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_restore 15
	.cfi_def_cfa_offset 8
.L243:
	ret
	.p2align 4,,10
	.p2align 3
.L245:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%rbx, %rsi
	movq	%r14, %rdi
	call	_Z23randomize_next_pointersP6recordl
	jmp	.L198
	.cfi_endproc
.LFE88:
	.size	_Z9mk_arraysliP6recordPS0_i, .-_Z9mk_arraysliP6recordPS0_i
	.section	.text.unlikely
.LCOLDE18:
	.text
.LHOTE18:
	.section	.rodata.str1.1
.LC19:
	.string	"z % 4 == 3"
.LC20:
	.string	"z <= x"
.LC21:
	.string	"0"
	.section	.text.unlikely
.LCOLDB22:
	.text
.LHOTB22:
	.p2align 4,,15
	.globl	_Z10good_primel
	.type	_Z10good_primel, @function
_Z10good_primel:
.LFB95:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$3, %eax
	cmpq	$2, %rdi
	jg	.L278
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L278:
	.cfi_restore_state
	movq	%rdi, %rax
	andq	$-4, %rax
	leaq	3(%rax), %rsi
	cmpq	%rsi, %rdi
	jl	.L279
	movq	%rsi, %rdx
	andl	$3, %edx
	cmpq	$3, %rdx
	jne	.L258
	.p2align 4,,10
	.p2align 3
.L257:
	cmpq	$1, %rsi
	je	.L251
	cmpq	$3, %rsi
	jle	.L261
	testb	$1, %sil
	je	.L253
	movl	$2, %r9d
	jmp	.L255
	.p2align 4,,10
	.p2align 3
.L275:
	movq	%rsi, %rax
	cqto
	idivq	%r9
	testq	%rdx, %rdx
	je	.L253
.L255:
	addq	$1, %r9
	movq	%r9, %rdi
	imulq	%r9, %rdi
	cmpq	%rsi, %rdi
	jle	.L275
.L261:
	movq	%rsi, %rax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L279:
	.cfi_restore_state
	leaq	-1(%rax), %rsi
	movq	%rsi, %rcx
	sarq	$63, %rcx
	shrq	$62, %rcx
	leaq	(%rsi,%rcx), %r8
	andl	$3, %r8d
	subq	%rcx, %r8
	cmpq	$3, %r8
	jne	.L258
	cmpq	%rsi, %rdi
	jl	.L250
	testq	%rsi, %rsi
	jg	.L257
.L251:
	movl	$_ZZ10good_primelE19__PRETTY_FUNCTION__, %ecx
	movl	$384, %edx
	movl	$.LC6, %esi
	movl	$.LC21, %edi
	call	__assert_fail
	.p2align 4,,10
	.p2align 3
.L253:
	subq	$4, %rsi
	jne	.L257
	jmp	.L251
.L258:
	movl	$_ZZ10good_primelE19__PRETTY_FUNCTION__, %ecx
	movl	$378, %edx
	movl	$.LC6, %esi
	movl	$.LC19, %edi
	call	__assert_fail
.L250:
	movl	$_ZZ10good_primelE19__PRETTY_FUNCTION__, %ecx
	movl	$379, %edx
	movl	$.LC6, %esi
	movl	$.LC20, %edi
	call	__assert_fail
	.cfi_endproc
.LFE95:
	.size	_Z10good_primel, .-_Z10good_primel
	.section	.text.unlikely
.LCOLDE22:
	.text
.LHOTE22:
	.section	.text.unlikely
.LCOLDB23:
	.text
.LHOTB23:
	.p2align 4,,15
	.globl	_Z13get_n_threadsv
	.type	_Z13get_n_threadsv, @function
_Z13get_n_threadsv:
.LFB96:
	.cfi_startproc
	jmp	omp_get_max_threads
	.cfi_endproc
.LFE96:
	.size	_Z13get_n_threadsv, .-_Z13get_n_threadsv
	.section	.text.unlikely
.LCOLDE23:
	.text
.LHOTE23:
	.section	.text.unlikely
.LCOLDB24:
	.text
.LHOTB24:
	.p2align 4,,15
	.globl	_Z8get_rankv
	.type	_Z8get_rankv, @function
_Z8get_rankv:
.LFB97:
	.cfi_startproc
	jmp	omp_get_thread_num
	.cfi_endproc
.LFE97:
	.size	_Z8get_rankv, .-_Z8get_rankv
	.section	.text.unlikely
.LCOLDE24:
	.text
.LHOTE24:
	.section	.text.unlikely
.LCOLDB25:
	.text
.LHOTB25:
	.p2align 4,,15
	.globl	_Z7barrierv
	.type	_Z7barrierv, @function
_Z7barrierv:
.LFB98:
	.cfi_startproc
	jmp	GOMP_barrier
	.cfi_endproc
.LFE98:
	.size	_Z7barrierv, .-_Z7barrierv
	.section	.text.unlikely
.LCOLDE25:
	.text
.LHOTE25:
	.section	.rodata.str1.1
.LC26:
	.string	"sequential"
.LC27:
	.string	"random"
.LC28:
	.string	"traverse"
	.section	.text.unlikely
.LCOLDB29:
	.text
.LHOTB29:
	.p2align 4,,15
	.globl	_Z23canonical_method_stringPKc
	.type	_Z23canonical_method_stringPKc, @function
_Z23canonical_method_stringPKc:
.LFB100:
	.cfi_startproc
	movzbl	(%rdi), %edx
	movl	$.LC27, %eax
	cmpb	$114, %dl
	je	.L289
	cmpb	$115, %dl
	movl	$.LC28, %ecx
	movl	$.LC26, %eax
	cmovne	%rcx, %rax
.L289:
	ret
	.cfi_endproc
.LFE100:
	.size	_Z23canonical_method_stringPKc, .-_Z23canonical_method_stringPKc
	.section	.text.unlikely
.LCOLDE29:
	.text
.LHOTE29:
	.section	.rodata.str1.1
.LC30:
	.string	"usage:\n"
.LC31:
	.string	"  %s [options]\n"
.LC32:
	.string	"options:\n"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC33:
	.string	"  -m,--method traverse/sequential/random (%s)\n"
	.section	.rodata.str1.1
.LC34:
	.string	"  -n,--n_elements N (%ld)\n"
.LC35:
	.string	"  -c,--n_chains N (%ld)\n"
.LC36:
	.string	"  -s,--n_scans N (%ld)\n"
.LC37:
	.string	"  -r,--repeat N (%d)\n"
.LC38:
	.string	"  -x,--shuffle 0/1 (%d)\n"
.LC39:
	.string	"  -p,--payload 0/1 (%d)\n"
	.section	.text.unlikely
.LCOLDB40:
	.text
.LHOTB40:
	.p2align 4,,15
	.globl	_Z5usagePc
	.type	_Z5usagePc, @function
_Z5usagePc:
.LFB104:
	.cfi_startproc
	movq	stderr(%rip), %rcx
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$7, %edx
	movq	%rdi, %rbx
	movl	$1, %esi
	movl	$.LC30, %edi
	call	fwrite
	movq	%rbx, %rcx
	movl	$.LC31, %edx
	xorl	%eax, %eax
	movq	stderr(%rip), %rdi
	movl	$1, %esi
	call	__fprintf_chk
	movl	$9, %edx
	movl	$1, %esi
	movq	stderr(%rip), %rcx
	movl	$.LC32, %edi
	call	fwrite
	movq	stderr(%rip), %rdi
	movl	$.LC28, %ecx
	xorl	%eax, %eax
	movl	$.LC33, %edx
	movl	$1, %esi
	call	__fprintf_chk
	movq	stderr(%rip), %rdi
	movl	$512, %ecx
	xorl	%eax, %eax
	movl	$.LC34, %edx
	movl	$1, %esi
	call	__fprintf_chk
	movq	stderr(%rip), %rdi
	movl	$1, %ecx
	xorl	%eax, %eax
	movl	$.LC35, %edx
	movl	$1, %esi
	call	__fprintf_chk
	xorl	%ecx, %ecx
	movl	$.LC36, %edx
	xorl	%eax, %eax
	movq	stderr(%rip), %rdi
	movl	$1, %esi
	call	__fprintf_chk
	movq	stderr(%rip), %rdi
	movl	$3, %ecx
	xorl	%eax, %eax
	movl	$.LC37, %edx
	movl	$1, %esi
	call	__fprintf_chk
	movq	stderr(%rip), %rdi
	movl	$1, %ecx
	xorl	%eax, %eax
	movl	$.LC38, %edx
	movl	$1, %esi
	call	__fprintf_chk
	popq	%rbx
	.cfi_def_cfa_offset 8
	movl	$1, %ecx
	movl	$.LC39, %edx
	movq	stderr(%rip), %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	jmp	__fprintf_chk
	.cfi_endproc
.LFE104:
	.size	_Z5usagePc, .-_Z5usagePc
	.section	.text.unlikely
.LCOLDE40:
	.text
.LHOTE40:
	.section	.rodata.str1.1
.LC41:
	.string	"m:n:c:s:r:x:p:"
	.section	.text.unlikely
.LCOLDB42:
	.text
.LHOTB42:
	.p2align 4,,15
	.globl	_Z13parse_cmdlineiPKPcP4opts
	.type	_Z13parse_cmdlineiPKPcP4opts, @function
_Z13parse_cmdlineiPKPcP4opts:
.LFB105:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	%edi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L304:
	leaq	4(%rsp), %r8
	movq	%rbx, %rsi
	movl	%ebp, %edi
	movl	$0, 4(%rsp)
	movl	$_ZZ13parse_cmdlineiPKPcP4optsE12long_options, %ecx
	movl	$.LC41, %edx
	call	getopt_long
	cmpl	$-1, %eax
	je	.L293
	subl	$99, %eax
	cmpl	$21, %eax
	ja	.L294
	jmp	*.L296(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L296:
	.quad	.L295
	.quad	.L294
	.quad	.L294
	.quad	.L294
	.quad	.L294
	.quad	.L294
	.quad	.L294
	.quad	.L294
	.quad	.L294
	.quad	.L294
	.quad	.L297
	.quad	.L298
	.quad	.L294
	.quad	.L299
	.quad	.L294
	.quad	.L300
	.quad	.L301
	.quad	.L294
	.quad	.L294
	.quad	.L294
	.quad	.L294
	.quad	.L302
	.text
	.p2align 4,,10
	.p2align 3
.L302:
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movl	%eax, 36(%r12)
	jmp	.L304
	.p2align 4,,10
	.p2align 3
.L301:
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, 24(%r12)
	jmp	.L304
	.p2align 4,,10
	.p2align 3
.L300:
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movl	%eax, 32(%r12)
	jmp	.L304
	.p2align 4,,10
	.p2align 3
.L299:
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movl	%eax, 40(%r12)
	jmp	.L304
	.p2align 4,,10
	.p2align 3
.L298:
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, 8(%r12)
	jmp	.L304
	.p2align 4,,10
	.p2align 3
.L297:
	movq	optarg(%rip), %rdi
	call	strdup
	movq	%rax, (%r12)
	jmp	.L304
	.p2align 4,,10
	.p2align 3
.L295:
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	cltq
	movq	%rax, 16(%r12)
	jmp	.L304
	.p2align 4,,10
	.p2align 3
.L294:
	movq	(%rbx), %rdi
	call	_Z5usagePc
	movl	$1, %edi
	call	exit
	.p2align 4,,10
	.p2align 3
.L293:
	movq	8(%rsp), %rcx
	xorq	%fs:40, %rcx
	movq	%r12, %rax
	jne	.L308
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L308:
	.cfi_restore_state
	call	__stack_chk_fail
	.cfi_endproc
.LFE105:
	.size	_Z13parse_cmdlineiPKPcP4opts, .-_Z13parse_cmdlineiPKPcP4opts
	.section	.text.unlikely
.LCOLDE42:
	.text
.LHOTE42:
	.section	.rodata.str1.1
.LC43:
	.string	"mmap"
	.section	.rodata.str1.8
	.align 8
.LC44:
	.string	"%ld elements x %d chains x %ld scans x %d threads = %ld record accesses = %ld loads.\n"
	.section	.rodata.str1.1
.LC45:
	.string	"data: %ld bytes\n"
.LC46:
	.string	"shuffle: %ld\n"
.LC47:
	.string	"payload: %d\n"
.LC48:
	.string	"method: %s\n"
	.section	.text.unlikely
.LCOLDB49:
	.section	.text.startup,"ax",@progbits
.LHOTB49:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB106:
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
	movl	$3, %ebx
	subq	$168, %rsp
	.cfi_def_cfa_offset 224
	movq	%fs:40, %rax
	movq	%rax, 152(%rsp)
	xorl	%eax, %eax
	leaq	48(%rsp), %rdx
	movq	$.LC28, 48(%rsp)
	movq	$512, 56(%rsp)
	movq	$1, 64(%rsp)
	movq	$0, 72(%rsp)
	movl	$3, 80(%rsp)
	movl	$1, 84(%rsp)
	movl	$1, 88(%rsp)
	call	_Z13parse_cmdlineiPKPcP4opts
	call	omp_get_max_threads
	movq	64(%rsp), %r14
	movslq	%eax, %rdi
	movq	48(%rsp), %rax
	movq	%rdi, %r15
	movslq	%r14d, %rsi
	movq	%rax, (%rsp)
	movq	56(%rsp), %rax
	cqto
	idivq	%rsi
	cqto
	idivq	%rdi
	cmpq	$2, %rax
	jg	.L356
	.p2align 4,,10
	.p2align 3
.L310:
	movslq	84(%rsp), %r11
	movq	72(%rsp), %rbp
	movq	%r11, 8(%rsp)
	testq	%rbp, %rbp
	jne	.L320
	movq	%rsi, %r12
	movl	$33554432, %eax
	imulq	%rbx, %r12
	cqto
	imulq	%rdi, %r12
	idivq	%r12
	leaq	1(%rax), %rbp
.L320:
	imulq	%rbx, %rsi
	movq	%rbp, %rcx
	movl	80(%rsp), %r13d
	xorl	%r9d, %r9d
	movl	$-1, %r8d
	movl	$3, %edx
	movl	88(%rsp), %r12d
	movl	%r13d, 44(%rsp)
	imulq	%rsi, %rdi
	imulq	%rdi, %rcx
	salq	$6, %rdi
	movq	%rdi, %rsi
	movq	%rdi, 16(%rsp)
	xorl	%edi, %edi
	movq	%rcx, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movl	$34, %ecx
	call	mmap
	movq	%rax, %r13
	cmpq	$-1, %rax
	je	.L357
	movq	16(%rsp), %rdx
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	memset
	testl	%r12d, %r12d
	je	.L322
	movq	32(%rsp), %r8
	salq	$6, %r8
	shrq	$5, %r8
	movq	%r8, 24(%rsp)
.L322:
	pushq	24(%rsp)
	.cfi_def_cfa_offset 232
	movl	%r15d, %r9d
	movq	%rbp, %r8
	movl	%r14d, %ecx
	pushq	40(%rsp)
	.cfi_def_cfa_offset 240
	movq	%rbx, %rdx
	movl	$.LC44, %esi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk
	popq	%rax
	.cfi_def_cfa_offset 232
	movl	$.LC45, %esi
	movl	$1, %edi
	popq	%rdx
	.cfi_def_cfa_offset 224
	xorl	%eax, %eax
	movq	16(%rsp), %rdx
	call	__printf_chk
	movq	8(%rsp), %rdx
	movl	$.LC46, %esi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk
	movl	%r12d, %edx
	movl	$.LC47, %esi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk
	movq	(%rsp), %r9
	movl	$.LC27, %edx
	movzbl	(%r9), %r10d
	cmpb	$114, %r10b
	je	.L325
	cmpb	$115, %r10b
	movl	$.LC28, %edx
	movl	$.LC26, %esi
	cmove	%rsi, %rdx
.L325:
	movl	$.LC48, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movq	(%rsp), %rdi
	movq	%rbx, 104(%rsp)
	xorl	%ecx, %ecx
	movq	8(%rsp), %rbx
	movl	%r14d, 140(%rsp)
	xorl	%edx, %edx
	movl	44(%rsp), %r14d
	leaq	96(%rsp), %rsi
	movq	%rbp, 120(%rsp)
	movq	%r13, 128(%rsp)
	movq	%rdi, 96(%rsp)
	movl	$main._omp_fn.0, %edi
	movq	%rbx, 112(%rsp)
	movl	%r15d, 136(%rsp)
	movl	%r14d, 144(%rsp)
	movl	%r12d, 148(%rsp)
	call	GOMP_parallel
	xorl	%eax, %eax
	movq	152(%rsp), %rdi
	xorq	%fs:40, %rdi
	jne	.L358
	addq	$168, %rsp
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
.L356:
	.cfi_restore_state
	movq	%rax, %rcx
	andq	$-4, %rax
	leaq	3(%rax), %rbx
	cmpq	%rbx, %rcx
	jl	.L359
	movq	%rbx, %rbp
	andl	$3, %ebp
	cmpq	$3, %rbp
	jne	.L327
	.p2align 4,,10
	.p2align 3
.L326:
	cmpq	$1, %rbx
	je	.L314
	cmpq	$3, %rbx
	jle	.L310
	testb	$1, %bl
	je	.L316
	movl	$2, %r10d
	.p2align 4,,10
	.p2align 3
.L318:
	addq	$1, %r10
	movq	%r10, %r9
	imulq	%r10, %r9
	cmpq	%rbx, %r9
	jg	.L310
	movq	%rbx, %rax
	cqto
	idivq	%r10
	testq	%rdx, %rdx
	jne	.L318
.L316:
	subq	$4, %rbx
	jne	.L326
.L314:
	movl	$_ZZ10good_primelE19__PRETTY_FUNCTION__, %ecx
	movl	$384, %edx
	movl	$.LC6, %esi
	movl	$.LC21, %edi
	call	__assert_fail
.L359:
	leaq	-1(%rax), %rbx
	movl	$4, %r8d
	movq	%rbx, %rax
	cqto
	idivq	%r8
	cmpq	$3, %rdx
	jne	.L327
	cmpq	%rbx, %rcx
	jl	.L313
	testq	%rbx, %rbx
	jg	.L326
	jmp	.L314
.L327:
	movl	$_ZZ10good_primelE19__PRETTY_FUNCTION__, %ecx
	movl	$378, %edx
	movl	$.LC6, %esi
	movl	$.LC19, %edi
	call	__assert_fail
.L358:
	call	__stack_chk_fail
.L357:
	movl	$.LC43, %edi
	call	perror
	movl	$1, %edi
	call	exit
.L313:
	movl	$_ZZ10good_primelE19__PRETTY_FUNCTION__, %ecx
	movl	$379, %edx
	movl	$.LC6, %esi
	movl	$.LC20, %edi
	call	__assert_fail
	.cfi_endproc
.LFE106:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE49:
	.section	.text.startup
.LHOTE49:
	.section	.text.unlikely._Z13access_randomILi1ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi1ELi1EEP6recordPS1_ll,comdat
.LCOLDB50:
	.section	.text._Z13access_randomILi1ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi1ELi1EEP6recordPS1_ll,comdat
.LHOTB50:
	.p2align 4,,15
	.weak	_Z13access_randomILi1ELi1EEP6recordPS1_ll
	.type	_Z13access_randomILi1ELi1EEP6recordPS1_ll, @function
_Z13access_randomILi1ELi1EEP6recordPS1_ll:
.LFB168:
	.cfi_startproc
	testq	%rdx, %rdx
	jle	.L419
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	xorl	%r11d, %r11d
	pushq	-8(%r10)
	leaq	-1(%rsi), %rax
	pushq	%rbp
	leaq	1(%rsi,%rsi), %r9
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x70,0x6
	.cfi_escape 0x10,0xc,0x2,0x76,0x78
	pushq	%rbx
	.cfi_escape 0x10,0x3,0x2,0x76,0x68
	movq	%rax, %rbx
	movq	(%rdi), %r8
	shrq	$63, %rbx
	addq	%rbx, %rax
	sarq	%rax
	leaq	(%rax,%rax), %r10
	movq	%rax, %rbx
	.p2align 4,,10
	.p2align 3
.L369:
#APP
# 207 "mem.cc" 1
	# random loop begin (n_chains = $1, payload = $1)
# 0 "" 2
#NO_APP
	xorl	%edi, %edi
	testq	%rbx, %rbx
	jle	.L370
	leaq	-2(%r10), %r12
	xorl	%eax, %eax
	shrq	%r12
	andl	$3, %r12d
	je	.L365
	movl	$1, %ecx
	movq	%rcx, %rdi
	subq	%rsi, %rdi
	js	.L390
	movq	%rdi, %rcx
	subq	%rsi, %rcx
	cmovs	%rdi, %rcx
.L390:
	vmovdqa	(%r8), %ymm0
	movl	$2, %edi
	movq	%rcx, %rax
	vmovdqa	32(%r8), %ymm0
	cmpq	$1, %r12
	je	.L365
	cmpq	$2, %r12
	je	.L406
	leaq	3(%rcx), %rax
	movq	%rax, %r12
	subq	%rsi, %r12
	js	.L392
	movq	%r12, %rax
	subq	%rsi, %rax
	cmovs	%r12, %rax
.L392:
	salq	$6, %rcx
	addq	$2, %rdi
	addq	%r8, %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
.L406:
	leaq	1(%rdi,%rax), %rcx
	movq	%rcx, %r12
	subq	%rsi, %r12
	js	.L395
	movq	%r12, %rcx
	subq	%rsi, %rcx
	cmovs	%r12, %rcx
.L395:
	salq	$6, %rax
	addq	$2, %rdi
	addq	%r8, %rax
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	movq	%rcx, %rax
	jmp	.L365
	.p2align 4,,10
	.p2align 3
.L371:
	leaq	1(%rcx,%rdi), %rax
	movq	%rax, %r12
	subq	%rsi, %r12
	js	.L399
	movq	%r12, %rax
	subq	%rsi, %rax
	cmovs	%r12, %rax
.L399:
	salq	$6, %rcx
	addq	%r8, %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	3(%rdi,%rax), %rcx
	movq	%rcx, %r12
	subq	%rsi, %r12
	js	.L401
	movq	%r12, %rcx
	subq	%rsi, %rcx
	cmovs	%r12, %rcx
.L401:
	salq	$6, %rax
	addq	%r8, %rax
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	leaq	5(%rdi,%rcx), %rax
	movq	%rax, %r12
	subq	%rsi, %r12
	js	.L403
	movq	%r12, %rax
	subq	%rsi, %rax
	cmovs	%r12, %rax
.L403:
	salq	$6, %rcx
	addq	$6, %rdi
	addq	%r8, %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
.L365:
	leaq	1(%rdi,%rax), %rcx
	movq	%rcx, %r12
	subq	%rsi, %r12
	js	.L364
	movq	%r12, %rcx
	subq	%rsi, %rcx
	cmovs	%r12, %rcx
.L364:
	salq	$6, %rax
	addq	$2, %rdi
	addq	%r8, %rax
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	cmpq	%r10, %rdi
	jne	.L371
	leaq	1(%rbx), %r12
	movq	%rcx, %rdi
	salq	$6, %rdi
.L363:
	leaq	(%r8,%rdi), %rdi
	movq	%rsi, %rax
	vmovdqa	(%rdi), %ymm0
	subq	%rcx, %rax
	vmovdqa	32(%rdi), %ymm0
	cmpq	%r12, %rsi
	jle	.L372
	leaq	1(%r12,%r12), %rcx
	movq	%r9, %r12
	subq	%rcx, %r12
	subq	$2, %r12
	shrq	%r12
	andl	$3, %r12d
	je	.L368
	movq	%rax, %rdi
	subq	%rcx, %rdi
	js	.L420
.L375:
	salq	$6, %rax
	addq	$2, %rcx
	addq	%r8, %rax
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	movq	%rdi, %rax
	cmpq	$1, %r12
	je	.L368
	cmpq	$2, %r12
	je	.L405
	subq	%rcx, %rax
	js	.L421
.L377:
	salq	$6, %rdi
	addq	$2, %rcx
	addq	%r8, %rdi
	vmovdqa	(%rdi), %ymm0
	vmovdqa	32(%rdi), %ymm0
.L405:
	movq	%rax, %r12
	subq	%rcx, %r12
	js	.L422
.L380:
	salq	$6, %rax
	addq	$2, %rcx
	addq	%r8, %rax
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	movq	%r12, %rax
	jmp	.L368
	.p2align 4,,10
	.p2align 3
.L367:
	salq	$6, %rax
	addq	$2, %rcx
	addq	%r8, %rax
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	cmpq	%r9, %rcx
	je	.L366
	movq	%rdi, %rax
	subq	%rcx, %rax
	js	.L423
.L384:
	salq	$6, %rdi
	movq	%rax, %r12
	addq	%r8, %rdi
	vmovdqa	(%rdi), %ymm0
	vmovdqa	32(%rdi), %ymm0
	leaq	2(%rcx), %rdi
	subq	%rdi, %r12
	movq	%r12, %rdi
	js	.L424
.L386:
	salq	$6, %rax
	movq	%rdi, %r12
	addq	%r8, %rax
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	leaq	4(%rcx), %rax
	subq	%rax, %r12
	movq	%r12, %rax
	js	.L425
.L388:
	salq	$6, %rdi
	addq	$6, %rcx
	addq	%r8, %rdi
	vmovdqa	(%rdi), %ymm0
	vmovdqa	32(%rdi), %ymm0
.L368:
	movq	%rax, %rdi
	subq	%rcx, %rdi
	jns	.L367
	addq	%rsi, %rdi
	jns	.L367
	addq	%rsi, %rdi
	jmp	.L367
	.p2align 4,,10
	.p2align 3
.L372:
	movq	%rax, %rdi
.L366:
#APP
# 249 "mem.cc" 1
	# random loop end (n_chains = $1, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, %r11
	cmpq	%r11, %rdx
	jne	.L369
	salq	$6, %rdi
	vzeroupper
	popq	%rbx
	.cfi_remember_state
	.cfi_restore 3
	leaq	(%r8,%rdi), %rax
	popq	%rdx
	.cfi_restore 10
	.cfi_def_cfa 10, 0
	popq	%r12
	.cfi_restore 12
	popq	%rbp
	.cfi_restore 6
	leaq	-8(%rdx), %rsp
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L423:
	.cfi_restore_state
	addq	%rsi, %rax
	jns	.L384
	addq	%rsi, %rax
	jmp	.L384
	.p2align 4,,10
	.p2align 3
.L425:
	addq	%rsi, %rax
	jns	.L388
	addq	%rsi, %rax
	jmp	.L388
	.p2align 4,,10
	.p2align 3
.L424:
	addq	%rsi, %rdi
	jns	.L386
	addq	%rsi, %rdi
	jmp	.L386
	.p2align 4,,10
	.p2align 3
.L420:
	addq	%rsi, %rdi
	jns	.L375
	addq	%rsi, %rdi
	jmp	.L375
	.p2align 4,,10
	.p2align 3
.L421:
	addq	%rsi, %rax
	jns	.L377
	addq	%rsi, %rax
	jmp	.L377
	.p2align 4,,10
	.p2align 3
.L422:
	addq	%rsi, %r12
	jns	.L380
	addq	%rsi, %r12
	jmp	.L380
	.p2align 4,,10
	.p2align 3
.L370:
	movl	$1, %r12d
	xorl	%ecx, %ecx
	jmp	.L363
.L419:
	.cfi_def_cfa 7, 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	movq	(%rdi), %rsi
	xorl	%r8d, %r8d
	leaq	(%rsi,%r8), %rax
	ret
	.cfi_endproc
.LFE168:
	.size	_Z13access_randomILi1ELi1EEP6recordPS1_ll, .-_Z13access_randomILi1ELi1EEP6recordPS1_ll
	.section	.text.unlikely._Z13access_randomILi1ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi1ELi1EEP6recordPS1_ll,comdat
.LCOLDE50:
	.section	.text._Z13access_randomILi1ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi1ELi1EEP6recordPS1_ll,comdat
.LHOTE50:
	.section	.text.unlikely._Z13access_randomILi1ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi1ELi0EEP6recordPS1_ll,comdat
.LCOLDB51:
	.section	.text._Z13access_randomILi1ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi1ELi0EEP6recordPS1_ll,comdat
.LHOTB51:
	.p2align 4,,15
	.weak	_Z13access_randomILi1ELi0EEP6recordPS1_ll
	.type	_Z13access_randomILi1ELi0EEP6recordPS1_ll, @function
_Z13access_randomILi1ELi0EEP6recordPS1_ll:
.LFB171:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	testq	%rdx, %rdx
	jle	.L513
	leaq	-1(%rsi), %rax
	movq	(%rdi), %rdi
	xorl	%r9d, %r9d
	leaq	1(%rsi,%rsi), %r11
	movq	%rax, %r10
	shrq	$63, %r10
	addq	%r10, %rax
	sarq	%rax
	leaq	(%rax,%rax), %r8
	movq	%rax, %r10
	.p2align 4,,10
	.p2align 3
.L435:
#APP
# 207 "mem.cc" 1
	# random loop begin (n_chains = $1, payload = $0)
# 0 "" 2
#NO_APP
	xorl	%ebx, %ebx
	testq	%r10, %r10
	jle	.L436
	leaq	-2(%r8), %rbp
	xorl	%eax, %eax
	shrq	%rbp
	andl	$3, %ebp
	je	.L431
	movl	$1, %ecx
	movq	%rcx, %rbx
	subq	%rsi, %rbx
	js	.L476
	movq	%rbx, %rcx
	subq	%rsi, %rcx
	cmovs	%rbx, %rcx
.L476:
	movq	(%rdi), %rax
	movl	$2, %ebx
	movq	%rcx, %rax
	cmpq	$1, %rbp
	je	.L431
	cmpq	$2, %rbp
	je	.L496
	leaq	3(%rcx), %rax
	movq	%rax, %rbp
	subq	%rsi, %rbp
	js	.L478
	movq	%rbp, %rax
	subq	%rsi, %rax
	cmovs	%rbp, %rax
.L478:
	salq	$6, %rcx
	addq	$2, %rbx
	addq	%rdi, %rcx
	movq	(%rcx), %rcx
.L496:
	leaq	1(%rbx,%rax), %rcx
	movq	%rcx, %rbp
	subq	%rsi, %rbp
	js	.L481
	movq	%rbp, %rcx
	subq	%rsi, %rcx
	cmovs	%rbp, %rcx
.L481:
	salq	$6, %rax
	addq	$2, %rbx
	addq	%rdi, %rax
	movq	(%rax), %rax
	movq	%rcx, %rax
	jmp	.L431
	.p2align 4,,10
	.p2align 3
.L437:
	leaq	1(%rcx,%rbx), %rax
	movq	%rax, %rbp
	subq	%rsi, %rbp
	js	.L485
	movq	%rbp, %rax
	subq	%rsi, %rax
	cmovs	%rbp, %rax
.L485:
	salq	$6, %rcx
	addq	%rdi, %rcx
	movq	(%rcx), %rcx
	leaq	3(%rbx,%rax), %rcx
	movq	%rcx, %rbp
	subq	%rsi, %rbp
	js	.L487
	movq	%rbp, %rcx
	subq	%rsi, %rcx
	cmovs	%rbp, %rcx
.L487:
	salq	$6, %rax
	addq	%rdi, %rax
	movq	(%rax), %rax
	leaq	5(%rbx,%rcx), %rax
	movq	%rax, %rbp
	subq	%rsi, %rbp
	js	.L489
	movq	%rbp, %rax
	subq	%rsi, %rax
	cmovs	%rbp, %rax
.L489:
	salq	$6, %rcx
	addq	$6, %rbx
	addq	%rdi, %rcx
	movq	(%rcx), %rcx
.L431:
	leaq	1(%rbx,%rax), %rcx
	movq	%rcx, %rbp
	subq	%rsi, %rbp
	js	.L430
	movq	%rbp, %rcx
	subq	%rsi, %rcx
	cmovs	%rbp, %rcx
.L430:
	salq	$6, %rax
	addq	$2, %rbx
	addq	%rdi, %rax
	movq	(%rax), %rax
	cmpq	%r8, %rbx
	jne	.L437
	leaq	1(%r10), %rbp
	movq	%rcx, %rbx
	salq	$6, %rbx
.L429:
	leaq	(%rdi,%rbx), %rbx
	movq	%rsi, %rax
	subq	%rcx, %rax
	movq	(%rbx), %rcx
	cmpq	%rbp, %rsi
	jle	.L438
	leaq	1(%rbp,%rbp), %rcx
	movq	%r11, %rbx
	subq	%rcx, %rbx
	subq	$2, %rbx
	shrq	%rbx
	andl	$7, %ebx
	je	.L434
	movq	%rax, %rbp
	subq	%rcx, %rbp
	js	.L514
.L441:
	salq	$6, %rax
	addq	$2, %rcx
	addq	%rdi, %rax
	movq	(%rax), %rax
	movq	%rbp, %rax
	cmpq	$1, %rbx
	je	.L434
	cmpq	$2, %rbx
	je	.L491
	cmpq	$3, %rbx
	je	.L492
	cmpq	$4, %rbx
	je	.L493
	cmpq	$5, %rbx
	je	.L494
	cmpq	$6, %rbx
	je	.L495
	subq	%rcx, %rax
	js	.L515
.L443:
	salq	$6, %rbp
	addq	$2, %rcx
	addq	%rdi, %rbp
	movq	0(%rbp), %rbx
.L495:
	movq	%rax, %rbx
	subq	%rcx, %rbx
	js	.L516
.L446:
	salq	$6, %rax
	addq	$2, %rcx
	addq	%rdi, %rax
	movq	(%rax), %rax
	movq	%rbx, %rax
.L494:
	movq	%rax, %rbp
	subq	%rcx, %rbp
	js	.L517
.L449:
	salq	$6, %rax
	addq	$2, %rcx
	addq	%rdi, %rax
	movq	(%rax), %rax
	movq	%rbp, %rax
.L493:
	movq	%rax, %rbx
	subq	%rcx, %rbx
	js	.L518
.L452:
	salq	$6, %rax
	addq	$2, %rcx
	addq	%rdi, %rax
	movq	(%rax), %rax
	movq	%rbx, %rax
.L492:
	movq	%rax, %rbp
	subq	%rcx, %rbp
	js	.L519
.L455:
	salq	$6, %rax
	addq	$2, %rcx
	addq	%rdi, %rax
	movq	(%rax), %rax
	movq	%rbp, %rax
.L491:
	movq	%rax, %rbx
	subq	%rcx, %rbx
	js	.L520
.L458:
	salq	$6, %rax
	addq	$2, %rcx
	addq	%rdi, %rax
	movq	(%rax), %rax
	movq	%rbx, %rax
	jmp	.L434
	.p2align 4,,10
	.p2align 3
.L433:
	salq	$6, %rax
	addq	$2, %rcx
	addq	%rdi, %rax
	movq	(%rax), %rax
	cmpq	%r11, %rcx
	je	.L432
	movq	%rbx, %rax
	subq	%rcx, %rax
	js	.L521
.L462:
	salq	$6, %rbx
	movq	%rax, %rbp
	addq	%rdi, %rbx
	movq	(%rbx), %rbx
	leaq	2(%rcx), %rbx
	subq	%rbx, %rbp
	movq	%rbp, %rbx
	js	.L522
.L464:
	salq	$6, %rax
	movq	%rbx, %rbp
	addq	%rdi, %rax
	movq	(%rax), %rax
	leaq	4(%rcx), %rax
	subq	%rax, %rbp
	movq	%rbp, %rax
	js	.L523
.L466:
	salq	$6, %rbx
	movq	%rax, %rbp
	addq	%rdi, %rbx
	movq	(%rbx), %rbx
	leaq	6(%rcx), %rbx
	subq	%rbx, %rbp
	movq	%rbp, %rbx
	js	.L524
.L468:
	salq	$6, %rax
	movq	%rbx, %rbp
	addq	%rdi, %rax
	movq	(%rax), %rax
	leaq	8(%rcx), %rax
	subq	%rax, %rbp
	movq	%rbp, %rax
	js	.L525
.L470:
	salq	$6, %rbx
	movq	%rax, %rbp
	addq	%rdi, %rbx
	movq	(%rbx), %rbx
	leaq	10(%rcx), %rbx
	subq	%rbx, %rbp
	movq	%rbp, %rbx
	js	.L526
.L472:
	salq	$6, %rax
	movq	%rbx, %rbp
	addq	%rdi, %rax
	movq	(%rax), %rax
	leaq	12(%rcx), %rax
	subq	%rax, %rbp
	movq	%rbp, %rax
	js	.L527
.L474:
	salq	$6, %rbx
	addq	$14, %rcx
	addq	%rdi, %rbx
	movq	(%rbx), %rbx
.L434:
	movq	%rax, %rbx
	subq	%rcx, %rbx
	jns	.L433
	addq	%rsi, %rbx
	jns	.L433
	addq	%rsi, %rbx
	jmp	.L433
	.p2align 4,,10
	.p2align 3
.L438:
	movq	%rax, %rbx
.L432:
#APP
# 249 "mem.cc" 1
	# random loop end (n_chains = $1, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, %r9
	cmpq	%r9, %rdx
	jne	.L435
	salq	$6, %rbx
	leaq	(%rdi,%rbx), %rax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L521:
	.cfi_restore_state
	addq	%rsi, %rax
	jns	.L462
	addq	%rsi, %rax
	jmp	.L462
	.p2align 4,,10
	.p2align 3
.L523:
	addq	%rsi, %rax
	jns	.L466
	addq	%rsi, %rax
	jmp	.L466
	.p2align 4,,10
	.p2align 3
.L522:
	addq	%rsi, %rbx
	jns	.L464
	addq	%rsi, %rbx
	jmp	.L464
	.p2align 4,,10
	.p2align 3
.L527:
	addq	%rsi, %rax
	jns	.L474
	addq	%rsi, %rax
	jmp	.L474
	.p2align 4,,10
	.p2align 3
.L526:
	addq	%rsi, %rbx
	jns	.L472
	addq	%rsi, %rbx
	jmp	.L472
	.p2align 4,,10
	.p2align 3
.L525:
	addq	%rsi, %rax
	jns	.L470
	addq	%rsi, %rax
	jmp	.L470
	.p2align 4,,10
	.p2align 3
.L524:
	addq	%rsi, %rbx
	jns	.L468
	addq	%rsi, %rbx
	jmp	.L468
	.p2align 4,,10
	.p2align 3
.L519:
	addq	%rsi, %rbp
	jns	.L455
	addq	%rsi, %rbp
	jmp	.L455
	.p2align 4,,10
	.p2align 3
.L518:
	addq	%rsi, %rbx
	jns	.L452
	addq	%rsi, %rbx
	jmp	.L452
	.p2align 4,,10
	.p2align 3
.L514:
	addq	%rsi, %rbp
	jns	.L441
	addq	%rsi, %rbp
	jmp	.L441
	.p2align 4,,10
	.p2align 3
.L517:
	addq	%rsi, %rbp
	jns	.L449
	addq	%rsi, %rbp
	jmp	.L449
	.p2align 4,,10
	.p2align 3
.L516:
	addq	%rsi, %rbx
	jns	.L446
	addq	%rsi, %rbx
	jmp	.L446
	.p2align 4,,10
	.p2align 3
.L515:
	addq	%rsi, %rax
	jns	.L443
	addq	%rsi, %rax
	jmp	.L443
	.p2align 4,,10
	.p2align 3
.L520:
	addq	%rsi, %rbx
	jns	.L458
	addq	%rsi, %rbx
	jmp	.L458
	.p2align 4,,10
	.p2align 3
.L436:
	movl	$1, %ebp
	xorl	%ecx, %ecx
	jmp	.L429
.L513:
	movq	(%rdi), %rdi
	xorl	%ebx, %ebx
	leaq	(%rdi,%rbx), %rax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE171:
	.size	_Z13access_randomILi1ELi0EEP6recordPS1_ll, .-_Z13access_randomILi1ELi0EEP6recordPS1_ll
	.section	.text.unlikely._Z13access_randomILi1ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi1ELi0EEP6recordPS1_ll,comdat
.LCOLDE51:
	.section	.text._Z13access_randomILi1ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi1ELi0EEP6recordPS1_ll,comdat
.LHOTE51:
	.section	.text.unlikely._Z13access_randomILi2ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi2ELi1EEP6recordPS1_ll,comdat
.LCOLDB52:
	.section	.text._Z13access_randomILi2ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi2ELi1EEP6recordPS1_ll,comdat
.LHOTB52:
	.p2align 4,,15
	.weak	_Z13access_randomILi2ELi1EEP6recordPS1_ll
	.type	_Z13access_randomILi2ELi1EEP6recordPS1_ll, @function
_Z13access_randomILi2ELi1EEP6recordPS1_ll:
.LFB174:
	.cfi_startproc
	testq	%rdx, %rdx
	jle	.L587
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	xorl	%r11d, %r11d
	pushq	-8(%r10)
	leaq	-1(%rsi), %rax
	pushq	%rbp
	leaq	1(%rsi,%rsi), %r9
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x60,0x6
	.cfi_escape 0x10,0xe,0x2,0x76,0x78
	.cfi_escape 0x10,0xd,0x2,0x76,0x70
	.cfi_escape 0x10,0xc,0x2,0x76,0x68
	pushq	%rbx
	.cfi_escape 0x10,0x3,0x2,0x76,0x58
	movq	%rax, %rbx
	movq	8(%rdi), %r8
	shrq	$63, %rbx
	movq	(%rdi), %rdi
	addq	%rbx, %rax
	sarq	%rax
	leaq	(%rax,%rax), %r10
	movq	%rax, %rbx
	.p2align 4,,10
	.p2align 3
.L537:
#APP
# 207 "mem.cc" 1
	# random loop begin (n_chains = $2, payload = $1)
# 0 "" 2
#NO_APP
	testq	%rbx, %rbx
	jle	.L538
	leaq	-2(%r10), %r13
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	shrq	%r13
	andl	$3, %r13d
	je	.L533
	movl	$1, %ecx
	movq	%rcx, %r12
	subq	%rsi, %r12
	js	.L558
	movq	%r12, %rcx
	subq	%rsi, %rcx
	cmovs	%r12, %rcx
.L558:
	vmovdqa	(%rdi), %ymm0
	movl	$2, %r14d
	movq	%rcx, %rax
	vmovdqa	32(%rdi), %ymm0
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	cmpq	$1, %r13
	je	.L533
	cmpq	$2, %r13
	je	.L574
	leaq	3(%rcx), %rax
	movq	%rax, %r13
	subq	%rsi, %r13
	js	.L560
	movq	%r13, %rax
	subq	%rsi, %rax
	cmovs	%r13, %rax
.L560:
	salq	$6, %rcx
	addq	$2, %r14
	leaq	(%rdi,%rcx), %r12
	addq	%r8, %rcx
	vmovdqa	(%r12), %ymm0
	vmovdqa	32(%r12), %ymm0
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
.L574:
	leaq	1(%rax,%r14), %rcx
	movq	%rcx, %r13
	subq	%rsi, %r13
	js	.L563
	movq	%r13, %rcx
	subq	%rsi, %rcx
	cmovs	%r13, %rcx
.L563:
	salq	$6, %rax
	addq	$2, %r14
	leaq	(%rdi,%rax), %r12
	addq	%r8, %rax
	vmovdqa	(%r12), %ymm0
	vmovdqa	32(%r12), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	movq	%rcx, %rax
	jmp	.L533
	.p2align 4,,10
	.p2align 3
.L539:
	leaq	1(%r13,%r14), %rcx
	movq	%rcx, %rax
	subq	%rsi, %rax
	js	.L567
	movq	%rax, %rcx
	subq	%rsi, %rcx
	cmovs	%rax, %rcx
.L567:
	salq	$6, %r13
	leaq	(%rdi,%r13), %r12
	addq	%r8, %r13
	leaq	3(%r14,%rcx), %rax
	vmovdqa	(%r12), %ymm0
	vmovdqa	32(%r12), %ymm0
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
	movq	%rax, %r13
	subq	%rsi, %r13
	js	.L569
	movq	%r13, %rax
	subq	%rsi, %rax
	cmovs	%r13, %rax
.L569:
	salq	$6, %rcx
	leaq	(%rdi,%rcx), %r12
	addq	%r8, %rcx
	vmovdqa	(%r12), %ymm0
	vmovdqa	32(%r12), %ymm0
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	5(%r14,%rax), %rcx
	movq	%rcx, %r13
	subq	%rsi, %r13
	js	.L571
	movq	%r13, %rcx
	subq	%rsi, %rcx
	cmovs	%r13, %rcx
.L571:
	salq	$6, %rax
	addq	$6, %r14
	leaq	(%rdi,%rax), %r12
	addq	%r8, %rax
	vmovdqa	(%r12), %ymm0
	vmovdqa	32(%r12), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	movq	%rcx, %rax
.L533:
	leaq	1(%rax,%r14), %r13
	movq	%r13, %rcx
	subq	%rsi, %rcx
	js	.L532
	movq	%rcx, %r13
	subq	%rsi, %r13
	cmovs	%rcx, %r13
.L532:
	salq	$6, %rax
	addq	$2, %r14
	leaq	(%rdi,%rax), %r12
	addq	%r8, %rax
	vmovdqa	(%r12), %ymm0
	vmovdqa	32(%r12), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	cmpq	%r10, %r14
	jne	.L539
	leaq	1(%rbx), %r14
	movq	%r13, %rcx
	salq	$6, %rcx
.L531:
	leaq	(%rdi,%rcx), %r12
	movq	%rsi, %rax
	addq	%r8, %rcx
	vmovdqa	(%r12), %ymm0
	subq	%r13, %rax
	vmovdqa	32(%r12), %ymm0
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	cmpq	%r14, %rsi
	jle	.L540
	leaq	1(%r14,%r14), %r12
	movq	%r9, %r13
	subq	%r12, %r13
	subq	$2, %r13
	shrq	%r13
	andl	$3, %r13d
	je	.L536
	movq	%rax, %rcx
	subq	%r12, %rcx
	js	.L588
.L543:
	salq	$6, %rax
	addq	$2, %r12
	leaq	(%rdi,%rax), %r14
	addq	%r8, %rax
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	movq	%rcx, %rax
	cmpq	$1, %r13
	je	.L536
	cmpq	$2, %r13
	je	.L573
	subq	%r12, %rax
	js	.L589
.L545:
	salq	$6, %rcx
	addq	$2, %r12
	leaq	(%rdi,%rcx), %r13
	addq	%r8, %rcx
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
.L573:
	movq	%rax, %rcx
	subq	%r12, %rcx
	js	.L590
.L548:
	salq	$6, %rax
	addq	$2, %r12
	leaq	(%rdi,%rax), %r14
	addq	%r8, %rax
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	movq	%rcx, %rax
	jmp	.L536
	.p2align 4,,10
	.p2align 3
.L535:
	salq	$6, %rax
	addq	$2, %r12
	leaq	(%rdi,%rax), %r13
	addq	%r8, %rax
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	cmpq	%r12, %r9
	je	.L534
	movq	%rcx, %rax
	subq	%r12, %rax
	js	.L591
.L552:
	salq	$6, %rcx
	movq	%rax, %r13
	leaq	(%rdi,%rcx), %r14
	addq	%r8, %rcx
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	2(%r12), %rcx
	subq	%rcx, %r13
	movq	%r13, %rcx
	js	.L592
.L554:
	salq	$6, %rax
	movq	%rcx, %r13
	leaq	(%rdi,%rax), %r14
	addq	%r8, %rax
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	leaq	4(%r12), %rax
	subq	%rax, %r13
	movq	%r13, %rax
	js	.L593
.L556:
	salq	$6, %rcx
	addq	$6, %r12
	leaq	(%rdi,%rcx), %r14
	addq	%r8, %rcx
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
.L536:
	movq	%rax, %rcx
	subq	%r12, %rcx
	jns	.L535
	addq	%rsi, %rcx
	jns	.L535
	addq	%rsi, %rcx
	jmp	.L535
	.p2align 4,,10
	.p2align 3
.L540:
	movq	%rax, %rcx
.L534:
#APP
# 249 "mem.cc" 1
	# random loop end (n_chains = $2, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, %r11
	cmpq	%r11, %rdx
	jne	.L537
	salq	$6, %rcx
	vzeroupper
	popq	%rbx
	.cfi_remember_state
	.cfi_restore 3
	leaq	(%r8,%rcx), %rax
	popq	%rdx
	.cfi_restore 10
	.cfi_def_cfa 10, 0
	popq	%r12
	.cfi_restore 12
	popq	%r13
	.cfi_restore 13
	popq	%r14
	.cfi_restore 14
	popq	%rbp
	.cfi_restore 6
	leaq	-8(%rdx), %rsp
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L591:
	.cfi_restore_state
	addq	%rsi, %rax
	jns	.L552
	addq	%rsi, %rax
	jmp	.L552
	.p2align 4,,10
	.p2align 3
.L593:
	addq	%rsi, %rax
	jns	.L556
	addq	%rsi, %rax
	jmp	.L556
	.p2align 4,,10
	.p2align 3
.L592:
	addq	%rsi, %rcx
	jns	.L554
	addq	%rsi, %rcx
	jmp	.L554
	.p2align 4,,10
	.p2align 3
.L588:
	addq	%rsi, %rcx
	jns	.L543
	addq	%rsi, %rcx
	jmp	.L543
	.p2align 4,,10
	.p2align 3
.L589:
	addq	%rsi, %rax
	jns	.L545
	addq	%rsi, %rax
	jmp	.L545
	.p2align 4,,10
	.p2align 3
.L590:
	addq	%rsi, %rcx
	jns	.L548
	addq	%rsi, %rcx
	jmp	.L548
	.p2align 4,,10
	.p2align 3
.L538:
	xorl	%ecx, %ecx
	movl	$1, %r14d
	xorl	%r13d, %r13d
	jmp	.L531
.L587:
	.cfi_def_cfa 7, 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	movq	8(%rdi), %rsi
	xorl	%r8d, %r8d
	leaq	(%rsi,%r8), %rax
	ret
	.cfi_endproc
.LFE174:
	.size	_Z13access_randomILi2ELi1EEP6recordPS1_ll, .-_Z13access_randomILi2ELi1EEP6recordPS1_ll
	.section	.text.unlikely._Z13access_randomILi2ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi2ELi1EEP6recordPS1_ll,comdat
.LCOLDE52:
	.section	.text._Z13access_randomILi2ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi2ELi1EEP6recordPS1_ll,comdat
.LHOTE52:
	.section	.text.unlikely._Z13access_randomILi2ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi2ELi0EEP6recordPS1_ll,comdat
.LCOLDB53:
	.section	.text._Z13access_randomILi2ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi2ELi0EEP6recordPS1_ll,comdat
.LHOTB53:
	.p2align 4,,15
	.weak	_Z13access_randomILi2ELi0EEP6recordPS1_ll
	.type	_Z13access_randomILi2ELi0EEP6recordPS1_ll, @function
_Z13access_randomILi2ELi0EEP6recordPS1_ll:
.LFB177:
	.cfi_startproc
	testq	%rdx, %rdx
	jle	.L653
	leaq	-1(%rsi), %rax
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	xorl	%r11d, %r11d
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	leaq	1(%rsi,%rsi), %r9
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rax, %rbx
	movq	8(%rdi), %r8
	shrq	$63, %rbx
	movq	(%rdi), %rdi
	addq	%rbx, %rax
	sarq	%rax
	leaq	(%rax,%rax), %r10
	movq	%rax, %rbx
	.p2align 4,,10
	.p2align 3
.L603:
#APP
# 207 "mem.cc" 1
	# random loop begin (n_chains = $2, payload = $0)
# 0 "" 2
#NO_APP
	xorl	%r13d, %r13d
	testq	%rbx, %rbx
	jle	.L604
	leaq	-2(%r10), %r12
	xorl	%eax, %eax
	shrq	%r12
	andl	$3, %r12d
	je	.L599
	movl	$1, %ecx
	movq	%rcx, %rbp
	subq	%rsi, %rbp
	js	.L624
	movq	%rbp, %rcx
	subq	%rsi, %rcx
	cmovs	%rbp, %rcx
.L624:
	movq	(%rdi), %rax
	movl	$2, %r13d
	movq	(%r8), %rax
	movq	%rcx, %rax
	cmpq	$1, %r12
	je	.L599
	cmpq	$2, %r12
	je	.L640
	leaq	3(%rcx), %rax
	movq	%rax, %r12
	subq	%rsi, %r12
	js	.L626
	movq	%r12, %rax
	subq	%rsi, %rax
	cmovs	%r12, %rax
.L626:
	salq	$6, %rcx
	addq	$2, %r13
	leaq	(%rdi,%rcx), %rbp
	addq	%r8, %rcx
	movq	0(%rbp), %r12
	movq	(%rcx), %rcx
.L640:
	leaq	1(%r13,%rax), %rcx
	movq	%rcx, %r12
	subq	%rsi, %r12
	js	.L629
	movq	%r12, %rcx
	subq	%rsi, %rcx
	cmovs	%r12, %rcx
.L629:
	salq	$6, %rax
	addq	$2, %r13
	leaq	(%rdi,%rax), %rbp
	addq	%r8, %rax
	movq	0(%rbp), %r12
	movq	(%rax), %rax
	movq	%rcx, %rax
	jmp	.L599
	.p2align 4,,10
	.p2align 3
.L605:
	leaq	1(%rcx,%r13), %rax
	movq	%rax, %r12
	subq	%rsi, %r12
	js	.L633
	movq	%r12, %rax
	subq	%rsi, %rax
	cmovs	%r12, %rax
.L633:
	salq	$6, %rcx
	leaq	(%rdi,%rcx), %rbp
	addq	%r8, %rcx
	movq	0(%rbp), %r12
	movq	(%rcx), %rcx
	leaq	3(%r13,%rax), %rcx
	movq	%rcx, %r12
	subq	%rsi, %r12
	js	.L635
	movq	%r12, %rcx
	subq	%rsi, %rcx
	cmovs	%r12, %rcx
.L635:
	salq	$6, %rax
	leaq	(%rdi,%rax), %rbp
	addq	%r8, %rax
	movq	0(%rbp), %r12
	movq	(%rax), %rax
	leaq	5(%r13,%rcx), %rax
	movq	%rax, %r12
	subq	%rsi, %r12
	js	.L637
	movq	%r12, %rax
	subq	%rsi, %rax
	cmovs	%r12, %rax
.L637:
	salq	$6, %rcx
	addq	$6, %r13
	leaq	(%rdi,%rcx), %rbp
	addq	%r8, %rcx
	movq	0(%rbp), %r12
	movq	(%rcx), %rcx
.L599:
	leaq	1(%r13,%rax), %rcx
	movq	%rcx, %r12
	subq	%rsi, %r12
	js	.L598
	movq	%r12, %rcx
	subq	%rsi, %rcx
	cmovs	%r12, %rcx
.L598:
	salq	$6, %rax
	addq	$2, %r13
	leaq	(%rdi,%rax), %rbp
	addq	%r8, %rax
	movq	0(%rbp), %r12
	movq	(%rax), %rax
	cmpq	%r10, %r13
	jne	.L605
	leaq	1(%rbx), %r12
	movq	%rcx, %r13
	salq	$6, %r13
.L597:
	leaq	(%rdi,%r13), %rbp
	movq	%rsi, %rax
	addq	%r8, %r13
	subq	%rcx, %rax
	movq	0(%rbp), %rcx
	movq	0(%r13), %rcx
	cmpq	%r12, %rsi
	jle	.L606
	leaq	1(%r12,%r12), %rbp
	movq	%r9, %r12
	subq	%rbp, %r12
	subq	$2, %r12
	shrq	%r12
	andl	$3, %r12d
	je	.L602
	movq	%rax, %rcx
	subq	%rbp, %rcx
	js	.L654
.L609:
	salq	$6, %rax
	addq	$2, %rbp
	leaq	(%rdi,%rax), %r13
	addq	%r8, %rax
	movq	0(%r13), %r13
	movq	(%rax), %rax
	movq	%rcx, %rax
	cmpq	$1, %r12
	je	.L602
	cmpq	$2, %r12
	je	.L639
	subq	%rbp, %rax
	js	.L655
.L611:
	salq	$6, %rcx
	addq	$2, %rbp
	leaq	(%rdi,%rcx), %r12
	addq	%r8, %rcx
	movq	(%r12), %r12
	movq	(%rcx), %rcx
.L639:
	movq	%rax, %rcx
	subq	%rbp, %rcx
	js	.L656
.L614:
	salq	$6, %rax
	addq	$2, %rbp
	leaq	(%rdi,%rax), %r13
	addq	%r8, %rax
	movq	0(%r13), %r12
	movq	(%rax), %rax
	movq	%rcx, %rax
	jmp	.L602
	.p2align 4,,10
	.p2align 3
.L601:
	salq	$6, %rax
	addq	$2, %rbp
	leaq	(%rdi,%rax), %r12
	addq	%r8, %rax
	movq	(%r12), %r12
	movq	(%rax), %rax
	cmpq	%rbp, %r9
	je	.L600
	movq	%rcx, %r13
	subq	%rbp, %r13
	js	.L657
.L618:
	leaq	2(%rbp), %r12
	movq	%rcx, %rax
	salq	$6, %rax
	leaq	(%rdi,%rax), %rcx
	addq	%r8, %rax
	movq	(%rcx), %rcx
	movq	%r13, %rcx
	movq	(%rax), %rax
	subq	%r12, %rcx
	js	.L658
.L620:
	salq	$6, %r13
	leaq	(%rdi,%r13), %rax
	addq	%r8, %r13
	movq	(%rax), %r12
	leaq	4(%rbp), %r12
	movq	0(%r13), %rax
	movq	%rcx, %r13
	subq	%r12, %r13
	movq	%r13, %rax
	js	.L659
.L622:
	salq	$6, %rcx
	addq	$6, %rbp
	leaq	(%rdi,%rcx), %r12
	addq	%r8, %rcx
	movq	(%r12), %r12
	movq	(%rcx), %rcx
.L602:
	movq	%rax, %rcx
	subq	%rbp, %rcx
	jns	.L601
	addq	%rsi, %rcx
	jns	.L601
	addq	%rsi, %rcx
	jmp	.L601
	.p2align 4,,10
	.p2align 3
.L606:
	movq	%rax, %rcx
.L600:
#APP
# 249 "mem.cc" 1
	# random loop end (n_chains = $2, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, %r11
	cmpq	%r11, %rdx
	jne	.L603
	movq	%rcx, %rax
	popq	%rbx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 32
	salq	$6, %rax
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 24
	addq	%r8, %rax
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_restore 13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L657:
	.cfi_restore_state
	addq	%rsi, %r13
	jns	.L618
	addq	%rsi, %r13
	jmp	.L618
	.p2align 4,,10
	.p2align 3
.L659:
	addq	%rsi, %rax
	jns	.L622
	addq	%rsi, %rax
	jmp	.L622
	.p2align 4,,10
	.p2align 3
.L658:
	addq	%rsi, %rcx
	jns	.L620
	addq	%rsi, %rcx
	jmp	.L620
	.p2align 4,,10
	.p2align 3
.L654:
	addq	%rsi, %rcx
	jns	.L609
	addq	%rsi, %rcx
	jmp	.L609
	.p2align 4,,10
	.p2align 3
.L655:
	addq	%rsi, %rax
	jns	.L611
	addq	%rsi, %rax
	jmp	.L611
	.p2align 4,,10
	.p2align 3
.L656:
	addq	%rsi, %rcx
	jns	.L614
	addq	%rsi, %rcx
	jmp	.L614
	.p2align 4,,10
	.p2align 3
.L604:
	movl	$1, %r12d
	xorl	%ecx, %ecx
	jmp	.L597
.L653:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	movq	8(%rdi), %rdx
	xorl	%eax, %eax
	addq	%rdx, %rax
	ret
	.cfi_endproc
.LFE177:
	.size	_Z13access_randomILi2ELi0EEP6recordPS1_ll, .-_Z13access_randomILi2ELi0EEP6recordPS1_ll
	.section	.text.unlikely._Z13access_randomILi2ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi2ELi0EEP6recordPS1_ll,comdat
.LCOLDE53:
	.section	.text._Z13access_randomILi2ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi2ELi0EEP6recordPS1_ll,comdat
.LHOTE53:
	.section	.text.unlikely._Z13access_randomILi3ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi3ELi1EEP6recordPS1_ll,comdat
.LCOLDB54:
	.section	.text._Z13access_randomILi3ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi3ELi1EEP6recordPS1_ll,comdat
.LHOTB54:
	.p2align 4,,15
	.weak	_Z13access_randomILi3ELi1EEP6recordPS1_ll
	.type	_Z13access_randomILi3ELi1EEP6recordPS1_ll, @function
_Z13access_randomILi3ELi1EEP6recordPS1_ll:
.LFB180:
	.cfi_startproc
	testq	%rdx, %rdx
	jle	.L707
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	pushq	-8(%r10)
	leaq	-1(%rsi), %rax
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	movq	%rax, %r13
	pushq	%r12
	shrq	$63, %r13
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	xorl	%r12d, %r12d
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	addq	%r13, %rax
	pushq	%rbx
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	16(%rdi), %r8
	leaq	1(%rsi,%rsi), %rbx
	sarq	%rax
	movq	(%rdi), %r10
	leaq	(%rax,%rax), %r11
	movq	%rax, %r13
	movq	8(%rdi), %r9
	.p2align 4,,10
	.p2align 3
.L669:
#APP
# 207 "mem.cc" 1
	# random loop begin (n_chains = $3, payload = $1)
# 0 "" 2
#NO_APP
	xorl	%edi, %edi
	testq	%r13, %r13
	jle	.L670
	xorl	%eax, %eax
	testb	$2, %r11b
	jne	.L665
	movl	$1, %eax
	movq	%rax, %rcx
	subq	%rsi, %rcx
	js	.L690
	movq	%rcx, %rax
	subq	%rsi, %rax
	cmovs	%rcx, %rax
.L690:
	vmovdqa	(%r10), %ymm0
	movl	$2, %edi
	vmovdqa	32(%r10), %ymm0
	vmovdqa	(%r9), %ymm0
	vmovdqa	32(%r9), %ymm0
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	jmp	.L665
	.p2align 4,,10
	.p2align 3
.L671:
	leaq	1(%rcx,%rdi), %rax
	movq	%rax, %r15
	subq	%rsi, %r15
	js	.L693
	movq	%r15, %rax
	subq	%rsi, %rax
	cmovs	%r15, %rax
.L693:
	salq	$6, %rcx
	addq	$2, %rdi
	leaq	(%r10,%rcx), %r14
	leaq	(%r9,%rcx), %r15
	addq	%r8, %rcx
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
.L665:
	leaq	1(%rdi,%rax), %rcx
	movq	%rcx, %r14
	subq	%rsi, %r14
	js	.L664
	movq	%r14, %rcx
	subq	%rsi, %rcx
	cmovs	%r14, %rcx
.L664:
	salq	$6, %rax
	addq	$2, %rdi
	leaq	(%r10,%rax), %r15
	leaq	(%r9,%rax), %r14
	addq	%r8, %rax
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	cmpq	%r11, %rdi
	jne	.L671
	leaq	1(%r13), %r14
	movq	%rcx, %rdi
	salq	$6, %rdi
.L663:
	leaq	(%r10,%rdi), %r15
	movq	%rsi, %rax
	subq	%rcx, %rax
	vmovdqa	(%r15), %ymm0
	leaq	(%r9,%rdi), %rcx
	addq	%r8, %rdi
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	vmovdqa	(%rdi), %ymm0
	vmovdqa	32(%rdi), %ymm0
	cmpq	%r14, %rsi
	jle	.L672
	leaq	1(%r14,%r14), %rdi
	movq	%rbx, %r14
	subq	%rdi, %r14
	subq	$2, %r14
	shrq	%r14
	andl	$3, %r14d
	je	.L668
	movq	%rax, %rcx
	subq	%rdi, %rcx
	js	.L708
.L675:
	salq	$6, %rax
	addq	$2, %rdi
	leaq	(%r10,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r9,%rax), %r15
	addq	%r8, %rax
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	movq	%rcx, %rax
	cmpq	$1, %r14
	je	.L668
	cmpq	$2, %r14
	je	.L695
	subq	%rdi, %rax
	js	.L709
.L677:
	salq	$6, %rcx
	addq	$2, %rdi
	leaq	(%r10,%rcx), %r14
	leaq	(%r9,%rcx), %r15
	addq	%r8, %rcx
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
.L695:
	movq	%rax, %rcx
	subq	%rdi, %rcx
	js	.L710
.L680:
	salq	$6, %rax
	addq	$2, %rdi
	leaq	(%r10,%rax), %r14
	leaq	(%r9,%rax), %r15
	addq	%r8, %rax
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	movq	%rcx, %rax
	jmp	.L668
	.p2align 4,,10
	.p2align 3
.L667:
	salq	$6, %rax
	addq	$2, %rdi
	leaq	(%r10,%rax), %r14
	leaq	(%r9,%rax), %r15
	addq	%r8, %rax
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	cmpq	%rdi, %rbx
	je	.L666
	movq	%rcx, %rax
	subq	%rdi, %rax
	js	.L711
.L684:
	salq	$6, %rcx
	leaq	(%r10,%rcx), %r14
	leaq	(%r9,%rcx), %r15
	addq	%r8, %rcx
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	movq	%rax, %r14
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	2(%rdi), %rcx
	subq	%rcx, %r14
	movq	%r14, %rcx
	js	.L712
.L686:
	salq	$6, %rax
	leaq	(%r10,%rax), %r15
	leaq	(%r9,%rax), %r14
	addq	%r8, %rax
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	movq	%rcx, %r15
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	leaq	4(%rdi), %rax
	subq	%rax, %r15
	movq	%r15, %rax
	js	.L713
.L688:
	salq	$6, %rcx
	addq	$6, %rdi
	leaq	(%r10,%rcx), %r14
	leaq	(%r9,%rcx), %r15
	addq	%r8, %rcx
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
.L668:
	movq	%rax, %rcx
	subq	%rdi, %rcx
	jns	.L667
	addq	%rsi, %rcx
	jns	.L667
	addq	%rsi, %rcx
	jmp	.L667
	.p2align 4,,10
	.p2align 3
.L672:
	movq	%rax, %rcx
.L666:
#APP
# 249 "mem.cc" 1
	# random loop end (n_chains = $3, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, %r12
	cmpq	%r12, %rdx
	jne	.L669
	salq	$6, %rcx
	vzeroupper
	popq	%rbx
	.cfi_remember_state
	.cfi_restore 3
	leaq	(%r8,%rcx), %rax
	popq	%rdx
	.cfi_restore 10
	.cfi_def_cfa 10, 0
	popq	%r12
	.cfi_restore 12
	popq	%r13
	.cfi_restore 13
	popq	%r14
	.cfi_restore 14
	popq	%r15
	.cfi_restore 15
	popq	%rbp
	.cfi_restore 6
	leaq	-8(%rdx), %rsp
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L711:
	.cfi_restore_state
	addq	%rsi, %rax
	jns	.L684
	addq	%rsi, %rax
	jmp	.L684
	.p2align 4,,10
	.p2align 3
.L713:
	addq	%rsi, %rax
	jns	.L688
	addq	%rsi, %rax
	jmp	.L688
	.p2align 4,,10
	.p2align 3
.L712:
	addq	%rsi, %rcx
	jns	.L686
	addq	%rsi, %rcx
	jmp	.L686
	.p2align 4,,10
	.p2align 3
.L708:
	addq	%rsi, %rcx
	jns	.L675
	addq	%rsi, %rcx
	jmp	.L675
	.p2align 4,,10
	.p2align 3
.L709:
	addq	%rsi, %rax
	jns	.L677
	addq	%rsi, %rax
	jmp	.L677
	.p2align 4,,10
	.p2align 3
.L710:
	addq	%rsi, %rcx
	jns	.L680
	addq	%rsi, %rcx
	jmp	.L680
	.p2align 4,,10
	.p2align 3
.L670:
	movl	$1, %r14d
	xorl	%ecx, %ecx
	jmp	.L663
.L707:
	.cfi_def_cfa 7, 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
	movq	16(%rdi), %rsi
	xorl	%r8d, %r8d
	leaq	(%rsi,%r8), %rax
	ret
	.cfi_endproc
.LFE180:
	.size	_Z13access_randomILi3ELi1EEP6recordPS1_ll, .-_Z13access_randomILi3ELi1EEP6recordPS1_ll
	.section	.text.unlikely._Z13access_randomILi3ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi3ELi1EEP6recordPS1_ll,comdat
.LCOLDE54:
	.section	.text._Z13access_randomILi3ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi3ELi1EEP6recordPS1_ll,comdat
.LHOTE54:
	.section	.text.unlikely._Z13access_randomILi3ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi3ELi0EEP6recordPS1_ll,comdat
.LCOLDB55:
	.section	.text._Z13access_randomILi3ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi3ELi0EEP6recordPS1_ll,comdat
.LHOTB55:
	.p2align 4,,15
	.weak	_Z13access_randomILi3ELi0EEP6recordPS1_ll
	.type	_Z13access_randomILi3ELi0EEP6recordPS1_ll, @function
_Z13access_randomILi3ELi0EEP6recordPS1_ll:
.LFB183:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	xorl	%r12d, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	16(%rdi), %rcx
	testq	%rdx, %rdx
	jle	.L716
	leaq	-1(%rsi), %rax
	movq	(%rdi), %r8
	xorl	%r11d, %r11d
	movq	8(%rdi), %rdi
	leaq	1(%rsi,%rsi), %r9
	movq	%rax, %rbx
	shrq	$63, %rbx
	addq	%rbx, %rax
	sarq	%rax
	leaq	(%rax,%rax), %r10
	movq	%rax, %rbx
	.p2align 4,,10
	.p2align 3
.L723:
#APP
# 207 "mem.cc" 1
	# random loop begin (n_chains = $3, payload = $0)
# 0 "" 2
#NO_APP
	xorl	%r14d, %r14d
	testq	%rbx, %rbx
	jle	.L724
	leaq	-2(%r10), %r13
	xorl	%eax, %eax
	shrq	%r13
	andl	$3, %r13d
	je	.L719
	movl	$1, %ebp
	movq	%rbp, %r12
	subq	%rsi, %r12
	js	.L744
	movq	%r12, %rbp
	subq	%rsi, %rbp
	cmovs	%r12, %rbp
.L744:
	movq	(%r8), %rax
	movl	$2, %r14d
	movq	(%rdi), %rax
	movq	(%rcx), %rax
	movq	%rbp, %rax
	cmpq	$1, %r13
	je	.L719
	cmpq	$2, %r13
	je	.L760
	leaq	3(%rbp), %rax
	movq	%rax, %r13
	subq	%rsi, %r13
	js	.L746
	movq	%r13, %rax
	subq	%rsi, %rax
	cmovs	%r13, %rax
.L746:
	salq	$6, %rbp
	addq	$2, %r14
	leaq	(%r8,%rbp), %r12
	movq	(%r12), %r13
	leaq	(%rdi,%rbp), %r13
	addq	%rcx, %rbp
	movq	0(%r13), %r13
	movq	0(%rbp), %rbp
.L760:
	leaq	1(%r14,%rax), %rbp
	movq	%rbp, %r12
	subq	%rsi, %r12
	js	.L749
	movq	%r12, %rbp
	subq	%rsi, %rbp
	cmovs	%r12, %rbp
.L749:
	salq	$6, %rax
	addq	$2, %r14
	leaq	(%r8,%rax), %r13
	leaq	(%rdi,%rax), %r12
	addq	%rcx, %rax
	movq	0(%r13), %r13
	movq	(%r12), %r13
	movq	(%rax), %rax
	movq	%rbp, %rax
	jmp	.L719
	.p2align 4,,10
	.p2align 3
.L725:
	leaq	1(%rbp,%r14), %rax
	movq	%rax, %r12
	subq	%rsi, %r12
	js	.L753
	movq	%r12, %rax
	subq	%rsi, %rax
	cmovs	%r12, %rax
.L753:
	salq	$6, %rbp
	leaq	(%r8,%rbp), %r13
	leaq	(%rdi,%rbp), %r12
	addq	%rcx, %rbp
	movq	0(%r13), %r13
	movq	(%r12), %r13
	movq	0(%rbp), %rbp
	leaq	3(%r14,%rax), %rbp
	movq	%rbp, %r13
	subq	%rsi, %r13
	js	.L755
	movq	%r13, %rbp
	subq	%rsi, %rbp
	cmovs	%r13, %rbp
.L755:
	salq	$6, %rax
	leaq	(%r8,%rax), %r12
	movq	(%r12), %r13
	leaq	(%rdi,%rax), %r13
	addq	%rcx, %rax
	movq	0(%r13), %r13
	movq	(%rax), %rax
	leaq	5(%r14,%rbp), %rax
	movq	%rax, %r12
	subq	%rsi, %r12
	js	.L757
	movq	%r12, %rax
	subq	%rsi, %rax
	cmovs	%r12, %rax
.L757:
	salq	$6, %rbp
	addq	$6, %r14
	leaq	(%r8,%rbp), %r13
	leaq	(%rdi,%rbp), %r12
	addq	%rcx, %rbp
	movq	0(%r13), %r13
	movq	(%r12), %r13
	movq	0(%rbp), %rbp
.L719:
	leaq	1(%r14,%rax), %rbp
	movq	%rbp, %r13
	subq	%rsi, %r13
	js	.L718
	movq	%r13, %rbp
	subq	%rsi, %rbp
	cmovs	%r13, %rbp
.L718:
	salq	$6, %rax
	addq	$2, %r14
	leaq	(%r8,%rax), %r12
	movq	(%r12), %r13
	leaq	(%rdi,%rax), %r13
	addq	%rcx, %rax
	movq	0(%r13), %r13
	movq	(%rax), %rax
	cmpq	%r10, %r14
	jne	.L725
	leaq	1(%rbx), %r13
	movq	%rbp, %r14
	salq	$6, %r14
.L717:
	leaq	(%r8,%r14), %r12
	movq	%rsi, %rax
	subq	%rbp, %rax
	movq	(%r12), %rbp
	leaq	(%rdi,%r14), %rbp
	leaq	(%rcx,%r14), %r14
	movq	0(%rbp), %rbp
	movq	(%r14), %rbp
	cmpq	%r13, %rsi
	jle	.L726
	leaq	1(%r13,%r13), %rbp
	movq	%r9, %r12
	subq	%rbp, %r12
	subq	$2, %r12
	shrq	%r12
	andl	$3, %r12d
	je	.L722
	movq	%rax, %r13
	subq	%rbp, %r13
	js	.L773
.L729:
	salq	$6, %rax
	addq	$2, %rbp
	leaq	(%r8,%rax), %r14
	movq	(%r14), %r14
	leaq	(%rdi,%rax), %r14
	addq	%rcx, %rax
	movq	(%r14), %r14
	movq	(%rax), %rax
	movq	%r13, %rax
	cmpq	$1, %r12
	je	.L722
	cmpq	$2, %r12
	je	.L759
	subq	%rbp, %rax
	js	.L774
.L731:
	movq	%r13, %r12
	addq	$2, %rbp
	salq	$6, %r12
	leaq	(%r8,%r12), %r13
	leaq	(%rdi,%r12), %r14
	addq	%rcx, %r12
	movq	0(%r13), %r13
	movq	(%r14), %r13
	movq	(%r12), %r12
.L759:
	movq	%rax, %r12
	subq	%rbp, %r12
	js	.L775
.L734:
	salq	$6, %rax
	addq	$2, %rbp
	leaq	(%r8,%rax), %r13
	leaq	(%rdi,%rax), %r14
	addq	%rcx, %rax
	movq	0(%r13), %r13
	movq	(%r14), %r13
	movq	(%rax), %rax
	movq	%r12, %rax
	jmp	.L722
	.p2align 4,,10
	.p2align 3
.L721:
	salq	$6, %rax
	addq	$2, %rbp
	leaq	(%r8,%rax), %r13
	leaq	(%rdi,%rax), %r14
	addq	%rcx, %rax
	movq	0(%r13), %r13
	movq	(%r14), %r13
	movq	(%rax), %rax
	cmpq	%rbp, %r9
	je	.L720
	movq	%r12, %rax
	subq	%rbp, %rax
	js	.L776
.L738:
	salq	$6, %r12
	leaq	(%r8,%r12), %r13
	leaq	(%rdi,%r12), %r14
	addq	%rcx, %r12
	movq	0(%r13), %r13
	movq	(%r14), %r13
	movq	%rax, %r13
	movq	(%r12), %r12
	leaq	2(%rbp), %r12
	subq	%r12, %r13
	movq	%r13, %r12
	js	.L777
.L740:
	salq	$6, %rax
	leaq	(%r8,%rax), %r14
	movq	(%r14), %r13
	leaq	(%rdi,%rax), %r13
	addq	%rcx, %rax
	movq	%r12, %r14
	movq	0(%r13), %r13
	movq	(%rax), %rax
	leaq	4(%rbp), %rax
	subq	%rax, %r14
	movq	%r14, %rax
	js	.L778
.L742:
	salq	$6, %r12
	addq	$6, %rbp
	leaq	(%r8,%r12), %r13
	leaq	(%rdi,%r12), %r14
	addq	%rcx, %r12
	movq	0(%r13), %r13
	movq	(%r14), %r13
	movq	(%r12), %r12
.L722:
	movq	%rax, %r12
	subq	%rbp, %r12
	jns	.L721
	addq	%rsi, %r12
	jns	.L721
	addq	%rsi, %r12
	jmp	.L721
	.p2align 4,,10
	.p2align 3
.L726:
	movq	%rax, %r12
.L720:
#APP
# 249 "mem.cc" 1
	# random loop end (n_chains = $3, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, %r11
	cmpq	%r11, %rdx
	jne	.L723
	salq	$6, %r12
.L716:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	leaq	(%rcx,%r12), %rax
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L776:
	.cfi_restore_state
	addq	%rsi, %rax
	jns	.L738
	addq	%rsi, %rax
	jmp	.L738
	.p2align 4,,10
	.p2align 3
.L778:
	addq	%rsi, %rax
	jns	.L742
	addq	%rsi, %rax
	jmp	.L742
	.p2align 4,,10
	.p2align 3
.L777:
	addq	%rsi, %r12
	jns	.L740
	addq	%rsi, %r12
	jmp	.L740
	.p2align 4,,10
	.p2align 3
.L774:
	addq	%rsi, %rax
	jns	.L731
	addq	%rsi, %rax
	jmp	.L731
	.p2align 4,,10
	.p2align 3
.L773:
	addq	%rsi, %r13
	jns	.L729
	addq	%rsi, %r13
	jmp	.L729
	.p2align 4,,10
	.p2align 3
.L775:
	addq	%rsi, %r12
	jns	.L734
	addq	%rsi, %r12
	jmp	.L734
	.p2align 4,,10
	.p2align 3
.L724:
	movl	$1, %r13d
	xorl	%ebp, %ebp
	jmp	.L717
	.cfi_endproc
.LFE183:
	.size	_Z13access_randomILi3ELi0EEP6recordPS1_ll, .-_Z13access_randomILi3ELi0EEP6recordPS1_ll
	.section	.text.unlikely._Z13access_randomILi3ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi3ELi0EEP6recordPS1_ll,comdat
.LCOLDE55:
	.section	.text._Z13access_randomILi3ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi3ELi0EEP6recordPS1_ll,comdat
.LHOTE55:
	.section	.text.unlikely._Z13access_randomILi4ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi4ELi1EEP6recordPS1_ll,comdat
.LCOLDB56:
	.section	.text._Z13access_randomILi4ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi4ELi1EEP6recordPS1_ll,comdat
.LHOTB56:
	.p2align 4,,15
	.weak	_Z13access_randomILi4ELi1EEP6recordPS1_ll
	.type	_Z13access_randomILi4ELi1EEP6recordPS1_ll, @function
_Z13access_randomILi4ELi1EEP6recordPS1_ll:
.LFB186:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	xorl	%eax, %eax
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
	movq	%rdx, -56(%rbp)
	movq	24(%rdi), %rcx
	testq	%rdx, %rdx
	jle	.L781
	leaq	-1(%rsi), %rax
	movq	(%rdi), %r9
	xorl	%r13d, %r13d
	movq	8(%rdi), %r8
	leaq	1(%rsi,%rsi), %r12
	movq	%rax, %r15
	shrq	$63, %r15
	movq	16(%rdi), %rdi
	addq	%r15, %rax
	sarq	%rax
	leaq	(%rax,%rax), %rbx
	movq	%rax, %r15
	.p2align 4,,10
	.p2align 3
.L788:
#APP
# 207 "mem.cc" 1
	# random loop begin (n_chains = $4, payload = $1)
# 0 "" 2
#NO_APP
	xorl	%r14d, %r14d
	testq	%r15, %r15
	jle	.L789
	xorl	%eax, %eax
	testb	$2, %bl
	jne	.L784
	movl	$1, %eax
	movq	%rax, %rdx
	subq	%rsi, %rdx
	js	.L809
	movq	%rdx, %rax
	subq	%rsi, %rax
	cmovs	%rdx, %rax
.L809:
	vmovdqa	(%r9), %ymm0
	movl	$2, %r14d
	vmovdqa	32(%r9), %ymm0
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	vmovdqa	(%rdi), %ymm0
	vmovdqa	32(%rdi), %ymm0
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	jmp	.L784
	.p2align 4,,10
	.p2align 3
.L790:
	leaq	1(%rdx,%r14), %rax
	movq	%rax, %r11
	subq	%rsi, %r11
	js	.L812
	movq	%r11, %rax
	subq	%rsi, %rax
	cmovs	%r11, %rax
.L812:
	salq	$6, %rdx
	addq	$2, %r14
	leaq	(%r9,%rdx), %r10
	vmovdqa	(%r10), %ymm0
	leaq	(%r8,%rdx), %r11
	vmovdqa	32(%r10), %ymm0
	leaq	(%rdi,%rdx), %r10
	addq	%rcx, %rdx
	vmovdqa	(%r11), %ymm0
	vmovdqa	32(%r11), %ymm0
	vmovdqa	(%r10), %ymm0
	vmovdqa	32(%r10), %ymm0
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
.L784:
	leaq	1(%r14,%rax), %rdx
	movq	%rdx, %r11
	subq	%rsi, %r11
	js	.L783
	movq	%r11, %rdx
	subq	%rsi, %rdx
	cmovs	%r11, %rdx
.L783:
	salq	$6, %rax
	addq	$2, %r14
	leaq	(%r9,%rax), %r10
	vmovdqa	(%r10), %ymm0
	leaq	(%r8,%rax), %r11
	vmovdqa	32(%r10), %ymm0
	leaq	(%rdi,%rax), %r10
	addq	%rcx, %rax
	vmovdqa	(%r11), %ymm0
	vmovdqa	32(%r11), %ymm0
	vmovdqa	(%r10), %ymm0
	vmovdqa	32(%r10), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	cmpq	%rbx, %r14
	jne	.L790
	leaq	1(%r15), %r11
	movq	%rdx, %r14
	salq	$6, %r14
.L782:
	leaq	(%r9,%r14), %r10
	movq	%rsi, %rax
	vmovdqa	(%r10), %ymm0
	subq	%rdx, %rax
	vmovdqa	32(%r10), %ymm0
	leaq	(%r8,%r14), %rdx
	leaq	(%rdi,%r14), %r10
	addq	%rcx, %r14
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	vmovdqa	(%r10), %ymm0
	vmovdqa	32(%r10), %ymm0
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	cmpq	%r11, %rsi
	jle	.L791
	leaq	1(%r11,%r11), %rdx
	movq	%r12, %r11
	subq	%rdx, %r11
	subq	$2, %r11
	shrq	%r11
	andl	$3, %r11d
	je	.L787
	movq	%rax, %r10
	subq	%rdx, %r10
	js	.L826
.L794:
	salq	$6, %rax
	addq	$2, %rdx
	leaq	(%r9,%rax), %r14
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	leaq	(%r8,%rax), %r14
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	leaq	(%rdi,%rax), %r14
	addq	%rcx, %rax
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	movq	%r10, %rax
	cmpq	$1, %r11
	je	.L787
	cmpq	$2, %r11
	je	.L814
	subq	%rdx, %rax
	js	.L827
.L796:
	salq	$6, %r10
	addq	$2, %rdx
	leaq	(%r9,%r10), %r11
	vmovdqa	(%r11), %ymm0
	leaq	(%r8,%r10), %r14
	vmovdqa	32(%r11), %ymm0
	leaq	(%rdi,%r10), %r11
	addq	%rcx, %r10
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	vmovdqa	(%r11), %ymm0
	vmovdqa	32(%r11), %ymm0
	vmovdqa	(%r10), %ymm0
	vmovdqa	32(%r10), %ymm0
.L814:
	movq	%rax, %r10
	subq	%rdx, %r10
	js	.L828
.L799:
	salq	$6, %rax
	addq	$2, %rdx
	leaq	(%r9,%rax), %r14
	vmovdqa	(%r14), %ymm0
	leaq	(%r8,%rax), %r11
	vmovdqa	32(%r14), %ymm0
	leaq	(%rdi,%rax), %r14
	addq	%rcx, %rax
	vmovdqa	(%r11), %ymm0
	vmovdqa	32(%r11), %ymm0
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	movq	%r10, %rax
	jmp	.L787
	.p2align 4,,10
	.p2align 3
.L786:
	salq	$6, %rax
	addq	$2, %rdx
	leaq	(%r9,%rax), %r11
	vmovdqa	(%r11), %ymm0
	leaq	(%r8,%rax), %r14
	vmovdqa	32(%r11), %ymm0
	leaq	(%rdi,%rax), %r11
	addq	%rcx, %rax
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	vmovdqa	(%r11), %ymm0
	vmovdqa	32(%r11), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	cmpq	%rdx, %r12
	je	.L785
	movq	%r10, %rax
	subq	%rdx, %rax
	js	.L829
.L803:
	salq	$6, %r10
	leaq	(%r9,%r10), %r14
	vmovdqa	(%r14), %ymm0
	leaq	(%r8,%r10), %r11
	vmovdqa	32(%r14), %ymm0
	leaq	(%rdi,%r10), %r14
	addq	%rcx, %r10
	vmovdqa	(%r11), %ymm0
	vmovdqa	32(%r11), %ymm0
	movq	%rax, %r11
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	vmovdqa	(%r10), %ymm0
	vmovdqa	32(%r10), %ymm0
	leaq	2(%rdx), %r10
	subq	%r10, %r11
	movq	%r11, %r10
	js	.L830
.L805:
	salq	$6, %rax
	leaq	(%r9,%rax), %r14
	vmovdqa	(%r14), %ymm0
	leaq	(%r8,%rax), %r11
	vmovdqa	32(%r14), %ymm0
	leaq	(%rdi,%rax), %r14
	addq	%rcx, %rax
	vmovdqa	(%r11), %ymm0
	vmovdqa	32(%r11), %ymm0
	movq	%r10, %r11
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	leaq	4(%rdx), %rax
	subq	%rax, %r11
	movq	%r11, %rax
	js	.L831
.L807:
	salq	$6, %r10
	addq	$6, %rdx
	leaq	(%r9,%r10), %r14
	vmovdqa	(%r14), %ymm0
	leaq	(%r8,%r10), %r11
	vmovdqa	32(%r14), %ymm0
	leaq	(%rdi,%r10), %r14
	addq	%rcx, %r10
	vmovdqa	(%r11), %ymm0
	vmovdqa	32(%r11), %ymm0
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	vmovdqa	(%r10), %ymm0
	vmovdqa	32(%r10), %ymm0
.L787:
	movq	%rax, %r10
	subq	%rdx, %r10
	jns	.L786
	addq	%rsi, %r10
	jns	.L786
	addq	%rsi, %r10
	jmp	.L786
	.p2align 4,,10
	.p2align 3
.L791:
	movq	%rax, %r10
.L785:
#APP
# 249 "mem.cc" 1
	# random loop end (n_chains = $4, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, %r13
	cmpq	%r13, -56(%rbp)
	jne	.L788
	movq	%r10, %rax
	salq	$6, %rax
	vzeroupper
.L781:
	addq	%rcx, %rax
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
.L829:
	.cfi_restore_state
	addq	%rsi, %rax
	jns	.L803
	addq	%rsi, %rax
	jmp	.L803
	.p2align 4,,10
	.p2align 3
.L831:
	addq	%rsi, %rax
	jns	.L807
	addq	%rsi, %rax
	jmp	.L807
	.p2align 4,,10
	.p2align 3
.L830:
	addq	%rsi, %r10
	jns	.L805
	addq	%rsi, %r10
	jmp	.L805
	.p2align 4,,10
	.p2align 3
.L827:
	addq	%rsi, %rax
	jns	.L796
	addq	%rsi, %rax
	jmp	.L796
	.p2align 4,,10
	.p2align 3
.L826:
	addq	%rsi, %r10
	jns	.L794
	addq	%rsi, %r10
	jmp	.L794
	.p2align 4,,10
	.p2align 3
.L828:
	addq	%rsi, %r10
	jns	.L799
	addq	%rsi, %r10
	jmp	.L799
	.p2align 4,,10
	.p2align 3
.L789:
	movl	$1, %r11d
	xorl	%edx, %edx
	jmp	.L782
	.cfi_endproc
.LFE186:
	.size	_Z13access_randomILi4ELi1EEP6recordPS1_ll, .-_Z13access_randomILi4ELi1EEP6recordPS1_ll
	.section	.text.unlikely._Z13access_randomILi4ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi4ELi1EEP6recordPS1_ll,comdat
.LCOLDE56:
	.section	.text._Z13access_randomILi4ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi4ELi1EEP6recordPS1_ll,comdat
.LHOTE56:
	.section	.text.unlikely._Z13access_randomILi4ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi4ELi0EEP6recordPS1_ll,comdat
.LCOLDB57:
	.section	.text._Z13access_randomILi4ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi4ELi0EEP6recordPS1_ll,comdat
.LHOTB57:
	.p2align 4,,15
	.weak	_Z13access_randomILi4ELi0EEP6recordPS1_ll
	.type	_Z13access_randomILi4ELi0EEP6recordPS1_ll, @function
_Z13access_randomILi4ELi0EEP6recordPS1_ll:
.LFB189:
	.cfi_startproc
	testq	%rdx, %rdx
	jle	.L891
	leaq	-1(%rsi), %rax
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	leaq	1(%rsi,%rsi), %r10
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rax, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	shrq	$63, %rbp
	movq	24(%rdi), %rcx
	xorl	%ebx, %ebx
	movq	(%rdi), %r9
	addq	%rbp, %rax
	movq	8(%rdi), %r8
	sarq	%rax
	movq	16(%rdi), %rdi
	leaq	(%rax,%rax), %r11
	movq	%rax, %rbp
	.p2align 4,,10
	.p2align 3
.L841:
#APP
# 207 "mem.cc" 1
	# random loop begin (n_chains = $4, payload = $0)
# 0 "" 2
#NO_APP
	xorl	%r15d, %r15d
	testq	%rbp, %rbp
	jle	.L842
	leaq	-2(%r11), %r14
	xorl	%eax, %eax
	shrq	%r14
	andl	$3, %r14d
	je	.L837
	movl	$1, %r13d
	movq	%r13, %r12
	subq	%rsi, %r12
	js	.L862
	movq	%r12, %r13
	subq	%rsi, %r13
	cmovs	%r12, %r13
.L862:
	movq	(%r9), %rax
	movl	$2, %r15d
	movq	(%r8), %rax
	movq	(%rdi), %rax
	movq	(%rcx), %rax
	movq	%r13, %rax
	cmpq	$1, %r14
	je	.L837
	cmpq	$2, %r14
	je	.L878
	leaq	3(%r13), %rax
	movq	%rax, %r14
	subq	%rsi, %r14
	js	.L864
	movq	%r14, %rax
	subq	%rsi, %rax
	cmovs	%r14, %rax
.L864:
	salq	$6, %r13
	addq	$2, %r15
	leaq	(%r9,%r13), %r12
	movq	(%r12), %r14
	leaq	(%r8,%r13), %r14
	leaq	(%rdi,%r13), %r12
	addq	%rcx, %r13
	movq	(%r14), %r14
	movq	(%r12), %r14
	movq	0(%r13), %r13
.L878:
	leaq	1(%r15,%rax), %r13
	movq	%r13, %r14
	subq	%rsi, %r14
	js	.L867
	movq	%r14, %r13
	subq	%rsi, %r13
	cmovs	%r14, %r13
.L867:
	salq	$6, %rax
	addq	$2, %r15
	leaq	(%r9,%rax), %r12
	movq	(%r12), %r14
	leaq	(%r8,%rax), %r14
	leaq	(%rdi,%rax), %r12
	addq	%rcx, %rax
	movq	(%r14), %r14
	movq	(%r12), %r14
	movq	(%rax), %rax
	movq	%r13, %rax
	jmp	.L837
	.p2align 4,,10
	.p2align 3
.L843:
	leaq	1(%r13,%r15), %rax
	movq	%rax, %r14
	subq	%rsi, %r14
	js	.L871
	movq	%r14, %rax
	subq	%rsi, %rax
	cmovs	%r14, %rax
.L871:
	salq	$6, %r13
	leaq	(%r9,%r13), %r12
	movq	(%r12), %r14
	leaq	(%r8,%r13), %r14
	leaq	(%rdi,%r13), %r12
	addq	%rcx, %r13
	movq	(%r14), %r14
	movq	(%r12), %r14
	movq	0(%r13), %r13
	leaq	3(%r15,%rax), %r13
	movq	%r13, %r14
	subq	%rsi, %r14
	js	.L873
	movq	%r14, %r13
	subq	%rsi, %r13
	cmovs	%r14, %r13
.L873:
	salq	$6, %rax
	leaq	(%r9,%rax), %r12
	movq	(%r12), %r14
	leaq	(%r8,%rax), %r14
	leaq	(%rdi,%rax), %r12
	addq	%rcx, %rax
	movq	(%r14), %r14
	movq	(%r12), %r14
	movq	(%rax), %rax
	leaq	5(%r15,%r13), %rax
	movq	%rax, %r14
	subq	%rsi, %r14
	js	.L875
	movq	%r14, %rax
	subq	%rsi, %rax
	cmovs	%r14, %rax
.L875:
	salq	$6, %r13
	addq	$6, %r15
	leaq	(%r9,%r13), %r12
	movq	(%r12), %r14
	leaq	(%r8,%r13), %r14
	leaq	(%rdi,%r13), %r12
	addq	%rcx, %r13
	movq	(%r14), %r14
	movq	(%r12), %r14
	movq	0(%r13), %r13
.L837:
	leaq	1(%r15,%rax), %r13
	movq	%r13, %r14
	subq	%rsi, %r14
	js	.L836
	movq	%r14, %r13
	subq	%rsi, %r13
	cmovs	%r14, %r13
.L836:
	salq	$6, %rax
	addq	$2, %r15
	leaq	(%r9,%rax), %r12
	movq	(%r12), %r14
	leaq	(%r8,%rax), %r14
	leaq	(%rdi,%rax), %r12
	addq	%rcx, %rax
	movq	(%r14), %r14
	movq	(%r12), %r14
	movq	(%rax), %rax
	cmpq	%r11, %r15
	jne	.L843
	leaq	1(%rbp), %r14
	movq	%r13, %r15
	salq	$6, %r15
.L835:
	leaq	(%r9,%r15), %r12
	movq	%rsi, %rax
	subq	%r13, %rax
	movq	(%r12), %r13
	leaq	(%rdi,%r15), %r12
	leaq	(%r8,%r15), %r13
	addq	%rcx, %r15
	movq	0(%r13), %r13
	movq	(%r12), %r13
	movq	(%r15), %r12
	cmpq	%rsi, %r14
	jge	.L844
	leaq	1(%r14,%r14), %r12
	movq	%r10, %r13
	subq	%r12, %r13
	subq	$2, %r13
	shrq	%r13
	andl	$3, %r13d
	je	.L840
	movq	%rax, %r14
	subq	%r12, %r14
	js	.L892
.L847:
	salq	$6, %rax
	addq	$2, %r12
	leaq	(%r9,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rax), %r15
	addq	%rcx, %rax
	movq	(%r15), %r15
	movq	(%rax), %rax
	movq	%r14, %rax
	cmpq	$1, %r13
	je	.L840
	cmpq	$2, %r13
	je	.L877
	subq	%r12, %rax
	js	.L893
.L849:
	salq	$6, %r14
	addq	$2, %r12
	movq	%r14, %r13
	leaq	(%r8,%r13), %r15
	leaq	(%r9,%r14), %r14
	movq	(%r14), %r14
	movq	(%r15), %r14
	leaq	(%rdi,%r13), %r14
	addq	%rcx, %r13
	movq	(%r14), %r14
	movq	0(%r13), %r13
.L877:
	movq	%rax, %r13
	subq	%r12, %r13
	js	.L894
.L852:
	salq	$6, %rax
	addq	$2, %r12
	leaq	(%r9,%rax), %r15
	movq	(%r15), %r14
	leaq	(%r8,%rax), %r14
	leaq	(%rdi,%rax), %r15
	addq	%rcx, %rax
	movq	(%r14), %r14
	movq	(%r15), %r14
	movq	(%rax), %rax
	movq	%r13, %rax
	jmp	.L840
	.p2align 4,,10
	.p2align 3
.L839:
	salq	$6, %rax
	addq	$2, %r12
	leaq	(%r9,%rax), %r14
	leaq	(%r8,%rax), %r15
	movq	(%r14), %r14
	movq	(%r15), %r14
	leaq	(%rdi,%rax), %r14
	addq	%rcx, %rax
	movq	(%r14), %r14
	movq	(%rax), %rax
	cmpq	%r12, %r10
	je	.L838
	movq	%r13, %rax
	subq	%r12, %rax
	js	.L895
.L856:
	salq	$6, %r13
	leaq	(%r9,%r13), %r15
	movq	(%r15), %r14
	leaq	(%r8,%r13), %r14
	leaq	(%rdi,%r13), %r15
	addq	%rcx, %r13
	movq	(%r14), %r14
	movq	(%r15), %r14
	movq	%rax, %r14
	movq	0(%r13), %r13
	leaq	2(%r12), %r13
	subq	%r13, %r14
	movq	%r14, %r13
	js	.L896
.L858:
	salq	$6, %rax
	leaq	(%r9,%rax), %r15
	movq	(%r15), %r14
	leaq	(%r8,%rax), %r14
	leaq	(%rdi,%rax), %r15
	addq	%rcx, %rax
	movq	(%r14), %r14
	movq	(%r15), %r14
	movq	%r13, %r14
	movq	(%rax), %rax
	leaq	4(%r12), %rax
	subq	%rax, %r14
	movq	%r14, %rax
	js	.L897
.L860:
	salq	$6, %r13
	addq	$6, %r12
	leaq	(%r9,%r13), %r15
	movq	(%r15), %r14
	leaq	(%r8,%r13), %r14
	leaq	(%rdi,%r13), %r15
	addq	%rcx, %r13
	movq	(%r14), %r14
	movq	(%r15), %r14
	movq	0(%r13), %r13
.L840:
	movq	%rax, %r13
	subq	%r12, %r13
	jns	.L839
	addq	%rsi, %r13
	jns	.L839
	addq	%rsi, %r13
	jmp	.L839
	.p2align 4,,10
	.p2align 3
.L844:
	movq	%rax, %r13
.L838:
#APP
# 249 "mem.cc" 1
	# random loop end (n_chains = $4, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, %rbx
	cmpq	%rbx, %rdx
	jne	.L841
	movq	%r13, %rax
	popq	%rbx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 48
	salq	$6, %rax
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 40
	addq	%rcx, %rax
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_restore 13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_restore 14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_restore 15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L895:
	.cfi_restore_state
	addq	%rsi, %rax
	jns	.L856
	addq	%rsi, %rax
	jmp	.L856
	.p2align 4,,10
	.p2align 3
.L897:
	addq	%rsi, %rax
	jns	.L860
	addq	%rsi, %rax
	jmp	.L860
	.p2align 4,,10
	.p2align 3
.L896:
	addq	%rsi, %r13
	jns	.L858
	addq	%rsi, %r13
	jmp	.L858
	.p2align 4,,10
	.p2align 3
.L892:
	addq	%rsi, %r14
	jns	.L847
	addq	%rsi, %r14
	jmp	.L847
	.p2align 4,,10
	.p2align 3
.L893:
	addq	%rsi, %rax
	jns	.L849
	addq	%rsi, %rax
	jmp	.L849
	.p2align 4,,10
	.p2align 3
.L894:
	addq	%rsi, %r13
	jns	.L852
	addq	%rsi, %r13
	jmp	.L852
	.p2align 4,,10
	.p2align 3
.L842:
	movl	$1, %r14d
	xorl	%r13d, %r13d
	jmp	.L835
.L891:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
	movq	24(%rdi), %rdx
	xorl	%eax, %eax
	addq	%rdx, %rax
	ret
	.cfi_endproc
.LFE189:
	.size	_Z13access_randomILi4ELi0EEP6recordPS1_ll, .-_Z13access_randomILi4ELi0EEP6recordPS1_ll
	.section	.text.unlikely._Z13access_randomILi4ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi4ELi0EEP6recordPS1_ll,comdat
.LCOLDE57:
	.section	.text._Z13access_randomILi4ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi4ELi0EEP6recordPS1_ll,comdat
.LHOTE57:
	.section	.text.unlikely._Z13access_randomILi5ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi5ELi1EEP6recordPS1_ll,comdat
.LCOLDB58:
	.section	.text._Z13access_randomILi5ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi5ELi1EEP6recordPS1_ll,comdat
.LHOTB58:
	.p2align 4,,15
	.weak	_Z13access_randomILi5ELi1EEP6recordPS1_ll
	.type	_Z13access_randomILi5ELi1EEP6recordPS1_ll, @function
_Z13access_randomILi5ELi1EEP6recordPS1_ll:
.LFB192:
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
	movq	%rdx, -56(%rbp)
	movq	32(%rdi), %rcx
	testq	%rdx, %rdx
	jle	.L933
	leaq	-1(%rsi), %rax
	movq	(%rdi), %r10
	xorl	%r12d, %r12d
	movq	8(%rdi), %r9
	leaq	1(%rsi,%rsi), %r11
	movq	%rax, %r13
	shrq	$63, %r13
	movq	16(%rdi), %r8
	movq	24(%rdi), %rdi
	addq	%r13, %rax
	sarq	%rax
	leaq	(%rax,%rax), %rbx
	movq	%rax, %r13
	.p2align 4,,10
	.p2align 3
.L907:
#APP
# 207 "mem.cc" 1
	# random loop begin (n_chains = $5, payload = $1)
# 0 "" 2
#NO_APP
	testq	%r13, %r13
	jle	.L908
	xorl	%r14d, %r14d
	xorl	%edx, %edx
	testb	$2, %bl
	jne	.L903
	movl	$1, %edx
	movq	%rdx, %r14
	subq	%rsi, %r14
	js	.L918
	movq	%r14, %rdx
	subq	%rsi, %rdx
	cmovs	%r14, %rdx
.L918:
	vmovdqa	(%r10), %ymm0
	movl	$2, %r14d
	vmovdqa	32(%r10), %ymm0
	vmovdqa	(%r9), %ymm0
	vmovdqa	32(%r9), %ymm0
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	vmovdqa	(%rdi), %ymm0
	vmovdqa	32(%rdi), %ymm0
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	jmp	.L903
	.p2align 4,,10
	.p2align 3
.L909:
	leaq	1(%rax,%r14), %rdx
	movq	%rdx, %r15
	subq	%rsi, %r15
	js	.L921
	movq	%r15, %rdx
	subq	%rsi, %rdx
	cmovs	%r15, %rdx
.L921:
	salq	$6, %rax
	addq	$2, %r14
	leaq	(%r10,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r9,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r8,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rdi,%rax), %r15
	addq	%rcx, %rax
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
.L903:
	leaq	1(%r14,%rdx), %rax
	movq	%rax, %r15
	subq	%rsi, %r15
	js	.L902
	movq	%r15, %rax
	subq	%rsi, %rax
	cmovs	%r15, %rax
.L902:
	salq	$6, %rdx
	addq	$2, %r14
	leaq	(%r10,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r9,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r8,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rdi,%rdx), %r15
	addq	%rcx, %rdx
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	cmpq	%rbx, %r14
	jne	.L909
	leaq	1(%r13), %r14
	movq	%rax, %rdx
	salq	$6, %rdx
.L901:
	movq	%rsi, %r15
	subq	%rax, %r15
	movq	%r15, %rax
	leaq	(%r10,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r9,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r8,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rdi,%rdx), %r15
	addq	%rcx, %rdx
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	cmpq	%r14, %rsi
	jle	.L910
	leaq	1(%r14,%r14), %r14
	movq	%r11, %rdx
	subq	%r14, %rdx
	andl	$2, %edx
	jne	.L906
	movq	%rax, %rdx
	subq	%r14, %rdx
	js	.L934
.L913:
	salq	$6, %rax
	addq	$2, %r14
	leaq	(%r10,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r9,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r8,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rdi,%rax), %r15
	addq	%rcx, %rax
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	movq	%rdx, %rax
	jmp	.L906
	.p2align 4,,10
	.p2align 3
.L905:
	salq	$6, %rax
	addq	$2, %r14
	leaq	(%r10,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r9,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r8,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rdi,%rax), %r15
	addq	%rcx, %rax
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	cmpq	%r14, %r11
	je	.L904
	movq	%rdx, %rax
	subq	%r14, %rax
	js	.L935
.L916:
	salq	$6, %rdx
	addq	$2, %r14
	leaq	(%r10,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r9,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r8,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rdi,%rdx), %r15
	addq	%rcx, %rdx
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
.L906:
	movq	%rax, %rdx
	subq	%r14, %rdx
	jns	.L905
	addq	%rsi, %rdx
	jns	.L905
	addq	%rsi, %rdx
	jmp	.L905
	.p2align 4,,10
	.p2align 3
.L935:
	addq	%rsi, %rax
	jns	.L916
	addq	%rsi, %rax
	jmp	.L916
	.p2align 4,,10
	.p2align 3
.L910:
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L904:
#APP
# 249 "mem.cc" 1
	# random loop end (n_chains = $5, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, %r12
	cmpq	%r12, -56(%rbp)
	jne	.L907
	salq	$6, %rdx
	vzeroupper
.L900:
	leaq	(%rcx,%rdx), %rax
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
.L934:
	.cfi_restore_state
	addq	%rsi, %rdx
	jns	.L913
	addq	%rsi, %rdx
	jmp	.L913
	.p2align 4,,10
	.p2align 3
.L908:
	xorl	%edx, %edx
	movl	$1, %r14d
	xorl	%eax, %eax
	jmp	.L901
.L933:
	xorl	%edx, %edx
	jmp	.L900
	.cfi_endproc
.LFE192:
	.size	_Z13access_randomILi5ELi1EEP6recordPS1_ll, .-_Z13access_randomILi5ELi1EEP6recordPS1_ll
	.section	.text.unlikely._Z13access_randomILi5ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi5ELi1EEP6recordPS1_ll,comdat
.LCOLDE58:
	.section	.text._Z13access_randomILi5ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi5ELi1EEP6recordPS1_ll,comdat
.LHOTE58:
	.section	.text.unlikely._Z13access_randomILi5ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi5ELi0EEP6recordPS1_ll,comdat
.LCOLDB59:
	.section	.text._Z13access_randomILi5ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi5ELi0EEP6recordPS1_ll,comdat
.LHOTB59:
	.p2align 4,,15
	.weak	_Z13access_randomILi5ELi0EEP6recordPS1_ll
	.type	_Z13access_randomILi5ELi0EEP6recordPS1_ll, @function
_Z13access_randomILi5ELi0EEP6recordPS1_ll:
.LFB195:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	xorl	%r11d, %r11d
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
	movq	32(%rdi), %rcx
	movq	%rdx, -8(%rsp)
	testq	%rdx, %rdx
	jle	.L938
	leaq	-1(%rsi), %rax
	movq	(%rdi), %r10
	xorl	%r13d, %r13d
	movq	8(%rdi), %r9
	leaq	1(%rsi,%rsi), %r12
	movq	%rax, %r14
	shrq	$63, %r14
	movq	16(%rdi), %r8
	movq	24(%rdi), %rdi
	addq	%r14, %rax
	sarq	%rax
	leaq	(%rax,%rax), %rbp
	movq	%rax, %r14
	.p2align 4,,10
	.p2align 3
.L945:
#APP
# 207 "mem.cc" 1
	# random loop begin (n_chains = $5, payload = $0)
# 0 "" 2
#NO_APP
	xorl	%r11d, %r11d
	testq	%r14, %r14
	jle	.L946
	xorl	%eax, %eax
	testb	$2, %bpl
	jne	.L941
	movl	$1, %eax
	movq	%rax, %rdx
	subq	%rsi, %rdx
	js	.L966
	movq	%rdx, %rax
	subq	%rsi, %rax
	cmovs	%rdx, %rax
.L966:
	movq	(%r10), %rdx
	movl	$2, %r11d
	movq	(%r9), %rdx
	movq	(%r8), %rdx
	movq	(%rdi), %rdx
	movq	(%rcx), %rdx
	jmp	.L941
	.p2align 4,,10
	.p2align 3
.L947:
	leaq	1(%rdx,%r11), %rax
	movq	%rax, %r15
	subq	%rsi, %r15
	js	.L969
	movq	%r15, %rax
	subq	%rsi, %rax
	cmovs	%r15, %rax
.L969:
	salq	$6, %rdx
	addq	$2, %r11
	leaq	(%r9,%rdx), %r15
	leaq	(%r10,%rdx), %rbx
	movq	(%rbx), %rbx
	movq	(%r15), %rbx
	leaq	(%r8,%rdx), %rbx
	leaq	(%rdi,%rdx), %r15
	addq	%rcx, %rdx
	movq	(%rbx), %rbx
	movq	(%r15), %rbx
	movq	(%rdx), %rdx
.L941:
	leaq	1(%r11,%rax), %rdx
	movq	%rdx, %rbx
	subq	%rsi, %rbx
	js	.L940
	movq	%rbx, %rdx
	subq	%rsi, %rdx
	cmovs	%rbx, %rdx
.L940:
	salq	$6, %rax
	addq	$2, %r11
	leaq	(%r10,%rax), %r15
	movq	(%r15), %rbx
	leaq	(%r9,%rax), %rbx
	leaq	(%r8,%rax), %r15
	movq	(%rbx), %rbx
	movq	(%r15), %rbx
	leaq	(%rdi,%rax), %rbx
	addq	%rcx, %rax
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	cmpq	%rbp, %r11
	jne	.L947
	leaq	1(%r14), %rbx
	movq	%rdx, %r11
	salq	$6, %r11
.L939:
	leaq	(%r10,%r11), %r15
	movq	%rsi, %rax
	subq	%rdx, %rax
	movq	(%r15), %rdx
	leaq	(%r9,%r11), %rdx
	leaq	(%r8,%r11), %r15
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%rdi,%r11), %rdx
	addq	%rcx, %r11
	movq	(%rdx), %rdx
	movq	(%r11), %rdx
	cmpq	%rbx, %rsi
	jle	.L948
	leaq	1(%rbx,%rbx), %rdx
	movq	%r12, %rbx
	subq	%rdx, %rbx
	subq	$2, %rbx
	shrq	%rbx
	andl	$3, %ebx
	je	.L944
	movq	%rax, %r11
	subq	%rdx, %r11
	js	.L985
.L951:
	salq	$6, %rax
	addq	$2, %rdx
	leaq	(%r10,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rax), %r15
	addq	%rcx, %rax
	movq	(%r15), %r15
	movq	(%rax), %rax
	movq	%r11, %rax
	cmpq	$1, %rbx
	je	.L944
	cmpq	$2, %rbx
	je	.L971
	subq	%rdx, %rax
	js	.L986
.L953:
	salq	$6, %r11
	addq	$2, %rdx
	leaq	(%r9,%r11), %r15
	leaq	(%r10,%r11), %rbx
	movq	(%rbx), %rbx
	movq	(%r15), %rbx
	leaq	(%r8,%r11), %rbx
	leaq	(%rdi,%r11), %r15
	addq	%rcx, %r11
	movq	(%rbx), %rbx
	movq	(%r15), %rbx
	movq	(%r11), %r11
.L971:
	movq	%rax, %r11
	subq	%rdx, %r11
	js	.L987
.L956:
	salq	$6, %rax
	addq	$2, %rdx
	leaq	(%r9,%rax), %r15
	leaq	(%r10,%rax), %rbx
	movq	(%rbx), %rbx
	movq	(%r15), %rbx
	leaq	(%r8,%rax), %rbx
	leaq	(%rdi,%rax), %r15
	addq	%rcx, %rax
	movq	(%rbx), %rbx
	movq	(%r15), %rbx
	movq	(%rax), %rax
	movq	%r11, %rax
	jmp	.L944
	.p2align 4,,10
	.p2align 3
.L943:
	salq	$6, %rax
	addq	$2, %rdx
	leaq	(%r9,%rax), %r15
	leaq	(%r10,%rax), %rbx
	movq	(%rbx), %rbx
	movq	(%r15), %rbx
	leaq	(%r8,%rax), %rbx
	leaq	(%rdi,%rax), %r15
	addq	%rcx, %rax
	movq	(%rbx), %rbx
	movq	(%r15), %rbx
	movq	(%rax), %rax
	cmpq	%rdx, %r12
	je	.L942
	movq	%r11, %rax
	subq	%rdx, %rax
	js	.L988
.L960:
	salq	$6, %r11
	leaq	(%r9,%r11), %r15
	leaq	(%r10,%r11), %rbx
	movq	(%rbx), %rbx
	movq	(%r15), %rbx
	leaq	(%rdi,%r11), %r15
	leaq	(%r8,%r11), %rbx
	addq	%rcx, %r11
	movq	(%rbx), %rbx
	movq	(%r15), %rbx
	movq	%rax, %rbx
	movq	(%r11), %r11
	leaq	2(%rdx), %r11
	subq	%r11, %rbx
	movq	%rbx, %r15
	js	.L989
.L962:
	salq	$6, %rax
	leaq	(%r10,%rax), %r11
	movq	(%r11), %rbx
	leaq	(%r8,%rax), %r11
	leaq	(%r9,%rax), %rbx
	movq	(%rbx), %rbx
	movq	(%r11), %rbx
	leaq	(%rdi,%rax), %rbx
	addq	%rcx, %rax
	movq	%r15, %r11
	movq	(%rbx), %rbx
	movq	(%rax), %rax
	leaq	4(%rdx), %rax
	subq	%rax, %r11
	movq	%r11, %rax
	js	.L990
.L964:
	salq	$6, %r15
	addq	$6, %rdx
	leaq	(%r9,%r15), %r11
	leaq	(%r10,%r15), %rbx
	movq	(%rbx), %rbx
	movq	(%r11), %rbx
	leaq	(%rdi,%r15), %r11
	leaq	(%r8,%r15), %rbx
	addq	%rcx, %r15
	movq	(%rbx), %rbx
	movq	(%r11), %rbx
	movq	(%r15), %r11
.L944:
	movq	%rax, %r11
	subq	%rdx, %r11
	jns	.L943
	addq	%rsi, %r11
	jns	.L943
	addq	%rsi, %r11
	jmp	.L943
	.p2align 4,,10
	.p2align 3
.L948:
	movq	%rax, %r11
.L942:
#APP
# 249 "mem.cc" 1
	# random loop end (n_chains = $5, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, %r13
	cmpq	%r13, -8(%rsp)
	jne	.L945
	salq	$6, %r11
.L938:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	leaq	(%rcx,%r11), %rax
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
	.p2align 4,,10
	.p2align 3
.L988:
	.cfi_restore_state
	addq	%rsi, %rax
	jns	.L960
	addq	%rsi, %rax
	jmp	.L960
	.p2align 4,,10
	.p2align 3
.L990:
	addq	%rsi, %rax
	jns	.L964
	addq	%rsi, %rax
	jmp	.L964
	.p2align 4,,10
	.p2align 3
.L989:
	addq	%rsi, %r15
	jns	.L962
	addq	%rsi, %r15
	jmp	.L962
	.p2align 4,,10
	.p2align 3
.L986:
	addq	%rsi, %rax
	jns	.L953
	addq	%rsi, %rax
	jmp	.L953
	.p2align 4,,10
	.p2align 3
.L985:
	addq	%rsi, %r11
	jns	.L951
	addq	%rsi, %r11
	jmp	.L951
	.p2align 4,,10
	.p2align 3
.L987:
	addq	%rsi, %r11
	jns	.L956
	addq	%rsi, %r11
	jmp	.L956
	.p2align 4,,10
	.p2align 3
.L946:
	movl	$1, %ebx
	xorl	%edx, %edx
	jmp	.L939
	.cfi_endproc
.LFE195:
	.size	_Z13access_randomILi5ELi0EEP6recordPS1_ll, .-_Z13access_randomILi5ELi0EEP6recordPS1_ll
	.section	.text.unlikely._Z13access_randomILi5ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi5ELi0EEP6recordPS1_ll,comdat
.LCOLDE59:
	.section	.text._Z13access_randomILi5ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi5ELi0EEP6recordPS1_ll,comdat
.LHOTE59:
	.section	.text.unlikely._Z13access_randomILi6ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi6ELi1EEP6recordPS1_ll,comdat
.LCOLDB60:
	.section	.text._Z13access_randomILi6ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi6ELi1EEP6recordPS1_ll,comdat
.LHOTB60:
	.p2align 4,,15
	.weak	_Z13access_randomILi6ELi1EEP6recordPS1_ll
	.type	_Z13access_randomILi6ELi1EEP6recordPS1_ll, @function
_Z13access_randomILi6ELi1EEP6recordPS1_ll:
.LFB198:
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
	movq	%rdx, -64(%rbp)
	movq	40(%rdi), %rcx
	testq	%rdx, %rdx
	jle	.L1028
	leaq	-1(%rsi), %rax
	movq	(%rdi), %r11
	xorl	%r13d, %r13d
	movq	8(%rdi), %r10
	leaq	1(%rsi,%rsi), %rbx
	movq	%rax, %rdx
	movq	16(%rdi), %r9
	shrq	$63, %rdx
	movq	24(%rdi), %r8
	addq	%rdx, %rax
	movq	32(%rdi), %rdi
	sarq	%rax
	movq	%rax, -56(%rbp)
	leaq	(%rax,%rax), %r12
	.p2align 4,,10
	.p2align 3
.L1000:
#APP
# 207 "mem.cc" 1
	# random loop begin (n_chains = $6, payload = $1)
# 0 "" 2
#NO_APP
	xorl	%r14d, %r14d
	cmpq	$0, -56(%rbp)
	jle	.L1001
	xorl	%eax, %eax
	testb	$2, %r12b
	jne	.L996
	movl	$1, %eax
	movq	%rax, %r14
	subq	%rsi, %r14
	js	.L1011
	movq	%r14, %rax
	subq	%rsi, %rax
	cmovs	%r14, %rax
.L1011:
	vmovdqa	(%r11), %ymm0
	movl	$2, %r14d
	vmovdqa	32(%r11), %ymm0
	vmovdqa	(%r10), %ymm0
	vmovdqa	32(%r10), %ymm0
	vmovdqa	(%r9), %ymm0
	vmovdqa	32(%r9), %ymm0
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	vmovdqa	(%rdi), %ymm0
	vmovdqa	32(%rdi), %ymm0
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	jmp	.L996
	.p2align 4,,10
	.p2align 3
.L1002:
	leaq	1(%rdx,%r14), %rax
	movq	%rax, %r15
	subq	%rsi, %r15
	js	.L1014
	movq	%r15, %rax
	subq	%rsi, %rax
	cmovs	%r15, %rax
.L1014:
	salq	$6, %rdx
	addq	$2, %r14
	leaq	(%r11,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r10,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r9,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r8,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rdi,%rdx), %r15
	addq	%rcx, %rdx
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
.L996:
	leaq	1(%r14,%rax), %rdx
	movq	%rdx, %r15
	subq	%rsi, %r15
	js	.L995
	movq	%r15, %rdx
	subq	%rsi, %rdx
	cmovs	%r15, %rdx
.L995:
	salq	$6, %rax
	addq	$2, %r14
	leaq	(%r11,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r10,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r9,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r8,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rdi,%rax), %r15
	addq	%rcx, %rax
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	cmpq	%r12, %r14
	jne	.L1002
	movq	-56(%rbp), %r14
	leaq	1(%r14), %r15
	movq	%rdx, %r14
	salq	$6, %r14
.L994:
	movq	%rsi, %rax
	subq	%rdx, %rax
	leaq	(%r11,%r14), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r10,%r14), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r9,%r14), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r8,%r14), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rdi,%r14), %rdx
	addq	%rcx, %r14
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	cmpq	%r15, %rsi
	jle	.L1003
	leaq	1(%r15,%r15), %r14
	movq	%rbx, %r15
	subq	%r14, %r15
	andl	$2, %r15d
	jne	.L999
	movq	%rax, %rdx
	subq	%r14, %rdx
	js	.L1029
.L1006:
	salq	$6, %rax
	addq	$2, %r14
	leaq	(%r11,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r10,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r9,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r8,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rdi,%rax), %r15
	addq	%rcx, %rax
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	movq	%rdx, %rax
	jmp	.L999
	.p2align 4,,10
	.p2align 3
.L998:
	salq	$6, %rax
	addq	$2, %r14
	leaq	(%r11,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r10,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r9,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r8,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rdi,%rax), %r15
	addq	%rcx, %rax
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	cmpq	%r14, %rbx
	je	.L997
	movq	%rdx, %rax
	subq	%r14, %rax
	js	.L1030
.L1009:
	salq	$6, %rdx
	addq	$2, %r14
	leaq	(%r11,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r10,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r9,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r8,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rdi,%rdx), %r15
	addq	%rcx, %rdx
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
.L999:
	movq	%rax, %rdx
	subq	%r14, %rdx
	jns	.L998
	addq	%rsi, %rdx
	jns	.L998
	addq	%rsi, %rdx
	jmp	.L998
	.p2align 4,,10
	.p2align 3
.L1030:
	addq	%rsi, %rax
	jns	.L1009
	addq	%rsi, %rax
	jmp	.L1009
	.p2align 4,,10
	.p2align 3
.L1003:
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L997:
#APP
# 249 "mem.cc" 1
	# random loop end (n_chains = $6, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, %r13
	cmpq	%r13, -64(%rbp)
	jne	.L1000
	salq	$6, %rdx
	vzeroupper
.L993:
	leaq	(%rcx,%rdx), %rax
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
.L1029:
	.cfi_restore_state
	addq	%rsi, %rdx
	jns	.L1006
	addq	%rsi, %rdx
	jmp	.L1006
	.p2align 4,,10
	.p2align 3
.L1001:
	movl	$1, %r15d
	xorl	%edx, %edx
	jmp	.L994
.L1028:
	xorl	%edx, %edx
	jmp	.L993
	.cfi_endproc
.LFE198:
	.size	_Z13access_randomILi6ELi1EEP6recordPS1_ll, .-_Z13access_randomILi6ELi1EEP6recordPS1_ll
	.section	.text.unlikely._Z13access_randomILi6ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi6ELi1EEP6recordPS1_ll,comdat
.LCOLDE60:
	.section	.text._Z13access_randomILi6ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi6ELi1EEP6recordPS1_ll,comdat
.LHOTE60:
	.section	.text.unlikely._Z13access_randomILi6ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi6ELi0EEP6recordPS1_ll,comdat
.LCOLDB61:
	.section	.text._Z13access_randomILi6ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi6ELi0EEP6recordPS1_ll,comdat
.LHOTB61:
	.p2align 4,,15
	.weak	_Z13access_randomILi6ELi0EEP6recordPS1_ll
	.type	_Z13access_randomILi6ELi0EEP6recordPS1_ll, @function
_Z13access_randomILi6ELi0EEP6recordPS1_ll:
.LFB201:
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
	movq	40(%rdi), %rcx
	movq	%rdx, -8(%rsp)
	testq	%rdx, %rdx
	jle	.L1068
	leaq	-1(%rsi), %rax
	movq	(%rdi), %r11
	xorl	%r12d, %r12d
	movq	8(%rdi), %r10
	leaq	1(%rsi,%rsi), %rbx
	movq	%rax, %r13
	shrq	$63, %r13
	movq	16(%rdi), %r9
	movq	24(%rdi), %r8
	addq	%r13, %rax
	movq	32(%rdi), %rdi
	sarq	%rax
	leaq	(%rax,%rax), %rbp
	movq	%rax, %r13
	.p2align 4,,10
	.p2align 3
.L1040:
#APP
# 207 "mem.cc" 1
	# random loop begin (n_chains = $6, payload = $0)
# 0 "" 2
#NO_APP
	xorl	%r14d, %r14d
	testq	%r13, %r13
	jle	.L1041
	xorl	%eax, %eax
	testb	$2, %bpl
	jne	.L1036
	movl	$1, %eax
	movq	%rax, %rdx
	subq	%rsi, %rdx
	js	.L1051
	movq	%rdx, %rax
	subq	%rsi, %rax
	cmovs	%rdx, %rax
.L1051:
	movq	(%r11), %rdx
	movl	$2, %r14d
	movq	(%r10), %rdx
	movq	(%r9), %rdx
	movq	(%r8), %rdx
	movq	(%rdi), %rdx
	movq	(%rcx), %rdx
	jmp	.L1036
	.p2align 4,,10
	.p2align 3
.L1042:
	leaq	1(%rdx,%r14), %rax
	movq	%rax, %r15
	subq	%rsi, %r15
	js	.L1054
	movq	%r15, %rax
	subq	%rsi, %rax
	cmovs	%r15, %rax
.L1054:
	salq	$6, %rdx
	addq	$2, %r14
	leaq	(%r11,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rdx), %r15
	addq	%rcx, %rdx
	movq	(%r15), %r15
	movq	(%rdx), %rdx
.L1036:
	leaq	1(%r14,%rax), %rdx
	movq	%rdx, %r15
	subq	%rsi, %r15
	js	.L1035
	movq	%r15, %rdx
	subq	%rsi, %rdx
	cmovs	%r15, %rdx
.L1035:
	salq	$6, %rax
	addq	$2, %r14
	leaq	(%r11,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rax), %r15
	addq	%rcx, %rax
	movq	(%r15), %r15
	movq	(%rax), %rax
	cmpq	%rbp, %r14
	jne	.L1042
	leaq	1(%r13), %r15
	movq	%rdx, %r14
	salq	$6, %r14
.L1034:
	movq	%rsi, %rax
	subq	%rdx, %rax
	leaq	(%r11,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%r10,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%r9,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%r8,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%rdi,%r14), %rdx
	addq	%rcx, %r14
	movq	(%rdx), %rdx
	movq	(%r14), %rdx
	cmpq	%r15, %rsi
	jle	.L1043
	leaq	1(%r15,%r15), %r14
	movq	%rbx, %r15
	subq	%r14, %r15
	andl	$2, %r15d
	jne	.L1039
	movq	%rax, %rdx
	subq	%r14, %rdx
	js	.L1069
.L1046:
	salq	$6, %rax
	addq	$2, %r14
	leaq	(%r11,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rax), %r15
	addq	%rcx, %rax
	movq	(%r15), %r15
	movq	(%rax), %rax
	movq	%rdx, %rax
	jmp	.L1039
	.p2align 4,,10
	.p2align 3
.L1038:
	salq	$6, %rax
	addq	$2, %r14
	leaq	(%r11,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rax), %r15
	addq	%rcx, %rax
	movq	(%r15), %r15
	movq	(%rax), %rax
	cmpq	%r14, %rbx
	je	.L1037
	movq	%rdx, %rax
	subq	%r14, %rax
	js	.L1070
.L1049:
	salq	$6, %rdx
	addq	$2, %r14
	leaq	(%r11,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rdx), %r15
	addq	%rcx, %rdx
	movq	(%r15), %r15
	movq	(%rdx), %rdx
.L1039:
	movq	%rax, %rdx
	subq	%r14, %rdx
	jns	.L1038
	addq	%rsi, %rdx
	jns	.L1038
	addq	%rsi, %rdx
	jmp	.L1038
	.p2align 4,,10
	.p2align 3
.L1070:
	addq	%rsi, %rax
	jns	.L1049
	addq	%rsi, %rax
	jmp	.L1049
	.p2align 4,,10
	.p2align 3
.L1043:
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L1037:
#APP
# 249 "mem.cc" 1
	# random loop end (n_chains = $6, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, %r12
	cmpq	%r12, -8(%rsp)
	jne	.L1040
	salq	$6, %rdx
	popq	%rbx
	.cfi_remember_state
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
	leaq	(%rcx,%rdx), %rax
	ret
	.p2align 4,,10
	.p2align 3
.L1069:
	.cfi_restore_state
	addq	%rsi, %rdx
	jns	.L1046
	addq	%rsi, %rdx
	jmp	.L1046
	.p2align 4,,10
	.p2align 3
.L1041:
	movl	$1, %r15d
	xorl	%edx, %edx
	jmp	.L1034
.L1068:
	xorl	%edx, %edx
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
	leaq	(%rcx,%rdx), %rax
	ret
	.cfi_endproc
.LFE201:
	.size	_Z13access_randomILi6ELi0EEP6recordPS1_ll, .-_Z13access_randomILi6ELi0EEP6recordPS1_ll
	.section	.text.unlikely._Z13access_randomILi6ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi6ELi0EEP6recordPS1_ll,comdat
.LCOLDE61:
	.section	.text._Z13access_randomILi6ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi6ELi0EEP6recordPS1_ll,comdat
.LHOTE61:
	.section	.text.unlikely._Z13access_randomILi7ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi7ELi1EEP6recordPS1_ll,comdat
.LCOLDB62:
	.section	.text._Z13access_randomILi7ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi7ELi1EEP6recordPS1_ll,comdat
.LHOTB62:
	.p2align 4,,15
	.weak	_Z13access_randomILi7ELi1EEP6recordPS1_ll
	.type	_Z13access_randomILi7ELi1EEP6recordPS1_ll, @function
_Z13access_randomILi7ELi1EEP6recordPS1_ll:
.LFB204:
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
	movq	%rdx, -72(%rbp)
	movq	48(%rdi), %rcx
	testq	%rdx, %rdx
	jle	.L1108
	leaq	-1(%rsi), %rax
	movq	(%rdi), %rbx
	movq	$0, -56(%rbp)
	movq	8(%rdi), %r11
	leaq	1(%rsi,%rsi), %r12
	movq	%rax, %rdx
	movq	16(%rdi), %r10
	shrq	$63, %rdx
	movq	24(%rdi), %r9
	addq	%rdx, %rax
	movq	32(%rdi), %r8
	sarq	%rax
	movq	40(%rdi), %rdi
	movq	%rax, -64(%rbp)
	leaq	(%rax,%rax), %r13
	.p2align 4,,10
	.p2align 3
.L1080:
#APP
# 207 "mem.cc" 1
	# random loop begin (n_chains = $7, payload = $1)
# 0 "" 2
#NO_APP
	xorl	%r14d, %r14d
	cmpq	$0, -64(%rbp)
	jle	.L1081
	xorl	%eax, %eax
	testb	$2, %r13b
	jne	.L1076
	movl	$1, %eax
	movq	%rax, %r14
	subq	%rsi, %r14
	js	.L1091
	movq	%r14, %rax
	subq	%rsi, %rax
	cmovs	%r14, %rax
.L1091:
	vmovdqa	(%rbx), %ymm0
	movl	$2, %r14d
	vmovdqa	32(%rbx), %ymm0
	vmovdqa	(%r11), %ymm0
	vmovdqa	32(%r11), %ymm0
	vmovdqa	(%r10), %ymm0
	vmovdqa	32(%r10), %ymm0
	vmovdqa	(%r9), %ymm0
	vmovdqa	32(%r9), %ymm0
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	vmovdqa	(%rdi), %ymm0
	vmovdqa	32(%rdi), %ymm0
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	jmp	.L1076
	.p2align 4,,10
	.p2align 3
.L1082:
	leaq	1(%rdx,%r14), %rax
	movq	%rax, %r15
	subq	%rsi, %r15
	js	.L1094
	movq	%r15, %rax
	subq	%rsi, %rax
	cmovs	%r15, %rax
.L1094:
	salq	$6, %rdx
	addq	$2, %r14
	leaq	(%rbx,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r11,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r10,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r9,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r8,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rdi,%rdx), %r15
	addq	%rcx, %rdx
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
.L1076:
	leaq	1(%r14,%rax), %rdx
	movq	%rdx, %r15
	subq	%rsi, %r15
	js	.L1075
	movq	%r15, %rdx
	subq	%rsi, %rdx
	cmovs	%r15, %rdx
.L1075:
	salq	$6, %rax
	addq	$2, %r14
	leaq	(%rbx,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r11,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r10,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r9,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r8,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rdi,%rax), %r15
	addq	%rcx, %rax
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	cmpq	%r13, %r14
	jne	.L1082
	movq	-64(%rbp), %r14
	leaq	1(%r14), %r15
	movq	%rdx, %r14
	salq	$6, %r14
.L1074:
	movq	%rsi, %rax
	subq	%rdx, %rax
	leaq	(%rbx,%r14), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r11,%r14), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r10,%r14), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r9,%r14), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r8,%r14), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rdi,%r14), %rdx
	addq	%rcx, %r14
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	cmpq	%r15, %rsi
	jle	.L1083
	leaq	1(%r15,%r15), %r14
	movq	%r12, %r15
	subq	%r14, %r15
	andl	$2, %r15d
	jne	.L1079
	movq	%rax, %rdx
	subq	%r14, %rdx
	js	.L1109
.L1086:
	salq	$6, %rax
	addq	$2, %r14
	leaq	(%rbx,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r11,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r10,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r9,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r8,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rdi,%rax), %r15
	addq	%rcx, %rax
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	movq	%rdx, %rax
	jmp	.L1079
	.p2align 4,,10
	.p2align 3
.L1078:
	salq	$6, %rax
	addq	$2, %r14
	leaq	(%rbx,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r11,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r10,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r9,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r8,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rdi,%rax), %r15
	addq	%rcx, %rax
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	cmpq	%r14, %r12
	je	.L1077
	movq	%rdx, %rax
	subq	%r14, %rax
	js	.L1110
.L1089:
	salq	$6, %rdx
	addq	$2, %r14
	leaq	(%rbx,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r11,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r10,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r9,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r8,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rdi,%rdx), %r15
	addq	%rcx, %rdx
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
.L1079:
	movq	%rax, %rdx
	subq	%r14, %rdx
	jns	.L1078
	addq	%rsi, %rdx
	jns	.L1078
	addq	%rsi, %rdx
	jmp	.L1078
	.p2align 4,,10
	.p2align 3
.L1110:
	addq	%rsi, %rax
	jns	.L1089
	addq	%rsi, %rax
	jmp	.L1089
	.p2align 4,,10
	.p2align 3
.L1083:
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L1077:
#APP
# 249 "mem.cc" 1
	# random loop end (n_chains = $7, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, -56(%rbp)
	movq	-56(%rbp), %r14
	cmpq	%r14, -72(%rbp)
	jne	.L1080
	salq	$6, %rdx
	vzeroupper
.L1073:
	leaq	(%rcx,%rdx), %rax
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
.L1109:
	.cfi_restore_state
	addq	%rsi, %rdx
	jns	.L1086
	addq	%rsi, %rdx
	jmp	.L1086
	.p2align 4,,10
	.p2align 3
.L1081:
	movl	$1, %r15d
	xorl	%edx, %edx
	jmp	.L1074
.L1108:
	xorl	%edx, %edx
	jmp	.L1073
	.cfi_endproc
.LFE204:
	.size	_Z13access_randomILi7ELi1EEP6recordPS1_ll, .-_Z13access_randomILi7ELi1EEP6recordPS1_ll
	.section	.text.unlikely._Z13access_randomILi7ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi7ELi1EEP6recordPS1_ll,comdat
.LCOLDE62:
	.section	.text._Z13access_randomILi7ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi7ELi1EEP6recordPS1_ll,comdat
.LHOTE62:
	.section	.text.unlikely._Z13access_randomILi7ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi7ELi0EEP6recordPS1_ll,comdat
.LCOLDB63:
	.section	.text._Z13access_randomILi7ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi7ELi0EEP6recordPS1_ll,comdat
.LHOTB63:
	.p2align 4,,15
	.weak	_Z13access_randomILi7ELi0EEP6recordPS1_ll
	.type	_Z13access_randomILi7ELi0EEP6recordPS1_ll, @function
_Z13access_randomILi7ELi0EEP6recordPS1_ll:
.LFB207:
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
	movq	48(%rdi), %rcx
	movq	%rdx, -8(%rsp)
	testq	%rdx, %rdx
	jle	.L1148
	leaq	-1(%rsi), %rax
	movq	(%rdi), %rbx
	xorl	%r13d, %r13d
	movq	8(%rdi), %r11
	leaq	1(%rsi,%rsi), %rbp
	movq	%rax, %rdx
	movq	16(%rdi), %r10
	shrq	$63, %rdx
	movq	24(%rdi), %r9
	addq	%rdx, %rax
	movq	32(%rdi), %r8
	sarq	%rax
	movq	40(%rdi), %rdi
	movq	%rax, -16(%rsp)
	leaq	(%rax,%rax), %r12
	.p2align 4,,10
	.p2align 3
.L1120:
#APP
# 207 "mem.cc" 1
	# random loop begin (n_chains = $7, payload = $0)
# 0 "" 2
#NO_APP
	xorl	%r14d, %r14d
	cmpq	$0, -16(%rsp)
	jle	.L1121
	xorl	%eax, %eax
	testb	$2, %r12b
	jne	.L1116
	movl	$1, %eax
	movq	%rax, %r14
	subq	%rsi, %r14
	js	.L1131
	movq	%r14, %rax
	subq	%rsi, %rax
	cmovs	%r14, %rax
.L1131:
	movq	(%rbx), %rdx
	movl	$2, %r14d
	movq	(%r11), %rdx
	movq	(%r10), %rdx
	movq	(%r9), %rdx
	movq	(%r8), %rdx
	movq	(%rdi), %rdx
	movq	(%rcx), %rdx
	jmp	.L1116
	.p2align 4,,10
	.p2align 3
.L1122:
	leaq	1(%rdx,%r14), %rax
	movq	%rax, %r15
	subq	%rsi, %r15
	js	.L1134
	movq	%r15, %rax
	subq	%rsi, %rax
	cmovs	%r15, %rax
.L1134:
	salq	$6, %rdx
	addq	$2, %r14
	leaq	(%rbx,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r11,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rdx), %r15
	addq	%rcx, %rdx
	movq	(%r15), %r15
	movq	(%rdx), %rdx
.L1116:
	leaq	1(%r14,%rax), %rdx
	movq	%rdx, %r15
	subq	%rsi, %r15
	js	.L1115
	movq	%r15, %rdx
	subq	%rsi, %rdx
	cmovs	%r15, %rdx
.L1115:
	salq	$6, %rax
	addq	$2, %r14
	leaq	(%rbx,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r11,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rax), %r15
	addq	%rcx, %rax
	movq	(%r15), %r15
	movq	(%rax), %rax
	cmpq	%r12, %r14
	jne	.L1122
	movq	-16(%rsp), %r14
	leaq	1(%r14), %r15
	movq	%rdx, %r14
	salq	$6, %r14
.L1114:
	movq	%rsi, %rax
	subq	%rdx, %rax
	leaq	(%rbx,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%r11,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%r10,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%r9,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%r8,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%rdi,%r14), %rdx
	addq	%rcx, %r14
	movq	(%rdx), %rdx
	movq	(%r14), %rdx
	cmpq	%r15, %rsi
	jle	.L1123
	leaq	1(%r15,%r15), %r14
	movq	%rbp, %r15
	subq	%r14, %r15
	andl	$2, %r15d
	jne	.L1119
	movq	%rax, %rdx
	subq	%r14, %rdx
	js	.L1149
.L1126:
	salq	$6, %rax
	addq	$2, %r14
	leaq	(%rbx,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r11,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rax), %r15
	addq	%rcx, %rax
	movq	(%r15), %r15
	movq	(%rax), %rax
	movq	%rdx, %rax
	jmp	.L1119
	.p2align 4,,10
	.p2align 3
.L1118:
	salq	$6, %rax
	addq	$2, %r14
	leaq	(%rbx,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r11,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rax), %r15
	addq	%rcx, %rax
	movq	(%r15), %r15
	movq	(%rax), %rax
	cmpq	%r14, %rbp
	je	.L1117
	movq	%rdx, %rax
	subq	%r14, %rax
	js	.L1150
.L1129:
	salq	$6, %rdx
	addq	$2, %r14
	leaq	(%rbx,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r11,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rdx), %r15
	addq	%rcx, %rdx
	movq	(%r15), %r15
	movq	(%rdx), %rdx
.L1119:
	movq	%rax, %rdx
	subq	%r14, %rdx
	jns	.L1118
	addq	%rsi, %rdx
	jns	.L1118
	addq	%rsi, %rdx
	jmp	.L1118
	.p2align 4,,10
	.p2align 3
.L1150:
	addq	%rsi, %rax
	jns	.L1129
	addq	%rsi, %rax
	jmp	.L1129
	.p2align 4,,10
	.p2align 3
.L1123:
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L1117:
#APP
# 249 "mem.cc" 1
	# random loop end (n_chains = $7, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, %r13
	cmpq	%r13, -8(%rsp)
	jne	.L1120
	salq	$6, %rdx
	popq	%rbx
	.cfi_remember_state
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
	leaq	(%rcx,%rdx), %rax
	ret
	.p2align 4,,10
	.p2align 3
.L1149:
	.cfi_restore_state
	addq	%rsi, %rdx
	jns	.L1126
	addq	%rsi, %rdx
	jmp	.L1126
	.p2align 4,,10
	.p2align 3
.L1121:
	movl	$1, %r15d
	xorl	%edx, %edx
	jmp	.L1114
.L1148:
	xorl	%edx, %edx
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
	leaq	(%rcx,%rdx), %rax
	ret
	.cfi_endproc
.LFE207:
	.size	_Z13access_randomILi7ELi0EEP6recordPS1_ll, .-_Z13access_randomILi7ELi0EEP6recordPS1_ll
	.section	.text.unlikely._Z13access_randomILi7ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi7ELi0EEP6recordPS1_ll,comdat
.LCOLDE63:
	.section	.text._Z13access_randomILi7ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi7ELi0EEP6recordPS1_ll,comdat
.LHOTE63:
	.section	.text.unlikely._Z13access_randomILi8ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi8ELi1EEP6recordPS1_ll,comdat
.LCOLDB64:
	.section	.text._Z13access_randomILi8ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi8ELi1EEP6recordPS1_ll,comdat
.LHOTB64:
	.p2align 4,,15
	.weak	_Z13access_randomILi8ELi1EEP6recordPS1_ll
	.type	_Z13access_randomILi8ELi1EEP6recordPS1_ll, @function
_Z13access_randomILi8ELi1EEP6recordPS1_ll:
.LFB210:
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
	movq	%rdx, -80(%rbp)
	movq	56(%rdi), %rcx
	testq	%rdx, %rdx
	jle	.L1188
	leaq	-1(%rsi), %rax
	movq	(%rdi), %r12
	movq	$0, -64(%rbp)
	movq	8(%rdi), %rbx
	leaq	1(%rsi,%rsi), %r14
	movq	%rax, %rdx
	movq	16(%rdi), %r11
	shrq	$63, %rdx
	movq	%r14, -56(%rbp)
	movq	24(%rdi), %r10
	addq	%rdx, %rax
	movq	32(%rdi), %r9
	sarq	%rax
	movq	40(%rdi), %r8
	movq	%rax, -72(%rbp)
	leaq	(%rax,%rax), %r13
	movq	48(%rdi), %rdi
	.p2align 4,,10
	.p2align 3
.L1160:
#APP
# 207 "mem.cc" 1
	# random loop begin (n_chains = $8, payload = $1)
# 0 "" 2
#NO_APP
	xorl	%r14d, %r14d
	cmpq	$0, -72(%rbp)
	jle	.L1161
	xorl	%eax, %eax
	testb	$2, %r13b
	jne	.L1156
	movl	$1, %eax
	movq	%rax, %r15
	subq	%rsi, %r15
	js	.L1171
	movq	%r15, %rax
	subq	%rsi, %rax
	cmovs	%r15, %rax
.L1171:
	vmovdqa	(%r12), %ymm0
	movl	$2, %r14d
	vmovdqa	32(%r12), %ymm0
	vmovdqa	(%rbx), %ymm0
	vmovdqa	32(%rbx), %ymm0
	vmovdqa	(%r11), %ymm0
	vmovdqa	32(%r11), %ymm0
	vmovdqa	(%r10), %ymm0
	vmovdqa	32(%r10), %ymm0
	vmovdqa	(%r9), %ymm0
	vmovdqa	32(%r9), %ymm0
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	vmovdqa	(%rdi), %ymm0
	vmovdqa	32(%rdi), %ymm0
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	jmp	.L1156
	.p2align 4,,10
	.p2align 3
.L1162:
	leaq	1(%rdx,%r14), %rax
	movq	%rax, %r15
	subq	%rsi, %r15
	js	.L1174
	movq	%r15, %rax
	subq	%rsi, %rax
	cmovs	%r15, %rax
.L1174:
	salq	$6, %rdx
	addq	$2, %r14
	leaq	(%r12,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rbx,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r11,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r10,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r9,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r8,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rdi,%rdx), %r15
	addq	%rcx, %rdx
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
.L1156:
	leaq	1(%r14,%rax), %rdx
	movq	%rdx, %r15
	subq	%rsi, %r15
	js	.L1155
	movq	%r15, %rdx
	subq	%rsi, %rdx
	cmovs	%r15, %rdx
.L1155:
	salq	$6, %rax
	addq	$2, %r14
	leaq	(%r12,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rbx,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r11,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r10,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r9,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r8,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rdi,%rax), %r15
	addq	%rcx, %rax
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	cmpq	%r13, %r14
	jne	.L1162
	movq	-72(%rbp), %r14
	leaq	1(%r14), %r15
	movq	%rdx, %r14
	salq	$6, %r14
.L1154:
	movq	%rsi, %rax
	subq	%rdx, %rax
	leaq	(%r12,%r14), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rbx,%r14), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r11,%r14), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r10,%r14), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r9,%r14), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r8,%r14), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rdi,%r14), %rdx
	addq	%rcx, %r14
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	cmpq	%r15, %rsi
	jle	.L1163
	leaq	1(%r15,%r15), %r14
	movq	-56(%rbp), %r15
	subq	%r14, %r15
	andl	$2, %r15d
	jne	.L1159
	movq	%rax, %rdx
	subq	%r14, %rdx
	js	.L1189
.L1166:
	salq	$6, %rax
	addq	$2, %r14
	leaq	(%r12,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rbx,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r11,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r10,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r9,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r8,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rdi,%rax), %r15
	addq	%rcx, %rax
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	movq	%rdx, %rax
	jmp	.L1159
	.p2align 4,,10
	.p2align 3
.L1158:
	salq	$6, %rax
	addq	$2, %r14
	leaq	(%r12,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rbx,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r11,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r10,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r9,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r8,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rdi,%rax), %r15
	addq	%rcx, %rax
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	cmpq	%r14, -56(%rbp)
	je	.L1157
	movq	%rdx, %rax
	subq	%r14, %rax
	js	.L1190
.L1169:
	salq	$6, %rdx
	addq	$2, %r14
	leaq	(%r12,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rbx,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r11,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r10,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r9,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r8,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rdi,%rdx), %r15
	addq	%rcx, %rdx
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
.L1159:
	movq	%rax, %rdx
	subq	%r14, %rdx
	jns	.L1158
	addq	%rsi, %rdx
	jns	.L1158
	addq	%rsi, %rdx
	jmp	.L1158
	.p2align 4,,10
	.p2align 3
.L1190:
	addq	%rsi, %rax
	jns	.L1169
	addq	%rsi, %rax
	jmp	.L1169
	.p2align 4,,10
	.p2align 3
.L1163:
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L1157:
#APP
# 249 "mem.cc" 1
	# random loop end (n_chains = $8, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, -64(%rbp)
	movq	-64(%rbp), %r14
	cmpq	%r14, -80(%rbp)
	jne	.L1160
	salq	$6, %rdx
	vzeroupper
.L1153:
	leaq	(%rcx,%rdx), %rax
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
.L1189:
	.cfi_restore_state
	addq	%rsi, %rdx
	jns	.L1166
	addq	%rsi, %rdx
	jmp	.L1166
	.p2align 4,,10
	.p2align 3
.L1161:
	movl	$1, %r15d
	xorl	%edx, %edx
	jmp	.L1154
.L1188:
	xorl	%edx, %edx
	jmp	.L1153
	.cfi_endproc
.LFE210:
	.size	_Z13access_randomILi8ELi1EEP6recordPS1_ll, .-_Z13access_randomILi8ELi1EEP6recordPS1_ll
	.section	.text.unlikely._Z13access_randomILi8ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi8ELi1EEP6recordPS1_ll,comdat
.LCOLDE64:
	.section	.text._Z13access_randomILi8ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi8ELi1EEP6recordPS1_ll,comdat
.LHOTE64:
	.section	.text.unlikely._Z13access_randomILi8ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi8ELi0EEP6recordPS1_ll,comdat
.LCOLDB65:
	.section	.text._Z13access_randomILi8ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi8ELi0EEP6recordPS1_ll,comdat
.LHOTB65:
	.p2align 4,,15
	.weak	_Z13access_randomILi8ELi0EEP6recordPS1_ll
	.type	_Z13access_randomILi8ELi0EEP6recordPS1_ll, @function
_Z13access_randomILi8ELi0EEP6recordPS1_ll:
.LFB213:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	xorl	%eax, %eax
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
	movq	56(%rdi), %rcx
	movq	%rdx, -8(%rsp)
	testq	%rdx, %rdx
	jle	.L1193
	leaq	-1(%rsi), %rax
	movq	(%rdi), %rbp
	movq	$0, -24(%rsp)
	movq	8(%rdi), %rbx
	leaq	1(%rsi,%rsi), %r12
	movq	%rax, %rdx
	movq	16(%rdi), %r11
	shrq	$63, %rdx
	movq	24(%rdi), %r10
	addq	%rdx, %rax
	movq	32(%rdi), %r9
	sarq	%rax
	movq	40(%rdi), %r8
	movq	%rax, -16(%rsp)
	leaq	(%rax,%rax), %r13
	movq	48(%rdi), %rdi
	.p2align 4,,10
	.p2align 3
.L1200:
#APP
# 207 "mem.cc" 1
	# random loop begin (n_chains = $8, payload = $0)
# 0 "" 2
#NO_APP
	cmpq	$0, -16(%rsp)
	jle	.L1201
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	testb	$2, %r13b
	jne	.L1196
	movl	$1, %eax
	movq	%rax, %r14
	subq	%rsi, %r14
	js	.L1211
	movq	%r14, %rax
	subq	%rsi, %rax
	cmovs	%r14, %rax
.L1211:
	movq	0(%rbp), %rdx
	movl	$2, %r14d
	movq	(%rbx), %rdx
	movq	(%r11), %rdx
	movq	(%r10), %rdx
	movq	(%r9), %rdx
	movq	(%r8), %rdx
	movq	(%rdi), %rdx
	movq	(%rcx), %rdx
	jmp	.L1196
	.p2align 4,,10
	.p2align 3
.L1202:
	leaq	1(%rdx,%r14), %rax
	movq	%rax, %r15
	subq	%rsi, %r15
	js	.L1214
	movq	%r15, %rax
	subq	%rsi, %rax
	cmovs	%r15, %rax
.L1214:
	salq	$6, %rdx
	addq	$2, %r14
	leaq	0(%rbp,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rbx,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r11,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rdx), %r15
	addq	%rcx, %rdx
	movq	(%r15), %r15
	movq	(%rdx), %rdx
.L1196:
	leaq	1(%r14,%rax), %rdx
	movq	%rdx, %r15
	subq	%rsi, %r15
	js	.L1195
	movq	%r15, %rdx
	subq	%rsi, %rdx
	cmovs	%r15, %rdx
.L1195:
	salq	$6, %rax
	addq	$2, %r14
	leaq	0(%rbp,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rbx,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r11,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rax), %r15
	addq	%rcx, %rax
	movq	(%r15), %r15
	movq	(%rax), %rax
	cmpq	%r13, %r14
	jne	.L1202
	movq	-16(%rsp), %r14
	movq	%rdx, %rax
	salq	$6, %rax
	leaq	1(%r14), %r14
.L1194:
	movq	%rsi, %r15
	subq	%rdx, %r15
	movq	%r15, %rdx
	leaq	0(%rbp,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rbx,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r11,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rax), %r15
	addq	%rcx, %rax
	movq	(%r15), %r15
	movq	(%rax), %rax
	cmpq	%r14, %rsi
	jle	.L1203
	leaq	1(%r14,%r14), %r14
	movq	%r12, %rax
	subq	%r14, %rax
	testb	$2, %al
	jne	.L1199
	movq	%rdx, %rax
	subq	%r14, %rax
	js	.L1228
.L1206:
	salq	$6, %rdx
	addq	$2, %r14
	leaq	0(%rbp,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rbx,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r11,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rdx), %r15
	addq	%rcx, %rdx
	movq	(%r15), %r15
	movq	(%rdx), %rdx
	movq	%rax, %rdx
	jmp	.L1199
	.p2align 4,,10
	.p2align 3
.L1198:
	salq	$6, %rdx
	addq	$2, %r14
	leaq	0(%rbp,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rbx,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r11,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rdx), %r15
	addq	%rcx, %rdx
	movq	(%r15), %r15
	movq	(%rdx), %rdx
	cmpq	%r14, %r12
	je	.L1197
	movq	%rax, %rdx
	subq	%r14, %rdx
	js	.L1229
.L1209:
	salq	$6, %rax
	addq	$2, %r14
	leaq	0(%rbp,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rbx,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r11,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rax), %r15
	addq	%rcx, %rax
	movq	(%r15), %r15
	movq	(%rax), %rax
.L1199:
	movq	%rdx, %rax
	subq	%r14, %rax
	jns	.L1198
	addq	%rsi, %rax
	jns	.L1198
	addq	%rsi, %rax
	jmp	.L1198
	.p2align 4,,10
	.p2align 3
.L1229:
	addq	%rsi, %rdx
	jns	.L1209
	addq	%rsi, %rdx
	jmp	.L1209
	.p2align 4,,10
	.p2align 3
.L1203:
	movq	%rdx, %rax
	.p2align 4,,10
	.p2align 3
.L1197:
#APP
# 249 "mem.cc" 1
	# random loop end (n_chains = $8, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, -24(%rsp)
	movq	-24(%rsp), %r14
	cmpq	%r14, -8(%rsp)
	jne	.L1200
	salq	$6, %rax
.L1193:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	addq	%rcx, %rax
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
	.p2align 4,,10
	.p2align 3
.L1228:
	.cfi_restore_state
	addq	%rsi, %rax
	jns	.L1206
	addq	%rsi, %rax
	jmp	.L1206
	.p2align 4,,10
	.p2align 3
.L1201:
	xorl	%eax, %eax
	movl	$1, %r14d
	xorl	%edx, %edx
	jmp	.L1194
	.cfi_endproc
.LFE213:
	.size	_Z13access_randomILi8ELi0EEP6recordPS1_ll, .-_Z13access_randomILi8ELi0EEP6recordPS1_ll
	.section	.text.unlikely._Z13access_randomILi8ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi8ELi0EEP6recordPS1_ll,comdat
.LCOLDE65:
	.section	.text._Z13access_randomILi8ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi8ELi0EEP6recordPS1_ll,comdat
.LHOTE65:
	.section	.text.unlikely._Z13access_randomILi9ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi9ELi1EEP6recordPS1_ll,comdat
.LCOLDB66:
	.section	.text._Z13access_randomILi9ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi9ELi1EEP6recordPS1_ll,comdat
.LHOTB66:
	.p2align 4,,15
	.weak	_Z13access_randomILi9ELi1EEP6recordPS1_ll
	.type	_Z13access_randomILi9ELi1EEP6recordPS1_ll, @function
_Z13access_randomILi9ELi1EEP6recordPS1_ll:
.LFB216:
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
	movq	%rdx, -88(%rbp)
	movq	64(%rdi), %rcx
	testq	%rdx, %rdx
	jle	.L1267
	leaq	-1(%rsi), %rax
	movq	(%rdi), %r13
	movq	$0, -72(%rbp)
	movq	8(%rdi), %r12
	leaq	1(%rsi,%rsi), %r14
	movq	%rax, %rdx
	shrq	$63, %rdx
	movq	16(%rdi), %rbx
	movq	%r14, -64(%rbp)
	movq	24(%rdi), %r11
	addq	%rdx, %rax
	movq	32(%rdi), %r10
	sarq	%rax
	movq	40(%rdi), %r9
	movq	%rax, -80(%rbp)
	addq	%rax, %rax
	movq	48(%rdi), %r8
	movq	%rax, -56(%rbp)
	movq	56(%rdi), %rdi
	.p2align 4,,10
	.p2align 3
.L1239:
#APP
# 207 "mem.cc" 1
	# random loop begin (n_chains = $9, payload = $1)
# 0 "" 2
#NO_APP
	xorl	%r14d, %r14d
	cmpq	$0, -80(%rbp)
	jle	.L1240
	xorl	%eax, %eax
	testb	$2, -56(%rbp)
	jne	.L1235
	movl	$1, %eax
	movq	%rax, %r15
	subq	%rsi, %r15
	js	.L1250
	movq	%r15, %rax
	subq	%rsi, %rax
	cmovs	%r15, %rax
.L1250:
	vmovdqa	0(%r13), %ymm0
	movl	$2, %r14d
	vmovdqa	32(%r13), %ymm0
	vmovdqa	(%r12), %ymm0
	vmovdqa	32(%r12), %ymm0
	vmovdqa	(%rbx), %ymm0
	vmovdqa	32(%rbx), %ymm0
	vmovdqa	(%r11), %ymm0
	vmovdqa	32(%r11), %ymm0
	vmovdqa	(%r10), %ymm0
	vmovdqa	32(%r10), %ymm0
	vmovdqa	(%r9), %ymm0
	vmovdqa	32(%r9), %ymm0
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	vmovdqa	(%rdi), %ymm0
	vmovdqa	32(%rdi), %ymm0
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	jmp	.L1235
	.p2align 4,,10
	.p2align 3
.L1241:
	leaq	1(%rdx,%r14), %rax
	movq	%rax, %r15
	subq	%rsi, %r15
	js	.L1253
	movq	%r15, %rax
	subq	%rsi, %rax
	cmovs	%r15, %rax
.L1253:
	salq	$6, %rdx
	addq	$2, %r14
	leaq	0(%r13,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r12,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rbx,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r11,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r10,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r9,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r8,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rdi,%rdx), %r15
	addq	%rcx, %rdx
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
.L1235:
	leaq	1(%r14,%rax), %rdx
	movq	%rdx, %r15
	subq	%rsi, %r15
	js	.L1234
	movq	%r15, %rdx
	subq	%rsi, %rdx
	cmovs	%r15, %rdx
.L1234:
	salq	$6, %rax
	addq	$2, %r14
	leaq	0(%r13,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r12,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rbx,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r11,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r10,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r9,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r8,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rdi,%rax), %r15
	addq	%rcx, %rax
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	cmpq	-56(%rbp), %r14
	jne	.L1241
	movq	-80(%rbp), %r14
	leaq	1(%r14), %r15
	movq	%rdx, %r14
	salq	$6, %r14
.L1233:
	movq	%rsi, %rax
	subq	%rdx, %rax
	leaq	0(%r13,%r14), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r12,%r14), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rbx,%r14), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r11,%r14), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r10,%r14), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r9,%r14), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r8,%r14), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rdi,%r14), %rdx
	addq	%rcx, %r14
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	cmpq	%r15, %rsi
	jle	.L1242
	leaq	1(%r15,%r15), %r14
	movq	-64(%rbp), %r15
	subq	%r14, %r15
	andl	$2, %r15d
	jne	.L1238
	movq	%rax, %rdx
	subq	%r14, %rdx
	js	.L1268
.L1245:
	salq	$6, %rax
	addq	$2, %r14
	leaq	0(%r13,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r12,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rbx,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r11,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r10,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r9,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r8,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rdi,%rax), %r15
	addq	%rcx, %rax
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	movq	%rdx, %rax
	jmp	.L1238
	.p2align 4,,10
	.p2align 3
.L1237:
	salq	$6, %rax
	addq	$2, %r14
	leaq	0(%r13,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r12,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rbx,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r11,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r10,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r9,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r8,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rdi,%rax), %r15
	addq	%rcx, %rax
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	cmpq	%r14, -64(%rbp)
	je	.L1236
	movq	%rdx, %rax
	subq	%r14, %rax
	js	.L1269
.L1248:
	salq	$6, %rdx
	addq	$2, %r14
	leaq	0(%r13,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r12,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rbx,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r11,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r10,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r9,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r8,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rdi,%rdx), %r15
	addq	%rcx, %rdx
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
.L1238:
	movq	%rax, %rdx
	subq	%r14, %rdx
	jns	.L1237
	addq	%rsi, %rdx
	jns	.L1237
	addq	%rsi, %rdx
	jmp	.L1237
	.p2align 4,,10
	.p2align 3
.L1269:
	addq	%rsi, %rax
	jns	.L1248
	addq	%rsi, %rax
	jmp	.L1248
	.p2align 4,,10
	.p2align 3
.L1242:
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L1236:
#APP
# 249 "mem.cc" 1
	# random loop end (n_chains = $9, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, -72(%rbp)
	movq	-72(%rbp), %r14
	cmpq	%r14, -88(%rbp)
	jne	.L1239
	salq	$6, %rdx
	vzeroupper
.L1232:
	leaq	(%rcx,%rdx), %rax
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
.L1268:
	.cfi_restore_state
	addq	%rsi, %rdx
	jns	.L1245
	addq	%rsi, %rdx
	jmp	.L1245
	.p2align 4,,10
	.p2align 3
.L1240:
	movl	$1, %r15d
	xorl	%edx, %edx
	jmp	.L1233
.L1267:
	xorl	%edx, %edx
	jmp	.L1232
	.cfi_endproc
.LFE216:
	.size	_Z13access_randomILi9ELi1EEP6recordPS1_ll, .-_Z13access_randomILi9ELi1EEP6recordPS1_ll
	.section	.text.unlikely._Z13access_randomILi9ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi9ELi1EEP6recordPS1_ll,comdat
.LCOLDE66:
	.section	.text._Z13access_randomILi9ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi9ELi1EEP6recordPS1_ll,comdat
.LHOTE66:
	.section	.text.unlikely._Z13access_randomILi9ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi9ELi0EEP6recordPS1_ll,comdat
.LCOLDB67:
	.section	.text._Z13access_randomILi9ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi9ELi0EEP6recordPS1_ll,comdat
.LHOTB67:
	.p2align 4,,15
	.weak	_Z13access_randomILi9ELi0EEP6recordPS1_ll
	.type	_Z13access_randomILi9ELi0EEP6recordPS1_ll, @function
_Z13access_randomILi9ELi0EEP6recordPS1_ll:
.LFB219:
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
	movq	64(%rdi), %rcx
	movq	%rdx, -8(%rsp)
	testq	%rdx, %rdx
	jle	.L1307
	leaq	-1(%rsi), %rax
	movq	(%rdi), %r12
	movq	$0, -24(%rsp)
	movq	8(%rdi), %rbp
	leaq	1(%rsi,%rsi), %r14
	movq	%rax, %rdx
	movq	16(%rdi), %rbx
	shrq	$63, %rdx
	movq	%r14, -32(%rsp)
	movq	24(%rdi), %r11
	addq	%rdx, %rax
	movq	32(%rdi), %r10
	sarq	%rax
	movq	40(%rdi), %r9
	movq	%rax, -16(%rsp)
	leaq	(%rax,%rax), %r13
	movq	48(%rdi), %r8
	movq	56(%rdi), %rdi
	.p2align 4,,10
	.p2align 3
.L1279:
#APP
# 207 "mem.cc" 1
	# random loop begin (n_chains = $9, payload = $0)
# 0 "" 2
#NO_APP
	xorl	%r14d, %r14d
	cmpq	$0, -16(%rsp)
	jle	.L1280
	xorl	%eax, %eax
	testb	$2, %r13b
	jne	.L1275
	movl	$1, %eax
	movq	%rax, %r15
	subq	%rsi, %r15
	js	.L1290
	movq	%r15, %rax
	subq	%rsi, %rax
	cmovs	%r15, %rax
.L1290:
	movq	(%r12), %rdx
	movl	$2, %r14d
	movq	0(%rbp), %rdx
	movq	(%rbx), %rdx
	movq	(%r11), %rdx
	movq	(%r10), %rdx
	movq	(%r9), %rdx
	movq	(%r8), %rdx
	movq	(%rdi), %rdx
	movq	(%rcx), %rdx
	jmp	.L1275
	.p2align 4,,10
	.p2align 3
.L1281:
	leaq	1(%rdx,%r14), %rax
	movq	%rax, %r15
	subq	%rsi, %r15
	js	.L1293
	movq	%r15, %rax
	subq	%rsi, %rax
	cmovs	%r15, %rax
.L1293:
	salq	$6, %rdx
	addq	$2, %r14
	leaq	(%r12,%rdx), %r15
	movq	(%r15), %r15
	leaq	0(%rbp,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rbx,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r11,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rdx), %r15
	addq	%rcx, %rdx
	movq	(%r15), %r15
	movq	(%rdx), %rdx
.L1275:
	leaq	1(%r14,%rax), %rdx
	movq	%rdx, %r15
	subq	%rsi, %r15
	js	.L1274
	movq	%r15, %rdx
	subq	%rsi, %rdx
	cmovs	%r15, %rdx
.L1274:
	salq	$6, %rax
	addq	$2, %r14
	leaq	(%r12,%rax), %r15
	movq	(%r15), %r15
	leaq	0(%rbp,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rbx,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r11,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rax), %r15
	addq	%rcx, %rax
	movq	(%r15), %r15
	movq	(%rax), %rax
	cmpq	%r13, %r14
	jne	.L1281
	movq	-16(%rsp), %r14
	leaq	1(%r14), %r15
	movq	%rdx, %r14
	salq	$6, %r14
.L1273:
	movq	%rsi, %rax
	subq	%rdx, %rax
	leaq	(%r12,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	0(%rbp,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%rbx,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%r11,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%r10,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%r9,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%r8,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%rdi,%r14), %rdx
	addq	%rcx, %r14
	movq	(%rdx), %rdx
	movq	(%r14), %rdx
	cmpq	%r15, %rsi
	jle	.L1282
	leaq	1(%r15,%r15), %r14
	movq	-32(%rsp), %r15
	subq	%r14, %r15
	andl	$2, %r15d
	jne	.L1278
	movq	%rax, %rdx
	subq	%r14, %rdx
	js	.L1308
.L1285:
	salq	$6, %rax
	addq	$2, %r14
	leaq	(%r12,%rax), %r15
	movq	(%r15), %r15
	leaq	0(%rbp,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rbx,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r11,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rax), %r15
	addq	%rcx, %rax
	movq	(%r15), %r15
	movq	(%rax), %rax
	movq	%rdx, %rax
	jmp	.L1278
	.p2align 4,,10
	.p2align 3
.L1277:
	salq	$6, %rax
	addq	$2, %r14
	leaq	(%r12,%rax), %r15
	movq	(%r15), %r15
	leaq	0(%rbp,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rbx,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r11,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rax), %r15
	addq	%rcx, %rax
	movq	(%r15), %r15
	movq	(%rax), %rax
	cmpq	%r14, -32(%rsp)
	je	.L1276
	movq	%rdx, %rax
	subq	%r14, %rax
	js	.L1309
.L1288:
	salq	$6, %rdx
	addq	$2, %r14
	leaq	(%r12,%rdx), %r15
	movq	(%r15), %r15
	leaq	0(%rbp,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rbx,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r11,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rdx), %r15
	addq	%rcx, %rdx
	movq	(%r15), %r15
	movq	(%rdx), %rdx
.L1278:
	movq	%rax, %rdx
	subq	%r14, %rdx
	jns	.L1277
	addq	%rsi, %rdx
	jns	.L1277
	addq	%rsi, %rdx
	jmp	.L1277
	.p2align 4,,10
	.p2align 3
.L1309:
	addq	%rsi, %rax
	jns	.L1288
	addq	%rsi, %rax
	jmp	.L1288
	.p2align 4,,10
	.p2align 3
.L1282:
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L1276:
#APP
# 249 "mem.cc" 1
	# random loop end (n_chains = $9, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, -24(%rsp)
	movq	-24(%rsp), %r14
	cmpq	%r14, -8(%rsp)
	jne	.L1279
	salq	$6, %rdx
	popq	%rbx
	.cfi_remember_state
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
	leaq	(%rcx,%rdx), %rax
	ret
	.p2align 4,,10
	.p2align 3
.L1308:
	.cfi_restore_state
	addq	%rsi, %rdx
	jns	.L1285
	addq	%rsi, %rdx
	jmp	.L1285
	.p2align 4,,10
	.p2align 3
.L1280:
	movl	$1, %r15d
	xorl	%edx, %edx
	jmp	.L1273
.L1307:
	xorl	%edx, %edx
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
	leaq	(%rcx,%rdx), %rax
	ret
	.cfi_endproc
.LFE219:
	.size	_Z13access_randomILi9ELi0EEP6recordPS1_ll, .-_Z13access_randomILi9ELi0EEP6recordPS1_ll
	.section	.text.unlikely._Z13access_randomILi9ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi9ELi0EEP6recordPS1_ll,comdat
.LCOLDE67:
	.section	.text._Z13access_randomILi9ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi9ELi0EEP6recordPS1_ll,comdat
.LHOTE67:
	.section	.text.unlikely._Z13access_randomILi10ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi10ELi1EEP6recordPS1_ll,comdat
.LCOLDB68:
	.section	.text._Z13access_randomILi10ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi10ELi1EEP6recordPS1_ll,comdat
.LHOTB68:
	.p2align 4,,15
	.weak	_Z13access_randomILi10ELi1EEP6recordPS1_ll
	.type	_Z13access_randomILi10ELi1EEP6recordPS1_ll, @function
_Z13access_randomILi10ELi1EEP6recordPS1_ll:
.LFB222:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	movq	%rdi, %rax
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
	movq	%rdx, -96(%rbp)
	testq	%rdx, %rdx
	jle	.L1337
	movq	72(%rdi), %rdi
	leaq	-1(%rsi), %rdx
	movq	$0, -80(%rbp)
	movq	(%rax), %r13
	leaq	1(%rsi,%rsi), %r15
	movq	%rdx, %rcx
	shrq	$63, %rcx
	movq	8(%rax), %r12
	movq	%r15, -72(%rbp)
	addq	%rcx, %rdx
	movq	16(%rax), %rbx
	movq	%rdi, -56(%rbp)
	movq	32(%rax), %r11
	sarq	%rdx
	movq	24(%rax), %rdi
	leaq	(%rdx,%rdx), %r14
	movq	%rdx, -88(%rbp)
	movq	40(%rax), %r10
	movq	%r14, -64(%rbp)
	movq	48(%rax), %r9
	movq	56(%rax), %r8
	movq	64(%rax), %rcx
	.p2align 4,,10
	.p2align 3
.L1319:
#APP
# 207 "mem.cc" 1
	# random loop begin (n_chains = $10, payload = $1)
# 0 "" 2
#NO_APP
	xorl	%r14d, %r14d
	cmpq	$0, -88(%rbp)
	jle	.L1320
	xorl	%eax, %eax
	jmp	.L1315
	.p2align 4,,10
	.p2align 3
.L1321:
	movq	%rdx, %rax
.L1315:
	leaq	1(%r14,%rax), %rdx
	movq	%rdx, %r15
	subq	%rsi, %r15
	js	.L1314
	movq	%r15, %rdx
	subq	%rsi, %rdx
	cmovs	%r15, %rdx
.L1314:
	salq	$6, %rax
	addq	$2, %r14
	leaq	0(%r13,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r12,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rbx,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rdi,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r11,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r10,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r9,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r8,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rcx,%rax), %r15
	addq	-56(%rbp), %rax
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	cmpq	-64(%rbp), %r14
	jne	.L1321
	movq	-88(%rbp), %r15
	movq	%rdx, %r14
	salq	$6, %r14
	leaq	1(%r15), %r15
.L1313:
	movq	%rsi, %rax
	subq	%rdx, %rax
	leaq	0(%r13,%r14), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r12,%r14), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rbx,%r14), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rdi,%r14), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r11,%r14), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r10,%r14), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r9,%r14), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r8,%r14), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rcx,%r14), %rdx
	addq	-56(%rbp), %r14
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	cmpq	%r15, %rsi
	jle	.L1322
	leaq	1(%r15,%r15), %r14
	movq	-72(%rbp), %r15
	subq	%r14, %r15
	andl	$2, %r15d
	jne	.L1318
	movq	%rax, %r15
	subq	%r14, %r15
	js	.L1338
.L1325:
	salq	$6, %rax
	addq	$2, %r14
	leaq	0(%r13,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r12,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rbx,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rdi,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r11,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r10,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r9,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r8,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rcx,%rax), %rdx
	addq	-56(%rbp), %rax
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	movq	%r15, %rax
	jmp	.L1318
	.p2align 4,,10
	.p2align 3
.L1317:
	salq	$6, %rax
	addq	$2, %r14
	leaq	0(%r13,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r12,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rbx,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rdi,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r11,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r10,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r9,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r8,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rcx,%rax), %r15
	addq	-56(%rbp), %rax
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	cmpq	%r14, -72(%rbp)
	je	.L1316
	movq	%rdx, %rax
	subq	%r14, %rax
	js	.L1339
.L1328:
	salq	$6, %rdx
	addq	$2, %r14
	leaq	0(%r13,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r12,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rbx,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rdi,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r11,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r10,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r9,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r8,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rcx,%rdx), %r15
	addq	-56(%rbp), %rdx
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
.L1318:
	movq	%rax, %rdx
	subq	%r14, %rdx
	jns	.L1317
	addq	%rsi, %rdx
	jns	.L1317
	addq	%rsi, %rdx
	jmp	.L1317
	.p2align 4,,10
	.p2align 3
.L1339:
	addq	%rsi, %rax
	jns	.L1328
	addq	%rsi, %rax
	jmp	.L1328
.L1322:
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L1316:
#APP
# 249 "mem.cc" 1
	# random loop end (n_chains = $10, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, -80(%rbp)
	movq	-80(%rbp), %r14
	cmpq	%r14, -96(%rbp)
	jne	.L1319
	salq	$6, %rdx
	vzeroupper
	movq	-56(%rbp), %rax
.L1312:
	addq	%rdx, %rax
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
.L1338:
	.cfi_restore_state
	addq	%rsi, %r15
	jns	.L1325
	addq	%rsi, %r15
	jmp	.L1325
.L1320:
	movl	$1, %r15d
	xorl	%edx, %edx
	jmp	.L1313
.L1337:
	movq	72(%rdi), %rax
	xorl	%edx, %edx
	movq	%rax, -56(%rbp)
	jmp	.L1312
	.cfi_endproc
.LFE222:
	.size	_Z13access_randomILi10ELi1EEP6recordPS1_ll, .-_Z13access_randomILi10ELi1EEP6recordPS1_ll
	.section	.text.unlikely._Z13access_randomILi10ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi10ELi1EEP6recordPS1_ll,comdat
.LCOLDE68:
	.section	.text._Z13access_randomILi10ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi10ELi1EEP6recordPS1_ll,comdat
.LHOTE68:
	.section	.text.unlikely._Z13access_randomILi10ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi10ELi0EEP6recordPS1_ll,comdat
.LCOLDB69:
	.section	.text._Z13access_randomILi10ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi10ELi0EEP6recordPS1_ll,comdat
.LHOTB69:
	.p2align 4,,15
	.weak	_Z13access_randomILi10ELi0EEP6recordPS1_ll
	.type	_Z13access_randomILi10ELi0EEP6recordPS1_ll, @function
_Z13access_randomILi10ELi0EEP6recordPS1_ll:
.LFB225:
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
	movq	72(%rdi), %rcx
	movq	%rdx, -8(%rsp)
	testq	%rdx, %rdx
	jle	.L1377
	leaq	-1(%rsi), %rax
	movq	(%rdi), %r13
	movq	$0, -24(%rsp)
	movq	8(%rdi), %r12
	leaq	1(%rsi,%rsi), %r14
	movq	%rax, %rdx
	shrq	$63, %rdx
	movq	16(%rdi), %rbp
	movq	%r14, -32(%rsp)
	movq	24(%rdi), %rbx
	addq	%rdx, %rax
	movq	32(%rdi), %r11
	sarq	%rax
	movq	40(%rdi), %r10
	movq	%rax, -16(%rsp)
	addq	%rax, %rax
	movq	48(%rdi), %r9
	movq	%rax, -40(%rsp)
	movq	56(%rdi), %r8
	movq	64(%rdi), %rdi
	.p2align 4,,10
	.p2align 3
.L1349:
#APP
# 207 "mem.cc" 1
	# random loop begin (n_chains = $10, payload = $0)
# 0 "" 2
#NO_APP
	xorl	%r14d, %r14d
	cmpq	$0, -16(%rsp)
	jle	.L1350
	xorl	%eax, %eax
	testb	$2, -40(%rsp)
	jne	.L1345
	movl	$1, %eax
	movq	%rax, %r15
	subq	%rsi, %r15
	js	.L1360
	movq	%r15, %rax
	subq	%rsi, %rax
	cmovs	%r15, %rax
.L1360:
	movq	0(%r13), %rdx
	movl	$2, %r14d
	movq	(%r12), %rdx
	movq	0(%rbp), %rdx
	movq	(%rbx), %rdx
	movq	(%r11), %rdx
	movq	(%r10), %rdx
	movq	(%r9), %rdx
	movq	(%r8), %rdx
	movq	(%rdi), %rdx
	movq	(%rcx), %rdx
	jmp	.L1345
	.p2align 4,,10
	.p2align 3
.L1351:
	leaq	1(%rdx,%r14), %rax
	movq	%rax, %r15
	subq	%rsi, %r15
	js	.L1363
	movq	%r15, %rax
	subq	%rsi, %rax
	cmovs	%r15, %rax
.L1363:
	salq	$6, %rdx
	addq	$2, %r14
	leaq	0(%r13,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r12,%rdx), %r15
	movq	(%r15), %r15
	leaq	0(%rbp,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rbx,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r11,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rdx), %r15
	addq	%rcx, %rdx
	movq	(%r15), %r15
	movq	(%rdx), %rdx
.L1345:
	leaq	1(%r14,%rax), %rdx
	movq	%rdx, %r15
	subq	%rsi, %r15
	js	.L1344
	movq	%r15, %rdx
	subq	%rsi, %rdx
	cmovs	%r15, %rdx
.L1344:
	salq	$6, %rax
	addq	$2, %r14
	leaq	0(%r13,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r12,%rax), %r15
	movq	(%r15), %r15
	leaq	0(%rbp,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rbx,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r11,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rax), %r15
	addq	%rcx, %rax
	movq	(%r15), %r15
	movq	(%rax), %rax
	cmpq	-40(%rsp), %r14
	jne	.L1351
	movq	-16(%rsp), %r14
	leaq	1(%r14), %r15
	movq	%rdx, %r14
	salq	$6, %r14
.L1343:
	movq	%rsi, %rax
	subq	%rdx, %rax
	leaq	0(%r13,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%r12,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	0(%rbp,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%rbx,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%r11,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%r10,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%r9,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%r8,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%rdi,%r14), %rdx
	addq	%rcx, %r14
	movq	(%rdx), %rdx
	movq	(%r14), %rdx
	cmpq	%r15, %rsi
	jle	.L1352
	leaq	1(%r15,%r15), %r14
	movq	-32(%rsp), %r15
	subq	%r14, %r15
	andl	$2, %r15d
	jne	.L1348
	movq	%rax, %rdx
	subq	%r14, %rdx
	js	.L1378
.L1355:
	salq	$6, %rax
	addq	$2, %r14
	leaq	0(%r13,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r12,%rax), %r15
	movq	(%r15), %r15
	leaq	0(%rbp,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rbx,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r11,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rax), %r15
	addq	%rcx, %rax
	movq	(%r15), %r15
	movq	(%rax), %rax
	movq	%rdx, %rax
	jmp	.L1348
	.p2align 4,,10
	.p2align 3
.L1347:
	salq	$6, %rax
	addq	$2, %r14
	leaq	0(%r13,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r12,%rax), %r15
	movq	(%r15), %r15
	leaq	0(%rbp,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rbx,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r11,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rax), %r15
	addq	%rcx, %rax
	movq	(%r15), %r15
	movq	(%rax), %rax
	cmpq	%r14, -32(%rsp)
	je	.L1346
	movq	%rdx, %rax
	subq	%r14, %rax
	js	.L1379
.L1358:
	salq	$6, %rdx
	addq	$2, %r14
	leaq	0(%r13,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r12,%rdx), %r15
	movq	(%r15), %r15
	leaq	0(%rbp,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rbx,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r11,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rdx), %r15
	addq	%rcx, %rdx
	movq	(%r15), %r15
	movq	(%rdx), %rdx
.L1348:
	movq	%rax, %rdx
	subq	%r14, %rdx
	jns	.L1347
	addq	%rsi, %rdx
	jns	.L1347
	addq	%rsi, %rdx
	jmp	.L1347
	.p2align 4,,10
	.p2align 3
.L1379:
	addq	%rsi, %rax
	jns	.L1358
	addq	%rsi, %rax
	jmp	.L1358
	.p2align 4,,10
	.p2align 3
.L1352:
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L1346:
#APP
# 249 "mem.cc" 1
	# random loop end (n_chains = $10, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, -24(%rsp)
	movq	-24(%rsp), %r14
	cmpq	%r14, -8(%rsp)
	jne	.L1349
	salq	$6, %rdx
	popq	%rbx
	.cfi_remember_state
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
	leaq	(%rcx,%rdx), %rax
	ret
	.p2align 4,,10
	.p2align 3
.L1378:
	.cfi_restore_state
	addq	%rsi, %rdx
	jns	.L1355
	addq	%rsi, %rdx
	jmp	.L1355
	.p2align 4,,10
	.p2align 3
.L1350:
	movl	$1, %r15d
	xorl	%edx, %edx
	jmp	.L1343
.L1377:
	xorl	%edx, %edx
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
	leaq	(%rcx,%rdx), %rax
	ret
	.cfi_endproc
.LFE225:
	.size	_Z13access_randomILi10ELi0EEP6recordPS1_ll, .-_Z13access_randomILi10ELi0EEP6recordPS1_ll
	.section	.text.unlikely._Z13access_randomILi10ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi10ELi0EEP6recordPS1_ll,comdat
.LCOLDE69:
	.section	.text._Z13access_randomILi10ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi10ELi0EEP6recordPS1_ll,comdat
.LHOTE69:
	.section	.text.unlikely._Z13access_randomILi11ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi11ELi1EEP6recordPS1_ll,comdat
.LCOLDB70:
	.section	.text._Z13access_randomILi11ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi11ELi1EEP6recordPS1_ll,comdat
.LHOTB70:
	.p2align 4,,15
	.weak	_Z13access_randomILi11ELi1EEP6recordPS1_ll
	.type	_Z13access_randomILi11ELi1EEP6recordPS1_ll, @function
_Z13access_randomILi11ELi1EEP6recordPS1_ll:
.LFB228:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	movq	%rdi, %rax
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
	movq	%rdx, -112(%rbp)
	testq	%rdx, %rdx
	jle	.L1396
	leaq	-1(%rsi), %rdx
	movq	80(%rdi), %rdi
	movq	%rsi, -56(%rbp)
	movq	%rdx, %rcx
	movq	72(%rax), %r15
	movq	$0, -96(%rbp)
	shrq	$63, %rcx
	movq	(%rax), %r14
	addq	%rcx, %rdx
	movq	8(%rax), %r13
	sarq	%rdx
	movq	%rdi, -64(%rbp)
	movq	16(%rax), %r12
	movq	%rdx, -104(%rbp)
	movq	24(%rax), %rbx
	movq	32(%rax), %rdi
	movq	40(%rax), %r11
	movq	48(%rax), %r10
	movq	56(%rax), %r9
	movq	64(%rax), %r8
	leaq	(%rdx,%rdx), %rax
	leaq	1(%rsi,%rsi), %rdx
	movq	%rax, -80(%rbp)
	movq	%r15, %rsi
	movq	%rdx, -88(%rbp)
	.p2align 4,,10
	.p2align 3
.L1389:
#APP
# 207 "mem.cc" 1
	# random loop begin (n_chains = $11, payload = $1)
# 0 "" 2
#NO_APP
	xorl	%ecx, %ecx
	cmpq	$0, -104(%rbp)
	jle	.L1390
	xorl	%eax, %eax
	movq	%rsi, -72(%rbp)
	jmp	.L1385
	.p2align 4,,10
	.p2align 3
.L1391:
	movq	%rdx, %rax
.L1385:
	leaq	1(%rcx,%rax), %rdx
	movq	%rdx, %r15
	subq	-56(%rbp), %r15
	js	.L1384
	movq	%r15, %rsi
	subq	-56(%rbp), %rsi
	movq	%rsi, %rdx
	cmovs	%r15, %rdx
.L1384:
	salq	$6, %rax
	addq	$2, %rcx
	leaq	(%r14,%rax), %r15
	leaq	0(%r13,%rax), %rsi
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r12,%rax), %r15
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	leaq	(%rbx,%rax), %rsi
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rdi,%rax), %r15
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	leaq	(%r11,%rax), %rsi
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r10,%rax), %r15
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	leaq	(%r9,%rax), %rsi
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r8,%rax), %r15
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	movq	-72(%rbp), %rsi
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rsi,%rax), %r15
	addq	-64(%rbp), %rax
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	cmpq	-80(%rbp), %rcx
	jne	.L1391
	movq	-104(%rbp), %r15
	movq	%rdx, %rcx
	salq	$6, %rcx
	leaq	1(%r15), %r15
.L1383:
	movq	-56(%rbp), %rax
	subq	%rdx, %rax
	leaq	(%r14,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	0(%r13,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r12,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rbx,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rdi,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r11,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r10,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r9,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r8,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rsi,%rcx), %rdx
	addq	-64(%rbp), %rcx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	cmpq	%r15, -56(%rbp)
	jle	.L1392
	leaq	1(%r15,%r15), %rdx
	jmp	.L1388
	.p2align 4,,10
	.p2align 3
.L1387:
	salq	$6, %rax
	addq	$2, %rdx
	leaq	(%r14,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	0(%r13,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r12,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rbx,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rdi,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r11,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r10,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r9,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r8,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rsi,%rax), %r15
	addq	-64(%rbp), %rax
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	cmpq	%rdx, -88(%rbp)
	je	.L1386
	movq	%rcx, %rax
.L1388:
	movq	%rax, %rcx
	subq	%rdx, %rcx
	jns	.L1387
	movq	-56(%rbp), %r15
	addq	%r15, %rcx
	jns	.L1387
	addq	%r15, %rcx
	jmp	.L1387
.L1392:
	movq	%rax, %rcx
	.p2align 4,,10
	.p2align 3
.L1386:
#APP
# 249 "mem.cc" 1
	# random loop end (n_chains = $11, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, -96(%rbp)
	movq	-96(%rbp), %r15
	cmpq	%r15, -112(%rbp)
	jne	.L1389
	salq	$6, %rcx
	vzeroupper
	movq	-64(%rbp), %rax
.L1382:
	addq	%rcx, %rax
	popq	%rbx
	popq	%rdx
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%rdx), %rsp
	.cfi_def_cfa 7, 8
	ret
.L1390:
	.cfi_restore_state
	movl	$1, %r15d
	xorl	%edx, %edx
	jmp	.L1383
.L1396:
	movq	80(%rdi), %rax
	xorl	%ecx, %ecx
	movq	%rax, -64(%rbp)
	jmp	.L1382
	.cfi_endproc
.LFE228:
	.size	_Z13access_randomILi11ELi1EEP6recordPS1_ll, .-_Z13access_randomILi11ELi1EEP6recordPS1_ll
	.section	.text.unlikely._Z13access_randomILi11ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi11ELi1EEP6recordPS1_ll,comdat
.LCOLDE70:
	.section	.text._Z13access_randomILi11ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi11ELi1EEP6recordPS1_ll,comdat
.LHOTE70:
	.section	.text.unlikely._Z13access_randomILi11ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi11ELi0EEP6recordPS1_ll,comdat
.LCOLDB71:
	.section	.text._Z13access_randomILi11ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi11ELi0EEP6recordPS1_ll,comdat
.LHOTB71:
	.p2align 4,,15
	.weak	_Z13access_randomILi11ELi0EEP6recordPS1_ll
	.type	_Z13access_randomILi11ELi0EEP6recordPS1_ll, @function
_Z13access_randomILi11ELi0EEP6recordPS1_ll:
.LFB231:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %rax
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
	movq	%rdx, -8(%rsp)
	testq	%rdx, %rdx
	jle	.L1434
	movq	80(%rdi), %rbx
	leaq	-1(%rsi), %r14
	movq	$0, -24(%rsp)
	movq	(%rdi), %r13
	leaq	1(%rsi,%rsi), %r15
	movq	%r14, %rdx
	shrq	$63, %rdx
	movq	8(%rdi), %r12
	movq	%r15, -32(%rsp)
	movq	16(%rdi), %rbp
	addq	%rdx, %r14
	movq	%rbx, -48(%rsp)
	movq	40(%rax), %r11
	sarq	%r14
	movq	24(%rdi), %rbx
	movq	%r14, -16(%rsp)
	addq	%r14, %r14
	movq	32(%rdi), %rdi
	movq	%r14, -40(%rsp)
	movq	48(%rax), %r10
	movq	56(%rax), %r9
	movq	64(%rax), %r8
	movq	72(%rax), %rcx
	.p2align 4,,10
	.p2align 3
.L1406:
#APP
# 207 "mem.cc" 1
	# random loop begin (n_chains = $11, payload = $0)
# 0 "" 2
#NO_APP
	xorl	%r14d, %r14d
	cmpq	$0, -16(%rsp)
	jle	.L1407
	xorl	%eax, %eax
	testb	$2, -40(%rsp)
	jne	.L1402
	movl	$1, %eax
	movq	%rax, %r14
	subq	%rsi, %r14
	js	.L1417
	movq	%r14, %rax
	subq	%rsi, %rax
	cmovs	%r14, %rax
.L1417:
	movq	0(%r13), %rdx
	movl	$2, %r14d
	movq	(%r12), %rdx
	movq	0(%rbp), %rdx
	movq	(%rbx), %rdx
	movq	(%rdi), %rdx
	movq	(%r11), %rdx
	movq	(%r10), %rdx
	movq	(%r9), %rdx
	movq	(%r8), %rdx
	movq	(%rcx), %rdx
	movq	-48(%rsp), %rdx
	movq	(%rdx), %rdx
	jmp	.L1402
	.p2align 4,,10
	.p2align 3
.L1408:
	leaq	1(%rdx,%r14), %rax
	movq	%rax, %r15
	subq	%rsi, %r15
	js	.L1420
	movq	%r15, %rax
	subq	%rsi, %rax
	cmovs	%r15, %rax
.L1420:
	salq	$6, %rdx
	addq	$2, %r14
	leaq	0(%r13,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r12,%rdx), %r15
	movq	(%r15), %r15
	leaq	0(%rbp,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rbx,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r11,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rcx,%rdx), %r15
	addq	-48(%rsp), %rdx
	movq	(%r15), %r15
	movq	(%rdx), %rdx
.L1402:
	leaq	1(%r14,%rax), %rdx
	movq	%rdx, %r15
	subq	%rsi, %r15
	js	.L1401
	movq	%r15, %rdx
	subq	%rsi, %rdx
	cmovs	%r15, %rdx
.L1401:
	salq	$6, %rax
	addq	$2, %r14
	leaq	0(%r13,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r12,%rax), %r15
	movq	(%r15), %r15
	leaq	0(%rbp,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rbx,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r11,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rcx,%rax), %r15
	addq	-48(%rsp), %rax
	movq	(%r15), %r15
	movq	(%rax), %rax
	cmpq	-40(%rsp), %r14
	jne	.L1408
	movq	-16(%rsp), %r14
	leaq	1(%r14), %r15
	movq	%rdx, %r14
	salq	$6, %r14
.L1400:
	movq	%rsi, %rax
	subq	%rdx, %rax
	leaq	0(%r13,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%r12,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	0(%rbp,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%rbx,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%rdi,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%r11,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%r10,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%r9,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%r8,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%rcx,%r14), %rdx
	addq	-48(%rsp), %r14
	movq	(%rdx), %rdx
	movq	(%r14), %rdx
	cmpq	%r15, %rsi
	jle	.L1409
	leaq	1(%r15,%r15), %r14
	movq	-32(%rsp), %r15
	subq	%r14, %r15
	andl	$2, %r15d
	jne	.L1405
	movq	%rax, %r15
	subq	%r14, %r15
	js	.L1435
.L1412:
	salq	$6, %rax
	addq	$2, %r14
	leaq	0(%r13,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	(%r12,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	0(%rbp,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	(%rbx,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	(%rdi,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	(%r11,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	(%r10,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	(%r9,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	(%r8,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	(%rcx,%rax), %rdx
	addq	-48(%rsp), %rax
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	%r15, %rax
	jmp	.L1405
	.p2align 4,,10
	.p2align 3
.L1404:
	salq	$6, %rax
	addq	$2, %r14
	leaq	0(%r13,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r12,%rax), %r15
	movq	(%r15), %r15
	leaq	0(%rbp,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rbx,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r11,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rcx,%rax), %r15
	addq	-48(%rsp), %rax
	movq	(%r15), %r15
	movq	(%rax), %rax
	cmpq	%r14, -32(%rsp)
	je	.L1403
	movq	%rdx, %rax
	subq	%r14, %rax
	js	.L1436
.L1415:
	salq	$6, %rdx
	addq	$2, %r14
	leaq	0(%r13,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r12,%rdx), %r15
	movq	(%r15), %r15
	leaq	0(%rbp,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rbx,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r11,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rcx,%rdx), %r15
	addq	-48(%rsp), %rdx
	movq	(%r15), %r15
	movq	(%rdx), %rdx
.L1405:
	movq	%rax, %rdx
	subq	%r14, %rdx
	jns	.L1404
	addq	%rsi, %rdx
	jns	.L1404
	addq	%rsi, %rdx
	jmp	.L1404
	.p2align 4,,10
	.p2align 3
.L1436:
	addq	%rsi, %rax
	jns	.L1415
	addq	%rsi, %rax
	jmp	.L1415
	.p2align 4,,10
	.p2align 3
.L1409:
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L1403:
#APP
# 249 "mem.cc" 1
	# random loop end (n_chains = $11, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, -24(%rsp)
	movq	-24(%rsp), %r14
	cmpq	%r14, -8(%rsp)
	jne	.L1406
	movq	-48(%rsp), %rax
	salq	$6, %rdx
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	addq	%rdx, %rax
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1435:
	.cfi_restore_state
	addq	%rsi, %r15
	jns	.L1412
	addq	%rsi, %r15
	jmp	.L1412
	.p2align 4,,10
	.p2align 3
.L1407:
	movl	$1, %r15d
	xorl	%edx, %edx
	jmp	.L1400
.L1434:
	movq	80(%rdi), %rax
	xorl	%edx, %edx
	movq	%rax, -48(%rsp)
	popq	%rbx
	.cfi_def_cfa_offset 48
	addq	%rdx, %rax
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
.LFE231:
	.size	_Z13access_randomILi11ELi0EEP6recordPS1_ll, .-_Z13access_randomILi11ELi0EEP6recordPS1_ll
	.section	.text.unlikely._Z13access_randomILi11ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi11ELi0EEP6recordPS1_ll,comdat
.LCOLDE71:
	.section	.text._Z13access_randomILi11ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi11ELi0EEP6recordPS1_ll,comdat
.LHOTE71:
	.section	.text.unlikely._Z13access_randomILi12ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi12ELi1EEP6recordPS1_ll,comdat
.LCOLDB72:
	.section	.text._Z13access_randomILi12ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi12ELi1EEP6recordPS1_ll,comdat
.LHOTB72:
	.p2align 4,,15
	.weak	_Z13access_randomILi12ELi1EEP6recordPS1_ll
	.type	_Z13access_randomILi12ELi1EEP6recordPS1_ll, @function
_Z13access_randomILi12ELi1EEP6recordPS1_ll:
.LFB234:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	movq	%rdi, %rax
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
	movq	%rdx, -120(%rbp)
	testq	%rdx, %rdx
	jle	.L1453
	movq	88(%rdi), %rdi
	leaq	-1(%rsi), %rdx
	movq	%rsi, -56(%rbp)
	movq	%rdx, %rcx
	movq	72(%rax), %r15
	movq	$0, -104(%rbp)
	shrq	$63, %rcx
	movq	(%rax), %r14
	movq	8(%rax), %r13
	addq	%rcx, %rdx
	movq	%rdi, -64(%rbp)
	movq	16(%rax), %r12
	leaq	1(%rsi,%rsi), %rcx
	sarq	%rdx
	movq	24(%rax), %rbx
	movq	%rdx, -112(%rbp)
	leaq	(%rdx,%rdx), %rdx
	movq	32(%rax), %rdi
	movq	%r15, -72(%rbp)
	movq	40(%rax), %r11
	movq	%rdx, -88(%rbp)
	movq	48(%rax), %r10
	movq	%rcx, -96(%rbp)
	movq	56(%rax), %r9
	movq	64(%rax), %r8
	movq	80(%rax), %rax
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L1446:
#APP
# 207 "mem.cc" 1
	# random loop begin (n_chains = $12, payload = $1)
# 0 "" 2
#NO_APP
	xorl	%ecx, %ecx
	cmpq	$0, -112(%rbp)
	jle	.L1447
	xorl	%eax, %eax
	movq	%rsi, -80(%rbp)
	jmp	.L1442
	.p2align 4,,10
	.p2align 3
.L1448:
	movq	%rdx, %rax
.L1442:
	leaq	1(%rcx,%rax), %rdx
	movq	%rdx, %r15
	subq	-56(%rbp), %r15
	js	.L1441
	movq	%r15, %rsi
	subq	-56(%rbp), %rsi
	movq	%rsi, %rdx
	cmovs	%r15, %rdx
.L1441:
	salq	$6, %rax
	addq	$2, %rcx
	leaq	(%r14,%rax), %r15
	leaq	0(%r13,%rax), %rsi
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r12,%rax), %r15
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	leaq	(%rbx,%rax), %rsi
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rdi,%rax), %r15
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	leaq	(%r11,%rax), %rsi
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r10,%rax), %r15
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	leaq	(%r9,%rax), %rsi
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r8,%rax), %r15
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	movq	-72(%rbp), %rsi
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rsi,%rax), %r15
	movq	-80(%rbp), %rsi
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rsi,%rax), %r15
	addq	-64(%rbp), %rax
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	cmpq	-88(%rbp), %rcx
	jne	.L1448
	movq	-112(%rbp), %r15
	movq	%rdx, %rcx
	salq	$6, %rcx
	leaq	1(%r15), %r15
.L1440:
	movq	-56(%rbp), %rax
	subq	%rdx, %rax
	leaq	(%r14,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	0(%r13,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r12,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rbx,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rdi,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r11,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r10,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r9,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r8,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	movq	-72(%rbp), %rdx
	addq	%rcx, %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rsi,%rcx), %rdx
	addq	-64(%rbp), %rcx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	cmpq	%r15, -56(%rbp)
	jle	.L1449
	leaq	1(%r15,%r15), %rdx
	jmp	.L1445
	.p2align 4,,10
	.p2align 3
.L1444:
	salq	$6, %rax
	addq	$2, %rdx
	leaq	(%r14,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	0(%r13,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r12,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rbx,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rdi,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r11,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r10,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r9,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r8,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	movq	-72(%rbp), %r15
	addq	%rax, %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rsi,%rax), %r15
	addq	-64(%rbp), %rax
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	cmpq	%rdx, -96(%rbp)
	je	.L1443
	movq	%rcx, %rax
.L1445:
	movq	%rax, %rcx
	subq	%rdx, %rcx
	jns	.L1444
	movq	-56(%rbp), %r15
	addq	%r15, %rcx
	jns	.L1444
	addq	%r15, %rcx
	jmp	.L1444
.L1449:
	movq	%rax, %rcx
	.p2align 4,,10
	.p2align 3
.L1443:
#APP
# 249 "mem.cc" 1
	# random loop end (n_chains = $12, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, -104(%rbp)
	movq	-104(%rbp), %r15
	cmpq	%r15, -120(%rbp)
	jne	.L1446
	salq	$6, %rcx
	vzeroupper
	movq	-64(%rbp), %rax
.L1439:
	addq	%rcx, %rax
	popq	%rbx
	popq	%rdx
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%rdx), %rsp
	.cfi_def_cfa 7, 8
	ret
.L1447:
	.cfi_restore_state
	movl	$1, %r15d
	xorl	%edx, %edx
	jmp	.L1440
.L1453:
	movq	88(%rdi), %rax
	xorl	%ecx, %ecx
	movq	%rax, -64(%rbp)
	jmp	.L1439
	.cfi_endproc
.LFE234:
	.size	_Z13access_randomILi12ELi1EEP6recordPS1_ll, .-_Z13access_randomILi12ELi1EEP6recordPS1_ll
	.section	.text.unlikely._Z13access_randomILi12ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi12ELi1EEP6recordPS1_ll,comdat
.LCOLDE72:
	.section	.text._Z13access_randomILi12ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi12ELi1EEP6recordPS1_ll,comdat
.LHOTE72:
	.section	.text.unlikely._Z13access_randomILi12ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi12ELi0EEP6recordPS1_ll,comdat
.LCOLDB73:
	.section	.text._Z13access_randomILi12ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi12ELi0EEP6recordPS1_ll,comdat
.LHOTB73:
	.p2align 4,,15
	.weak	_Z13access_randomILi12ELi0EEP6recordPS1_ll
	.type	_Z13access_randomILi12ELi0EEP6recordPS1_ll, @function
_Z13access_randomILi12ELi0EEP6recordPS1_ll:
.LFB237:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %rax
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
	movq	%rdx, -8(%rsp)
	testq	%rdx, %rdx
	jle	.L1491
	movq	88(%rdi), %rdi
	leaq	-1(%rsi), %r15
	movq	%rsi, -56(%rsp)
	movq	80(%rax), %rdx
	movq	$0, -24(%rsp)
	movq	(%rax), %r13
	movq	8(%rax), %r12
	movq	%rdi, -64(%rsp)
	movq	16(%rax), %rbp
	movq	24(%rax), %rbx
	movq	%rdx, %r14
	movq	32(%rax), %rdi
	leaq	1(%rsi,%rsi), %rdx
	movq	%r14, %rsi
	movq	40(%rax), %r11
	movq	%rdx, -32(%rsp)
	movq	48(%rax), %r10
	movq	56(%rax), %r9
	movq	64(%rax), %r8
	movq	72(%rax), %rcx
	movq	%r15, %rax
	shrq	$63, %rax
	addq	%rax, %r15
	sarq	%r15
	movq	%r15, -16(%rsp)
	addq	%r15, %r15
	movq	%r15, -40(%rsp)
	.p2align 4,,10
	.p2align 3
.L1463:
#APP
# 207 "mem.cc" 1
	# random loop begin (n_chains = $12, payload = $0)
# 0 "" 2
#NO_APP
	xorl	%r14d, %r14d
	cmpq	$0, -16(%rsp)
	jle	.L1464
	xorl	%eax, %eax
	testb	$2, -40(%rsp)
	je	.L1492
	movq	%rcx, -48(%rsp)
	jmp	.L1459
	.p2align 4,,10
	.p2align 3
.L1465:
	leaq	1(%rdx,%r14), %rax
	movq	%rax, %r15
	subq	-56(%rsp), %r15
	js	.L1477
	movq	%r15, %rax
	subq	-56(%rsp), %rax
	cmovs	%r15, %rax
.L1477:
	salq	$6, %rdx
	addq	$2, %r14
	leaq	0(%r13,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r12,%rdx), %r15
	movq	(%r15), %r15
	leaq	0(%rbp,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rbx,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r11,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rcx,%rdx), %rcx
	leaq	(%r8,%rdx), %r15
	movq	(%r15), %r15
	movq	(%rcx), %r15
	leaq	(%rsi,%rdx), %r15
	addq	-64(%rsp), %rdx
	movq	(%r15), %r15
	movq	(%rdx), %rdx
.L1459:
	leaq	1(%r14,%rax), %rdx
	movq	%rdx, %r15
	subq	-56(%rsp), %r15
	js	.L1458
	movq	%r15, %rcx
	subq	-56(%rsp), %rcx
	movq	%rcx, %rdx
	cmovs	%r15, %rdx
.L1458:
	salq	$6, %rax
	addq	$2, %r14
	leaq	(%r12,%rax), %rcx
	leaq	0(%r13,%rax), %r15
	movq	(%r15), %r15
	movq	(%rcx), %r15
	leaq	(%rbx,%rax), %rcx
	leaq	0(%rbp,%rax), %r15
	movq	(%r15), %r15
	movq	(%rcx), %r15
	leaq	(%r11,%rax), %rcx
	leaq	(%rdi,%rax), %r15
	movq	(%r15), %r15
	movq	(%rcx), %r15
	leaq	(%r9,%rax), %rcx
	leaq	(%r10,%rax), %r15
	movq	(%r15), %r15
	movq	(%rcx), %r15
	leaq	(%r8,%rax), %r15
	movq	-48(%rsp), %rcx
	movq	(%r15), %r15
	leaq	(%rcx,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rsi,%rax), %r15
	addq	-64(%rsp), %rax
	movq	(%r15), %r15
	movq	(%rax), %rax
	cmpq	-40(%rsp), %r14
	jne	.L1465
	movq	-16(%rsp), %r14
	leaq	1(%r14), %r15
	movq	%rdx, %r14
	salq	$6, %r14
.L1457:
	movq	-56(%rsp), %rax
	subq	%rdx, %rax
	leaq	0(%r13,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%r12,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	0(%rbp,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%rbx,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%rdi,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%r11,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%r10,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%r9,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%r8,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%rcx,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%rsi,%r14), %rdx
	addq	-64(%rsp), %r14
	movq	(%rdx), %rdx
	movq	(%r14), %rdx
	cmpq	%r15, -56(%rsp)
	jle	.L1466
	leaq	1(%r15,%r15), %r14
	movq	-32(%rsp), %r15
	subq	%r14, %r15
	andl	$2, %r15d
	jne	.L1462
	movq	%rax, %r15
	subq	%r14, %r15
	js	.L1493
.L1469:
	salq	$6, %rax
	addq	$2, %r14
	leaq	0(%r13,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	(%r12,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	0(%rbp,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	(%rbx,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	(%rdi,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	(%r11,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	(%r10,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	(%r9,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	(%r8,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	(%rcx,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	(%rsi,%rax), %rdx
	addq	-64(%rsp), %rax
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	%r15, %rax
	jmp	.L1462
	.p2align 4,,10
	.p2align 3
.L1461:
	salq	$6, %rax
	addq	$2, %r14
	leaq	0(%r13,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r12,%rax), %r15
	movq	(%r15), %r15
	leaq	0(%rbp,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rbx,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r11,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rcx,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rsi,%rax), %r15
	addq	-64(%rsp), %rax
	movq	(%r15), %r15
	movq	(%rax), %rax
	cmpq	%r14, -32(%rsp)
	je	.L1460
	movq	%rdx, %rax
	subq	%r14, %rax
	js	.L1494
.L1472:
	salq	$6, %rdx
	addq	$2, %r14
	leaq	0(%r13,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r12,%rdx), %r15
	movq	(%r15), %r15
	leaq	0(%rbp,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rbx,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r11,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rcx,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rsi,%rdx), %r15
	addq	-64(%rsp), %rdx
	movq	(%r15), %r15
	movq	(%rdx), %rdx
.L1462:
	movq	%rax, %rdx
	subq	%r14, %rdx
	jns	.L1461
	movq	-56(%rsp), %r15
	addq	%r15, %rdx
	jns	.L1461
	addq	%r15, %rdx
	jmp	.L1461
	.p2align 4,,10
	.p2align 3
.L1494:
	movq	-56(%rsp), %r15
	addq	%r15, %rax
	jns	.L1472
	addq	%r15, %rax
	jmp	.L1472
	.p2align 4,,10
	.p2align 3
.L1466:
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L1460:
#APP
# 249 "mem.cc" 1
	# random loop end (n_chains = $12, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, -24(%rsp)
	movq	-24(%rsp), %r14
	cmpq	%r14, -8(%rsp)
	jne	.L1463
	movq	-64(%rsp), %rax
	salq	$6, %rdx
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	addq	%rdx, %rax
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1492:
	.cfi_restore_state
	movq	-56(%rsp), %r14
	movl	$1, %eax
	movq	%rax, %r15
	subq	%r14, %r15
	js	.L1474
	movq	%r15, %rax
	subq	%r14, %rax
	cmovs	%r15, %rax
.L1474:
	movq	0(%r13), %rdx
	movl	$2, %r14d
	movq	%rcx, -48(%rsp)
	movq	(%r12), %rdx
	movq	0(%rbp), %rdx
	movq	(%rbx), %rdx
	movq	(%rdi), %rdx
	movq	(%r11), %rdx
	movq	(%r10), %rdx
	movq	(%r9), %rdx
	movq	(%r8), %rdx
	movq	(%rcx), %rdx
	movq	(%rsi), %rdx
	movq	-64(%rsp), %rdx
	movq	(%rdx), %rdx
	jmp	.L1459
	.p2align 4,,10
	.p2align 3
.L1493:
	movq	-56(%rsp), %rdx
	addq	%rdx, %r15
	jns	.L1469
	addq	%rdx, %r15
	jmp	.L1469
	.p2align 4,,10
	.p2align 3
.L1464:
	movl	$1, %r15d
	xorl	%edx, %edx
	jmp	.L1457
.L1491:
	movq	88(%rdi), %rax
	xorl	%edx, %edx
	movq	%rax, -64(%rsp)
	popq	%rbx
	.cfi_def_cfa_offset 48
	addq	%rdx, %rax
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
.LFE237:
	.size	_Z13access_randomILi12ELi0EEP6recordPS1_ll, .-_Z13access_randomILi12ELi0EEP6recordPS1_ll
	.section	.text.unlikely._Z13access_randomILi12ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi12ELi0EEP6recordPS1_ll,comdat
.LCOLDE73:
	.section	.text._Z13access_randomILi12ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi12ELi0EEP6recordPS1_ll,comdat
.LHOTE73:
	.section	.text.unlikely._Z13access_randomILi13ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi13ELi1EEP6recordPS1_ll,comdat
.LCOLDB74:
	.section	.text._Z13access_randomILi13ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi13ELi1EEP6recordPS1_ll,comdat
.LHOTB74:
	.p2align 4,,15
	.weak	_Z13access_randomILi13ELi1EEP6recordPS1_ll
	.type	_Z13access_randomILi13ELi1EEP6recordPS1_ll, @function
_Z13access_randomILi13ELi1EEP6recordPS1_ll:
.LFB240:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	movq	%rdi, %rax
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
	movq	%rdx, -128(%rbp)
	testq	%rdx, %rdx
	jle	.L1511
	movq	96(%rdi), %rdi
	leaq	-1(%rsi), %rdx
	movq	$0, -112(%rbp)
	movq	%rdx, %rcx
	movq	72(%rax), %r15
	movq	%rsi, -56(%rbp)
	shrq	$63, %rcx
	movq	80(%rax), %r14
	addq	%rcx, %rdx
	movq	(%rax), %r13
	movq	%rdi, -64(%rbp)
	movq	8(%rax), %r12
	sarq	%rdx
	movq	16(%rax), %rbx
	movq	%rdx, -120(%rbp)
	addq	%rdx, %rdx
	movq	24(%rax), %rdi
	movq	%rdx, -96(%rbp)
	leaq	1(%rsi,%rsi), %rdx
	movq	32(%rax), %r11
	movq	%r15, -72(%rbp)
	movq	40(%rax), %r10
	movq	%r14, -80(%rbp)
	movq	48(%rax), %r9
	movq	%rdx, -104(%rbp)
	movq	56(%rax), %r8
	movq	64(%rax), %rcx
	movq	88(%rax), %rax
	movq	%rax, %r15
	.p2align 4,,10
	.p2align 3
.L1504:
#APP
# 207 "mem.cc" 1
	# random loop begin (n_chains = $13, payload = $1)
# 0 "" 2
#NO_APP
	xorl	%esi, %esi
	cmpq	$0, -120(%rbp)
	jle	.L1505
	xorl	%eax, %eax
	movq	%rcx, -88(%rbp)
	jmp	.L1500
	.p2align 4,,10
	.p2align 3
.L1506:
	movq	%rdx, %rax
.L1500:
	leaq	1(%rsi,%rax), %rdx
	movq	%rdx, %r14
	subq	-56(%rbp), %r14
	js	.L1499
	movq	%r14, %rcx
	subq	-56(%rbp), %rcx
	movq	%rcx, %rdx
	cmovs	%r14, %rdx
.L1499:
	salq	$6, %rax
	addq	$2, %rsi
	leaq	0(%r13,%rax), %r14
	vmovdqa	(%r14), %ymm0
	leaq	(%r12,%rax), %rcx
	vmovdqa	32(%r14), %ymm0
	leaq	(%rbx,%rax), %r14
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%rdi,%rax), %rcx
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	leaq	(%r11,%rax), %r14
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r10,%rax), %rcx
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	leaq	(%r9,%rax), %r14
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r8,%rax), %rcx
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	movq	-88(%rbp), %r14
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r14,%rax), %rcx
	movq	-72(%rbp), %r14
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r14,%rax), %rcx
	movq	-80(%rbp), %r14
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r14,%rax), %rcx
	leaq	(%r15,%rax), %r14
	addq	-64(%rbp), %rax
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	cmpq	-96(%rbp), %rsi
	jne	.L1506
	movq	-120(%rbp), %r14
	movq	%rdx, %rsi
	movq	-88(%rbp), %rcx
	salq	$6, %rsi
	leaq	1(%r14), %r14
.L1498:
	movq	-56(%rbp), %rax
	subq	%rdx, %rax
	leaq	0(%r13,%rsi), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r12,%rsi), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rbx,%rsi), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rdi,%rsi), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r11,%rsi), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r10,%rsi), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r9,%rsi), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r8,%rsi), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rcx,%rsi), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	movq	-72(%rbp), %rdx
	addq	%rsi, %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	movq	-80(%rbp), %rdx
	addq	%rsi, %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r15,%rsi), %rdx
	addq	-64(%rbp), %rsi
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	cmpq	%r14, -56(%rbp)
	jle	.L1507
	leaq	1(%r14,%r14), %rdx
	jmp	.L1503
	.p2align 4,,10
	.p2align 3
.L1502:
	salq	$6, %rax
	addq	$2, %rdx
	leaq	0(%r13,%rax), %rsi
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	leaq	(%r12,%rax), %rsi
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	leaq	(%rbx,%rax), %rsi
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	leaq	(%rdi,%rax), %rsi
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	leaq	(%r11,%rax), %rsi
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	leaq	(%r10,%rax), %rsi
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	leaq	(%r9,%rax), %rsi
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	leaq	(%r8,%rax), %rsi
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	leaq	(%rcx,%rax), %rsi
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	movq	-72(%rbp), %rsi
	addq	%rax, %rsi
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	movq	-80(%rbp), %rsi
	addq	%rax, %rsi
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	leaq	(%r15,%rax), %rsi
	addq	-64(%rbp), %rax
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	cmpq	%rdx, -104(%rbp)
	je	.L1501
	movq	%r14, %rax
.L1503:
	movq	%rax, %r14
	subq	%rdx, %r14
	jns	.L1502
	movq	-56(%rbp), %rsi
	addq	%rsi, %r14
	jns	.L1502
	addq	%rsi, %r14
	jmp	.L1502
.L1507:
	movq	%rax, %r14
	.p2align 4,,10
	.p2align 3
.L1501:
#APP
# 249 "mem.cc" 1
	# random loop end (n_chains = $13, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, -112(%rbp)
	movq	-112(%rbp), %rsi
	cmpq	%rsi, -128(%rbp)
	jne	.L1504
	salq	$6, %r14
	vzeroupper
	movq	-64(%rbp), %rax
.L1497:
	addq	%r14, %rax
	popq	%rbx
	popq	%rdx
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%rdx), %rsp
	.cfi_def_cfa 7, 8
	ret
.L1505:
	.cfi_restore_state
	movl	$1, %r14d
	xorl	%edx, %edx
	jmp	.L1498
.L1511:
	movq	96(%rdi), %rax
	xorl	%r14d, %r14d
	movq	%rax, -64(%rbp)
	jmp	.L1497
	.cfi_endproc
.LFE240:
	.size	_Z13access_randomILi13ELi1EEP6recordPS1_ll, .-_Z13access_randomILi13ELi1EEP6recordPS1_ll
	.section	.text.unlikely._Z13access_randomILi13ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi13ELi1EEP6recordPS1_ll,comdat
.LCOLDE74:
	.section	.text._Z13access_randomILi13ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi13ELi1EEP6recordPS1_ll,comdat
.LHOTE74:
	.section	.text.unlikely._Z13access_randomILi13ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi13ELi0EEP6recordPS1_ll,comdat
.LCOLDB75:
	.section	.text._Z13access_randomILi13ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi13ELi0EEP6recordPS1_ll,comdat
.LHOTB75:
	.p2align 4,,15
	.weak	_Z13access_randomILi13ELi0EEP6recordPS1_ll
	.type	_Z13access_randomILi13ELi0EEP6recordPS1_ll, @function
_Z13access_randomILi13ELi0EEP6recordPS1_ll:
.LFB243:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %rax
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
	movq	%rdx, -8(%rsp)
	testq	%rdx, %rdx
	jle	.L1549
	movq	96(%rdi), %rdi
	movq	%rsi, -64(%rsp)
	movq	80(%rax), %rdx
	movq	$0, -24(%rsp)
	movq	88(%rax), %r14
	movq	(%rax), %r13
	movq	%rdi, -72(%rsp)
	movq	8(%rax), %r12
	movq	16(%rax), %rbp
	movq	%rdx, -56(%rsp)
	movq	24(%rax), %rbx
	movq	%r14, %r15
	movq	32(%rax), %rdi
	leaq	1(%rsi,%rsi), %r14
	movq	40(%rax), %r11
	movq	%r14, -32(%rsp)
	movq	48(%rax), %r10
	movq	56(%rax), %r9
	movq	64(%rax), %r8
	movq	72(%rax), %rcx
	leaq	-1(%rsi), %rax
	movq	%r15, %rsi
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	movq	%rax, -16(%rsp)
	addq	%rax, %rax
	movq	%rax, -40(%rsp)
	.p2align 4,,10
	.p2align 3
.L1521:
#APP
# 207 "mem.cc" 1
	# random loop begin (n_chains = $13, payload = $0)
# 0 "" 2
#NO_APP
	xorl	%r14d, %r14d
	cmpq	$0, -16(%rsp)
	jle	.L1522
	xorl	%eax, %eax
	testb	$2, -40(%rsp)
	je	.L1550
	movq	%rcx, -48(%rsp)
	jmp	.L1517
	.p2align 4,,10
	.p2align 3
.L1523:
	leaq	1(%rdx,%r14), %rax
	movq	%rax, %r15
	subq	-64(%rsp), %r15
	js	.L1535
	movq	%r15, %rax
	subq	-64(%rsp), %rax
	cmovs	%r15, %rax
.L1535:
	salq	$6, %rdx
	addq	$2, %r14
	leaq	0(%r13,%rdx), %rcx
	movq	(%rcx), %r15
	leaq	0(%rbp,%rdx), %rcx
	leaq	(%r12,%rdx), %r15
	movq	(%r15), %r15
	movq	(%rcx), %r15
	leaq	(%rdi,%rdx), %rcx
	leaq	(%rbx,%rdx), %r15
	movq	(%r15), %r15
	movq	(%rcx), %r15
	leaq	(%r10,%rdx), %rcx
	leaq	(%r11,%rdx), %r15
	movq	(%r15), %r15
	movq	(%rcx), %r15
	leaq	(%r8,%rdx), %rcx
	leaq	(%r9,%rdx), %r15
	movq	(%r15), %r15
	movq	(%rcx), %r15
	movq	-48(%rsp), %r15
	leaq	(%r15,%rdx), %rcx
	movq	(%rcx), %r15
	movq	-56(%rsp), %r15
	leaq	(%r15,%rdx), %rcx
	movq	(%rcx), %r15
	leaq	(%rsi,%rdx), %r15
	addq	-72(%rsp), %rdx
	movq	(%r15), %r15
	movq	(%rdx), %rdx
.L1517:
	leaq	1(%r14,%rax), %rdx
	movq	%rdx, %r15
	subq	-64(%rsp), %r15
	js	.L1516
	movq	%r15, %rcx
	subq	-64(%rsp), %rcx
	movq	%rcx, %rdx
	cmovs	%r15, %rdx
.L1516:
	salq	$6, %rax
	addq	$2, %r14
	leaq	(%r12,%rax), %rcx
	leaq	0(%r13,%rax), %r15
	movq	(%r15), %r15
	movq	(%rcx), %r15
	leaq	(%rbx,%rax), %rcx
	leaq	0(%rbp,%rax), %r15
	movq	(%r15), %r15
	movq	(%rcx), %r15
	leaq	(%r11,%rax), %rcx
	leaq	(%rdi,%rax), %r15
	movq	(%r15), %r15
	movq	(%rcx), %r15
	leaq	(%r9,%rax), %rcx
	leaq	(%r10,%rax), %r15
	movq	(%r15), %r15
	movq	(%rcx), %r15
	leaq	(%r8,%rax), %r15
	movq	-48(%rsp), %rcx
	movq	(%r15), %r15
	leaq	(%rcx,%rax), %r15
	movq	-56(%rsp), %rcx
	movq	(%r15), %r15
	leaq	(%rcx,%rax), %r15
	leaq	(%rsi,%rax), %rcx
	addq	-72(%rsp), %rax
	movq	(%r15), %r15
	movq	(%rcx), %r15
	movq	(%rax), %rax
	cmpq	-40(%rsp), %r14
	jne	.L1523
	movq	-16(%rsp), %r14
	movq	-48(%rsp), %rcx
	leaq	1(%r14), %r15
	movq	%rdx, %r14
	salq	$6, %r14
.L1515:
	movq	-64(%rsp), %rax
	subq	%rdx, %rax
	leaq	0(%r13,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%r12,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	0(%rbp,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%rbx,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%rdi,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%r11,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%r10,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%r9,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%r8,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%rcx,%r14), %rdx
	movq	(%rdx), %rdx
	movq	-56(%rsp), %rdx
	addq	%r14, %rdx
	movq	(%rdx), %rdx
	leaq	(%rsi,%r14), %rdx
	addq	-72(%rsp), %r14
	movq	(%rdx), %rdx
	movq	(%r14), %rdx
	cmpq	%r15, -64(%rsp)
	jle	.L1524
	leaq	1(%r15,%r15), %r14
	movq	-32(%rsp), %r15
	subq	%r14, %r15
	andl	$2, %r15d
	jne	.L1520
	movq	%rax, %r15
	subq	%r14, %r15
	js	.L1551
.L1527:
	salq	$6, %rax
	addq	$2, %r14
	leaq	0(%r13,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	(%r12,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	0(%rbp,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	(%rbx,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	(%rdi,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	(%r11,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	(%r10,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	(%r9,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	(%r8,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	(%rcx,%rax), %rdx
	movq	(%rdx), %rdx
	movq	-56(%rsp), %rdx
	addq	%rax, %rdx
	movq	(%rdx), %rdx
	leaq	(%rsi,%rax), %rdx
	addq	-72(%rsp), %rax
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	%r15, %rax
	jmp	.L1520
	.p2align 4,,10
	.p2align 3
.L1519:
	salq	$6, %rax
	addq	$2, %r14
	leaq	0(%r13,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r12,%rax), %r15
	movq	(%r15), %r15
	leaq	0(%rbp,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rbx,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r11,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rcx,%rax), %r15
	movq	(%r15), %r15
	movq	-56(%rsp), %r15
	addq	%rax, %r15
	movq	(%r15), %r15
	leaq	(%rsi,%rax), %r15
	addq	-72(%rsp), %rax
	movq	(%r15), %r15
	movq	(%rax), %rax
	cmpq	%r14, -32(%rsp)
	je	.L1518
	movq	%rdx, %rax
	subq	%r14, %rax
	js	.L1552
.L1530:
	salq	$6, %rdx
	addq	$2, %r14
	leaq	0(%r13,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r12,%rdx), %r15
	movq	(%r15), %r15
	leaq	0(%rbp,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rbx,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r11,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rcx,%rdx), %r15
	movq	(%r15), %r15
	movq	-56(%rsp), %r15
	addq	%rdx, %r15
	movq	(%r15), %r15
	leaq	(%rsi,%rdx), %r15
	addq	-72(%rsp), %rdx
	movq	(%r15), %r15
	movq	(%rdx), %rdx
.L1520:
	movq	%rax, %rdx
	subq	%r14, %rdx
	jns	.L1519
	movq	-64(%rsp), %r15
	addq	%r15, %rdx
	jns	.L1519
	addq	%r15, %rdx
	jmp	.L1519
	.p2align 4,,10
	.p2align 3
.L1552:
	movq	-64(%rsp), %r15
	addq	%r15, %rax
	jns	.L1530
	addq	%r15, %rax
	jmp	.L1530
	.p2align 4,,10
	.p2align 3
.L1524:
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L1518:
#APP
# 249 "mem.cc" 1
	# random loop end (n_chains = $13, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, -24(%rsp)
	movq	-24(%rsp), %r14
	cmpq	%r14, -8(%rsp)
	jne	.L1521
	movq	-72(%rsp), %rax
	salq	$6, %rdx
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	addq	%rdx, %rax
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1550:
	.cfi_restore_state
	movq	-64(%rsp), %rdx
	movl	$1, %eax
	movq	%rax, %r15
	subq	%rdx, %r15
	js	.L1532
	movq	%r15, %rax
	subq	%rdx, %rax
	cmovs	%r15, %rax
.L1532:
	movq	-56(%rsp), %r14
	movq	%rcx, -48(%rsp)
	movq	-72(%rsp), %r15
	movq	0(%r13), %rdx
	movq	(%r12), %rdx
	movq	0(%rbp), %rdx
	movq	(%rbx), %rdx
	movq	(%rdi), %rdx
	movq	(%r11), %rdx
	movq	(%r10), %rdx
	movq	(%r9), %rdx
	movq	(%r8), %rdx
	movq	(%rcx), %rdx
	movq	(%r14), %rdx
	movl	$2, %r14d
	movq	(%rsi), %rdx
	movq	(%r15), %rdx
	jmp	.L1517
	.p2align 4,,10
	.p2align 3
.L1551:
	movq	-64(%rsp), %rdx
	addq	%rdx, %r15
	jns	.L1527
	addq	%rdx, %r15
	jmp	.L1527
	.p2align 4,,10
	.p2align 3
.L1522:
	movl	$1, %r15d
	xorl	%edx, %edx
	jmp	.L1515
.L1549:
	movq	96(%rdi), %rax
	xorl	%edx, %edx
	movq	%rax, -72(%rsp)
	popq	%rbx
	.cfi_def_cfa_offset 48
	addq	%rdx, %rax
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
.LFE243:
	.size	_Z13access_randomILi13ELi0EEP6recordPS1_ll, .-_Z13access_randomILi13ELi0EEP6recordPS1_ll
	.section	.text.unlikely._Z13access_randomILi13ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi13ELi0EEP6recordPS1_ll,comdat
.LCOLDE75:
	.section	.text._Z13access_randomILi13ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi13ELi0EEP6recordPS1_ll,comdat
.LHOTE75:
	.section	.text.unlikely._Z13access_randomILi14ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi14ELi1EEP6recordPS1_ll,comdat
.LCOLDB76:
	.section	.text._Z13access_randomILi14ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi14ELi1EEP6recordPS1_ll,comdat
.LHOTB76:
	.p2align 4,,15
	.weak	_Z13access_randomILi14ELi1EEP6recordPS1_ll
	.type	_Z13access_randomILi14ELi1EEP6recordPS1_ll, @function
_Z13access_randomILi14ELi1EEP6recordPS1_ll:
.LFB246:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	movq	%rdi, %rax
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
	movq	%rdx, -136(%rbp)
	testq	%rdx, %rdx
	jle	.L1569
	leaq	-1(%rsi), %rdx
	movq	72(%rax), %r15
	movq	%rsi, -56(%rbp)
	movq	104(%rdi), %rdi
	movq	%rdx, %rcx
	movq	$0, -120(%rbp)
	shrq	$63, %rcx
	movq	(%rax), %r14
	addq	%rcx, %rdx
	movq	80(%rax), %rcx
	movq	8(%rax), %r13
	movq	%r15, -72(%rbp)
	sarq	%rdx
	movq	88(%rax), %r15
	movq	%rdi, -64(%rbp)
	movq	16(%rax), %r12
	movq	%rdx, -128(%rbp)
	leaq	(%rdx,%rdx), %rdx
	movq	24(%rax), %rbx
	movq	%rcx, -80(%rbp)
	leaq	1(%rsi,%rsi), %rcx
	movq	32(%rax), %rdi
	movq	%rdx, -104(%rbp)
	movq	40(%rax), %r11
	movq	%r15, -88(%rbp)
	movq	48(%rax), %r10
	movq	%rcx, -112(%rbp)
	movq	56(%rax), %r9
	movq	64(%rax), %r8
	movq	96(%rax), %rax
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L1562:
#APP
# 207 "mem.cc" 1
	# random loop begin (n_chains = $14, payload = $1)
# 0 "" 2
#NO_APP
	xorl	%ecx, %ecx
	cmpq	$0, -128(%rbp)
	jle	.L1563
	xorl	%eax, %eax
	movq	%rsi, -96(%rbp)
	jmp	.L1558
	.p2align 4,,10
	.p2align 3
.L1564:
	movq	%rdx, %rax
.L1558:
	leaq	1(%rcx,%rax), %rdx
	movq	%rdx, %r15
	subq	-56(%rbp), %r15
	js	.L1557
	movq	%r15, %rsi
	subq	-56(%rbp), %rsi
	movq	%rsi, %rdx
	cmovs	%r15, %rdx
.L1557:
	salq	$6, %rax
	addq	$2, %rcx
	leaq	(%r14,%rax), %r15
	leaq	0(%r13,%rax), %rsi
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r12,%rax), %r15
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	leaq	(%rbx,%rax), %rsi
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rdi,%rax), %r15
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	leaq	(%r11,%rax), %rsi
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r10,%rax), %r15
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	leaq	(%r9,%rax), %rsi
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r8,%rax), %r15
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	movq	-72(%rbp), %rsi
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rsi,%rax), %r15
	movq	-80(%rbp), %rsi
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rsi,%rax), %r15
	movq	-88(%rbp), %rsi
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rsi,%rax), %r15
	movq	-96(%rbp), %rsi
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rsi,%rax), %r15
	addq	-64(%rbp), %rax
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	cmpq	-104(%rbp), %rcx
	jne	.L1564
	movq	-128(%rbp), %r15
	movq	%rdx, %rcx
	salq	$6, %rcx
	leaq	1(%r15), %r15
.L1556:
	movq	-56(%rbp), %rax
	subq	%rdx, %rax
	leaq	(%r14,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	0(%r13,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r12,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rbx,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rdi,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r11,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r10,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r9,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r8,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	movq	-72(%rbp), %rdx
	addq	%rcx, %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	movq	-80(%rbp), %rdx
	addq	%rcx, %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	movq	-88(%rbp), %rdx
	addq	%rcx, %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rsi,%rcx), %rdx
	addq	-64(%rbp), %rcx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	cmpq	%r15, -56(%rbp)
	jle	.L1565
	leaq	1(%r15,%r15), %rdx
	jmp	.L1561
	.p2align 4,,10
	.p2align 3
.L1560:
	salq	$6, %rax
	addq	$2, %rdx
	leaq	(%r14,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	0(%r13,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r12,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rbx,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rdi,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r11,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r10,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r9,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r8,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	movq	-72(%rbp), %r15
	addq	%rax, %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	movq	-80(%rbp), %r15
	addq	%rax, %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	movq	-88(%rbp), %r15
	addq	%rax, %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rsi,%rax), %r15
	addq	-64(%rbp), %rax
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	cmpq	%rdx, -112(%rbp)
	je	.L1559
	movq	%rcx, %rax
.L1561:
	movq	%rax, %rcx
	subq	%rdx, %rcx
	jns	.L1560
	movq	-56(%rbp), %r15
	addq	%r15, %rcx
	jns	.L1560
	addq	%r15, %rcx
	jmp	.L1560
.L1565:
	movq	%rax, %rcx
	.p2align 4,,10
	.p2align 3
.L1559:
#APP
# 249 "mem.cc" 1
	# random loop end (n_chains = $14, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, -120(%rbp)
	movq	-120(%rbp), %r15
	cmpq	%r15, -136(%rbp)
	jne	.L1562
	salq	$6, %rcx
	vzeroupper
	movq	-64(%rbp), %rax
.L1555:
	addq	%rcx, %rax
	popq	%rbx
	popq	%rdx
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%rdx), %rsp
	.cfi_def_cfa 7, 8
	ret
.L1563:
	.cfi_restore_state
	movl	$1, %r15d
	xorl	%edx, %edx
	jmp	.L1556
.L1569:
	movq	104(%rdi), %rax
	xorl	%ecx, %ecx
	movq	%rax, -64(%rbp)
	jmp	.L1555
	.cfi_endproc
.LFE246:
	.size	_Z13access_randomILi14ELi1EEP6recordPS1_ll, .-_Z13access_randomILi14ELi1EEP6recordPS1_ll
	.section	.text.unlikely._Z13access_randomILi14ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi14ELi1EEP6recordPS1_ll,comdat
.LCOLDE76:
	.section	.text._Z13access_randomILi14ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi14ELi1EEP6recordPS1_ll,comdat
.LHOTE76:
	.section	.text.unlikely._Z13access_randomILi14ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi14ELi0EEP6recordPS1_ll,comdat
.LCOLDB77:
	.section	.text._Z13access_randomILi14ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi14ELi0EEP6recordPS1_ll,comdat
.LHOTB77:
	.p2align 4,,15
	.weak	_Z13access_randomILi14ELi0EEP6recordPS1_ll
	.type	_Z13access_randomILi14ELi0EEP6recordPS1_ll, @function
_Z13access_randomILi14ELi0EEP6recordPS1_ll:
.LFB249:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %rax
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
	movq	%rdx, -8(%rsp)
	testq	%rdx, %rdx
	jle	.L1607
	movq	104(%rdi), %rdi
	movq	%rsi, -56(%rsp)
	movq	80(%rax), %rdx
	movq	$0, -24(%rsp)
	movq	88(%rax), %r14
	movq	96(%rax), %r15
	movq	%rdi, -80(%rsp)
	movq	(%rax), %r13
	movq	8(%rax), %r12
	movq	%rdx, -72(%rsp)
	movq	16(%rax), %rbp
	movq	%r14, -64(%rsp)
	movq	24(%rax), %rbx
	movq	%r15, %r14
	movq	32(%rax), %rdi
	leaq	1(%rsi,%rsi), %r15
	movq	40(%rax), %r11
	movq	%r15, -32(%rsp)
	movq	48(%rax), %r10
	movq	56(%rax), %r9
	movq	64(%rax), %r8
	movq	72(%rax), %rcx
	leaq	-1(%rsi), %rax
	movq	%r14, %rsi
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	movq	%rax, -16(%rsp)
	addq	%rax, %rax
	movq	%rax, -40(%rsp)
	.p2align 4,,10
	.p2align 3
.L1579:
#APP
# 207 "mem.cc" 1
	# random loop begin (n_chains = $14, payload = $0)
# 0 "" 2
#NO_APP
	xorl	%r14d, %r14d
	cmpq	$0, -16(%rsp)
	jle	.L1580
	xorl	%eax, %eax
	testb	$2, -40(%rsp)
	je	.L1608
	movq	%rcx, -48(%rsp)
	jmp	.L1575
	.p2align 4,,10
	.p2align 3
.L1581:
	leaq	1(%rdx,%r14), %rax
	movq	%rax, %r15
	subq	-56(%rsp), %r15
	js	.L1593
	movq	%r15, %rax
	subq	-56(%rsp), %rax
	cmovs	%r15, %rax
.L1593:
	salq	$6, %rdx
	addq	$2, %r14
	leaq	0(%r13,%rdx), %rcx
	movq	(%rcx), %r15
	leaq	0(%rbp,%rdx), %rcx
	leaq	(%r12,%rdx), %r15
	movq	(%r15), %r15
	movq	(%rcx), %r15
	leaq	(%rdi,%rdx), %rcx
	leaq	(%rbx,%rdx), %r15
	movq	(%r15), %r15
	movq	(%rcx), %r15
	leaq	(%r10,%rdx), %rcx
	leaq	(%r11,%rdx), %r15
	movq	(%r15), %r15
	movq	(%rcx), %r15
	leaq	(%r8,%rdx), %rcx
	leaq	(%r9,%rdx), %r15
	movq	(%r15), %r15
	movq	(%rcx), %r15
	movq	-48(%rsp), %r15
	leaq	(%r15,%rdx), %rcx
	movq	(%rcx), %r15
	movq	-72(%rsp), %r15
	leaq	(%r15,%rdx), %rcx
	movq	(%rcx), %r15
	movq	-64(%rsp), %r15
	leaq	(%r15,%rdx), %rcx
	movq	(%rcx), %r15
	leaq	(%rsi,%rdx), %r15
	addq	-80(%rsp), %rdx
	movq	(%r15), %r15
	movq	(%rdx), %rdx
.L1575:
	leaq	1(%r14,%rax), %rdx
	movq	%rdx, %r15
	subq	-56(%rsp), %r15
	js	.L1574
	movq	%r15, %rcx
	subq	-56(%rsp), %rcx
	movq	%rcx, %rdx
	cmovs	%r15, %rdx
.L1574:
	salq	$6, %rax
	addq	$2, %r14
	leaq	(%r12,%rax), %rcx
	leaq	0(%r13,%rax), %r15
	movq	(%r15), %r15
	movq	(%rcx), %r15
	leaq	(%rbx,%rax), %rcx
	leaq	0(%rbp,%rax), %r15
	movq	(%r15), %r15
	movq	(%rcx), %r15
	leaq	(%r11,%rax), %rcx
	leaq	(%rdi,%rax), %r15
	movq	(%r15), %r15
	movq	(%rcx), %r15
	leaq	(%r9,%rax), %rcx
	leaq	(%r10,%rax), %r15
	movq	(%r15), %r15
	movq	(%rcx), %r15
	leaq	(%r8,%rax), %r15
	movq	-48(%rsp), %rcx
	movq	(%r15), %r15
	leaq	(%rcx,%rax), %r15
	movq	-72(%rsp), %rcx
	movq	(%r15), %r15
	leaq	(%rcx,%rax), %r15
	movq	-64(%rsp), %rcx
	movq	(%r15), %r15
	leaq	(%rcx,%rax), %r15
	leaq	(%rsi,%rax), %rcx
	addq	-80(%rsp), %rax
	movq	(%r15), %r15
	movq	(%rcx), %r15
	movq	(%rax), %rax
	cmpq	-40(%rsp), %r14
	jne	.L1581
	movq	-16(%rsp), %r14
	movq	-48(%rsp), %rcx
	leaq	1(%r14), %r15
	movq	%rdx, %r14
	salq	$6, %r14
.L1573:
	movq	-56(%rsp), %rax
	subq	%rdx, %rax
	leaq	0(%r13,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%r12,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	0(%rbp,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%rbx,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%rdi,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%r11,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%r10,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%r9,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%r8,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%rcx,%r14), %rdx
	movq	(%rdx), %rdx
	movq	-72(%rsp), %rdx
	addq	%r14, %rdx
	movq	(%rdx), %rdx
	movq	-64(%rsp), %rdx
	addq	%r14, %rdx
	movq	(%rdx), %rdx
	leaq	(%rsi,%r14), %rdx
	addq	-80(%rsp), %r14
	movq	(%rdx), %rdx
	movq	(%r14), %rdx
	cmpq	%r15, -56(%rsp)
	jle	.L1582
	leaq	1(%r15,%r15), %r14
	movq	-32(%rsp), %r15
	subq	%r14, %r15
	andl	$2, %r15d
	jne	.L1578
	movq	%rax, %r15
	subq	%r14, %r15
	js	.L1609
.L1585:
	salq	$6, %rax
	addq	$2, %r14
	leaq	0(%r13,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	(%r12,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	0(%rbp,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	(%rbx,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	(%rdi,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	(%r11,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	(%r10,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	(%r9,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	(%r8,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	(%rcx,%rax), %rdx
	movq	(%rdx), %rdx
	movq	-72(%rsp), %rdx
	addq	%rax, %rdx
	movq	(%rdx), %rdx
	movq	-64(%rsp), %rdx
	addq	%rax, %rdx
	movq	(%rdx), %rdx
	leaq	(%rsi,%rax), %rdx
	addq	-80(%rsp), %rax
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	%r15, %rax
	jmp	.L1578
	.p2align 4,,10
	.p2align 3
.L1577:
	salq	$6, %rax
	addq	$2, %r14
	leaq	0(%r13,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r12,%rax), %r15
	movq	(%r15), %r15
	leaq	0(%rbp,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rbx,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r11,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rcx,%rax), %r15
	movq	(%r15), %r15
	movq	-72(%rsp), %r15
	addq	%rax, %r15
	movq	(%r15), %r15
	movq	-64(%rsp), %r15
	addq	%rax, %r15
	movq	(%r15), %r15
	leaq	(%rsi,%rax), %r15
	addq	-80(%rsp), %rax
	movq	(%r15), %r15
	movq	(%rax), %rax
	cmpq	%r14, -32(%rsp)
	je	.L1576
	movq	%rdx, %rax
	subq	%r14, %rax
	js	.L1610
.L1588:
	salq	$6, %rdx
	addq	$2, %r14
	leaq	0(%r13,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r12,%rdx), %r15
	movq	(%r15), %r15
	leaq	0(%rbp,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rbx,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r11,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rcx,%rdx), %r15
	movq	(%r15), %r15
	movq	-72(%rsp), %r15
	addq	%rdx, %r15
	movq	(%r15), %r15
	movq	-64(%rsp), %r15
	addq	%rdx, %r15
	movq	(%r15), %r15
	leaq	(%rsi,%rdx), %r15
	addq	-80(%rsp), %rdx
	movq	(%r15), %r15
	movq	(%rdx), %rdx
.L1578:
	movq	%rax, %rdx
	subq	%r14, %rdx
	jns	.L1577
	movq	-56(%rsp), %r15
	addq	%r15, %rdx
	jns	.L1577
	addq	%r15, %rdx
	jmp	.L1577
	.p2align 4,,10
	.p2align 3
.L1610:
	movq	-56(%rsp), %r15
	addq	%r15, %rax
	jns	.L1588
	addq	%r15, %rax
	jmp	.L1588
	.p2align 4,,10
	.p2align 3
.L1582:
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L1576:
#APP
# 249 "mem.cc" 1
	# random loop end (n_chains = $14, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, -24(%rsp)
	movq	-24(%rsp), %r14
	cmpq	%r14, -8(%rsp)
	jne	.L1579
	movq	-80(%rsp), %rax
	salq	$6, %rdx
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	addq	%rdx, %rax
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1608:
	.cfi_restore_state
	movq	-56(%rsp), %r14
	movl	$1, %eax
	movq	%rax, %rdx
	subq	%r14, %rdx
	js	.L1590
	movq	%rdx, %rax
	subq	%r14, %rax
	cmovs	%rdx, %rax
.L1590:
	movq	-72(%rsp), %r15
	movq	%rcx, -48(%rsp)
	movq	0(%r13), %rdx
	movq	-80(%rsp), %r14
	movq	(%r12), %rdx
	movq	0(%rbp), %rdx
	movq	(%rbx), %rdx
	movq	(%rdi), %rdx
	movq	(%r11), %rdx
	movq	(%r10), %rdx
	movq	(%r9), %rdx
	movq	(%r8), %rdx
	movq	(%rcx), %rdx
	movq	(%r15), %rdx
	movq	-64(%rsp), %rdx
	movq	(%rdx), %rdx
	movq	(%rsi), %rdx
	movq	(%r14), %rdx
	movl	$2, %r14d
	jmp	.L1575
	.p2align 4,,10
	.p2align 3
.L1609:
	movq	-56(%rsp), %rdx
	addq	%rdx, %r15
	jns	.L1585
	addq	%rdx, %r15
	jmp	.L1585
	.p2align 4,,10
	.p2align 3
.L1580:
	movl	$1, %r15d
	xorl	%edx, %edx
	jmp	.L1573
.L1607:
	movq	104(%rdi), %rax
	xorl	%edx, %edx
	movq	%rax, -80(%rsp)
	popq	%rbx
	.cfi_def_cfa_offset 48
	addq	%rdx, %rax
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
.LFE249:
	.size	_Z13access_randomILi14ELi0EEP6recordPS1_ll, .-_Z13access_randomILi14ELi0EEP6recordPS1_ll
	.section	.text.unlikely._Z13access_randomILi14ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi14ELi0EEP6recordPS1_ll,comdat
.LCOLDE77:
	.section	.text._Z13access_randomILi14ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi14ELi0EEP6recordPS1_ll,comdat
.LHOTE77:
	.section	.text.unlikely._Z13access_randomILi15ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi15ELi1EEP6recordPS1_ll,comdat
.LCOLDB78:
	.section	.text._Z13access_randomILi15ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi15ELi1EEP6recordPS1_ll,comdat
.LHOTB78:
	.p2align 4,,15
	.weak	_Z13access_randomILi15ELi1EEP6recordPS1_ll
	.type	_Z13access_randomILi15ELi1EEP6recordPS1_ll, @function
_Z13access_randomILi15ELi1EEP6recordPS1_ll:
.LFB252:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	movq	%rdi, %rax
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
	movq	%rdx, -144(%rbp)
	testq	%rdx, %rdx
	jle	.L1627
	movq	72(%rax), %rcx
	movq	%rsi, -56(%rbp)
	movq	80(%rax), %rdx
	movq	$0, -128(%rbp)
	movq	112(%rdi), %rdi
	movq	88(%rax), %r15
	movq	%rcx, -72(%rbp)
	movq	96(%rax), %rcx
	movq	(%rax), %r14
	movq	%rdx, -80(%rbp)
	movq	%rdi, -64(%rbp)
	movq	8(%rax), %r13
	movq	16(%rax), %r12
	movq	%r15, -88(%rbp)
	movq	%rcx, -96(%rbp)
	leaq	-1(%rsi), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, %rdx
	movq	32(%rax), %rdi
	movq	40(%rax), %r11
	shrq	$63, %rdx
	movq	48(%rax), %r10
	addq	%rdx, %rcx
	movq	56(%rax), %r9
	sarq	%rcx
	movq	64(%rax), %r8
	movq	%rcx, -136(%rbp)
	addq	%rcx, %rcx
	movq	104(%rax), %rax
	movq	%rcx, -112(%rbp)
	movq	%rax, %r15
	leaq	1(%rsi,%rsi), %rax
	movq	%r15, %rsi
	movq	%rax, -120(%rbp)
	.p2align 4,,10
	.p2align 3
.L1620:
#APP
# 207 "mem.cc" 1
	# random loop begin (n_chains = $15, payload = $1)
# 0 "" 2
#NO_APP
	xorl	%ecx, %ecx
	cmpq	$0, -136(%rbp)
	jle	.L1621
	xorl	%eax, %eax
	movq	%rsi, -104(%rbp)
	jmp	.L1616
	.p2align 4,,10
	.p2align 3
.L1622:
	movq	%rdx, %rax
.L1616:
	leaq	1(%rcx,%rax), %rdx
	movq	%rdx, %r15
	subq	-56(%rbp), %r15
	js	.L1615
	movq	%r15, %rsi
	subq	-56(%rbp), %rsi
	movq	%rsi, %rdx
	cmovs	%r15, %rdx
.L1615:
	salq	$6, %rax
	addq	$2, %rcx
	leaq	(%r14,%rax), %r15
	leaq	0(%r13,%rax), %rsi
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r12,%rax), %r15
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	leaq	(%rbx,%rax), %rsi
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rdi,%rax), %r15
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	leaq	(%r11,%rax), %rsi
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r10,%rax), %r15
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	leaq	(%r9,%rax), %rsi
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r8,%rax), %r15
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	movq	-72(%rbp), %rsi
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rsi,%rax), %r15
	movq	-80(%rbp), %rsi
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rsi,%rax), %r15
	movq	-88(%rbp), %rsi
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rsi,%rax), %r15
	movq	-96(%rbp), %rsi
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rsi,%rax), %r15
	movq	-104(%rbp), %rsi
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rsi,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	addq	-64(%rbp), %rax
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	cmpq	-112(%rbp), %rcx
	jne	.L1622
	movq	-136(%rbp), %r15
	movq	%rdx, %rcx
	salq	$6, %rcx
	leaq	1(%r15), %r15
.L1614:
	movq	-56(%rbp), %rax
	subq	%rdx, %rax
	leaq	(%r14,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	0(%r13,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r12,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rbx,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rdi,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r11,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r10,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r9,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r8,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	movq	-72(%rbp), %rdx
	addq	%rcx, %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	movq	-80(%rbp), %rdx
	addq	%rcx, %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	movq	-88(%rbp), %rdx
	addq	%rcx, %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	movq	-96(%rbp), %rdx
	addq	%rcx, %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rsi,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	addq	-64(%rbp), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	cmpq	%r15, -56(%rbp)
	jle	.L1623
	leaq	1(%r15,%r15), %rdx
	jmp	.L1619
	.p2align 4,,10
	.p2align 3
.L1618:
	salq	$6, %rax
	addq	$2, %rdx
	leaq	(%r14,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	0(%r13,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r12,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rbx,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rdi,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r11,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r10,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r9,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r8,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	movq	-72(%rbp), %r15
	addq	%rax, %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	movq	-80(%rbp), %r15
	addq	%rax, %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	movq	-88(%rbp), %r15
	addq	%rax, %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	movq	-96(%rbp), %r15
	addq	%rax, %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rsi,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	addq	-64(%rbp), %rax
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	cmpq	%rdx, -120(%rbp)
	je	.L1617
	movq	%rcx, %rax
.L1619:
	movq	%rax, %rcx
	subq	%rdx, %rcx
	jns	.L1618
	movq	-56(%rbp), %r15
	addq	%r15, %rcx
	jns	.L1618
	addq	%r15, %rcx
	jmp	.L1618
.L1623:
	movq	%rax, %rcx
	.p2align 4,,10
	.p2align 3
.L1617:
#APP
# 249 "mem.cc" 1
	# random loop end (n_chains = $15, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, -128(%rbp)
	movq	-128(%rbp), %r15
	cmpq	%r15, -144(%rbp)
	jne	.L1620
	salq	$6, %rcx
	vzeroupper
	movq	-64(%rbp), %rax
.L1613:
	addq	%rcx, %rax
	popq	%rbx
	popq	%rdx
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%rdx), %rsp
	.cfi_def_cfa 7, 8
	ret
.L1621:
	.cfi_restore_state
	movl	$1, %r15d
	xorl	%edx, %edx
	jmp	.L1614
.L1627:
	movq	112(%rdi), %rax
	xorl	%ecx, %ecx
	movq	%rax, -64(%rbp)
	jmp	.L1613
	.cfi_endproc
.LFE252:
	.size	_Z13access_randomILi15ELi1EEP6recordPS1_ll, .-_Z13access_randomILi15ELi1EEP6recordPS1_ll
	.section	.text.unlikely._Z13access_randomILi15ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi15ELi1EEP6recordPS1_ll,comdat
.LCOLDE78:
	.section	.text._Z13access_randomILi15ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi15ELi1EEP6recordPS1_ll,comdat
.LHOTE78:
	.section	.text.unlikely._Z13access_randomILi15ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi15ELi0EEP6recordPS1_ll,comdat
.LCOLDB79:
	.section	.text._Z13access_randomILi15ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi15ELi0EEP6recordPS1_ll,comdat
.LHOTB79:
	.p2align 4,,15
	.weak	_Z13access_randomILi15ELi0EEP6recordPS1_ll
	.type	_Z13access_randomILi15ELi0EEP6recordPS1_ll, @function
_Z13access_randomILi15ELi0EEP6recordPS1_ll:
.LFB255:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %rax
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
	movq	%rdx, -8(%rsp)
	testq	%rdx, %rdx
	jle	.L1655
	movq	96(%rax), %r15
	movq	%rsi, -56(%rsp)
	movq	80(%rax), %rdx
	movq	$0, -24(%rsp)
	movq	112(%rdi), %rdi
	movq	88(%rax), %r14
	movq	%r15, -64(%rsp)
	leaq	-1(%rsi), %r15
	movq	(%rax), %r13
	movq	8(%rax), %r12
	movq	%rdx, -80(%rsp)
	movq	%r15, %rdx
	movq	%rdi, -88(%rsp)
	movq	16(%rax), %rbp
	shrq	$63, %rdx
	movq	24(%rax), %rbx
	addq	%rdx, %r15
	movq	%r14, -72(%rsp)
	movq	32(%rax), %rdi
	sarq	%r15
	movq	40(%rax), %r11
	movq	%r15, -16(%rsp)
	addq	%r15, %r15
	movq	48(%rax), %r10
	movq	%r15, -40(%rsp)
	movq	56(%rax), %r9
	movq	64(%rax), %r8
	movq	72(%rax), %rcx
	movq	104(%rax), %rax
	movq	%rax, %r14
	leaq	1(%rsi,%rsi), %rax
	movq	%r14, %rsi
	movq	%rax, -32(%rsp)
	.p2align 4,,10
	.p2align 3
.L1637:
#APP
# 207 "mem.cc" 1
	# random loop begin (n_chains = $15, payload = $0)
# 0 "" 2
#NO_APP
	xorl	%r14d, %r14d
	cmpq	$0, -16(%rsp)
	jle	.L1638
	xorl	%eax, %eax
	movq	%rcx, -48(%rsp)
	jmp	.L1633
	.p2align 4,,10
	.p2align 3
.L1639:
	movq	%rdx, %rax
.L1633:
	leaq	1(%r14,%rax), %rdx
	movq	%rdx, %r15
	subq	-56(%rsp), %r15
	js	.L1632
	movq	%r15, %rcx
	subq	-56(%rsp), %rcx
	movq	%rcx, %rdx
	cmovs	%r15, %rdx
.L1632:
	salq	$6, %rax
	addq	$2, %r14
	leaq	(%r12,%rax), %rcx
	leaq	0(%r13,%rax), %r15
	movq	(%r15), %r15
	movq	(%rcx), %r15
	leaq	(%rbx,%rax), %rcx
	leaq	0(%rbp,%rax), %r15
	movq	(%r15), %r15
	movq	(%rcx), %r15
	leaq	(%r11,%rax), %rcx
	leaq	(%rdi,%rax), %r15
	movq	(%r15), %r15
	movq	(%rcx), %r15
	leaq	(%r9,%rax), %rcx
	leaq	(%r10,%rax), %r15
	movq	(%r15), %r15
	movq	(%rcx), %r15
	leaq	(%r8,%rax), %r15
	movq	-48(%rsp), %rcx
	movq	(%r15), %r15
	leaq	(%rcx,%rax), %r15
	movq	-80(%rsp), %rcx
	movq	(%r15), %r15
	leaq	(%rcx,%rax), %r15
	movq	-72(%rsp), %rcx
	movq	(%r15), %r15
	leaq	(%rcx,%rax), %r15
	movq	-64(%rsp), %rcx
	movq	(%r15), %r15
	leaq	(%rcx,%rax), %r15
	leaq	(%rsi,%rax), %rcx
	addq	-88(%rsp), %rax
	movq	(%r15), %r15
	movq	(%rcx), %r15
	movq	(%rax), %rax
	cmpq	-40(%rsp), %r14
	jne	.L1639
	movq	-16(%rsp), %r15
	movq	%rdx, %r14
	movq	-48(%rsp), %rcx
	salq	$6, %r14
	leaq	1(%r15), %r15
.L1631:
	movq	-56(%rsp), %rax
	subq	%rdx, %rax
	leaq	0(%r13,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%r12,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	0(%rbp,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%rbx,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%rdi,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%r11,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%r10,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%r9,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%r8,%r14), %rdx
	movq	(%rdx), %rdx
	leaq	(%rcx,%r14), %rdx
	movq	(%rdx), %rdx
	movq	-80(%rsp), %rdx
	addq	%r14, %rdx
	movq	(%rdx), %rdx
	movq	-72(%rsp), %rdx
	addq	%r14, %rdx
	movq	(%rdx), %rdx
	movq	-64(%rsp), %rdx
	addq	%r14, %rdx
	movq	(%rdx), %rdx
	leaq	(%rsi,%r14), %rdx
	addq	-88(%rsp), %r14
	movq	(%rdx), %rdx
	movq	(%r14), %rdx
	cmpq	%r15, -56(%rsp)
	jle	.L1640
	leaq	1(%r15,%r15), %r14
	movq	-32(%rsp), %r15
	subq	%r14, %r15
	andl	$2, %r15d
	jne	.L1636
	movq	%rax, %r15
	subq	%r14, %r15
	js	.L1656
.L1643:
	salq	$6, %rax
	addq	$2, %r14
	leaq	0(%r13,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	(%r12,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	0(%rbp,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	(%rbx,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	(%rdi,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	(%r11,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	(%r10,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	(%r9,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	(%r8,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	(%rcx,%rax), %rdx
	movq	(%rdx), %rdx
	movq	-80(%rsp), %rdx
	addq	%rax, %rdx
	movq	(%rdx), %rdx
	movq	-72(%rsp), %rdx
	addq	%rax, %rdx
	movq	(%rdx), %rdx
	movq	-64(%rsp), %rdx
	addq	%rax, %rdx
	movq	(%rdx), %rdx
	leaq	(%rsi,%rax), %rdx
	addq	-88(%rsp), %rax
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	%r15, %rax
	jmp	.L1636
	.p2align 4,,10
	.p2align 3
.L1635:
	salq	$6, %rax
	addq	$2, %r14
	leaq	0(%r13,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r12,%rax), %r15
	movq	(%r15), %r15
	leaq	0(%rbp,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rbx,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r11,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rcx,%rax), %r15
	movq	(%r15), %r15
	movq	-80(%rsp), %r15
	addq	%rax, %r15
	movq	(%r15), %r15
	movq	-72(%rsp), %r15
	addq	%rax, %r15
	movq	(%r15), %r15
	movq	-64(%rsp), %r15
	addq	%rax, %r15
	movq	(%r15), %r15
	leaq	(%rsi,%rax), %r15
	addq	-88(%rsp), %rax
	movq	(%r15), %r15
	movq	(%rax), %rax
	cmpq	%r14, -32(%rsp)
	je	.L1634
	movq	%rdx, %rax
	subq	%r14, %rax
	js	.L1657
.L1646:
	salq	$6, %rdx
	addq	$2, %r14
	leaq	0(%r13,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r12,%rdx), %r15
	movq	(%r15), %r15
	leaq	0(%rbp,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rbx,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r11,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rcx,%rdx), %r15
	movq	(%r15), %r15
	movq	-80(%rsp), %r15
	addq	%rdx, %r15
	movq	(%r15), %r15
	movq	-72(%rsp), %r15
	addq	%rdx, %r15
	movq	(%r15), %r15
	movq	-64(%rsp), %r15
	addq	%rdx, %r15
	movq	(%r15), %r15
	leaq	(%rsi,%rdx), %r15
	addq	-88(%rsp), %rdx
	movq	(%r15), %r15
	movq	(%rdx), %rdx
.L1636:
	movq	%rax, %rdx
	subq	%r14, %rdx
	jns	.L1635
	movq	-56(%rsp), %r15
	addq	%r15, %rdx
	jns	.L1635
	addq	%r15, %rdx
	jmp	.L1635
	.p2align 4,,10
	.p2align 3
.L1657:
	movq	-56(%rsp), %r15
	addq	%r15, %rax
	jns	.L1646
	addq	%r15, %rax
	jmp	.L1646
.L1640:
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L1634:
#APP
# 249 "mem.cc" 1
	# random loop end (n_chains = $15, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, -24(%rsp)
	movq	-24(%rsp), %r14
	cmpq	%r14, -8(%rsp)
	jne	.L1637
	movq	-88(%rsp), %rax
	salq	$6, %rdx
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	addq	%rdx, %rax
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1656:
	.cfi_restore_state
	movq	-56(%rsp), %rdx
	addq	%rdx, %r15
	jns	.L1643
	addq	%rdx, %r15
	jmp	.L1643
.L1638:
	movl	$1, %r15d
	xorl	%edx, %edx
	jmp	.L1631
.L1655:
	movq	112(%rdi), %rax
	xorl	%edx, %edx
	movq	%rax, -88(%rsp)
	popq	%rbx
	.cfi_def_cfa_offset 48
	addq	%rdx, %rax
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
.LFE255:
	.size	_Z13access_randomILi15ELi0EEP6recordPS1_ll, .-_Z13access_randomILi15ELi0EEP6recordPS1_ll
	.section	.text.unlikely._Z13access_randomILi15ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi15ELi0EEP6recordPS1_ll,comdat
.LCOLDE79:
	.section	.text._Z13access_randomILi15ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi15ELi0EEP6recordPS1_ll,comdat
.LHOTE79:
	.section	.text.unlikely._Z13access_randomILi16ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi16ELi1EEP6recordPS1_ll,comdat
.LCOLDB80:
	.section	.text._Z13access_randomILi16ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi16ELi1EEP6recordPS1_ll,comdat
.LHOTB80:
	.p2align 4,,15
	.weak	_Z13access_randomILi16ELi1EEP6recordPS1_ll
	.type	_Z13access_randomILi16ELi1EEP6recordPS1_ll, @function
_Z13access_randomILi16ELi1EEP6recordPS1_ll:
.LFB258:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	movq	%rdi, %rax
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
	subq	$8, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	%rdx, -152(%rbp)
	testq	%rdx, %rdx
	jle	.L1674
	movq	72(%rax), %rcx
	movq	%rsi, -64(%rbp)
	movq	80(%rax), %rdx
	movq	$0, -136(%rbp)
	movq	120(%rdi), %rdi
	movq	88(%rax), %r15
	movq	%rcx, -72(%rbp)
	movq	96(%rax), %rcx
	movq	%rdx, -80(%rbp)
	movq	104(%rax), %rdx
	movq	%rdi, -56(%rbp)
	movq	(%rax), %r14
	movq	8(%rax), %r13
	movq	%r15, -88(%rbp)
	movq	%rcx, -96(%rbp)
	leaq	-1(%rsi), %rcx
	movq	16(%rax), %r12
	movq	24(%rax), %rbx
	movq	%rdx, -104(%rbp)
	movq	%rcx, %rdx
	movq	32(%rax), %rdi
	shrq	$63, %rdx
	movq	40(%rax), %r11
	addq	%rdx, %rcx
	movq	48(%rax), %r10
	sarq	%rcx
	movq	56(%rax), %r9
	movq	%rcx, -144(%rbp)
	addq	%rcx, %rcx
	movq	64(%rax), %r8
	movq	%rcx, -120(%rbp)
	movq	112(%rax), %rax
	movq	%rax, %r15
	leaq	1(%rsi,%rsi), %rax
	movq	%r15, %rsi
	movq	%rax, -128(%rbp)
	.p2align 4,,10
	.p2align 3
.L1667:
#APP
# 207 "mem.cc" 1
	# random loop begin (n_chains = $16, payload = $1)
# 0 "" 2
#NO_APP
	xorl	%ecx, %ecx
	cmpq	$0, -144(%rbp)
	jle	.L1668
	xorl	%eax, %eax
	movq	%rsi, -112(%rbp)
	jmp	.L1663
	.p2align 4,,10
	.p2align 3
.L1669:
	movq	%rdx, %rax
.L1663:
	leaq	1(%rcx,%rax), %rdx
	movq	%rdx, %r15
	subq	-64(%rbp), %r15
	js	.L1662
	movq	%r15, %rsi
	subq	-64(%rbp), %rsi
	movq	%rsi, %rdx
	cmovs	%r15, %rdx
.L1662:
	salq	$6, %rax
	addq	$2, %rcx
	leaq	(%r14,%rax), %r15
	leaq	0(%r13,%rax), %rsi
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r12,%rax), %r15
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	leaq	(%rbx,%rax), %rsi
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rdi,%rax), %r15
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	leaq	(%r11,%rax), %rsi
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r10,%rax), %r15
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	leaq	(%r9,%rax), %rsi
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r8,%rax), %r15
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	movq	-72(%rbp), %rsi
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rsi,%rax), %r15
	movq	-80(%rbp), %rsi
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rsi,%rax), %r15
	movq	-88(%rbp), %rsi
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rsi,%rax), %r15
	movq	-96(%rbp), %rsi
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rsi,%rax), %r15
	movq	-104(%rbp), %rsi
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rsi,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	movq	-112(%rbp), %rsi
	leaq	(%rsi,%rax), %r15
	addq	-56(%rbp), %rax
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	cmpq	-120(%rbp), %rcx
	jne	.L1669
	movq	-144(%rbp), %r15
	movq	%rdx, %rcx
	salq	$6, %rcx
	leaq	1(%r15), %r15
.L1661:
	movq	-64(%rbp), %rax
	subq	%rdx, %rax
	leaq	(%r14,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	0(%r13,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r12,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rbx,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rdi,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r11,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r10,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r9,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r8,%rcx), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	movq	-72(%rbp), %rdx
	addq	%rcx, %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	movq	-80(%rbp), %rdx
	addq	%rcx, %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	movq	-88(%rbp), %rdx
	addq	%rcx, %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	movq	-96(%rbp), %rdx
	addq	%rcx, %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	movq	-104(%rbp), %rdx
	addq	%rcx, %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rsi,%rcx), %rdx
	addq	-56(%rbp), %rcx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	cmpq	%r15, -64(%rbp)
	jle	.L1670
	leaq	1(%r15,%r15), %rdx
	jmp	.L1666
	.p2align 4,,10
	.p2align 3
.L1665:
	salq	$6, %rax
	addq	$2, %rdx
	leaq	(%r14,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	0(%r13,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r12,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rbx,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rdi,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r11,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r10,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r9,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r8,%rax), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	movq	-72(%rbp), %r15
	addq	%rax, %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	movq	-80(%rbp), %r15
	addq	%rax, %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	movq	-88(%rbp), %r15
	addq	%rax, %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	movq	-96(%rbp), %r15
	addq	%rax, %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	movq	-104(%rbp), %r15
	addq	%rax, %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rsi,%rax), %r15
	addq	-56(%rbp), %rax
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	cmpq	%rdx, -128(%rbp)
	je	.L1664
	movq	%rcx, %rax
.L1666:
	movq	%rax, %rcx
	subq	%rdx, %rcx
	jns	.L1665
	movq	-64(%rbp), %r15
	addq	%r15, %rcx
	jns	.L1665
	addq	%r15, %rcx
	jmp	.L1665
.L1670:
	movq	%rax, %rcx
	.p2align 4,,10
	.p2align 3
.L1664:
#APP
# 249 "mem.cc" 1
	# random loop end (n_chains = $16, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, -136(%rbp)
	movq	-136(%rbp), %r15
	cmpq	%r15, -152(%rbp)
	jne	.L1667
	salq	$6, %rcx
	vzeroupper
	movq	-56(%rbp), %rax
.L1660:
	addq	$8, %rsp
	addq	%rcx, %rax
	popq	%rbx
	popq	%rdx
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%rdx), %rsp
	.cfi_def_cfa 7, 8
	ret
.L1668:
	.cfi_restore_state
	movl	$1, %r15d
	xorl	%edx, %edx
	jmp	.L1661
.L1674:
	movq	120(%rdi), %rax
	xorl	%ecx, %ecx
	movq	%rax, -56(%rbp)
	jmp	.L1660
	.cfi_endproc
.LFE258:
	.size	_Z13access_randomILi16ELi1EEP6recordPS1_ll, .-_Z13access_randomILi16ELi1EEP6recordPS1_ll
	.section	.text.unlikely._Z13access_randomILi16ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi16ELi1EEP6recordPS1_ll,comdat
.LCOLDE80:
	.section	.text._Z13access_randomILi16ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi16ELi1EEP6recordPS1_ll,comdat
.LHOTE80:
	.section	.text.unlikely._Z13access_randomILi16ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi16ELi0EEP6recordPS1_ll,comdat
.LCOLDB81:
	.section	.text._Z13access_randomILi16ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi16ELi0EEP6recordPS1_ll,comdat
.LHOTB81:
	.p2align 4,,15
	.weak	_Z13access_randomILi16ELi0EEP6recordPS1_ll
	.type	_Z13access_randomILi16ELi0EEP6recordPS1_ll, @function
_Z13access_randomILi16ELi0EEP6recordPS1_ll:
.LFB261:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %rax
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
	movq	%rdx, -8(%rsp)
	testq	%rdx, %rdx
	jle	.L1691
	movq	80(%rax), %rdx
	movq	%rsi, -88(%rsp)
	movq	88(%rax), %r14
	movq	$0, -24(%rsp)
	movq	120(%rdi), %rdi
	movq	96(%rax), %r15
	movq	%rdx, -80(%rsp)
	movq	104(%rax), %rdx
	movq	%r14, -72(%rsp)
	leaq	-1(%rsi), %r14
	movq	(%rax), %r13
	movq	%rdi, -96(%rsp)
	movq	8(%rax), %r12
	movq	16(%rax), %rbp
	movq	%r15, -64(%rsp)
	movq	24(%rax), %rbx
	movq	%rdx, -56(%rsp)
	movq	%r14, %rdx
	movq	32(%rax), %rdi
	shrq	$63, %rdx
	movq	40(%rax), %r11
	addq	%rdx, %r14
	movq	48(%rax), %r10
	sarq	%r14
	movq	56(%rax), %r9
	movq	%r14, -16(%rsp)
	addq	%r14, %r14
	movq	64(%rax), %r8
	movq	%r14, -40(%rsp)
	movq	72(%rax), %rcx
	movq	112(%rax), %rax
	movq	%rax, %r15
	leaq	1(%rsi,%rsi), %rax
	movq	%rax, -32(%rsp)
	.p2align 4,,10
	.p2align 3
.L1684:
#APP
# 207 "mem.cc" 1
	# random loop begin (n_chains = $16, payload = $0)
# 0 "" 2
#NO_APP
	xorl	%esi, %esi
	cmpq	$0, -16(%rsp)
	jle	.L1685
	xorl	%eax, %eax
	movq	%rcx, -48(%rsp)
	jmp	.L1680
	.p2align 4,,10
	.p2align 3
.L1686:
	movq	%rdx, %rax
.L1680:
	leaq	1(%rsi,%rax), %rdx
	movq	%rdx, %r14
	subq	-88(%rsp), %r14
	js	.L1679
	movq	%r14, %rcx
	subq	-88(%rsp), %rcx
	movq	%rcx, %rdx
	cmovs	%r14, %rdx
.L1679:
	salq	$6, %rax
	addq	$2, %rsi
	leaq	(%r12,%rax), %rcx
	leaq	0(%r13,%rax), %r14
	movq	(%r14), %r14
	movq	(%rcx), %r14
	leaq	(%rbx,%rax), %rcx
	leaq	0(%rbp,%rax), %r14
	movq	(%r14), %r14
	movq	(%rcx), %r14
	leaq	(%r11,%rax), %rcx
	leaq	(%rdi,%rax), %r14
	movq	(%r14), %r14
	movq	(%rcx), %r14
	leaq	(%r9,%rax), %rcx
	leaq	(%r10,%rax), %r14
	movq	(%r14), %r14
	movq	(%rcx), %r14
	leaq	(%r8,%rax), %r14
	movq	-48(%rsp), %rcx
	movq	(%r14), %r14
	leaq	(%rcx,%rax), %r14
	movq	-80(%rsp), %rcx
	movq	(%r14), %r14
	leaq	(%rcx,%rax), %r14
	movq	-72(%rsp), %rcx
	movq	(%r14), %r14
	leaq	(%rcx,%rax), %r14
	movq	-64(%rsp), %rcx
	movq	(%r14), %r14
	leaq	(%rcx,%rax), %r14
	movq	-56(%rsp), %rcx
	movq	(%r14), %r14
	leaq	(%rcx,%rax), %r14
	leaq	(%r15,%rax), %rcx
	addq	-96(%rsp), %rax
	movq	(%r14), %r14
	movq	(%rcx), %r14
	movq	(%rax), %rax
	cmpq	-40(%rsp), %rsi
	jne	.L1686
	movq	-16(%rsp), %r14
	movq	%rdx, %rsi
	movq	-48(%rsp), %rcx
	salq	$6, %rsi
	leaq	1(%r14), %r14
.L1678:
	movq	-88(%rsp), %rax
	subq	%rdx, %rax
	leaq	0(%r13,%rsi), %rdx
	movq	(%rdx), %rdx
	leaq	(%r12,%rsi), %rdx
	movq	(%rdx), %rdx
	leaq	0(%rbp,%rsi), %rdx
	movq	(%rdx), %rdx
	leaq	(%rbx,%rsi), %rdx
	movq	(%rdx), %rdx
	leaq	(%rdi,%rsi), %rdx
	movq	(%rdx), %rdx
	leaq	(%r11,%rsi), %rdx
	movq	(%rdx), %rdx
	leaq	(%r10,%rsi), %rdx
	movq	(%rdx), %rdx
	leaq	(%r9,%rsi), %rdx
	movq	(%rdx), %rdx
	leaq	(%r8,%rsi), %rdx
	movq	(%rdx), %rdx
	leaq	(%rcx,%rsi), %rdx
	movq	(%rdx), %rdx
	movq	-80(%rsp), %rdx
	addq	%rsi, %rdx
	movq	(%rdx), %rdx
	movq	-72(%rsp), %rdx
	addq	%rsi, %rdx
	movq	(%rdx), %rdx
	movq	-64(%rsp), %rdx
	addq	%rsi, %rdx
	movq	(%rdx), %rdx
	movq	-56(%rsp), %rdx
	addq	%rsi, %rdx
	movq	(%rdx), %rdx
	leaq	(%r15,%rsi), %rdx
	addq	-96(%rsp), %rsi
	movq	(%rdx), %rdx
	movq	(%rsi), %rdx
	cmpq	%r14, -88(%rsp)
	jle	.L1687
	leaq	1(%r14,%r14), %rdx
	jmp	.L1683
	.p2align 4,,10
	.p2align 3
.L1682:
	salq	$6, %rax
	addq	$2, %rdx
	leaq	0(%r13,%rax), %rsi
	movq	(%rsi), %rsi
	leaq	(%r12,%rax), %rsi
	movq	(%rsi), %rsi
	leaq	0(%rbp,%rax), %rsi
	movq	(%rsi), %rsi
	leaq	(%rbx,%rax), %rsi
	movq	(%rsi), %rsi
	leaq	(%rdi,%rax), %rsi
	movq	(%rsi), %rsi
	leaq	(%r11,%rax), %rsi
	movq	(%rsi), %rsi
	leaq	(%r10,%rax), %rsi
	movq	(%rsi), %rsi
	leaq	(%r9,%rax), %rsi
	movq	(%rsi), %rsi
	leaq	(%r8,%rax), %rsi
	movq	(%rsi), %rsi
	leaq	(%rcx,%rax), %rsi
	movq	(%rsi), %rsi
	movq	-80(%rsp), %rsi
	addq	%rax, %rsi
	movq	(%rsi), %rsi
	movq	-72(%rsp), %rsi
	addq	%rax, %rsi
	movq	(%rsi), %rsi
	movq	-64(%rsp), %rsi
	addq	%rax, %rsi
	movq	(%rsi), %rsi
	movq	-56(%rsp), %rsi
	addq	%rax, %rsi
	movq	(%rsi), %rsi
	leaq	(%r15,%rax), %rsi
	addq	-96(%rsp), %rax
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	cmpq	%rdx, -32(%rsp)
	je	.L1681
	movq	%r14, %rax
.L1683:
	movq	%rax, %r14
	subq	%rdx, %r14
	jns	.L1682
	movq	-88(%rsp), %rsi
	addq	%rsi, %r14
	jns	.L1682
	addq	%rsi, %r14
	jmp	.L1682
.L1687:
	movq	%rax, %r14
	.p2align 4,,10
	.p2align 3
.L1681:
#APP
# 249 "mem.cc" 1
	# random loop end (n_chains = $16, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, -24(%rsp)
	movq	-24(%rsp), %rsi
	cmpq	%rsi, -8(%rsp)
	jne	.L1684
	movq	-96(%rsp), %rax
	salq	$6, %r14
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	addq	%r14, %rax
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L1685:
	.cfi_restore_state
	movl	$1, %r14d
	xorl	%edx, %edx
	jmp	.L1678
.L1691:
	movq	120(%rdi), %rax
	xorl	%r14d, %r14d
	movq	%rax, -96(%rsp)
	popq	%rbx
	.cfi_def_cfa_offset 48
	addq	%r14, %rax
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
.LFE261:
	.size	_Z13access_randomILi16ELi0EEP6recordPS1_ll, .-_Z13access_randomILi16ELi0EEP6recordPS1_ll
	.section	.text.unlikely._Z13access_randomILi16ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi16ELi0EEP6recordPS1_ll,comdat
.LCOLDE81:
	.section	.text._Z13access_randomILi16ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi16ELi0EEP6recordPS1_ll,comdat
.LHOTE81:
	.section	.text.unlikely._Z13access_randomILi17ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi17ELi1EEP6recordPS1_ll,comdat
.LCOLDB82:
	.section	.text._Z13access_randomILi17ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi17ELi1EEP6recordPS1_ll,comdat
.LHOTB82:
	.p2align 4,,15
	.weak	_Z13access_randomILi17ELi1EEP6recordPS1_ll
	.type	_Z13access_randomILi17ELi1EEP6recordPS1_ll, @function
_Z13access_randomILi17ELi1EEP6recordPS1_ll:
.LFB264:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	movq	%rdi, %rax
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
	subq	$8, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	%rdx, -160(%rbp)
	testq	%rdx, %rdx
	jle	.L1701
	leaq	-1(%rsi), %rdx
	movq	72(%rax), %r14
	movq	%rsi, -56(%rbp)
	movq	80(%rax), %r15
	leaq	1(%rsi,%rsi), %rbx
	movq	%rdx, %rcx
	movq	$0, -144(%rbp)
	shrq	$63, %rcx
	movq	%rbx, -136(%rbp)
	movq	(%rax), %r13
	addq	%rcx, %rdx
	movq	8(%rax), %r12
	sarq	%rdx
	movq	%r14, -80(%rbp)
	movq	96(%rax), %r14
	leaq	(%rdx,%rdx), %rdi
	movq	%rdx, -152(%rbp)
	movq	88(%rax), %rdx
	movq	%rdi, -128(%rbp)
	movq	16(%rax), %rbx
	movq	24(%rax), %rdi
	movq	%r15, -88(%rbp)
	movq	32(%rax), %r11
	movq	%r14, -104(%rbp)
	movq	104(%rax), %r15
	movq	%rdx, -96(%rbp)
	movq	120(%rax), %r14
	movq	112(%rax), %rdx
	movq	40(%rax), %r10
	movq	48(%rax), %r9
	movq	%r15, -112(%rbp)
	movq	56(%rax), %r8
	movq	%r14, -72(%rbp)
	movq	64(%rax), %rcx
	movq	%rdx, %r15
	movq	128(%rax), %rax
	movq	%rax, -64(%rbp)
	.p2align 4,,10
	.p2align 3
.L1700:
#APP
# 207 "mem.cc" 1
	# random loop begin (n_chains = $17, payload = $1)
# 0 "" 2
#NO_APP
	cmpq	$0, -152(%rbp)
	jle	.L1702
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	%rcx, -120(%rbp)
	jmp	.L1696
	.p2align 4,,10
	.p2align 3
.L1703:
	movq	%rdx, %rax
.L1696:
	leaq	1(%rsi,%rax), %rdx
	movq	%rdx, %r14
	subq	-56(%rbp), %r14
	js	.L1695
	movq	%r14, %rcx
	subq	-56(%rbp), %rcx
	movq	%rcx, %rdx
	cmovs	%r14, %rdx
.L1695:
	salq	$6, %rax
	addq	$2, %rsi
	leaq	0(%r13,%rax), %r14
	vmovdqa	(%r14), %ymm0
	leaq	(%r12,%rax), %rcx
	vmovdqa	32(%r14), %ymm0
	leaq	(%rbx,%rax), %r14
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%rdi,%rax), %rcx
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	leaq	(%r11,%rax), %r14
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r10,%rax), %rcx
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	leaq	(%r9,%rax), %r14
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r8,%rax), %rcx
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	movq	-120(%rbp), %r14
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r14,%rax), %rcx
	movq	-80(%rbp), %r14
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r14,%rax), %rcx
	movq	-88(%rbp), %r14
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r14,%rax), %rcx
	movq	-96(%rbp), %r14
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r14,%rax), %rcx
	movq	-104(%rbp), %r14
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r14,%rax), %rcx
	movq	-112(%rbp), %r14
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r14,%rax), %rcx
	vmovdqa	(%rcx), %ymm0
	leaq	(%r15,%rax), %r14
	vmovdqa	32(%rcx), %ymm0
	movq	-72(%rbp), %rcx
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	leaq	(%rcx,%rax), %r14
	addq	-64(%rbp), %rax
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	cmpq	-128(%rbp), %rsi
	jne	.L1703
	movq	-152(%rbp), %r14
	movq	%rdx, %rsi
	movq	-120(%rbp), %rcx
	salq	$6, %rsi
	leaq	1(%r14), %r14
.L1694:
	movq	-56(%rbp), %rax
	subq	%rdx, %rax
	leaq	0(%r13,%rsi), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r12,%rsi), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rbx,%rsi), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rdi,%rsi), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r11,%rsi), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r10,%rsi), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r9,%rsi), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r8,%rsi), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rcx,%rsi), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	movq	-80(%rbp), %rdx
	addq	%rsi, %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	movq	-88(%rbp), %rdx
	addq	%rsi, %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	movq	-96(%rbp), %rdx
	addq	%rsi, %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	movq	-104(%rbp), %rdx
	addq	%rsi, %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	movq	-112(%rbp), %rdx
	addq	%rsi, %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r15,%rsi), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	movq	-72(%rbp), %rdx
	addq	%rsi, %rdx
	addq	-64(%rbp), %rsi
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	cmpq	%r14, -56(%rbp)
	jle	.L1704
	leaq	1(%r14,%r14), %rdx
	jmp	.L1699
	.p2align 4,,10
	.p2align 3
.L1698:
	salq	$6, %rax
	addq	$2, %rdx
	leaq	0(%r13,%rax), %rsi
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	leaq	(%r12,%rax), %rsi
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	leaq	(%rbx,%rax), %rsi
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	leaq	(%rdi,%rax), %rsi
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	leaq	(%r11,%rax), %rsi
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	leaq	(%r10,%rax), %rsi
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	leaq	(%r9,%rax), %rsi
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	leaq	(%r8,%rax), %rsi
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	leaq	(%rcx,%rax), %rsi
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	movq	-80(%rbp), %rsi
	addq	%rax, %rsi
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	movq	-88(%rbp), %rsi
	addq	%rax, %rsi
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	movq	-96(%rbp), %rsi
	addq	%rax, %rsi
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	movq	-104(%rbp), %rsi
	addq	%rax, %rsi
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	movq	-112(%rbp), %rsi
	addq	%rax, %rsi
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	leaq	(%r15,%rax), %rsi
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	movq	-72(%rbp), %rsi
	addq	%rax, %rsi
	addq	-64(%rbp), %rax
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	cmpq	-136(%rbp), %rdx
	je	.L1697
	movq	%r14, %rax
.L1699:
	movq	%rax, %r14
	subq	%rdx, %r14
	jns	.L1698
	movq	-56(%rbp), %rsi
	addq	%rsi, %r14
	jns	.L1698
	addq	%rsi, %r14
	jmp	.L1698
.L1704:
	movq	%rax, %r14
	.p2align 4,,10
	.p2align 3
.L1697:
#APP
# 249 "mem.cc" 1
	# random loop end (n_chains = $17, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, -144(%rbp)
	movq	-144(%rbp), %rsi
	cmpq	%rsi, -160(%rbp)
	jne	.L1700
	salq	$6, %r14
	vzeroupper
	movq	-64(%rbp), %rax
.L1693:
	addq	$8, %rsp
	addq	%r14, %rax
	popq	%rbx
	popq	%rdx
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%rdx), %rsp
	.cfi_def_cfa 7, 8
	ret
.L1702:
	.cfi_restore_state
	movl	$1, %r14d
	xorl	%esi, %esi
	xorl	%edx, %edx
	jmp	.L1694
.L1701:
	movq	128(%rdi), %rax
	xorl	%r14d, %r14d
	movq	%rax, -64(%rbp)
	jmp	.L1693
	.cfi_endproc
.LFE264:
	.size	_Z13access_randomILi17ELi1EEP6recordPS1_ll, .-_Z13access_randomILi17ELi1EEP6recordPS1_ll
	.section	.text.unlikely._Z13access_randomILi17ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi17ELi1EEP6recordPS1_ll,comdat
.LCOLDE82:
	.section	.text._Z13access_randomILi17ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi17ELi1EEP6recordPS1_ll,comdat
.LHOTE82:
	.section	.text.unlikely._Z13access_randomILi17ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi17ELi0EEP6recordPS1_ll,comdat
.LCOLDB83:
	.section	.text._Z13access_randomILi17ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi17ELi0EEP6recordPS1_ll,comdat
.LHOTB83:
	.p2align 4,,15
	.weak	_Z13access_randomILi17ELi0EEP6recordPS1_ll
	.type	_Z13access_randomILi17ELi0EEP6recordPS1_ll, @function
_Z13access_randomILi17ELi0EEP6recordPS1_ll:
.LFB267:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %rax
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
	movq	%rdx, -8(%rsp)
	testq	%rdx, %rdx
	jle	.L1717
	movq	80(%rax), %r14
	leaq	-1(%rsi), %rdx
	movq	%rsi, -104(%rsp)
	movq	88(%rax), %r15
	leaq	1(%rsi,%rsi), %rbx
	movq	%rdx, %rcx
	movq	$0, -24(%rsp)
	shrq	$63, %rcx
	movq	%rbx, -32(%rsp)
	movq	(%rax), %r13
	addq	%rcx, %rdx
	movq	8(%rax), %r12
	movq	%r14, -64(%rsp)
	movq	104(%rax), %r14
	sarq	%rdx
	leaq	(%rdx,%rdx), %rdi
	movq	%rdx, -16(%rsp)
	movq	16(%rax), %rbp
	movq	96(%rax), %rdx
	movq	%rdi, -40(%rsp)
	movq	24(%rax), %rbx
	movq	%r15, -56(%rsp)
	movq	32(%rax), %rdi
	movq	%r14, -88(%rsp)
	movq	112(%rax), %r15
	movq	120(%rax), %r14
	movq	40(%rax), %r11
	movq	48(%rax), %r10
	movq	56(%rax), %r9
	movq	%r15, -80(%rsp)
	movq	%rdx, %r15
	movq	64(%rax), %r8
	movq	%r14, -72(%rsp)
	movq	72(%rax), %rcx
	movq	128(%rax), %rax
	movq	%rax, -96(%rsp)
	.p2align 4,,10
	.p2align 3
.L1716:
#APP
# 207 "mem.cc" 1
	# random loop begin (n_chains = $17, payload = $0)
# 0 "" 2
#NO_APP
	cmpq	$0, -16(%rsp)
	jle	.L1718
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	%rcx, -48(%rsp)
	jmp	.L1712
	.p2align 4,,10
	.p2align 3
.L1719:
	movq	%rdx, %rax
.L1712:
	leaq	1(%rsi,%rax), %rdx
	movq	%rdx, %r14
	subq	-104(%rsp), %r14
	js	.L1711
	movq	%r14, %rcx
	subq	-104(%rsp), %rcx
	movq	%rcx, %rdx
	cmovs	%r14, %rdx
.L1711:
	salq	$6, %rax
	addq	$2, %rsi
	leaq	(%r12,%rax), %rcx
	leaq	0(%r13,%rax), %r14
	movq	(%r14), %r14
	movq	(%rcx), %r14
	leaq	(%rbx,%rax), %rcx
	leaq	0(%rbp,%rax), %r14
	movq	(%r14), %r14
	movq	(%rcx), %r14
	leaq	(%r11,%rax), %rcx
	leaq	(%rdi,%rax), %r14
	movq	(%r14), %r14
	movq	(%rcx), %r14
	leaq	(%r9,%rax), %rcx
	leaq	(%r10,%rax), %r14
	movq	(%r14), %r14
	movq	(%rcx), %r14
	leaq	(%r8,%rax), %r14
	movq	-48(%rsp), %rcx
	movq	(%r14), %r14
	leaq	(%rcx,%rax), %r14
	movq	-64(%rsp), %rcx
	movq	(%r14), %r14
	leaq	(%rcx,%rax), %r14
	movq	-56(%rsp), %rcx
	movq	(%r14), %r14
	leaq	(%rcx,%rax), %r14
	leaq	(%r15,%rax), %rcx
	movq	(%r14), %r14
	movq	(%rcx), %r14
	movq	-88(%rsp), %r14
	leaq	(%r14,%rax), %rcx
	movq	(%rcx), %r14
	movq	-80(%rsp), %r14
	leaq	(%r14,%rax), %rcx
	movq	(%rcx), %r14
	movq	-72(%rsp), %r14
	leaq	(%r14,%rax), %rcx
	addq	-96(%rsp), %rax
	movq	(%rcx), %r14
	movq	(%rax), %rax
	cmpq	-40(%rsp), %rsi
	jne	.L1719
	movq	-16(%rsp), %r14
	movq	%rdx, %rsi
	movq	-48(%rsp), %rcx
	salq	$6, %rsi
	leaq	1(%r14), %r14
.L1710:
	movq	-104(%rsp), %rax
	subq	%rdx, %rax
	leaq	0(%r13,%rsi), %rdx
	movq	(%rdx), %rdx
	leaq	(%r12,%rsi), %rdx
	movq	(%rdx), %rdx
	leaq	0(%rbp,%rsi), %rdx
	movq	(%rdx), %rdx
	leaq	(%rbx,%rsi), %rdx
	movq	(%rdx), %rdx
	leaq	(%rdi,%rsi), %rdx
	movq	(%rdx), %rdx
	leaq	(%r11,%rsi), %rdx
	movq	(%rdx), %rdx
	leaq	(%r10,%rsi), %rdx
	movq	(%rdx), %rdx
	leaq	(%r9,%rsi), %rdx
	movq	(%rdx), %rdx
	leaq	(%r8,%rsi), %rdx
	movq	(%rdx), %rdx
	leaq	(%rcx,%rsi), %rdx
	movq	(%rdx), %rdx
	movq	-64(%rsp), %rdx
	addq	%rsi, %rdx
	movq	(%rdx), %rdx
	movq	-56(%rsp), %rdx
	addq	%rsi, %rdx
	movq	(%rdx), %rdx
	leaq	(%r15,%rsi), %rdx
	movq	(%rdx), %rdx
	movq	-88(%rsp), %rdx
	addq	%rsi, %rdx
	movq	(%rdx), %rdx
	movq	-80(%rsp), %rdx
	addq	%rsi, %rdx
	movq	(%rdx), %rdx
	movq	-72(%rsp), %rdx
	addq	%rsi, %rdx
	addq	-96(%rsp), %rsi
	movq	(%rdx), %rdx
	movq	(%rsi), %rdx
	cmpq	%r14, -104(%rsp)
	jle	.L1720
	leaq	1(%r14,%r14), %rdx
	jmp	.L1715
	.p2align 4,,10
	.p2align 3
.L1714:
	salq	$6, %rax
	addq	$2, %rdx
	leaq	0(%r13,%rax), %rsi
	movq	(%rsi), %rsi
	leaq	(%r12,%rax), %rsi
	movq	(%rsi), %rsi
	leaq	0(%rbp,%rax), %rsi
	movq	(%rsi), %rsi
	leaq	(%rbx,%rax), %rsi
	movq	(%rsi), %rsi
	leaq	(%rdi,%rax), %rsi
	movq	(%rsi), %rsi
	leaq	(%r11,%rax), %rsi
	movq	(%rsi), %rsi
	leaq	(%r10,%rax), %rsi
	movq	(%rsi), %rsi
	leaq	(%r9,%rax), %rsi
	movq	(%rsi), %rsi
	leaq	(%r8,%rax), %rsi
	movq	(%rsi), %rsi
	leaq	(%rcx,%rax), %rsi
	movq	(%rsi), %rsi
	movq	-64(%rsp), %rsi
	addq	%rax, %rsi
	movq	(%rsi), %rsi
	movq	-56(%rsp), %rsi
	addq	%rax, %rsi
	movq	(%rsi), %rsi
	leaq	(%r15,%rax), %rsi
	movq	(%rsi), %rsi
	movq	-88(%rsp), %rsi
	addq	%rax, %rsi
	movq	(%rsi), %rsi
	movq	-80(%rsp), %rsi
	addq	%rax, %rsi
	movq	(%rsi), %rsi
	movq	-72(%rsp), %rsi
	addq	%rax, %rsi
	addq	-96(%rsp), %rax
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	cmpq	-32(%rsp), %rdx
	je	.L1713
	movq	%r14, %rax
.L1715:
	movq	%rax, %r14
	subq	%rdx, %r14
	jns	.L1714
	movq	-104(%rsp), %rsi
	addq	%rsi, %r14
	jns	.L1714
	addq	%rsi, %r14
	jmp	.L1714
.L1720:
	movq	%rax, %r14
	.p2align 4,,10
	.p2align 3
.L1713:
#APP
# 249 "mem.cc" 1
	# random loop end (n_chains = $17, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, -24(%rsp)
	movq	-24(%rsp), %rsi
	cmpq	%rsi, -8(%rsp)
	jne	.L1716
	movq	-96(%rsp), %rax
	salq	$6, %r14
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	addq	%r14, %rax
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L1718:
	.cfi_restore_state
	movl	$1, %r14d
	xorl	%esi, %esi
	xorl	%edx, %edx
	jmp	.L1710
.L1717:
	movq	128(%rdi), %rax
	xorl	%r14d, %r14d
	movq	%rax, -96(%rsp)
	popq	%rbx
	.cfi_def_cfa_offset 48
	addq	%r14, %rax
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
.LFE267:
	.size	_Z13access_randomILi17ELi0EEP6recordPS1_ll, .-_Z13access_randomILi17ELi0EEP6recordPS1_ll
	.section	.text.unlikely._Z13access_randomILi17ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi17ELi0EEP6recordPS1_ll,comdat
.LCOLDE83:
	.section	.text._Z13access_randomILi17ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi17ELi0EEP6recordPS1_ll,comdat
.LHOTE83:
	.section	.text.unlikely._Z13access_randomILi18ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi18ELi1EEP6recordPS1_ll,comdat
.LCOLDB84:
	.section	.text._Z13access_randomILi18ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi18ELi1EEP6recordPS1_ll,comdat
.LHOTB84:
	.p2align 4,,15
	.weak	_Z13access_randomILi18ELi1EEP6recordPS1_ll
	.type	_Z13access_randomILi18ELi1EEP6recordPS1_ll, @function
_Z13access_randomILi18ELi1EEP6recordPS1_ll:
.LFB270:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x60,0x6
	.cfi_escape 0x10,0xe,0x2,0x76,0x78
	.cfi_escape 0x10,0xd,0x2,0x76,0x70
	.cfi_escape 0x10,0xc,0x2,0x76,0x68
	pushq	%rbx
	.cfi_escape 0x10,0x3,0x2,0x76,0x58
	testq	%rdx, %rdx
	jle	.L1736
	leaq	-1(%rsi), %rax
	movq	%rdx, %r12
	xorl	%edx, %edx
	leaq	1(%rsi,%rsi), %r10
	movq	%rax, %rbx
	leaq	144(%rdi), %r9
	shrq	$63, %rbx
	addq	%rbx, %rax
	sarq	%rax
	leaq	(%rax,%rax), %r11
	movq	%rax, %rbx
	.p2align 4,,10
	.p2align 3
.L1735:
#APP
# 207 "mem.cc" 1
	# random loop begin (n_chains = $18, payload = $1)
# 0 "" 2
#NO_APP
	testq	%rbx, %rbx
	jle	.L1737
	xorl	%r14d, %r14d
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L1729:
	leaq	1(%r14,%rcx), %r13
	movq	%r13, %r8
	subq	%rsi, %r8
	js	.L1727
	movq	%r8, %r13
	subq	%rsi, %r13
	cmovs	%r8, %r13
.L1727:
	salq	$6, %rcx
	movq	%r9, %r8
	movq	%rcx, %rax
	addq	(%rdi), %rax
	subq	%rdi, %r8
	subq	$8, %r8
	shrq	$3, %r8
	andl	$7, %r8d
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	leaq	8(%rdi), %rax
	cmpq	%r9, %rax
	je	.L1853
	testq	%r8, %r8
	je	.L1728
	cmpq	$1, %r8
	je	.L1826
	cmpq	$2, %r8
	je	.L1827
	cmpq	$3, %r8
	je	.L1828
	cmpq	$4, %r8
	je	.L1829
	cmpq	$5, %r8
	je	.L1830
	cmpq	$6, %r8
	je	.L1831
	leaq	16(%rdi), %rax
	movq	%rcx, %r8
	addq	8(%rdi), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
.L1831:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
.L1830:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
.L1829:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
.L1828:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
.L1827:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
.L1826:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	cmpq	%r9, %rax
	je	.L1853
.L1728:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$64, %rax
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	movq	%rcx, %r8
	addq	-56(%rax), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	movq	%rcx, %r8
	addq	-48(%rax), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	movq	%rcx, %r8
	addq	-40(%rax), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	movq	%rcx, %r8
	addq	-32(%rax), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	movq	%rcx, %r8
	addq	-24(%rax), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	movq	%rcx, %r8
	addq	-16(%rax), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	movq	%rcx, %r8
	addq	-8(%rax), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	cmpq	%r9, %rax
	jne	.L1728
.L1853:
	addq	$2, %r14
	cmpq	%r11, %r14
	je	.L1857
	movq	%r13, %rcx
	jmp	.L1729
	.p2align 4,,10
	.p2align 3
.L1857:
	leaq	1(%rbx), %r14
	movq	%r13, %r8
	salq	$6, %r8
.L1726:
	movq	%rsi, %rcx
	movq	%r8, %rax
	addq	(%rdi), %rax
	subq	%r13, %rcx
	movq	%r9, %r13
	subq	%rdi, %r13
	subq	$8, %r13
	vmovdqa	(%rax), %ymm0
	shrq	$3, %r13
	vmovdqa	32(%rax), %ymm0
	leaq	8(%rdi), %rax
	andl	$7, %r13d
	cmpq	%r9, %rax
	je	.L1854
	testq	%r13, %r13
	je	.L1730
	cmpq	$1, %r13
	je	.L1820
	cmpq	$2, %r13
	je	.L1821
	cmpq	$3, %r13
	je	.L1822
	cmpq	$4, %r13
	je	.L1823
	cmpq	$5, %r13
	je	.L1824
	cmpq	$6, %r13
	je	.L1825
	leaq	16(%rdi), %rax
	movq	%r8, %r13
	addq	8(%rdi), %r13
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
.L1825:
	movq	%r8, %r13
	addq	(%rax), %r13
	addq	$8, %rax
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
.L1824:
	movq	%r8, %r13
	addq	(%rax), %r13
	addq	$8, %rax
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
.L1823:
	movq	%r8, %r13
	addq	(%rax), %r13
	addq	$8, %rax
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
.L1822:
	movq	%r8, %r13
	addq	(%rax), %r13
	addq	$8, %rax
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
.L1821:
	movq	%r8, %r13
	addq	(%rax), %r13
	addq	$8, %rax
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
.L1820:
	movq	%r8, %r13
	addq	(%rax), %r13
	addq	$8, %rax
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
	cmpq	%r9, %rax
	je	.L1854
.L1730:
	movq	%r8, %r13
	addq	(%rax), %r13
	addq	$64, %rax
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
	movq	%r8, %r13
	addq	-56(%rax), %r13
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
	movq	%r8, %r13
	addq	-48(%rax), %r13
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
	movq	%r8, %r13
	addq	-40(%rax), %r13
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
	movq	%r8, %r13
	addq	-32(%rax), %r13
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
	movq	%r8, %r13
	addq	-24(%rax), %r13
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
	movq	%r8, %r13
	addq	-16(%rax), %r13
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
	movq	%r8, %r13
	addq	-8(%rax), %r13
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
	cmpq	%r9, %rax
	jne	.L1730
.L1854:
	cmpq	%r14, %rsi
	jle	.L1739
	leaq	1(%r14,%r14), %r13
	movq	%rcx, %r14
	subq	%r13, %r14
	js	.L1858
	.p2align 4,,10
	.p2align 3
.L1732:
	salq	$6, %rcx
	movq	%r9, %r8
	movq	%rcx, %rax
	addq	(%rdi), %rax
	subq	%rdi, %r8
	subq	$8, %r8
	shrq	$3, %r8
	andl	$7, %r8d
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	leaq	8(%rdi), %rax
	cmpq	%rax, %r9
	je	.L1855
	testq	%r8, %r8
	je	.L1733
	cmpq	$1, %r8
	je	.L1814
	cmpq	$2, %r8
	je	.L1815
	cmpq	$3, %r8
	je	.L1816
	cmpq	$4, %r8
	je	.L1817
	cmpq	$5, %r8
	je	.L1818
	cmpq	$6, %r8
	je	.L1819
	leaq	16(%rdi), %rax
	movq	%rcx, %r8
	addq	8(%rdi), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
.L1819:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
.L1818:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
.L1817:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
.L1816:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
.L1815:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
.L1814:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	cmpq	%rax, %r9
	je	.L1855
.L1733:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$64, %rax
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	movq	%rcx, %r8
	addq	-56(%rax), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	movq	%rcx, %r8
	addq	-48(%rax), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	movq	%rcx, %r8
	addq	-40(%rax), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	movq	%rcx, %r8
	addq	-32(%rax), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	movq	%rcx, %r8
	addq	-24(%rax), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	movq	%rcx, %r8
	addq	-16(%rax), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	movq	%rcx, %r8
	addq	-8(%rax), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	cmpq	%rax, %r9
	jne	.L1733
.L1855:
	addq	$2, %r13
	cmpq	%r10, %r13
	je	.L1731
	movq	%r14, %rcx
	movq	%rcx, %r14
	subq	%r13, %r14
	jns	.L1732
.L1858:
	addq	%rsi, %r14
	jns	.L1732
	addq	%rsi, %r14
	jmp	.L1732
.L1739:
	movq	%rcx, %r14
	.p2align 4,,10
	.p2align 3
.L1731:
#APP
# 249 "mem.cc" 1
	# random loop end (n_chains = $18, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, %rdx
	cmpq	%rdx, %r12
	jne	.L1735
	salq	$6, %r14
	vzeroupper
.L1725:
	popq	%rbx
	movq	%r14, %rax
	popq	%rsi
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	addq	136(%rdi), %rax
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	leaq	-8(%rsi), %rsp
	.cfi_def_cfa 7, 8
	ret
.L1737:
	.cfi_restore_state
	movl	$1, %r14d
	xorl	%r8d, %r8d
	xorl	%r13d, %r13d
	jmp	.L1726
.L1736:
	xorl	%r14d, %r14d
	jmp	.L1725
	.cfi_endproc
.LFE270:
	.size	_Z13access_randomILi18ELi1EEP6recordPS1_ll, .-_Z13access_randomILi18ELi1EEP6recordPS1_ll
	.section	.text.unlikely._Z13access_randomILi18ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi18ELi1EEP6recordPS1_ll,comdat
.LCOLDE84:
	.section	.text._Z13access_randomILi18ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi18ELi1EEP6recordPS1_ll,comdat
.LHOTE84:
	.section	.text.unlikely._Z13access_randomILi18ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi18ELi0EEP6recordPS1_ll,comdat
.LCOLDB85:
	.section	.text._Z13access_randomILi18ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi18ELi0EEP6recordPS1_ll,comdat
.LHOTB85:
	.p2align 4,,15
	.weak	_Z13access_randomILi18ELi0EEP6recordPS1_ll
	.type	_Z13access_randomILi18ELi0EEP6recordPS1_ll, @function
_Z13access_randomILi18ELi0EEP6recordPS1_ll:
.LFB273:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	testq	%rdx, %rdx
	jle	.L1871
	leaq	-1(%rsi), %rax
	movq	%rdx, %rbp
	xorl	%edx, %edx
	leaq	1(%rsi,%rsi), %r10
	movq	%rax, %rbx
	leaq	144(%rdi), %r9
	shrq	$63, %rbx
	addq	%rbx, %rax
	sarq	%rax
	leaq	(%rax,%rax), %r11
	movq	%rax, %rbx
	.p2align 4,,10
	.p2align 3
.L1870:
#APP
# 207 "mem.cc" 1
	# random loop begin (n_chains = $18, payload = $0)
# 0 "" 2
#NO_APP
	testq	%rbx, %rbx
	jle	.L1872
	xorl	%r13d, %r13d
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L1864:
	leaq	1(%r13,%rcx), %r12
	movq	%r12, %r8
	subq	%rsi, %r8
	js	.L1862
	movq	%r8, %r12
	subq	%rsi, %r12
	cmovs	%r8, %r12
.L1862:
	salq	$6, %rcx
	movq	%r9, %r8
	movq	%rcx, %rax
	addq	(%rdi), %rax
	subq	%rdi, %r8
	subq	$8, %r8
	shrq	$3, %r8
	andl	$7, %r8d
	movq	(%rax), %rax
	leaq	8(%rdi), %rax
	cmpq	%r9, %rax
	je	.L1988
	testq	%r8, %r8
	je	.L1863
	cmpq	$1, %r8
	je	.L1961
	cmpq	$2, %r8
	je	.L1962
	cmpq	$3, %r8
	je	.L1963
	cmpq	$4, %r8
	je	.L1964
	cmpq	$5, %r8
	je	.L1965
	cmpq	$6, %r8
	je	.L1966
	movq	%rcx, %r8
	addq	8(%rdi), %r8
	movq	(%r8), %rax
	leaq	16(%rdi), %rax
.L1966:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	movq	(%r8), %r8
.L1965:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	movq	(%r8), %r8
.L1964:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	movq	(%r8), %r8
.L1963:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	movq	(%r8), %r8
.L1962:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	movq	(%r8), %r8
.L1961:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	movq	(%r8), %r8
	cmpq	%r9, %rax
	je	.L1988
.L1863:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$64, %rax
	movq	(%r8), %r8
	movq	%rcx, %r8
	addq	-56(%rax), %r8
	movq	(%r8), %r8
	movq	%rcx, %r8
	addq	-48(%rax), %r8
	movq	(%r8), %r8
	movq	%rcx, %r8
	addq	-40(%rax), %r8
	movq	(%r8), %r8
	movq	%rcx, %r8
	addq	-32(%rax), %r8
	movq	(%r8), %r8
	movq	%rcx, %r8
	addq	-24(%rax), %r8
	movq	(%r8), %r8
	movq	%rcx, %r8
	addq	-16(%rax), %r8
	movq	(%r8), %r8
	movq	%rcx, %r8
	addq	-8(%rax), %r8
	movq	(%r8), %r8
	cmpq	%r9, %rax
	jne	.L1863
.L1988:
	addq	$2, %r13
	cmpq	%r11, %r13
	je	.L1992
	movq	%r12, %rcx
	jmp	.L1864
	.p2align 4,,10
	.p2align 3
.L1992:
	leaq	1(%rbx), %r13
	movq	%r12, %r8
	salq	$6, %r8
.L1861:
	movq	%rsi, %rcx
	movq	%r8, %rax
	addq	(%rdi), %rax
	subq	%r12, %rcx
	movq	%r9, %r12
	subq	%rdi, %r12
	subq	$8, %r12
	shrq	$3, %r12
	movq	(%rax), %rax
	leaq	8(%rdi), %rax
	andl	$7, %r12d
	cmpq	%r9, %rax
	je	.L1989
	testq	%r12, %r12
	je	.L1865
	cmpq	$1, %r12
	je	.L1955
	cmpq	$2, %r12
	je	.L1956
	cmpq	$3, %r12
	je	.L1957
	cmpq	$4, %r12
	je	.L1958
	cmpq	$5, %r12
	je	.L1959
	cmpq	$6, %r12
	je	.L1960
	movq	%r8, %r12
	addq	8(%rdi), %r12
	movq	(%r12), %rax
	leaq	16(%rdi), %rax
.L1960:
	movq	%r8, %r12
	addq	(%rax), %r12
	addq	$8, %rax
	movq	(%r12), %r12
.L1959:
	movq	%r8, %r12
	addq	(%rax), %r12
	addq	$8, %rax
	movq	(%r12), %r12
.L1958:
	movq	%r8, %r12
	addq	(%rax), %r12
	addq	$8, %rax
	movq	(%r12), %r12
.L1957:
	movq	%r8, %r12
	addq	(%rax), %r12
	addq	$8, %rax
	movq	(%r12), %r12
.L1956:
	movq	%r8, %r12
	addq	(%rax), %r12
	addq	$8, %rax
	movq	(%r12), %r12
.L1955:
	movq	%r8, %r12
	addq	(%rax), %r12
	addq	$8, %rax
	movq	(%r12), %r12
	cmpq	%r9, %rax
	je	.L1989
.L1865:
	movq	%r8, %r12
	addq	(%rax), %r12
	addq	$64, %rax
	movq	(%r12), %r12
	movq	%r8, %r12
	addq	-56(%rax), %r12
	movq	(%r12), %r12
	movq	%r8, %r12
	addq	-48(%rax), %r12
	movq	(%r12), %r12
	movq	%r8, %r12
	addq	-40(%rax), %r12
	movq	(%r12), %r12
	movq	%r8, %r12
	addq	-32(%rax), %r12
	movq	(%r12), %r12
	movq	%r8, %r12
	addq	-24(%rax), %r12
	movq	(%r12), %r12
	movq	%r8, %r12
	addq	-16(%rax), %r12
	movq	(%r12), %r12
	movq	%r8, %r12
	addq	-8(%rax), %r12
	movq	(%r12), %r12
	cmpq	%r9, %rax
	jne	.L1865
.L1989:
	cmpq	%r13, %rsi
	jle	.L1874
	leaq	1(%r13,%r13), %r12
	movq	%rcx, %r13
	subq	%r12, %r13
	js	.L1993
	.p2align 4,,10
	.p2align 3
.L1867:
	salq	$6, %rcx
	movq	%r9, %r8
	movq	%rcx, %rax
	addq	(%rdi), %rax
	subq	%rdi, %r8
	subq	$8, %r8
	shrq	$3, %r8
	andl	$7, %r8d
	movq	(%rax), %rax
	leaq	8(%rdi), %rax
	cmpq	%rax, %r9
	je	.L1990
	testq	%r8, %r8
	je	.L1868
	cmpq	$1, %r8
	je	.L1949
	cmpq	$2, %r8
	je	.L1950
	cmpq	$3, %r8
	je	.L1951
	cmpq	$4, %r8
	je	.L1952
	cmpq	$5, %r8
	je	.L1953
	cmpq	$6, %r8
	je	.L1954
	movq	%rcx, %r8
	addq	8(%rdi), %r8
	movq	(%r8), %rax
	leaq	16(%rdi), %rax
.L1954:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	movq	(%r8), %r8
.L1953:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	movq	(%r8), %r8
.L1952:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	movq	(%r8), %r8
.L1951:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	movq	(%r8), %r8
.L1950:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	movq	(%r8), %r8
.L1949:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	movq	(%r8), %r8
	cmpq	%rax, %r9
	je	.L1990
.L1868:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$64, %rax
	movq	(%r8), %r8
	movq	%rcx, %r8
	addq	-56(%rax), %r8
	movq	(%r8), %r8
	movq	%rcx, %r8
	addq	-48(%rax), %r8
	movq	(%r8), %r8
	movq	%rcx, %r8
	addq	-40(%rax), %r8
	movq	(%r8), %r8
	movq	%rcx, %r8
	addq	-32(%rax), %r8
	movq	(%r8), %r8
	movq	%rcx, %r8
	addq	-24(%rax), %r8
	movq	(%r8), %r8
	movq	%rcx, %r8
	addq	-16(%rax), %r8
	movq	(%r8), %r8
	movq	%rcx, %r8
	addq	-8(%rax), %r8
	movq	(%r8), %r8
	cmpq	%rax, %r9
	jne	.L1868
.L1990:
	addq	$2, %r12
	cmpq	%r10, %r12
	je	.L1866
	movq	%r13, %rcx
	movq	%rcx, %r13
	subq	%r12, %r13
	jns	.L1867
.L1993:
	addq	%rsi, %r13
	jns	.L1867
	addq	%rsi, %r13
	jmp	.L1867
.L1874:
	movq	%rcx, %r13
	.p2align 4,,10
	.p2align 3
.L1866:
#APP
# 249 "mem.cc" 1
	# random loop end (n_chains = $18, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, %rdx
	cmpq	%rdx, %rbp
	jne	.L1870
	salq	$6, %r13
.L1860:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movq	%r13, %rax
	popq	%rbp
	.cfi_def_cfa_offset 24
	addq	136(%rdi), %rax
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L1872:
	.cfi_restore_state
	movl	$1, %r13d
	xorl	%r8d, %r8d
	xorl	%r12d, %r12d
	jmp	.L1861
.L1871:
	xorl	%r13d, %r13d
	jmp	.L1860
	.cfi_endproc
.LFE273:
	.size	_Z13access_randomILi18ELi0EEP6recordPS1_ll, .-_Z13access_randomILi18ELi0EEP6recordPS1_ll
	.section	.text.unlikely._Z13access_randomILi18ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi18ELi0EEP6recordPS1_ll,comdat
.LCOLDE85:
	.section	.text._Z13access_randomILi18ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi18ELi0EEP6recordPS1_ll,comdat
.LHOTE85:
	.section	.text.unlikely._Z13access_randomILi19ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi19ELi1EEP6recordPS1_ll,comdat
.LCOLDB86:
	.section	.text._Z13access_randomILi19ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi19ELi1EEP6recordPS1_ll,comdat
.LHOTB86:
	.p2align 4,,15
	.weak	_Z13access_randomILi19ELi1EEP6recordPS1_ll
	.type	_Z13access_randomILi19ELi1EEP6recordPS1_ll, @function
_Z13access_randomILi19ELi1EEP6recordPS1_ll:
.LFB276:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x60,0x6
	.cfi_escape 0x10,0xe,0x2,0x76,0x78
	.cfi_escape 0x10,0xd,0x2,0x76,0x70
	.cfi_escape 0x10,0xc,0x2,0x76,0x68
	pushq	%rbx
	.cfi_escape 0x10,0x3,0x2,0x76,0x58
	testq	%rdx, %rdx
	jle	.L2006
	leaq	-1(%rsi), %rax
	movq	%rdx, %r12
	xorl	%ebx, %ebx
	leaq	1(%rsi,%rsi), %r10
	movq	%rax, %rdx
	leaq	152(%rdi), %r9
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	leaq	(%rax,%rax), %r11
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L2005:
#APP
# 207 "mem.cc" 1
	# random loop begin (n_chains = $19, payload = $1)
# 0 "" 2
#NO_APP
	testq	%rdx, %rdx
	jle	.L2007
	xorl	%r14d, %r14d
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L1999:
	leaq	1(%r14,%rcx), %r13
	movq	%r13, %r8
	subq	%rsi, %r8
	js	.L1997
	movq	%r8, %r13
	subq	%rsi, %r13
	cmovs	%r8, %r13
.L1997:
	salq	$6, %rcx
	movq	%r9, %r8
	movq	%rcx, %rax
	addq	(%rdi), %rax
	subq	%rdi, %r8
	subq	$8, %r8
	shrq	$3, %r8
	andl	$7, %r8d
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	leaq	8(%rdi), %rax
	cmpq	%r9, %rax
	je	.L2123
	testq	%r8, %r8
	je	.L1998
	cmpq	$1, %r8
	je	.L2096
	cmpq	$2, %r8
	je	.L2097
	cmpq	$3, %r8
	je	.L2098
	cmpq	$4, %r8
	je	.L2099
	cmpq	$5, %r8
	je	.L2100
	cmpq	$6, %r8
	je	.L2101
	leaq	16(%rdi), %rax
	movq	%rcx, %r8
	addq	8(%rdi), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
.L2101:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
.L2100:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
.L2099:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
.L2098:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
.L2097:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
.L2096:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	cmpq	%r9, %rax
	je	.L2123
.L1998:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$64, %rax
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	movq	%rcx, %r8
	addq	-56(%rax), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	movq	%rcx, %r8
	addq	-48(%rax), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	movq	%rcx, %r8
	addq	-40(%rax), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	movq	%rcx, %r8
	addq	-32(%rax), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	movq	%rcx, %r8
	addq	-24(%rax), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	movq	%rcx, %r8
	addq	-16(%rax), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	movq	%rcx, %r8
	addq	-8(%rax), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	cmpq	%r9, %rax
	jne	.L1998
.L2123:
	addq	$2, %r14
	cmpq	%r11, %r14
	je	.L2127
	movq	%r13, %rcx
	jmp	.L1999
	.p2align 4,,10
	.p2align 3
.L2127:
	leaq	1(%rdx), %r14
	movq	%r13, %r8
	salq	$6, %r8
.L1996:
	movq	%rsi, %rcx
	movq	%r8, %rax
	addq	(%rdi), %rax
	subq	%r13, %rcx
	movq	%r9, %r13
	subq	%rdi, %r13
	subq	$8, %r13
	vmovdqa	(%rax), %ymm0
	shrq	$3, %r13
	vmovdqa	32(%rax), %ymm0
	leaq	8(%rdi), %rax
	andl	$7, %r13d
	cmpq	%r9, %rax
	je	.L2124
	testq	%r13, %r13
	je	.L2000
	cmpq	$1, %r13
	je	.L2090
	cmpq	$2, %r13
	je	.L2091
	cmpq	$3, %r13
	je	.L2092
	cmpq	$4, %r13
	je	.L2093
	cmpq	$5, %r13
	je	.L2094
	cmpq	$6, %r13
	je	.L2095
	leaq	16(%rdi), %rax
	movq	%r8, %r13
	addq	8(%rdi), %r13
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
.L2095:
	movq	%r8, %r13
	addq	(%rax), %r13
	addq	$8, %rax
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
.L2094:
	movq	%r8, %r13
	addq	(%rax), %r13
	addq	$8, %rax
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
.L2093:
	movq	%r8, %r13
	addq	(%rax), %r13
	addq	$8, %rax
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
.L2092:
	movq	%r8, %r13
	addq	(%rax), %r13
	addq	$8, %rax
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
.L2091:
	movq	%r8, %r13
	addq	(%rax), %r13
	addq	$8, %rax
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
.L2090:
	movq	%r8, %r13
	addq	(%rax), %r13
	addq	$8, %rax
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
	cmpq	%r9, %rax
	je	.L2124
.L2000:
	movq	%r8, %r13
	addq	(%rax), %r13
	addq	$64, %rax
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
	movq	%r8, %r13
	addq	-56(%rax), %r13
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
	movq	%r8, %r13
	addq	-48(%rax), %r13
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
	movq	%r8, %r13
	addq	-40(%rax), %r13
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
	movq	%r8, %r13
	addq	-32(%rax), %r13
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
	movq	%r8, %r13
	addq	-24(%rax), %r13
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
	movq	%r8, %r13
	addq	-16(%rax), %r13
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
	movq	%r8, %r13
	addq	-8(%rax), %r13
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
	cmpq	%r9, %rax
	jne	.L2000
.L2124:
	cmpq	%r14, %rsi
	jle	.L2009
	leaq	1(%r14,%r14), %r13
	movq	%rcx, %r14
	subq	%r13, %r14
	js	.L2128
	.p2align 4,,10
	.p2align 3
.L2002:
	salq	$6, %rcx
	movq	%r9, %r8
	movq	%rcx, %rax
	addq	(%rdi), %rax
	subq	%rdi, %r8
	subq	$8, %r8
	shrq	$3, %r8
	andl	$7, %r8d
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	leaq	8(%rdi), %rax
	cmpq	%rax, %r9
	je	.L2125
	testq	%r8, %r8
	je	.L2003
	cmpq	$1, %r8
	je	.L2084
	cmpq	$2, %r8
	je	.L2085
	cmpq	$3, %r8
	je	.L2086
	cmpq	$4, %r8
	je	.L2087
	cmpq	$5, %r8
	je	.L2088
	cmpq	$6, %r8
	je	.L2089
	leaq	16(%rdi), %rax
	movq	%rcx, %r8
	addq	8(%rdi), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
.L2089:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
.L2088:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
.L2087:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
.L2086:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
.L2085:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
.L2084:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	cmpq	%rax, %r9
	je	.L2125
.L2003:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$64, %rax
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	movq	%rcx, %r8
	addq	-56(%rax), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	movq	%rcx, %r8
	addq	-48(%rax), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	movq	%rcx, %r8
	addq	-40(%rax), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	movq	%rcx, %r8
	addq	-32(%rax), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	movq	%rcx, %r8
	addq	-24(%rax), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	movq	%rcx, %r8
	addq	-16(%rax), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	movq	%rcx, %r8
	addq	-8(%rax), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	cmpq	%rax, %r9
	jne	.L2003
.L2125:
	addq	$2, %r13
	cmpq	%r10, %r13
	je	.L2001
	movq	%r14, %rcx
	movq	%rcx, %r14
	subq	%r13, %r14
	jns	.L2002
.L2128:
	addq	%rsi, %r14
	jns	.L2002
	addq	%rsi, %r14
	jmp	.L2002
.L2009:
	movq	%rcx, %r14
	.p2align 4,,10
	.p2align 3
.L2001:
#APP
# 249 "mem.cc" 1
	# random loop end (n_chains = $19, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, %rbx
	cmpq	%rbx, %r12
	jne	.L2005
	salq	$6, %r14
	vzeroupper
.L1995:
	popq	%rbx
	movq	%r14, %rax
	popq	%rsi
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	addq	144(%rdi), %rax
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	leaq	-8(%rsi), %rsp
	.cfi_def_cfa 7, 8
	ret
.L2007:
	.cfi_restore_state
	movl	$1, %r14d
	xorl	%r8d, %r8d
	xorl	%r13d, %r13d
	jmp	.L1996
.L2006:
	xorl	%r14d, %r14d
	jmp	.L1995
	.cfi_endproc
.LFE276:
	.size	_Z13access_randomILi19ELi1EEP6recordPS1_ll, .-_Z13access_randomILi19ELi1EEP6recordPS1_ll
	.section	.text.unlikely._Z13access_randomILi19ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi19ELi1EEP6recordPS1_ll,comdat
.LCOLDE86:
	.section	.text._Z13access_randomILi19ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi19ELi1EEP6recordPS1_ll,comdat
.LHOTE86:
	.section	.text.unlikely._Z13access_randomILi19ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi19ELi0EEP6recordPS1_ll,comdat
.LCOLDB87:
	.section	.text._Z13access_randomILi19ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi19ELi0EEP6recordPS1_ll,comdat
.LHOTB87:
	.p2align 4,,15
	.weak	_Z13access_randomILi19ELi0EEP6recordPS1_ll
	.type	_Z13access_randomILi19ELi0EEP6recordPS1_ll, @function
_Z13access_randomILi19ELi0EEP6recordPS1_ll:
.LFB279:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	testq	%rdx, %rdx
	jle	.L2141
	leaq	-1(%rsi), %rax
	movq	%rdx, %rbp
	xorl	%ebx, %ebx
	leaq	1(%rsi,%rsi), %r10
	movq	%rax, %rdx
	leaq	152(%rdi), %r9
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	leaq	(%rax,%rax), %r11
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L2140:
#APP
# 207 "mem.cc" 1
	# random loop begin (n_chains = $19, payload = $0)
# 0 "" 2
#NO_APP
	testq	%rdx, %rdx
	jle	.L2142
	xorl	%r13d, %r13d
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L2134:
	leaq	1(%r13,%rcx), %r12
	movq	%r12, %r8
	subq	%rsi, %r8
	js	.L2132
	movq	%r8, %r12
	subq	%rsi, %r12
	cmovs	%r8, %r12
.L2132:
	salq	$6, %rcx
	movq	%r9, %r8
	movq	%rcx, %rax
	addq	(%rdi), %rax
	subq	%rdi, %r8
	subq	$8, %r8
	shrq	$3, %r8
	andl	$7, %r8d
	movq	(%rax), %rax
	leaq	8(%rdi), %rax
	cmpq	%r9, %rax
	je	.L2258
	testq	%r8, %r8
	je	.L2133
	cmpq	$1, %r8
	je	.L2231
	cmpq	$2, %r8
	je	.L2232
	cmpq	$3, %r8
	je	.L2233
	cmpq	$4, %r8
	je	.L2234
	cmpq	$5, %r8
	je	.L2235
	cmpq	$6, %r8
	je	.L2236
	movq	%rcx, %r8
	addq	8(%rdi), %r8
	movq	(%r8), %rax
	leaq	16(%rdi), %rax
.L2236:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	movq	(%r8), %r8
.L2235:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	movq	(%r8), %r8
.L2234:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	movq	(%r8), %r8
.L2233:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	movq	(%r8), %r8
.L2232:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	movq	(%r8), %r8
.L2231:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	movq	(%r8), %r8
	cmpq	%r9, %rax
	je	.L2258
.L2133:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$64, %rax
	movq	(%r8), %r8
	movq	%rcx, %r8
	addq	-56(%rax), %r8
	movq	(%r8), %r8
	movq	%rcx, %r8
	addq	-48(%rax), %r8
	movq	(%r8), %r8
	movq	%rcx, %r8
	addq	-40(%rax), %r8
	movq	(%r8), %r8
	movq	%rcx, %r8
	addq	-32(%rax), %r8
	movq	(%r8), %r8
	movq	%rcx, %r8
	addq	-24(%rax), %r8
	movq	(%r8), %r8
	movq	%rcx, %r8
	addq	-16(%rax), %r8
	movq	(%r8), %r8
	movq	%rcx, %r8
	addq	-8(%rax), %r8
	movq	(%r8), %r8
	cmpq	%r9, %rax
	jne	.L2133
.L2258:
	addq	$2, %r13
	cmpq	%r11, %r13
	je	.L2262
	movq	%r12, %rcx
	jmp	.L2134
	.p2align 4,,10
	.p2align 3
.L2262:
	leaq	1(%rdx), %r13
	movq	%r12, %r8
	salq	$6, %r8
.L2131:
	movq	%rsi, %rcx
	movq	%r8, %rax
	addq	(%rdi), %rax
	subq	%r12, %rcx
	movq	%r9, %r12
	subq	%rdi, %r12
	subq	$8, %r12
	shrq	$3, %r12
	movq	(%rax), %rax
	leaq	8(%rdi), %rax
	andl	$7, %r12d
	cmpq	%r9, %rax
	je	.L2259
	testq	%r12, %r12
	je	.L2135
	cmpq	$1, %r12
	je	.L2225
	cmpq	$2, %r12
	je	.L2226
	cmpq	$3, %r12
	je	.L2227
	cmpq	$4, %r12
	je	.L2228
	cmpq	$5, %r12
	je	.L2229
	cmpq	$6, %r12
	je	.L2230
	movq	%r8, %r12
	addq	8(%rdi), %r12
	movq	(%r12), %rax
	leaq	16(%rdi), %rax
.L2230:
	movq	%r8, %r12
	addq	(%rax), %r12
	addq	$8, %rax
	movq	(%r12), %r12
.L2229:
	movq	%r8, %r12
	addq	(%rax), %r12
	addq	$8, %rax
	movq	(%r12), %r12
.L2228:
	movq	%r8, %r12
	addq	(%rax), %r12
	addq	$8, %rax
	movq	(%r12), %r12
.L2227:
	movq	%r8, %r12
	addq	(%rax), %r12
	addq	$8, %rax
	movq	(%r12), %r12
.L2226:
	movq	%r8, %r12
	addq	(%rax), %r12
	addq	$8, %rax
	movq	(%r12), %r12
.L2225:
	movq	%r8, %r12
	addq	(%rax), %r12
	addq	$8, %rax
	movq	(%r12), %r12
	cmpq	%r9, %rax
	je	.L2259
.L2135:
	movq	%r8, %r12
	addq	(%rax), %r12
	addq	$64, %rax
	movq	(%r12), %r12
	movq	%r8, %r12
	addq	-56(%rax), %r12
	movq	(%r12), %r12
	movq	%r8, %r12
	addq	-48(%rax), %r12
	movq	(%r12), %r12
	movq	%r8, %r12
	addq	-40(%rax), %r12
	movq	(%r12), %r12
	movq	%r8, %r12
	addq	-32(%rax), %r12
	movq	(%r12), %r12
	movq	%r8, %r12
	addq	-24(%rax), %r12
	movq	(%r12), %r12
	movq	%r8, %r12
	addq	-16(%rax), %r12
	movq	(%r12), %r12
	movq	%r8, %r12
	addq	-8(%rax), %r12
	movq	(%r12), %r12
	cmpq	%r9, %rax
	jne	.L2135
.L2259:
	cmpq	%r13, %rsi
	jle	.L2144
	leaq	1(%r13,%r13), %r12
	movq	%rcx, %r13
	subq	%r12, %r13
	js	.L2263
	.p2align 4,,10
	.p2align 3
.L2137:
	salq	$6, %rcx
	movq	%r9, %r8
	movq	%rcx, %rax
	addq	(%rdi), %rax
	subq	%rdi, %r8
	subq	$8, %r8
	shrq	$3, %r8
	andl	$7, %r8d
	movq	(%rax), %rax
	leaq	8(%rdi), %rax
	cmpq	%rax, %r9
	je	.L2260
	testq	%r8, %r8
	je	.L2138
	cmpq	$1, %r8
	je	.L2219
	cmpq	$2, %r8
	je	.L2220
	cmpq	$3, %r8
	je	.L2221
	cmpq	$4, %r8
	je	.L2222
	cmpq	$5, %r8
	je	.L2223
	cmpq	$6, %r8
	je	.L2224
	movq	%rcx, %r8
	addq	8(%rdi), %r8
	movq	(%r8), %rax
	leaq	16(%rdi), %rax
.L2224:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	movq	(%r8), %r8
.L2223:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	movq	(%r8), %r8
.L2222:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	movq	(%r8), %r8
.L2221:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	movq	(%r8), %r8
.L2220:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	movq	(%r8), %r8
.L2219:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	movq	(%r8), %r8
	cmpq	%rax, %r9
	je	.L2260
.L2138:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$64, %rax
	movq	(%r8), %r8
	movq	%rcx, %r8
	addq	-56(%rax), %r8
	movq	(%r8), %r8
	movq	%rcx, %r8
	addq	-48(%rax), %r8
	movq	(%r8), %r8
	movq	%rcx, %r8
	addq	-40(%rax), %r8
	movq	(%r8), %r8
	movq	%rcx, %r8
	addq	-32(%rax), %r8
	movq	(%r8), %r8
	movq	%rcx, %r8
	addq	-24(%rax), %r8
	movq	(%r8), %r8
	movq	%rcx, %r8
	addq	-16(%rax), %r8
	movq	(%r8), %r8
	movq	%rcx, %r8
	addq	-8(%rax), %r8
	movq	(%r8), %r8
	cmpq	%rax, %r9
	jne	.L2138
.L2260:
	addq	$2, %r12
	cmpq	%r10, %r12
	je	.L2136
	movq	%r13, %rcx
	movq	%rcx, %r13
	subq	%r12, %r13
	jns	.L2137
.L2263:
	addq	%rsi, %r13
	jns	.L2137
	addq	%rsi, %r13
	jmp	.L2137
.L2144:
	movq	%rcx, %r13
	.p2align 4,,10
	.p2align 3
.L2136:
#APP
# 249 "mem.cc" 1
	# random loop end (n_chains = $19, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, %rbx
	cmpq	%rbx, %rbp
	jne	.L2140
	salq	$6, %r13
.L2130:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movq	%r13, %rax
	popq	%rbp
	.cfi_def_cfa_offset 24
	addq	144(%rdi), %rax
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L2142:
	.cfi_restore_state
	movl	$1, %r13d
	xorl	%r8d, %r8d
	xorl	%r12d, %r12d
	jmp	.L2131
.L2141:
	xorl	%r13d, %r13d
	jmp	.L2130
	.cfi_endproc
.LFE279:
	.size	_Z13access_randomILi19ELi0EEP6recordPS1_ll, .-_Z13access_randomILi19ELi0EEP6recordPS1_ll
	.section	.text.unlikely._Z13access_randomILi19ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi19ELi0EEP6recordPS1_ll,comdat
.LCOLDE87:
	.section	.text._Z13access_randomILi19ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi19ELi0EEP6recordPS1_ll,comdat
.LHOTE87:
	.section	.text.unlikely._Z13access_randomILi20ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi20ELi1EEP6recordPS1_ll,comdat
.LCOLDB88:
	.section	.text._Z13access_randomILi20ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi20ELi1EEP6recordPS1_ll,comdat
.LHOTB88:
	.p2align 4,,15
	.weak	_Z13access_randomILi20ELi1EEP6recordPS1_ll
	.type	_Z13access_randomILi20ELi1EEP6recordPS1_ll, @function
_Z13access_randomILi20ELi1EEP6recordPS1_ll:
.LFB282:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x60,0x6
	.cfi_escape 0x10,0xe,0x2,0x76,0x78
	.cfi_escape 0x10,0xd,0x2,0x76,0x70
	.cfi_escape 0x10,0xc,0x2,0x76,0x68
	pushq	%rbx
	.cfi_escape 0x10,0x3,0x2,0x76,0x58
	testq	%rdx, %rdx
	jle	.L2276
	leaq	-1(%rsi), %rax
	movq	%rdx, %r12
	xorl	%ebx, %ebx
	leaq	1(%rsi,%rsi), %r10
	movq	%rax, %rdx
	leaq	160(%rdi), %r9
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	leaq	(%rax,%rax), %r11
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L2275:
#APP
# 207 "mem.cc" 1
	# random loop begin (n_chains = $20, payload = $1)
# 0 "" 2
#NO_APP
	testq	%rdx, %rdx
	jle	.L2277
	xorl	%r14d, %r14d
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L2269:
	leaq	1(%r14,%rcx), %r13
	movq	%r13, %r8
	subq	%rsi, %r8
	js	.L2267
	movq	%r8, %r13
	subq	%rsi, %r13
	cmovs	%r8, %r13
.L2267:
	salq	$6, %rcx
	movq	%r9, %r8
	movq	%rcx, %rax
	addq	(%rdi), %rax
	subq	%rdi, %r8
	subq	$8, %r8
	shrq	$3, %r8
	andl	$7, %r8d
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	leaq	8(%rdi), %rax
	cmpq	%r9, %rax
	je	.L2393
	testq	%r8, %r8
	je	.L2268
	cmpq	$1, %r8
	je	.L2366
	cmpq	$2, %r8
	je	.L2367
	cmpq	$3, %r8
	je	.L2368
	cmpq	$4, %r8
	je	.L2369
	cmpq	$5, %r8
	je	.L2370
	cmpq	$6, %r8
	je	.L2371
	leaq	16(%rdi), %rax
	movq	%rcx, %r8
	addq	8(%rdi), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
.L2371:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
.L2370:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
.L2369:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
.L2368:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
.L2367:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
.L2366:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	cmpq	%r9, %rax
	je	.L2393
.L2268:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$64, %rax
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	movq	%rcx, %r8
	addq	-56(%rax), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	movq	%rcx, %r8
	addq	-48(%rax), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	movq	%rcx, %r8
	addq	-40(%rax), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	movq	%rcx, %r8
	addq	-32(%rax), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	movq	%rcx, %r8
	addq	-24(%rax), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	movq	%rcx, %r8
	addq	-16(%rax), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	movq	%rcx, %r8
	addq	-8(%rax), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	cmpq	%r9, %rax
	jne	.L2268
.L2393:
	addq	$2, %r14
	cmpq	%r11, %r14
	je	.L2397
	movq	%r13, %rcx
	jmp	.L2269
	.p2align 4,,10
	.p2align 3
.L2397:
	leaq	1(%rdx), %r14
	movq	%r13, %r8
	salq	$6, %r8
.L2266:
	movq	%rsi, %rcx
	movq	%r8, %rax
	addq	(%rdi), %rax
	subq	%r13, %rcx
	movq	%r9, %r13
	subq	%rdi, %r13
	subq	$8, %r13
	vmovdqa	(%rax), %ymm0
	shrq	$3, %r13
	vmovdqa	32(%rax), %ymm0
	leaq	8(%rdi), %rax
	andl	$7, %r13d
	cmpq	%r9, %rax
	je	.L2394
	testq	%r13, %r13
	je	.L2270
	cmpq	$1, %r13
	je	.L2360
	cmpq	$2, %r13
	je	.L2361
	cmpq	$3, %r13
	je	.L2362
	cmpq	$4, %r13
	je	.L2363
	cmpq	$5, %r13
	je	.L2364
	cmpq	$6, %r13
	je	.L2365
	leaq	16(%rdi), %rax
	movq	%r8, %r13
	addq	8(%rdi), %r13
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
.L2365:
	movq	%r8, %r13
	addq	(%rax), %r13
	addq	$8, %rax
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
.L2364:
	movq	%r8, %r13
	addq	(%rax), %r13
	addq	$8, %rax
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
.L2363:
	movq	%r8, %r13
	addq	(%rax), %r13
	addq	$8, %rax
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
.L2362:
	movq	%r8, %r13
	addq	(%rax), %r13
	addq	$8, %rax
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
.L2361:
	movq	%r8, %r13
	addq	(%rax), %r13
	addq	$8, %rax
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
.L2360:
	movq	%r8, %r13
	addq	(%rax), %r13
	addq	$8, %rax
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
	cmpq	%r9, %rax
	je	.L2394
.L2270:
	movq	%r8, %r13
	addq	(%rax), %r13
	addq	$64, %rax
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
	movq	%r8, %r13
	addq	-56(%rax), %r13
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
	movq	%r8, %r13
	addq	-48(%rax), %r13
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
	movq	%r8, %r13
	addq	-40(%rax), %r13
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
	movq	%r8, %r13
	addq	-32(%rax), %r13
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
	movq	%r8, %r13
	addq	-24(%rax), %r13
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
	movq	%r8, %r13
	addq	-16(%rax), %r13
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
	movq	%r8, %r13
	addq	-8(%rax), %r13
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
	cmpq	%r9, %rax
	jne	.L2270
.L2394:
	cmpq	%r14, %rsi
	jle	.L2279
	leaq	1(%r14,%r14), %r13
	movq	%rcx, %r14
	subq	%r13, %r14
	js	.L2398
	.p2align 4,,10
	.p2align 3
.L2272:
	salq	$6, %rcx
	movq	%r9, %r8
	movq	%rcx, %rax
	addq	(%rdi), %rax
	subq	%rdi, %r8
	subq	$8, %r8
	shrq	$3, %r8
	andl	$7, %r8d
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	leaq	8(%rdi), %rax
	cmpq	%rax, %r9
	je	.L2395
	testq	%r8, %r8
	je	.L2273
	cmpq	$1, %r8
	je	.L2354
	cmpq	$2, %r8
	je	.L2355
	cmpq	$3, %r8
	je	.L2356
	cmpq	$4, %r8
	je	.L2357
	cmpq	$5, %r8
	je	.L2358
	cmpq	$6, %r8
	je	.L2359
	leaq	16(%rdi), %rax
	movq	%rcx, %r8
	addq	8(%rdi), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
.L2359:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
.L2358:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
.L2357:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
.L2356:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
.L2355:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
.L2354:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	cmpq	%rax, %r9
	je	.L2395
.L2273:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$64, %rax
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	movq	%rcx, %r8
	addq	-56(%rax), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	movq	%rcx, %r8
	addq	-48(%rax), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	movq	%rcx, %r8
	addq	-40(%rax), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	movq	%rcx, %r8
	addq	-32(%rax), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	movq	%rcx, %r8
	addq	-24(%rax), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	movq	%rcx, %r8
	addq	-16(%rax), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	movq	%rcx, %r8
	addq	-8(%rax), %r8
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	cmpq	%rax, %r9
	jne	.L2273
.L2395:
	addq	$2, %r13
	cmpq	%r10, %r13
	je	.L2271
	movq	%r14, %rcx
	movq	%rcx, %r14
	subq	%r13, %r14
	jns	.L2272
.L2398:
	addq	%rsi, %r14
	jns	.L2272
	addq	%rsi, %r14
	jmp	.L2272
.L2279:
	movq	%rcx, %r14
	.p2align 4,,10
	.p2align 3
.L2271:
#APP
# 249 "mem.cc" 1
	# random loop end (n_chains = $20, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, %rbx
	cmpq	%rbx, %r12
	jne	.L2275
	salq	$6, %r14
	vzeroupper
.L2265:
	popq	%rbx
	movq	%r14, %rax
	popq	%rsi
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	addq	152(%rdi), %rax
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	leaq	-8(%rsi), %rsp
	.cfi_def_cfa 7, 8
	ret
.L2277:
	.cfi_restore_state
	movl	$1, %r14d
	xorl	%r8d, %r8d
	xorl	%r13d, %r13d
	jmp	.L2266
.L2276:
	xorl	%r14d, %r14d
	jmp	.L2265
	.cfi_endproc
.LFE282:
	.size	_Z13access_randomILi20ELi1EEP6recordPS1_ll, .-_Z13access_randomILi20ELi1EEP6recordPS1_ll
	.section	.text.unlikely._Z13access_randomILi20ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi20ELi1EEP6recordPS1_ll,comdat
.LCOLDE88:
	.section	.text._Z13access_randomILi20ELi1EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi20ELi1EEP6recordPS1_ll,comdat
.LHOTE88:
	.section	.text.unlikely._Z13access_randomILi20ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi20ELi0EEP6recordPS1_ll,comdat
.LCOLDB89:
	.section	.text._Z13access_randomILi20ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi20ELi0EEP6recordPS1_ll,comdat
.LHOTB89:
	.p2align 4,,15
	.weak	_Z13access_randomILi20ELi0EEP6recordPS1_ll
	.type	_Z13access_randomILi20ELi0EEP6recordPS1_ll, @function
_Z13access_randomILi20ELi0EEP6recordPS1_ll:
.LFB285:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	testq	%rdx, %rdx
	jle	.L2411
	leaq	-1(%rsi), %rax
	movq	%rdx, %rbp
	xorl	%ebx, %ebx
	leaq	1(%rsi,%rsi), %r10
	movq	%rax, %rdx
	leaq	160(%rdi), %r9
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	leaq	(%rax,%rax), %r11
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L2410:
#APP
# 207 "mem.cc" 1
	# random loop begin (n_chains = $20, payload = $0)
# 0 "" 2
#NO_APP
	testq	%rdx, %rdx
	jle	.L2412
	xorl	%r13d, %r13d
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L2404:
	leaq	1(%r13,%rcx), %r12
	movq	%r12, %r8
	subq	%rsi, %r8
	js	.L2402
	movq	%r8, %r12
	subq	%rsi, %r12
	cmovs	%r8, %r12
.L2402:
	salq	$6, %rcx
	movq	%r9, %r8
	movq	%rcx, %rax
	addq	(%rdi), %rax
	subq	%rdi, %r8
	subq	$8, %r8
	shrq	$3, %r8
	andl	$7, %r8d
	movq	(%rax), %rax
	leaq	8(%rdi), %rax
	cmpq	%r9, %rax
	je	.L2528
	testq	%r8, %r8
	je	.L2403
	cmpq	$1, %r8
	je	.L2501
	cmpq	$2, %r8
	je	.L2502
	cmpq	$3, %r8
	je	.L2503
	cmpq	$4, %r8
	je	.L2504
	cmpq	$5, %r8
	je	.L2505
	cmpq	$6, %r8
	je	.L2506
	movq	%rcx, %r8
	addq	8(%rdi), %r8
	movq	(%r8), %rax
	leaq	16(%rdi), %rax
.L2506:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	movq	(%r8), %r8
.L2505:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	movq	(%r8), %r8
.L2504:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	movq	(%r8), %r8
.L2503:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	movq	(%r8), %r8
.L2502:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	movq	(%r8), %r8
.L2501:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	movq	(%r8), %r8
	cmpq	%r9, %rax
	je	.L2528
.L2403:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$64, %rax
	movq	(%r8), %r8
	movq	%rcx, %r8
	addq	-56(%rax), %r8
	movq	(%r8), %r8
	movq	%rcx, %r8
	addq	-48(%rax), %r8
	movq	(%r8), %r8
	movq	%rcx, %r8
	addq	-40(%rax), %r8
	movq	(%r8), %r8
	movq	%rcx, %r8
	addq	-32(%rax), %r8
	movq	(%r8), %r8
	movq	%rcx, %r8
	addq	-24(%rax), %r8
	movq	(%r8), %r8
	movq	%rcx, %r8
	addq	-16(%rax), %r8
	movq	(%r8), %r8
	movq	%rcx, %r8
	addq	-8(%rax), %r8
	movq	(%r8), %r8
	cmpq	%r9, %rax
	jne	.L2403
.L2528:
	addq	$2, %r13
	cmpq	%r11, %r13
	je	.L2532
	movq	%r12, %rcx
	jmp	.L2404
	.p2align 4,,10
	.p2align 3
.L2532:
	leaq	1(%rdx), %r13
	movq	%r12, %r8
	salq	$6, %r8
.L2401:
	movq	%rsi, %rcx
	movq	%r8, %rax
	addq	(%rdi), %rax
	subq	%r12, %rcx
	movq	%r9, %r12
	subq	%rdi, %r12
	subq	$8, %r12
	shrq	$3, %r12
	movq	(%rax), %rax
	leaq	8(%rdi), %rax
	andl	$7, %r12d
	cmpq	%r9, %rax
	je	.L2529
	testq	%r12, %r12
	je	.L2405
	cmpq	$1, %r12
	je	.L2495
	cmpq	$2, %r12
	je	.L2496
	cmpq	$3, %r12
	je	.L2497
	cmpq	$4, %r12
	je	.L2498
	cmpq	$5, %r12
	je	.L2499
	cmpq	$6, %r12
	je	.L2500
	movq	%r8, %r12
	addq	8(%rdi), %r12
	movq	(%r12), %rax
	leaq	16(%rdi), %rax
.L2500:
	movq	%r8, %r12
	addq	(%rax), %r12
	addq	$8, %rax
	movq	(%r12), %r12
.L2499:
	movq	%r8, %r12
	addq	(%rax), %r12
	addq	$8, %rax
	movq	(%r12), %r12
.L2498:
	movq	%r8, %r12
	addq	(%rax), %r12
	addq	$8, %rax
	movq	(%r12), %r12
.L2497:
	movq	%r8, %r12
	addq	(%rax), %r12
	addq	$8, %rax
	movq	(%r12), %r12
.L2496:
	movq	%r8, %r12
	addq	(%rax), %r12
	addq	$8, %rax
	movq	(%r12), %r12
.L2495:
	movq	%r8, %r12
	addq	(%rax), %r12
	addq	$8, %rax
	movq	(%r12), %r12
	cmpq	%r9, %rax
	je	.L2529
.L2405:
	movq	%r8, %r12
	addq	(%rax), %r12
	addq	$64, %rax
	movq	(%r12), %r12
	movq	%r8, %r12
	addq	-56(%rax), %r12
	movq	(%r12), %r12
	movq	%r8, %r12
	addq	-48(%rax), %r12
	movq	(%r12), %r12
	movq	%r8, %r12
	addq	-40(%rax), %r12
	movq	(%r12), %r12
	movq	%r8, %r12
	addq	-32(%rax), %r12
	movq	(%r12), %r12
	movq	%r8, %r12
	addq	-24(%rax), %r12
	movq	(%r12), %r12
	movq	%r8, %r12
	addq	-16(%rax), %r12
	movq	(%r12), %r12
	movq	%r8, %r12
	addq	-8(%rax), %r12
	movq	(%r12), %r12
	cmpq	%r9, %rax
	jne	.L2405
.L2529:
	cmpq	%r13, %rsi
	jle	.L2414
	leaq	1(%r13,%r13), %r12
	movq	%rcx, %r13
	subq	%r12, %r13
	js	.L2533
	.p2align 4,,10
	.p2align 3
.L2407:
	salq	$6, %rcx
	movq	%r9, %r8
	movq	%rcx, %rax
	addq	(%rdi), %rax
	subq	%rdi, %r8
	subq	$8, %r8
	shrq	$3, %r8
	andl	$7, %r8d
	movq	(%rax), %rax
	leaq	8(%rdi), %rax
	cmpq	%rax, %r9
	je	.L2530
	testq	%r8, %r8
	je	.L2408
	cmpq	$1, %r8
	je	.L2489
	cmpq	$2, %r8
	je	.L2490
	cmpq	$3, %r8
	je	.L2491
	cmpq	$4, %r8
	je	.L2492
	cmpq	$5, %r8
	je	.L2493
	cmpq	$6, %r8
	je	.L2494
	movq	%rcx, %r8
	addq	8(%rdi), %r8
	movq	(%r8), %rax
	leaq	16(%rdi), %rax
.L2494:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	movq	(%r8), %r8
.L2493:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	movq	(%r8), %r8
.L2492:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	movq	(%r8), %r8
.L2491:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	movq	(%r8), %r8
.L2490:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	movq	(%r8), %r8
.L2489:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$8, %rax
	movq	(%r8), %r8
	cmpq	%rax, %r9
	je	.L2530
.L2408:
	movq	%rcx, %r8
	addq	(%rax), %r8
	addq	$64, %rax
	movq	(%r8), %r8
	movq	%rcx, %r8
	addq	-56(%rax), %r8
	movq	(%r8), %r8
	movq	%rcx, %r8
	addq	-48(%rax), %r8
	movq	(%r8), %r8
	movq	%rcx, %r8
	addq	-40(%rax), %r8
	movq	(%r8), %r8
	movq	%rcx, %r8
	addq	-32(%rax), %r8
	movq	(%r8), %r8
	movq	%rcx, %r8
	addq	-24(%rax), %r8
	movq	(%r8), %r8
	movq	%rcx, %r8
	addq	-16(%rax), %r8
	movq	(%r8), %r8
	movq	%rcx, %r8
	addq	-8(%rax), %r8
	movq	(%r8), %r8
	cmpq	%rax, %r9
	jne	.L2408
.L2530:
	addq	$2, %r12
	cmpq	%r10, %r12
	je	.L2406
	movq	%r13, %rcx
	movq	%rcx, %r13
	subq	%r12, %r13
	jns	.L2407
.L2533:
	addq	%rsi, %r13
	jns	.L2407
	addq	%rsi, %r13
	jmp	.L2407
.L2414:
	movq	%rcx, %r13
	.p2align 4,,10
	.p2align 3
.L2406:
#APP
# 249 "mem.cc" 1
	# random loop end (n_chains = $20, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, %rbx
	cmpq	%rbx, %rbp
	jne	.L2410
	salq	$6, %r13
.L2400:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movq	%r13, %rax
	popq	%rbp
	.cfi_def_cfa_offset 24
	addq	152(%rdi), %rax
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L2412:
	.cfi_restore_state
	movl	$1, %r13d
	xorl	%r8d, %r8d
	xorl	%r12d, %r12d
	jmp	.L2401
.L2411:
	xorl	%r13d, %r13d
	jmp	.L2400
	.cfi_endproc
.LFE285:
	.size	_Z13access_randomILi20ELi0EEP6recordPS1_ll, .-_Z13access_randomILi20ELi0EEP6recordPS1_ll
	.section	.text.unlikely._Z13access_randomILi20ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi20ELi0EEP6recordPS1_ll,comdat
.LCOLDE89:
	.section	.text._Z13access_randomILi20ELi0EEP6recordPS1_ll,"axG",@progbits,_Z13access_randomILi20ELi0EEP6recordPS1_ll,comdat
.LHOTE89:
	.section	.rodata.str1.1
.LC90:
	.string	"number of chains = %d >= %d\n"
	.section	.rodata.str1.8
	.align 8
.LC91:
	.string	"either give a smaller nc or change max_chains in the source; abort\n"
	.align 8
.LC92:
	.string	"number of chains = %d, must be >= 0 and <= 20\n"
	.section	.text.unlikely
.LCOLDB93:
	.text
.LHOTB93:
	.p2align 4,,15
	.globl	_Z18access_with_methodPKcPP6recordlili
	.type	_Z18access_with_methodPKcPP6recordlili, @function
_Z18access_with_methodPKcPP6recordlili:
.LFB94:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	leaq	16(%rsp), %r13
	.cfi_def_cfa 13, 0
	andq	$-32, %rsp
	pushq	-8(%r13)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	.cfi_escape 0xf,0x3,0x76,0x68,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	pushq	%r12
	pushq	%rbx
	subq	$520, %rsp
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	.cfi_escape 0x10,0x3,0x2,0x76,0x58
	movq	%rdx, -232(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movq	%r8, -240(%rbp)
	cmpl	$29, %ecx
	jg	.L6031
	cmpl	$20, %ecx
	ja	.L2536
	movl	%ecx, %eax
	movq	%rsi, %r11
	jmp	*.L2538(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L2538:
	.quad	.L2536
	.quad	.L2537
	.quad	.L2539
	.quad	.L2540
	.quad	.L2541
	.quad	.L2542
	.quad	.L2543
	.quad	.L2544
	.quad	.L2545
	.quad	.L2546
	.quad	.L2547
	.quad	.L2548
	.quad	.L2549
	.quad	.L2550
	.quad	.L2551
	.quad	.L2552
	.quad	.L2553
	.quad	.L2554
	.quad	.L2555
	.quad	.L2556
	.quad	.L2557
	.text
	.p2align 4,,10
	.p2align 3
.L2557:
	movzbl	(%rdi), %ecx
	testl	%r9d, %r9d
	jne	.L6032
	cmpb	$114, %cl
	je	.L3412
	cmpb	$115, %cl
	jne	.L5925
	movq	%r8, %rcx
	testq	%r8, %r8
	jle	.L3397
	movq	%rdx, %r9
	xorl	%r8d, %r8d
	movq	%rcx, %r10
	leaq	160(%rsi), %rsi
	.p2align 4,,10
	.p2align 3
.L3417:
#APP
# 180 "mem.cc" 1
	# seq loop begin (n_chains = $20, payload = $0)
# 0 "" 2
#NO_APP
	testq	%r9, %r9
	jle	.L3414
	xorl	%edi, %edi
	.p2align 4,,10
	.p2align 3
.L3416:
	leaq	8(%r11), %rbx
	movq	%rdi, %r14
	movq	%rsi, %r15
	salq	$6, %r14
	subq	%r11, %r15
	movq	%r14, %r13
	addq	(%r11), %r13
	subq	$8, %r15
	shrq	$3, %r15
	andl	$7, %r15d
	movq	0(%r13), %rax
	cmpq	%rsi, %rbx
	je	.L5926
	testq	%r15, %r15
	je	.L3415
	cmpq	$1, %r15
	je	.L5295
	cmpq	$2, %r15
	je	.L5296
	cmpq	$3, %r15
	je	.L5297
	cmpq	$4, %r15
	je	.L5298
	cmpq	$5, %r15
	je	.L5299
	cmpq	$6, %r15
	je	.L5300
	leaq	16(%r11), %rbx
	movq	%r14, %rax
	addq	8(%r11), %rax
	movq	(%rax), %rax
.L5300:
	movq	%r14, %rdx
	addq	(%rbx), %rdx
	addq	$8, %rbx
	movq	(%rdx), %rcx
.L5299:
	movq	%r14, %r12
	addq	(%rbx), %r12
	addq	$8, %rbx
	movq	(%r12), %rcx
.L5298:
	movq	%r14, %rcx
	addq	(%rbx), %rcx
	addq	$8, %rbx
	movq	(%rcx), %rcx
.L5297:
	movq	%r14, %r15
	addq	(%rbx), %r15
	addq	$8, %rbx
	movq	(%r15), %rcx
.L5296:
	movq	%r14, %r13
	addq	(%rbx), %r13
	addq	$8, %rbx
	movq	0(%r13), %rcx
.L5295:
	movq	%r14, %rax
	addq	(%rbx), %rax
	addq	$8, %rbx
	movq	(%rax), %rcx
	cmpq	%rsi, %rbx
	je	.L5926
.L3415:
	movq	%r14, %rdx
	movq	%r14, %r12
	addq	(%rbx), %rdx
	movq	%r14, %r15
	addq	8(%rbx), %r12
	movq	%r14, %r13
	movq	%r14, %rax
	addq	24(%rbx), %r15
	addq	$64, %rbx
	addq	-32(%rbx), %r13
	movq	(%rdx), %rcx
	movq	%r14, %rdx
	movq	(%r12), %rcx
	movq	%r14, %rcx
	movq	%r14, %r12
	addq	-48(%rbx), %rcx
	addq	-24(%rbx), %rax
	addq	-16(%rbx), %rdx
	addq	-8(%rbx), %r12
	movq	(%rcx), %rcx
	movq	(%r15), %rcx
	movq	0(%r13), %rcx
	movq	(%rax), %rcx
	movq	(%rdx), %rcx
	movq	(%r12), %rcx
	cmpq	%rsi, %rbx
	jne	.L3415
.L5926:
	addq	$1, %rdi
	cmpq	%rdi, %r9
	jne	.L3416
.L3414:
#APP
# 193 "mem.cc" 1
	# seq loop end (n_chains = $20, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, %r8
	cmpq	%r8, %r10
	jne	.L3417
.L3397:
	movq	-232(%rbp), %rbx
	movq	152(%r11), %r11
	salq	$6, %rbx
	leaq	-64(%r11,%rbx), %r15
	.p2align 4,,10
	.p2align 3
.L2569:
	movq	-56(%rbp), %rbx
	xorq	%fs:40, %rbx
	movq	%r15, %rax
	jne	.L6022
	addq	$520, %rsp
	popq	%rbx
	popq	%r12
	popq	%rcx
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%rcx), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2556:
	.cfi_restore_state
	movzbl	(%rdi), %esi
	testl	%r9d, %r9d
	jne	.L6033
	cmpb	$114, %sil
	je	.L3378
	cmpb	$115, %sil
	jne	.L5919
	movq	%r8, %rcx
	testq	%r8, %r8
	jle	.L3363
	movq	%rdx, %r9
	xorl	%r8d, %r8d
	movq	%rcx, %r10
	leaq	152(%r11), %rsi
	.p2align 4,,10
	.p2align 3
.L3383:
#APP
# 180 "mem.cc" 1
	# seq loop begin (n_chains = $19, payload = $0)
# 0 "" 2
#NO_APP
	testq	%r9, %r9
	jle	.L3380
	xorl	%edi, %edi
	.p2align 4,,10
	.p2align 3
.L3382:
	leaq	8(%r11), %rdx
	movq	%rdi, %r15
	movq	%rsi, %r13
	salq	$6, %r15
	subq	%r11, %r13
	movq	%r15, %rax
	addq	(%r11), %rax
	subq	$8, %r13
	shrq	$3, %r13
	andl	$7, %r13d
	movq	(%rax), %rax
	cmpq	%rsi, %rdx
	je	.L5920
	testq	%r13, %r13
	je	.L3381
	cmpq	$1, %r13
	je	.L5271
	cmpq	$2, %r13
	je	.L5272
	cmpq	$3, %r13
	je	.L5273
	cmpq	$4, %r13
	je	.L5274
	cmpq	$5, %r13
	je	.L5275
	cmpq	$6, %r13
	je	.L5276
	leaq	16(%r11), %rdx
	movq	%r15, %rbx
	addq	8(%r11), %rbx
	movq	(%rbx), %rax
.L5276:
	movq	%r15, %r12
	addq	(%rdx), %r12
	addq	$8, %rdx
	movq	(%r12), %rcx
.L5275:
	movq	%r15, %r14
	addq	(%rdx), %r14
	addq	$8, %rdx
	movq	(%r14), %rcx
.L5274:
	movq	%r15, %rcx
	addq	(%rdx), %rcx
	addq	$8, %rdx
	movq	(%rcx), %rcx
.L5273:
	movq	%r15, %r13
	addq	(%rdx), %r13
	addq	$8, %rdx
	movq	0(%r13), %rcx
.L5272:
	movq	%r15, %rax
	addq	(%rdx), %rax
	addq	$8, %rdx
	movq	(%rax), %rcx
.L5271:
	movq	%r15, %rbx
	addq	(%rdx), %rbx
	addq	$8, %rdx
	movq	(%rbx), %rcx
	cmpq	%rsi, %rdx
	je	.L5920
.L3381:
	movq	%r15, %r12
	movq	%r15, %r14
	addq	(%rdx), %r12
	movq	%r15, %r13
	addq	8(%rdx), %r14
	movq	%r15, %rax
	movq	%r15, %rbx
	addq	24(%rdx), %r13
	addq	$64, %rdx
	addq	-32(%rdx), %rax
	movq	(%r12), %rcx
	movq	%r15, %r12
	movq	(%r14), %rcx
	movq	%r15, %rcx
	movq	%r15, %r14
	addq	-48(%rdx), %rcx
	addq	-24(%rdx), %rbx
	addq	-16(%rdx), %r12
	addq	-8(%rdx), %r14
	movq	(%rcx), %rcx
	movq	0(%r13), %rcx
	movq	(%rax), %rcx
	movq	(%rbx), %rcx
	movq	(%r12), %rcx
	movq	(%r14), %rcx
	cmpq	%rsi, %rdx
	jne	.L3381
.L5920:
	addq	$1, %rdi
	cmpq	%rdi, %r9
	jne	.L3382
.L3380:
#APP
# 193 "mem.cc" 1
	# seq loop end (n_chains = $19, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, %r8
	cmpq	%r8, %r10
	jne	.L3383
.L3363:
	movq	-232(%rbp), %r14
	movq	144(%r11), %r11
	salq	$6, %r14
	leaq	-64(%r11,%r14), %r15
	jmp	.L2569
	.p2align 4,,10
	.p2align 3
.L2555:
	movzbl	(%rdi), %esi
	testl	%r9d, %r9d
	jne	.L6034
	cmpb	$114, %sil
	je	.L3344
	cmpb	$115, %sil
	jne	.L5913
	movq	%r8, %rcx
	testq	%r8, %r8
	jle	.L3329
	movq	%rdx, %r9
	xorl	%r8d, %r8d
	movq	%rcx, %r10
	leaq	144(%r11), %rsi
	.p2align 4,,10
	.p2align 3
.L3349:
#APP
# 180 "mem.cc" 1
	# seq loop begin (n_chains = $18, payload = $0)
# 0 "" 2
#NO_APP
	testq	%r9, %r9
	jle	.L3346
	xorl	%edi, %edi
	.p2align 4,,10
	.p2align 3
.L3348:
	leaq	8(%r11), %r14
	movq	%rdi, %r15
	movq	%rsi, %rbx
	salq	$6, %r15
	subq	%r11, %rbx
	movq	%r15, %rax
	addq	(%r11), %rax
	subq	$8, %rbx
	shrq	$3, %rbx
	andl	$7, %ebx
	movq	(%rax), %rax
	cmpq	%rsi, %r14
	je	.L5914
	testq	%rbx, %rbx
	je	.L3347
	cmpq	$1, %rbx
	je	.L5247
	cmpq	$2, %rbx
	je	.L5248
	cmpq	$3, %rbx
	je	.L5249
	cmpq	$4, %rbx
	je	.L5250
	cmpq	$5, %rbx
	je	.L5251
	cmpq	$6, %rbx
	je	.L5252
	leaq	16(%r11), %r14
	movq	%r15, %r12
	addq	8(%r11), %r12
	movq	(%r12), %rax
.L5252:
	movq	%r15, %rdx
	addq	(%r14), %rdx
	addq	$8, %r14
	movq	(%rdx), %rcx
.L5251:
	movq	%r15, %r13
	addq	(%r14), %r13
	addq	$8, %r14
	movq	0(%r13), %rcx
.L5250:
	movq	%r15, %rcx
	addq	(%r14), %rcx
	addq	$8, %r14
	movq	(%rcx), %rcx
.L5249:
	movq	%r15, %rbx
	addq	(%r14), %rbx
	addq	$8, %r14
	movq	(%rbx), %rcx
.L5248:
	movq	%r15, %rax
	addq	(%r14), %rax
	addq	$8, %r14
	movq	(%rax), %rcx
.L5247:
	movq	%r15, %r12
	addq	(%r14), %r12
	addq	$8, %r14
	movq	(%r12), %rcx
	cmpq	%rsi, %r14
	je	.L5914
.L3347:
	movq	%r15, %rdx
	movq	%r15, %r13
	addq	(%r14), %rdx
	movq	%r15, %rbx
	addq	8(%r14), %r13
	movq	%r15, %rax
	movq	%r15, %r12
	addq	24(%r14), %rbx
	addq	$64, %r14
	addq	-32(%r14), %rax
	movq	(%rdx), %rcx
	movq	%r15, %rdx
	movq	0(%r13), %rcx
	movq	%r15, %rcx
	movq	%r15, %r13
	addq	-48(%r14), %rcx
	addq	-24(%r14), %r12
	addq	-16(%r14), %rdx
	addq	-8(%r14), %r13
	movq	(%rcx), %rcx
	movq	(%rbx), %rcx
	movq	(%rax), %rcx
	movq	(%r12), %rcx
	movq	(%rdx), %rcx
	movq	0(%r13), %rcx
	cmpq	%rsi, %r14
	jne	.L3347
.L5914:
	addq	$1, %rdi
	cmpq	%rdi, %r9
	jne	.L3348
.L3346:
#APP
# 193 "mem.cc" 1
	# seq loop end (n_chains = $18, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, %r8
	cmpq	%r8, %r10
	jne	.L3349
.L3329:
	movq	-232(%rbp), %r15
	movq	136(%r11), %r11
	salq	$6, %r15
	leaq	-64(%r11,%r15), %r15
	jmp	.L2569
	.p2align 4,,10
	.p2align 3
.L2554:
	movzbl	(%rdi), %esi
	testl	%r9d, %r9d
	jne	.L6035
	cmpb	$114, %sil
	je	.L3297
	cmpb	$115, %sil
	jne	.L5907
	cmpq	$0, -240(%rbp)
	jle	.L6008
	movq	128(%r11), %r12
	movq	$0, -304(%rbp)
	movq	%r12, -248(%rbp)
	.p2align 4,,10
	.p2align 3
.L3301:
#APP
# 180 "mem.cc" 1
	# seq loop begin (n_chains = $17, payload = $0)
# 0 "" 2
#NO_APP
	movq	-232(%rbp), %rax
	testq	%rax, %rax
	jle	.L3299
	movq	88(%r11), %r15
	subq	$1, %rax
	movq	80(%r11), %rdx
	andl	$1, %eax
	movq	(%r11), %r14
	movq	8(%r11), %r13
	movq	%r15, -256(%rbp)
	movq	96(%r11), %r15
	movq	16(%r11), %r12
	movq	%rdx, -288(%rbp)
	movq	24(%r11), %rbx
	movq	32(%r11), %r10
	movq	%r15, -264(%rbp)
	movq	104(%r11), %r15
	movq	40(%r11), %r9
	movq	48(%r11), %r8
	movq	56(%r11), %rdi
	movq	%r15, -272(%rbp)
	movq	112(%r11), %r15
	movq	64(%r11), %rsi
	movq	72(%r11), %rcx
	movq	%r15, -280(%rbp)
	movq	120(%r11), %r15
	movq	%r15, -296(%rbp)
	movq	%rax, %r15
	movq	(%r14), %rax
	movq	0(%r13), %rax
	movq	(%r12), %rax
	movq	(%rbx), %rax
	movq	(%r10), %rax
	movq	(%r9), %rax
	movq	(%r8), %rax
	movq	(%rdi), %rax
	movq	(%rsi), %rax
	movq	(%rcx), %rax
	movq	(%rdx), %rax
	movq	-264(%rbp), %rdx
	movq	-256(%rbp), %rax
	cmpq	$1, -232(%rbp)
	movq	(%rax), %rax
	movq	(%rdx), %rax
	movq	-280(%rbp), %rdx
	movq	-272(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rdx), %rax
	movq	-248(%rbp), %rdx
	movq	-296(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rdx), %rax
	movl	$1, %edx
	je	.L3299
	testq	%r15, %r15
	je	.L5991
	movq	-288(%rbp), %r15
	movq	64(%r14), %rax
	movq	-264(%rbp), %rdx
	movq	64(%r13), %rax
	movq	64(%r12), %rax
	movq	64(%rbx), %rax
	movq	64(%r10), %rax
	movq	64(%r9), %rax
	movq	64(%r8), %rax
	movq	64(%rdi), %rax
	movq	64(%rsi), %rax
	movq	64(%rcx), %rax
	movq	64(%r15), %rax
	movq	-272(%rbp), %r15
	movq	-256(%rbp), %rax
	cmpq	$2, -232(%rbp)
	movq	64(%rax), %rax
	movq	64(%rdx), %rax
	movq	64(%r15), %rax
	movq	-296(%rbp), %rdx
	movq	-280(%rbp), %rax
	movq	-248(%rbp), %r15
	movq	64(%rax), %rax
	movq	64(%rdx), %rax
	movl	$2, %edx
	movq	64(%r15), %rax
	je	.L3299
.L5991:
	movq	%r11, -312(%rbp)
	movq	-296(%rbp), %r11
.L3300:
	movq	%rdx, %rax
	salq	$6, %rax
	leaq	(%r14,%rax), %r15
	movq	(%r15), %r15
	leaq	0(%r13,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r12,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rbx,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rsi,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rcx,%rax), %r15
	movq	(%r15), %r15
	movq	-288(%rbp), %r15
	addq	%rax, %r15
	movq	(%r15), %r15
	movq	-256(%rbp), %r15
	addq	%rax, %r15
	movq	(%r15), %r15
	movq	-264(%rbp), %r15
	addq	%rax, %r15
	movq	(%r15), %r15
	movq	-272(%rbp), %r15
	addq	%rax, %r15
	movq	(%r15), %r15
	movq	-280(%rbp), %r15
	addq	%rax, %r15
	movq	(%r15), %r15
	leaq	(%r11,%rax), %r15
	addq	-248(%rbp), %rax
	movq	(%r15), %r15
	movq	(%rax), %rax
	leaq	1(%rdx), %rax
	addq	$2, %rdx
	salq	$6, %rax
	leaq	(%r14,%rax), %r15
	movq	(%r15), %r15
	leaq	0(%r13,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r12,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rbx,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rax), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rsi,%rax), %r15
	movq	(%r15), %r15
	leaq	(%rcx,%rax), %r15
	movq	(%r15), %r15
	movq	-288(%rbp), %r15
	addq	%rax, %r15
	movq	(%r15), %r15
	movq	-256(%rbp), %r15
	addq	%rax, %r15
	movq	(%r15), %r15
	movq	-264(%rbp), %r15
	addq	%rax, %r15
	movq	(%r15), %r15
	movq	-272(%rbp), %r15
	addq	%rax, %r15
	movq	(%r15), %r15
	movq	-280(%rbp), %r15
	addq	%rax, %r15
	movq	(%r15), %r15
	leaq	(%r11,%rax), %r15
	addq	-248(%rbp), %rax
	movq	(%r15), %r15
	movq	(%rax), %rax
	cmpq	%rdx, -232(%rbp)
	jne	.L3300
	movq	-312(%rbp), %r11
.L3299:
#APP
# 193 "mem.cc" 1
	# seq loop end (n_chains = $17, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, -304(%rbp)
	movq	-304(%rbp), %r14
	cmpq	%r14, -240(%rbp)
	jne	.L3301
	jmp	.L6009
	.p2align 4,,10
	.p2align 3
.L2553:
	movzbl	(%rdi), %r12d
	testl	%r9d, %r9d
	jne	.L6036
	cmpb	$114, %r12b
	je	.L3236
	cmpb	$115, %r12b
	jne	.L5903
	movq	120(%rsi), %r15
	cmpq	$0, -240(%rbp)
	movq	%r15, -280(%rbp)
	jle	.L3239
	movq	-232(%rbp), %rsi
	movq	$0, -296(%rbp)
	salq	$6, %rsi
	movq	%rsi, -288(%rbp)
	.p2align 4,,10
	.p2align 3
.L3242:
#APP
# 180 "mem.cc" 1
	# seq loop begin (n_chains = $16, payload = $0)
# 0 "" 2
#NO_APP
	cmpq	$0, -232(%rbp)
	jle	.L3240
	movq	80(%r11), %rax
	movq	88(%r11), %rdx
	movq	96(%r11), %r14
	movq	8(%r11), %r13
	movq	%rax, %r15
	movq	104(%r11), %rax
	movq	%rdx, -264(%rbp)
	movq	16(%r11), %r12
	movq	112(%r11), %rdx
	movq	%r14, -248(%rbp)
	movq	24(%r11), %rbx
	movq	32(%r11), %r10
	movq	%rax, -256(%rbp)
	movq	40(%r11), %r9
	movq	-288(%rbp), %rax
	movq	%rdx, -272(%rbp)
	movq	48(%r11), %r8
	movq	56(%r11), %rdi
	movq	64(%r11), %rsi
	movq	72(%r11), %rcx
	leaq	-64(%rax), %rdx
	movq	(%r11), %r14
	shrq	$6, %rdx
	andl	$1, %edx
	movq	(%r14), %rax
	movq	0(%r13), %rax
	movq	(%r12), %rax
	movq	(%rbx), %rax
	movq	(%r10), %rax
	movq	(%r9), %rax
	movq	(%r8), %rax
	movq	(%rdi), %rax
	movq	(%rsi), %rax
	movq	(%rcx), %rax
	movq	%r15, %rax
	movq	(%rax), %rax
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	movq	-248(%rbp), %rax
	cmpq	$64, -288(%rbp)
	movq	(%rax), %rax
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	movq	-272(%rbp), %rax
	movq	(%rax), %rax
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	movl	$64, %eax
	je	.L3240
	testq	%rdx, %rdx
	je	.L5987
	movq	64(%r14), %rax
	movq	-248(%rbp), %rdx
	movq	64(%r13), %rax
	movq	64(%r12), %rax
	movq	64(%rbx), %rax
	movq	64(%r10), %rax
	movq	64(%r9), %rax
	movq	64(%r8), %rax
	movq	64(%rdi), %rax
	movq	64(%rsi), %rax
	movq	64(%rcx), %rax
	movq	64(%r15), %rax
	movq	-264(%rbp), %rax
	cmpq	$128, -288(%rbp)
	movq	64(%rax), %rax
	movq	64(%rdx), %rax
	movq	-256(%rbp), %rax
	movq	-272(%rbp), %rdx
	movq	64(%rax), %rax
	movq	64(%rdx), %rax
	movq	-280(%rbp), %rax
	movq	64(%rax), %rax
	movl	$128, %eax
	je	.L3240
.L5987:
	movq	%r11, -304(%rbp)
	movq	%r15, %r11
.L3241:
	leaq	(%r14,%rax), %r15
	movq	(%r15), %rdx
	leaq	(%r12,%rax), %r15
	leaq	0(%r13,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%r10,%rax), %r15
	leaq	(%rbx,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%r8,%rax), %r15
	leaq	(%r9,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%rsi,%rax), %r15
	leaq	(%rdi,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%r11,%rax), %r15
	leaq	(%rcx,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	movq	-264(%rbp), %rdx
	movq	-248(%rbp), %r15
	addq	%rax, %rdx
	addq	%rax, %r15
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	movq	-256(%rbp), %rdx
	movq	-272(%rbp), %r15
	addq	%rax, %rdx
	addq	%rax, %r15
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	movq	-280(%rbp), %rdx
	addq	%rax, %rdx
	movq	(%rdx), %rdx
	leaq	64(%rax), %rdx
	subq	$-128, %rax
	leaq	(%r14,%rdx), %r15
	movq	(%r15), %r15
	leaq	0(%r13,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r12,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rbx,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rsi,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rcx,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r11,%rdx), %r15
	movq	(%r15), %r15
	movq	-264(%rbp), %r15
	addq	%rdx, %r15
	movq	(%r15), %r15
	movq	-248(%rbp), %r15
	addq	%rdx, %r15
	movq	(%r15), %r15
	movq	-256(%rbp), %r15
	addq	%rdx, %r15
	movq	(%r15), %r15
	movq	-272(%rbp), %r15
	addq	%rdx, %r15
	addq	-280(%rbp), %rdx
	movq	(%r15), %r15
	movq	(%rdx), %rdx
	cmpq	%rax, -288(%rbp)
	jne	.L3241
	movq	-304(%rbp), %r11
.L3240:
#APP
# 193 "mem.cc" 1
	# seq loop end (n_chains = $16, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, -296(%rbp)
	movq	-296(%rbp), %r13
	cmpq	%r13, -240(%rbp)
	jne	.L3242
.L3239:
	movq	-232(%rbp), %r12
	movq	-280(%rbp), %rbx
	salq	$6, %r12
	leaq	-64(%rbx,%r12), %r15
	jmp	.L2569
	.p2align 4,,10
	.p2align 3
.L2545:
	movzbl	(%rdi), %ebx
	testl	%r9d, %r9d
	jne	.L6037
	cmpb	$114, %bl
	je	.L2812
	cmpb	$115, %bl
	jne	.L5878
	cmpq	$0, -240(%rbp)
	jle	.L6038
	movq	56(%rsi), %rbx
	movq	%rdx, %r12
	xorl	%r14d, %r14d
	salq	$6, %r12
	.p2align 4,,10
	.p2align 3
.L2818:
#APP
# 180 "mem.cc" 1
	# seq loop begin (n_chains = $8, payload = $0)
# 0 "" 2
#NO_APP
	cmpq	$0, -232(%rbp)
	jle	.L2816
	movq	8(%r11), %r10
	leaq	-64(%r12), %r15
	movq	16(%r11), %r9
	shrq	$6, %r15
	movq	24(%r11), %r8
	andl	$3, %r15d
	movq	32(%r11), %rdi
	movq	40(%r11), %rsi
	movq	48(%r11), %rcx
	movq	(%r11), %r13
	movq	0(%r13), %rax
	movq	(%r10), %rax
	movq	(%r9), %rax
	movq	(%r8), %rax
	movq	(%rdi), %rax
	movq	(%rsi), %rax
	movq	(%rcx), %rax
	movq	(%rbx), %rax
	movl	$64, %eax
	cmpq	$64, %r12
	je	.L2816
	testq	%r15, %r15
	je	.L2817
	cmpq	$1, %r15
	je	.L5212
	cmpq	$2, %r15
	je	.L5213
	movq	64(%r13), %rax
	movq	64(%r10), %rax
	movq	64(%r9), %rax
	movq	64(%r8), %rax
	movq	64(%rdi), %rax
	movq	64(%rsi), %rax
	movq	64(%rcx), %rax
	movq	64(%rbx), %rax
	movl	$128, %eax
.L5213:
	leaq	(%r10,%rax), %r15
	leaq	0(%r13,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%r8,%rax), %r15
	leaq	(%r9,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%rsi,%rax), %r15
	leaq	(%rdi,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%rcx,%rax), %rdx
	leaq	(%rbx,%rax), %r15
	movq	(%rdx), %rdx
	addq	$64, %rax
	movq	(%r15), %rdx
.L5212:
	leaq	(%r10,%rax), %r15
	leaq	0(%r13,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%r8,%rax), %r15
	leaq	(%r9,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%rsi,%rax), %r15
	leaq	(%rdi,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%rcx,%rax), %rdx
	leaq	(%rbx,%rax), %r15
	addq	$64, %rax
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	cmpq	%rax, %r12
	je	.L2816
.L2817:
	leaq	(%r10,%rax), %r15
	leaq	0(%r13,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%r8,%rax), %r15
	leaq	(%r9,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%rsi,%rax), %r15
	leaq	(%rdi,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%rbx,%rax), %r15
	leaq	(%rcx,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	64(%rax), %rdx
	leaq	0(%r13,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rsi,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rcx,%rdx), %r15
	addq	%rbx, %rdx
	movq	(%r15), %r15
	movq	(%rdx), %rdx
	leaq	128(%rax), %rdx
	leaq	0(%r13,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rsi,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rcx,%rdx), %r15
	addq	%rbx, %rdx
	movq	(%r15), %r15
	movq	(%rdx), %rdx
	leaq	192(%rax), %rdx
	addq	$256, %rax
	leaq	0(%r13,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rsi,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rcx,%rdx), %r15
	addq	%rbx, %rdx
	movq	(%r15), %r15
	movq	(%rdx), %rdx
	cmpq	%rax, %r12
	jne	.L2817
.L2816:
#APP
# 193 "mem.cc" 1
	# seq loop end (n_chains = $8, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, %r14
	cmpq	%r14, -240(%rbp)
	jne	.L2818
.L6010:
	movq	-232(%rbp), %r11
.L2651:
	salq	$6, %r11
	leaq	-64(%rbx,%r11), %r15
	jmp	.L2569
	.p2align 4,,10
	.p2align 3
.L2549:
	movzbl	(%rdi), %r13d
	testl	%r9d, %r9d
	jne	.L6039
	cmpb	$114, %r13b
	je	.L3008
	cmpb	$115, %r13b
	jne	.L5891
	movq	88(%rsi), %r15
	cmpq	$0, -240(%rbp)
	movq	%r15, -248(%rbp)
	jle	.L6009
	movq	-232(%rbp), %rbx
	movq	%rsi, -272(%rbp)
	movq	$0, -264(%rbp)
	salq	$6, %rbx
	movq	%rbx, -256(%rbp)
	.p2align 4,,10
	.p2align 3
.L3014:
#APP
# 180 "mem.cc" 1
	# seq loop begin (n_chains = $12, payload = $0)
# 0 "" 2
#NO_APP
	cmpq	$0, -232(%rbp)
	jle	.L3012
	movq	-272(%rbp), %r14
	movq	-256(%rbp), %r15
	movq	8(%r14), %r13
	movq	16(%r14), %r12
	movq	%r15, %rdx
	movq	24(%r14), %rbx
	subq	$64, %rdx
	movq	32(%r14), %r11
	shrq	$6, %rdx
	movq	40(%r14), %r10
	andl	$1, %edx
	movq	48(%r14), %r9
	movq	56(%r14), %r8
	movq	64(%r14), %rdi
	movq	72(%r14), %rsi
	movq	80(%r14), %rcx
	movq	(%r14), %r14
	movq	(%r14), %rax
	movq	0(%r13), %rax
	movq	(%r12), %rax
	movq	(%rbx), %rax
	movq	(%r11), %rax
	movq	(%r10), %rax
	movq	(%r9), %rax
	movq	(%r8), %rax
	movq	(%rdi), %rax
	movq	(%rsi), %rax
	movq	(%rcx), %rax
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	movl	$64, %eax
	cmpq	$64, %r15
	je	.L3012
	testq	%rdx, %rdx
	je	.L3013
	movq	-248(%rbp), %r15
	cmpq	$128, -256(%rbp)
	movq	64(%r14), %rax
	movq	64(%r13), %rax
	movq	64(%r12), %rax
	movq	64(%rbx), %rax
	movq	64(%r11), %rax
	movq	64(%r10), %rax
	movq	64(%r9), %rax
	movq	64(%r8), %rax
	movq	64(%rdi), %rax
	movq	64(%rsi), %rax
	movq	64(%rcx), %rax
	movq	64(%r15), %rax
	movl	$128, %eax
	je	.L3012
	.p2align 4,,10
	.p2align 3
.L3013:
	leaq	0(%r13,%rax), %r15
	leaq	(%r14,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%rbx,%rax), %r15
	leaq	(%r12,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%r10,%rax), %r15
	leaq	(%r11,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%r8,%rax), %r15
	leaq	(%r9,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%rsi,%rax), %r15
	leaq	(%rdi,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%rcx,%rax), %rdx
	movq	-248(%rbp), %r15
	movq	(%rdx), %rdx
	addq	%rax, %r15
	movq	(%r15), %rdx
	leaq	64(%rax), %rdx
	subq	$-128, %rax
	leaq	(%r14,%rdx), %r15
	movq	(%r15), %r15
	leaq	0(%r13,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r12,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rbx,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r11,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rsi,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rcx,%rdx), %r15
	addq	-248(%rbp), %rdx
	movq	(%r15), %r15
	movq	(%rdx), %rdx
	cmpq	%rax, -256(%rbp)
	jne	.L3013
.L3012:
#APP
# 193 "mem.cc" 1
	# seq loop end (n_chains = $12, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, -264(%rbp)
	movq	-264(%rbp), %r13
	cmpq	%r13, -240(%rbp)
	jne	.L3014
.L6009:
	movq	-232(%rbp), %r10
.L3269:
	movq	-248(%rbp), %r9
	salq	$6, %r10
	leaq	-64(%r9,%r10), %r15
	jmp	.L2569
	.p2align 4,,10
	.p2align 3
.L2548:
	movzbl	(%rdi), %edi
	testl	%r9d, %r9d
	jne	.L6040
	cmpb	$114, %dil
	je	.L2956
	cmpb	$115, %dil
	jne	.L5888
	movq	80(%rsi), %r15
	cmpq	$0, -240(%rbp)
	movq	%r15, -256(%rbp)
	jle	.L3121
	movq	-232(%rbp), %rdi
	movq	$0, -264(%rbp)
	salq	$6, %rdi
	movq	%rdi, -248(%rbp)
	.p2align 4,,10
	.p2align 3
.L2962:
#APP
# 180 "mem.cc" 1
	# seq loop begin (n_chains = $11, payload = $0)
# 0 "" 2
#NO_APP
	cmpq	$0, -232(%rbp)
	jle	.L2960
	movq	8(%r11), %r13
	movq	16(%r11), %r12
	movq	24(%r11), %rbx
	movq	32(%r11), %r10
	movq	40(%r11), %r9
	movq	48(%r11), %r8
	movq	56(%r11), %rdi
	movq	64(%r11), %rsi
	movq	72(%r11), %rcx
	movq	(%r11), %r14
	movq	-248(%rbp), %r15
	movq	(%r14), %rax
	movq	0(%r13), %rax
	leaq	-64(%r15), %rdx
	movq	(%r12), %rax
	shrq	$6, %rdx
	movq	(%rbx), %rax
	andl	$1, %edx
	movq	(%r10), %rax
	movq	(%r9), %rax
	movq	(%r8), %rax
	movq	(%rdi), %rax
	movq	(%rsi), %rax
	movq	(%rcx), %rax
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	movl	$64, %eax
	cmpq	$64, %r15
	je	.L2960
	testq	%rdx, %rdx
	je	.L5965
	movq	-256(%rbp), %r15
	cmpq	$128, -248(%rbp)
	movq	64(%r14), %rax
	movq	64(%r13), %rax
	movq	64(%r12), %rax
	movq	64(%rbx), %rax
	movq	64(%r10), %rax
	movq	64(%r9), %rax
	movq	64(%r8), %rax
	movq	64(%rdi), %rax
	movq	64(%rsi), %rax
	movq	64(%rcx), %rax
	movq	64(%r15), %rax
	movl	$128, %eax
	je	.L2960
.L5965:
	movq	%r11, -272(%rbp)
	movq	-256(%rbp), %r11
.L2961:
	leaq	0(%r13,%rax), %r15
	leaq	(%r14,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%rbx,%rax), %r15
	leaq	(%r12,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%r9,%rax), %r15
	leaq	(%r10,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%rdi,%rax), %r15
	leaq	(%r8,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%rcx,%rax), %r15
	leaq	(%rsi,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%r11,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	64(%rax), %rdx
	subq	$-128, %rax
	leaq	(%r14,%rdx), %r15
	movq	(%r15), %r15
	leaq	0(%r13,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r12,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rbx,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rsi,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rcx,%rdx), %r15
	addq	%r11, %rdx
	movq	(%r15), %r15
	movq	(%rdx), %rdx
	cmpq	%rax, -248(%rbp)
	jne	.L2961
	movq	-272(%rbp), %r11
.L2960:
#APP
# 193 "mem.cc" 1
	# seq loop end (n_chains = $11, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, -264(%rbp)
	movq	-264(%rbp), %r13
	cmpq	%r13, -240(%rbp)
	jne	.L2962
	jmp	.L3121
	.p2align 4,,10
	.p2align 3
.L2547:
	movzbl	(%rdi), %edi
	testl	%r9d, %r9d
	jne	.L6041
	cmpb	$114, %dil
	je	.L2906
	cmpb	$115, %dil
	jne	.L5885
	cmpq	$0, -240(%rbp)
	jle	.L6042
	movq	72(%rsi), %r13
	movq	%rdx, %r15
	movq	$0, -256(%rbp)
	salq	$6, %r15
	movq	%r15, -248(%rbp)
	.p2align 4,,10
	.p2align 3
.L2912:
#APP
# 180 "mem.cc" 1
	# seq loop begin (n_chains = $10, payload = $0)
# 0 "" 2
#NO_APP
	cmpq	$0, -232(%rbp)
	jle	.L2910
	movq	-248(%rbp), %r15
	movq	8(%r11), %r12
	movq	16(%r11), %rbx
	movq	24(%r11), %r10
	movq	32(%r11), %r9
	leaq	-64(%r15), %rdx
	movq	40(%r11), %r8
	shrq	$6, %rdx
	movq	48(%r11), %rdi
	andl	$1, %edx
	movq	56(%r11), %rsi
	movq	64(%r11), %rcx
	movq	(%r11), %r14
	movq	(%r14), %rax
	movq	(%r12), %rax
	movq	(%rbx), %rax
	movq	(%r10), %rax
	movq	(%r9), %rax
	movq	(%r8), %rax
	movq	(%rdi), %rax
	movq	(%rsi), %rax
	movq	(%rcx), %rax
	movq	0(%r13), %rax
	movl	$64, %eax
	cmpq	$64, %r15
	je	.L2910
	testq	%rdx, %rdx
	je	.L2911
	cmpq	$128, -248(%rbp)
	movq	64(%r14), %rax
	movq	64(%r12), %rax
	movq	64(%rbx), %rax
	movq	64(%r10), %rax
	movq	64(%r9), %rax
	movq	64(%r8), %rax
	movq	64(%rdi), %rax
	movq	64(%rsi), %rax
	movq	64(%rcx), %rax
	movq	64(%r13), %rax
	movl	$128, %eax
	je	.L2910
	.p2align 4,,10
	.p2align 3
.L2911:
	leaq	(%r14,%rax), %r15
	movq	(%r15), %rdx
	leaq	(%rbx,%rax), %r15
	leaq	(%r12,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%r9,%rax), %r15
	leaq	(%r10,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%rdi,%rax), %r15
	leaq	(%r8,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%rcx,%rax), %r15
	leaq	(%rsi,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	0(%r13,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	64(%rax), %rdx
	subq	$-128, %rax
	leaq	(%r14,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r12,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rbx,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rsi,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rcx,%rdx), %r15
	addq	%r13, %rdx
	movq	(%r15), %r15
	movq	(%rdx), %rdx
	cmpq	%rax, -248(%rbp)
	jne	.L2911
.L2910:
#APP
# 193 "mem.cc" 1
	# seq loop end (n_chains = $10, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, -256(%rbp)
	movq	-256(%rbp), %r12
	cmpq	%r12, -240(%rbp)
	jne	.L2912
.L2909:
	movq	-232(%rbp), %r11
	salq	$6, %r11
	leaq	-64(%r13,%r11), %r15
	jmp	.L2569
	.p2align 4,,10
	.p2align 3
.L2541:
	movzbl	(%rdi), %ecx
	testl	%r9d, %r9d
	jne	.L6043
	cmpb	$114, %cl
	je	.L2662
	cmpb	$115, %cl
	jne	.L5865
	cmpq	$0, -240(%rbp)
	jle	.L6044
	movq	24(%rsi), %rbx
	movq	%rdx, %r13
	movq	%rdx, %r15
	xorl	%r12d, %r12d
	salq	$6, %r13
	.p2align 4,,10
	.p2align 3
.L2668:
#APP
# 180 "mem.cc" 1
	# seq loop begin (n_chains = $4, payload = $0)
# 0 "" 2
#NO_APP
	testq	%r15, %r15
	jle	.L2666
	movq	(%r11), %r8
	leaq	-64(%r13), %rdi
	movq	8(%r11), %r10
	leaq	64(%rbx), %rdx
	shrq	$6, %rdi
	movq	16(%r11), %r9
	andl	$7, %edi
	movq	(%r8), %rax
	leaq	(%r8,%r13), %r14
	movq	(%r10), %rax
	leaq	64(%r10), %rsi
	movq	(%r9), %rax
	leaq	64(%r9), %rcx
	movq	(%rbx), %rax
	leaq	64(%r8), %rax
	cmpq	%r14, %rax
	je	.L2666
	testq	%rdi, %rdi
	je	.L2667
	cmpq	$1, %rdi
	je	.L5174
	cmpq	$2, %rdi
	je	.L5175
	cmpq	$3, %rdi
	je	.L5176
	cmpq	$4, %rdi
	je	.L5177
	cmpq	$5, %rdi
	je	.L5178
	cmpq	$6, %rdi
	je	.L5179
	movq	64(%r8), %rax
	leaq	128(%r10), %rsi
	movq	64(%r10), %rax
	leaq	128(%r9), %rcx
	movq	64(%r9), %rax
	movq	(%rdx), %rax
	leaq	128(%r8), %rax
	leaq	128(%rbx), %rdx
.L5179:
	movq	(%rax), %rdi
	addq	$64, %rsi
	addq	$64, %rax
	addq	$64, %rcx
	movq	-64(%rsi), %rdi
	addq	$64, %rdx
	movq	-64(%rcx), %rdi
	movq	-64(%rdx), %rdi
.L5178:
	movq	(%rax), %rdi
	addq	$64, %rsi
	addq	$64, %rax
	addq	$64, %rcx
	movq	-64(%rsi), %rdi
	addq	$64, %rdx
	movq	-64(%rcx), %rdi
	movq	-64(%rdx), %rdi
.L5177:
	movq	(%rax), %rdi
	addq	$64, %rsi
	addq	$64, %rax
	addq	$64, %rcx
	movq	-64(%rsi), %rdi
	addq	$64, %rdx
	movq	-64(%rcx), %rdi
	movq	-64(%rdx), %rdi
.L5176:
	movq	(%rax), %rdi
	addq	$64, %rsi
	addq	$64, %rax
	addq	$64, %rcx
	movq	-64(%rsi), %rdi
	addq	$64, %rdx
	movq	-64(%rcx), %rdi
	movq	-64(%rdx), %rdi
.L5175:
	movq	(%rax), %rdi
	addq	$64, %rsi
	addq	$64, %rax
	addq	$64, %rcx
	movq	-64(%rsi), %rdi
	addq	$64, %rdx
	movq	-64(%rcx), %rdi
	movq	-64(%rdx), %rdi
.L5174:
	movq	(%rax), %rdi
	addq	$64, %rax
	addq	$64, %rsi
	addq	$64, %rcx
	movq	-64(%rsi), %rdi
	addq	$64, %rdx
	movq	-64(%rcx), %rdi
	movq	-64(%rdx), %rdi
	cmpq	%r14, %rax
	je	.L2666
.L2667:
	movq	(%rax), %rdi
	addq	$512, %rax
	addq	$512, %rsi
	addq	$512, %rcx
	movq	-512(%rsi), %rdi
	addq	$512, %rdx
	movq	-512(%rcx), %rdi
	movq	-512(%rdx), %rdi
	movq	-448(%rax), %rdi
	movq	-448(%rsi), %rdi
	movq	-448(%rcx), %rdi
	movq	-448(%rdx), %rdi
	movq	-384(%rax), %rdi
	movq	-384(%rsi), %rdi
	movq	-384(%rcx), %rdi
	movq	-384(%rdx), %rdi
	movq	-320(%rax), %rdi
	movq	-320(%rsi), %rdi
	movq	-320(%rcx), %rdi
	movq	-320(%rdx), %rdi
	movq	-256(%rax), %rdi
	movq	-256(%rsi), %rdi
	movq	-256(%rcx), %rdi
	movq	-256(%rdx), %rdi
	movq	-192(%rax), %rdi
	movq	-192(%rsi), %rdi
	movq	-192(%rcx), %rdi
	movq	-192(%rdx), %rdi
	movq	-128(%rax), %rdi
	movq	-128(%rsi), %rdi
	movq	-128(%rcx), %rdi
	movq	-128(%rdx), %rdi
	movq	-64(%rax), %rdi
	movq	-64(%rsi), %rdi
	movq	-64(%rcx), %rdi
	movq	-64(%rdx), %rdi
	cmpq	%r14, %rax
	jne	.L2667
.L2666:
#APP
# 193 "mem.cc" 1
	# seq loop end (n_chains = $4, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, %r12
	cmpq	%r12, -240(%rbp)
	jne	.L2668
	jmp	.L6010
	.p2align 4,,10
	.p2align 3
.L2540:
	movzbl	(%rdi), %ebx
	testl	%r9d, %r9d
	jne	.L6045
	cmpb	$114, %bl
	je	.L2633
	cmpb	$115, %bl
	jne	.L5863
	cmpq	$0, -240(%rbp)
	jle	.L6046
	movq	16(%rsi), %r10
	movq	%rdx, %rbx
	movq	%rdx, %r13
	movq	%r8, %r14
	salq	$6, %rbx
	xorl	%r12d, %r12d
	.p2align 4,,10
	.p2align 3
.L2641:
#APP
# 180 "mem.cc" 1
	# seq loop begin (n_chains = $3, payload = $0)
# 0 "" 2
#NO_APP
	testq	%r13, %r13
	jle	.L2639
	movq	(%r11), %r15
	leaq	-64(%rbx), %rsi
	movq	8(%r11), %r8
	leaq	64(%r10), %rdx
	shrq	$6, %rsi
	andl	$7, %esi
	leaq	(%r15,%rbx), %r9
	movq	(%r15), %rax
	leaq	64(%r15), %rdi
	movq	(%r8), %rax
	leaq	64(%r8), %rcx
	movq	(%r10), %rax
	cmpq	%r9, %rdi
	je	.L2639
	testq	%rsi, %rsi
	je	.L2640
	cmpq	$1, %rsi
	je	.L5158
	cmpq	$2, %rsi
	je	.L5159
	cmpq	$3, %rsi
	je	.L5160
	cmpq	$4, %rsi
	je	.L5161
	cmpq	$5, %rsi
	je	.L5162
	cmpq	$6, %rsi
	je	.L5163
	movq	64(%r15), %rax
	leaq	128(%r15), %rdi
	movq	64(%r8), %rax
	leaq	128(%r8), %rcx
	movq	(%rdx), %rax
	leaq	128(%r10), %rdx
.L5163:
	movq	(%rdi), %rsi
	addq	$64, %rcx
	addq	$64, %rdi
	addq	$64, %rdx
	movq	-64(%rcx), %rsi
	movq	-64(%rdx), %rsi
.L5162:
	movq	(%rdi), %rsi
	addq	$64, %rcx
	addq	$64, %rdi
	addq	$64, %rdx
	movq	-64(%rcx), %rsi
	movq	-64(%rdx), %rsi
.L5161:
	movq	(%rdi), %rsi
	addq	$64, %rcx
	addq	$64, %rdi
	addq	$64, %rdx
	movq	-64(%rcx), %rsi
	movq	-64(%rdx), %rsi
.L5160:
	movq	(%rdi), %rsi
	addq	$64, %rcx
	addq	$64, %rdi
	addq	$64, %rdx
	movq	-64(%rcx), %rsi
	movq	-64(%rdx), %rsi
.L5159:
	movq	(%rdi), %rsi
	addq	$64, %rcx
	addq	$64, %rdi
	addq	$64, %rdx
	movq	-64(%rcx), %rsi
	movq	-64(%rdx), %rsi
.L5158:
	movq	(%rdi), %rsi
	addq	$64, %rdi
	addq	$64, %rcx
	addq	$64, %rdx
	movq	-64(%rcx), %rsi
	movq	-64(%rdx), %rsi
	cmpq	%r9, %rdi
	je	.L2639
.L2640:
	movq	(%rdi), %rsi
	addq	$512, %rdi
	addq	$512, %rcx
	addq	$512, %rdx
	movq	-512(%rcx), %rsi
	movq	-512(%rdx), %rsi
	movq	-448(%rdi), %rsi
	movq	-448(%rcx), %rsi
	movq	-448(%rdx), %rsi
	movq	-384(%rdi), %rsi
	movq	-384(%rcx), %rsi
	movq	-384(%rdx), %rsi
	movq	-320(%rdi), %rsi
	movq	-320(%rcx), %rsi
	movq	-320(%rdx), %rsi
	movq	-256(%rdi), %rsi
	movq	-256(%rcx), %rsi
	movq	-256(%rdx), %rsi
	movq	-192(%rdi), %rsi
	movq	-192(%rcx), %rsi
	movq	-192(%rdx), %rsi
	movq	-128(%rdi), %rsi
	movq	-128(%rcx), %rsi
	movq	-128(%rdx), %rsi
	movq	-64(%rdi), %rsi
	movq	-64(%rcx), %rsi
	movq	-64(%rdx), %rsi
	cmpq	%r9, %rdi
	jne	.L2640
.L2639:
#APP
# 193 "mem.cc" 1
	# seq loop end (n_chains = $3, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, %r12
	cmpq	%r12, %r14
	jne	.L2641
	jmp	.L6011
	.p2align 4,,10
	.p2align 3
.L2539:
	movzbl	(%rdi), %esi
	testl	%r9d, %r9d
	jne	.L6047
	cmpb	$114, %sil
	je	.L2604
	cmpb	$115, %sil
	jne	.L5861
	cmpq	$0, -240(%rbp)
	jle	.L6048
	movq	%r8, %r12
	movq	8(%r11), %r8
	movq	%rdx, %r10
	movq	%rdx, %rbx
	salq	$6, %r10
	xorl	%r9d, %r9d
	.p2align 4,,10
	.p2align 3
.L2612:
#APP
# 180 "mem.cc" 1
	# seq loop begin (n_chains = $2, payload = $0)
# 0 "" 2
#NO_APP
	testq	%rbx, %rbx
	jle	.L2610
	movq	(%r11), %rsi
	leaq	-64(%r10), %rcx
	leaq	64(%r8), %rdx
	shrq	$6, %rcx
	andl	$7, %ecx
	leaq	(%rsi,%r10), %rdi
	movq	(%rsi), %rax
	leaq	64(%rsi), %r15
	movq	(%r8), %rax
	cmpq	%rdi, %r15
	je	.L2610
	testq	%rcx, %rcx
	je	.L2611
	cmpq	$1, %rcx
	je	.L5142
	cmpq	$2, %rcx
	je	.L5143
	cmpq	$3, %rcx
	je	.L5144
	cmpq	$4, %rcx
	je	.L5145
	cmpq	$5, %rcx
	je	.L5146
	cmpq	$6, %rcx
	je	.L5147
	movq	64(%rsi), %rax
	leaq	128(%rsi), %r15
	movq	(%rdx), %rax
	leaq	128(%r8), %rdx
.L5147:
	movq	(%r15), %rcx
	addq	$64, %rdx
	addq	$64, %r15
	movq	-64(%rdx), %rcx
.L5146:
	movq	(%r15), %rcx
	addq	$64, %rdx
	addq	$64, %r15
	movq	-64(%rdx), %rcx
.L5145:
	movq	(%r15), %rcx
	addq	$64, %rdx
	addq	$64, %r15
	movq	-64(%rdx), %rcx
.L5144:
	movq	(%r15), %rcx
	addq	$64, %rdx
	addq	$64, %r15
	movq	-64(%rdx), %rcx
.L5143:
	movq	(%r15), %rcx
	addq	$64, %rdx
	addq	$64, %r15
	movq	-64(%rdx), %rcx
.L5142:
	movq	(%r15), %rcx
	addq	$64, %r15
	addq	$64, %rdx
	movq	-64(%rdx), %rcx
	cmpq	%rdi, %r15
	je	.L2610
.L2611:
	movq	(%r15), %rcx
	addq	$512, %r15
	addq	$512, %rdx
	movq	-512(%rdx), %rcx
	movq	-448(%r15), %rcx
	movq	-448(%rdx), %rcx
	movq	-384(%r15), %rcx
	movq	-384(%rdx), %rcx
	movq	-320(%r15), %rcx
	movq	-320(%rdx), %rcx
	movq	-256(%r15), %rcx
	movq	-256(%rdx), %rcx
	movq	-192(%r15), %rcx
	movq	-192(%rdx), %rcx
	movq	-128(%r15), %rcx
	movq	-128(%rdx), %rcx
	movq	-64(%r15), %rcx
	movq	-64(%rdx), %rcx
	cmpq	%rdi, %r15
	jne	.L2611
.L2610:
#APP
# 193 "mem.cc" 1
	# seq loop end (n_chains = $2, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, %r9
	cmpq	%r9, %r12
	jne	.L2612
.L2607:
	movq	-232(%rbp), %rax
	salq	$6, %rax
	leaq	-64(%r8,%rax), %r15
	jmp	.L2569
	.p2align 4,,10
	.p2align 3
.L2537:
	movzbl	(%rdi), %r10d
	testl	%r9d, %r9d
	jne	.L6049
	cmpb	$114, %r10b
	je	.L2575
	cmpb	$115, %r10b
	jne	.L5859
	cmpq	$0, -240(%rbp)
	jle	.L6050
	movq	(%rsi), %rcx
	movq	%rdx, %r14
	movq	%rdx, %r15
	xorl	%esi, %esi
	movq	-240(%rbp), %rdi
	salq	$6, %r14
	addq	%rcx, %r14
	.p2align 4,,10
	.p2align 3
.L2583:
#APP
# 180 "mem.cc" 1
	# seq loop begin (n_chains = $1, payload = $0)
# 0 "" 2
#NO_APP
	testq	%r15, %r15
	jle	.L2581
	leaq	64(%rcx), %r13
	movq	%r14, %r12
	movq	(%rcx), %rax
	subq	%rcx, %r12
	subq	$64, %r12
	shrq	$6, %r12
	andl	$7, %r12d
	cmpq	%r14, %r13
	je	.L2581
	testq	%r12, %r12
	je	.L2582
	cmpq	$1, %r12
	je	.L5122
	cmpq	$2, %r12
	je	.L5123
	cmpq	$3, %r12
	je	.L5124
	cmpq	$4, %r12
	je	.L5125
	cmpq	$5, %r12
	je	.L5126
	cmpq	$6, %r12
	je	.L5127
	movq	0(%r13), %rax
	leaq	128(%rcx), %r13
.L5127:
	movq	0(%r13), %rdx
	addq	$64, %r13
.L5126:
	movq	0(%r13), %rdx
	addq	$64, %r13
.L5125:
	movq	0(%r13), %rdx
	addq	$64, %r13
.L5124:
	movq	0(%r13), %rdx
	addq	$64, %r13
.L5123:
	movq	0(%r13), %rdx
	addq	$64, %r13
.L5122:
	movq	0(%r13), %rdx
	addq	$64, %r13
	cmpq	%r14, %r13
	je	.L2581
.L2582:
	movq	0(%r13), %rdx
	addq	$512, %r13
	movq	-448(%r13), %rdx
	movq	-384(%r13), %rdx
	movq	-320(%r13), %rdx
	movq	-256(%r13), %rdx
	movq	-192(%r13), %rdx
	movq	-128(%r13), %rdx
	movq	-64(%r13), %rdx
	cmpq	%r14, %r13
	jne	.L2582
.L2581:
#APP
# 193 "mem.cc" 1
	# seq loop end (n_chains = $1, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, %rsi
	cmpq	%rsi, %rdi
	jne	.L2583
	.p2align 4,,10
	.p2align 3
.L6025:
	movq	-232(%rbp), %r10
.L3209:
	salq	$6, %r10
	leaq	-64(%rcx,%r10), %r15
	jmp	.L2569
	.p2align 4,,10
	.p2align 3
.L2543:
	movzbl	(%rdi), %esi
	testl	%r9d, %r9d
	jne	.L6051
	cmpb	$114, %sil
	je	.L2726
	cmpb	$115, %sil
	jne	.L5870
	cmpq	$0, -240(%rbp)
	jle	.L6052
	movq	40(%r11), %r10
	movq	%rdx, %r13
	movq	%rdx, %r12
	movq	%r8, %r14
	salq	$6, %r13
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L2732:
#APP
# 180 "mem.cc" 1
	# seq loop begin (n_chains = $6, payload = $0)
# 0 "" 2
#NO_APP
	testq	%r12, %r12
	jle	.L2730
	movq	8(%r11), %r8
	leaq	-64(%r13), %r15
	movq	16(%r11), %rdi
	shrq	$6, %r15
	movq	24(%r11), %rsi
	andl	$3, %r15d
	movq	32(%r11), %rcx
	movq	(%r11), %r9
	movq	(%r9), %rax
	movq	(%r8), %rax
	movq	(%rdi), %rax
	movq	(%rsi), %rax
	movq	(%rcx), %rax
	movq	(%r10), %rax
	movl	$64, %eax
	cmpq	$64, %r13
	je	.L2730
	testq	%r15, %r15
	je	.L2731
	cmpq	$1, %r15
	je	.L5196
	cmpq	$2, %r15
	je	.L5197
	movq	64(%r9), %rax
	movq	64(%r8), %rax
	movq	64(%rdi), %rax
	movq	64(%rsi), %rax
	movq	64(%rcx), %rax
	movq	64(%r10), %rax
	movl	$128, %eax
.L5197:
	leaq	(%r8,%rax), %r15
	leaq	(%r9,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%rsi,%rax), %r15
	leaq	(%rdi,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%rcx,%rax), %rdx
	leaq	(%r10,%rax), %r15
	movq	(%rdx), %rdx
	addq	$64, %rax
	movq	(%r15), %rdx
.L5196:
	leaq	(%r8,%rax), %r15
	leaq	(%r9,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%rsi,%rax), %r15
	leaq	(%rdi,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%rcx,%rax), %rdx
	leaq	(%r10,%rax), %r15
	addq	$64, %rax
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	cmpq	%rax, %r13
	je	.L2730
.L2731:
	leaq	(%r8,%rax), %r15
	leaq	(%r9,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%rsi,%rax), %r15
	leaq	(%rdi,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%r10,%rax), %r15
	leaq	(%rcx,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	64(%rax), %rdx
	leaq	(%r9,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rsi,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rcx,%rdx), %r15
	addq	%r10, %rdx
	movq	(%r15), %r15
	movq	(%rdx), %rdx
	leaq	128(%rax), %rdx
	leaq	(%r9,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rsi,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rcx,%rdx), %r15
	addq	%r10, %rdx
	movq	(%r15), %r15
	movq	(%rdx), %rdx
	leaq	192(%rax), %rdx
	addq	$256, %rax
	leaq	(%r9,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rsi,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rcx,%rdx), %r15
	addq	%r10, %rdx
	movq	(%r15), %r15
	movq	(%rdx), %rdx
	cmpq	%rax, %r13
	jne	.L2731
.L2730:
#APP
# 193 "mem.cc" 1
	# seq loop end (n_chains = $6, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, %rbx
	cmpq	%rbx, %r14
	jne	.L2732
.L6011:
	movq	-232(%rbp), %r11
.L2622:
	salq	$6, %r11
	leaq	-64(%r10,%r11), %r15
	jmp	.L2569
	.p2align 4,,10
	.p2align 3
.L2542:
	movzbl	(%rdi), %edi
	testl	%r9d, %r9d
	jne	.L6053
	cmpb	$114, %dil
	je	.L2691
	cmpb	$115, %dil
	jne	.L5867
	cmpq	$0, -240(%rbp)
	jle	.L6054
	movq	32(%rsi), %r9
	movq	%rdx, %r10
	movq	%rdx, %rbx
	movq	%r8, %r13
	salq	$6, %r10
	xorl	%r12d, %r12d
	.p2align 4,,10
	.p2align 3
.L2697:
#APP
# 180 "mem.cc" 1
	# seq loop begin (n_chains = $5, payload = $0)
# 0 "" 2
#NO_APP
	testq	%rbx, %rbx
	jle	.L2695
	movq	8(%r11), %r15
	leaq	-64(%r10), %r14
	movq	16(%r11), %rsi
	shrq	$6, %r14
	movq	24(%r11), %rdi
	andl	$3, %r14d
	movq	(%r11), %r8
	movq	(%r8), %rax
	movq	(%r15), %rax
	movq	(%rsi), %rax
	movq	(%rdi), %rax
	movq	(%r9), %rax
	movl	$64, %eax
	cmpq	$64, %r10
	je	.L2695
	testq	%r14, %r14
	je	.L2696
	cmpq	$1, %r14
	je	.L5188
	cmpq	$2, %r14
	je	.L5189
	movq	64(%r8), %rax
	movq	64(%r15), %rax
	movq	64(%rsi), %rax
	movq	64(%rdi), %rax
	movq	64(%r9), %rax
	movl	$128, %eax
.L5189:
	leaq	(%r15,%rax), %rcx
	leaq	(%r8,%rax), %rdx
	leaq	(%rsi,%rax), %r14
	movq	(%rdx), %rdx
	movq	(%rcx), %rdx
	leaq	(%r9,%rax), %rcx
	movq	(%r14), %rdx
	leaq	(%rdi,%rax), %rdx
	addq	$64, %rax
	movq	(%rdx), %rdx
	movq	(%rcx), %rdx
.L5188:
	leaq	(%r8,%rax), %r14
	movq	(%r14), %rdx
	leaq	(%rsi,%rax), %rcx
	leaq	(%r15,%rax), %rdx
	leaq	(%rdi,%rax), %r14
	movq	(%rdx), %rdx
	movq	(%rcx), %rdx
	movq	(%r14), %rdx
	leaq	(%r9,%rax), %rdx
	addq	$64, %rax
	movq	(%rdx), %rdx
	cmpq	%rax, %r10
	je	.L2695
.L2696:
	leaq	(%r8,%rax), %rcx
	leaq	(%r15,%rax), %r14
	movq	(%rcx), %rdx
	movq	(%r14), %rdx
	leaq	(%rdi,%rax), %rcx
	leaq	(%r9,%rax), %r14
	leaq	(%rsi,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%rcx), %rdx
	movq	(%r14), %rdx
	leaq	64(%rax), %rdx
	leaq	(%r8,%rdx), %rcx
	movq	(%rcx), %r14
	leaq	(%rsi,%rdx), %rcx
	leaq	(%r15,%rdx), %r14
	movq	(%r14), %r14
	movq	(%rcx), %r14
	leaq	(%rdi,%rdx), %r14
	addq	%r9, %rdx
	movq	(%r14), %r14
	movq	(%rdx), %rdx
	leaq	128(%rax), %rdx
	leaq	(%r8,%rdx), %rcx
	movq	(%rcx), %r14
	leaq	(%rsi,%rdx), %rcx
	leaq	(%r15,%rdx), %r14
	movq	(%r14), %r14
	movq	(%rcx), %r14
	leaq	(%rdi,%rdx), %r14
	addq	%r9, %rdx
	movq	(%r14), %r14
	movq	(%rdx), %rdx
	leaq	192(%rax), %rdx
	addq	$256, %rax
	leaq	(%r8,%rdx), %rcx
	movq	(%rcx), %r14
	leaq	(%r15,%rdx), %r14
	leaq	(%rsi,%rdx), %rcx
	movq	(%r14), %r14
	movq	(%rcx), %r14
	leaq	(%rdi,%rdx), %r14
	addq	%r9, %rdx
	movq	(%r14), %r14
	movq	(%rdx), %rdx
	cmpq	%rax, %r10
	jne	.L2696
.L2695:
#APP
# 193 "mem.cc" 1
	# seq loop end (n_chains = $5, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, %r12
	cmpq	%r12, %r13
	jne	.L2697
.L2694:
	movq	-232(%rbp), %r11
	salq	$6, %r11
	leaq	-64(%r9,%r11), %r15
	jmp	.L2569
	.p2align 4,,10
	.p2align 3
.L2544:
	movzbl	(%rdi), %esi
	testl	%r9d, %r9d
	jne	.L6055
	cmpb	$114, %sil
	je	.L2768
	cmpb	$115, %sil
	jne	.L5874
	cmpq	$0, -240(%rbp)
	jle	.L6056
	movq	48(%r11), %r14
	movq	%rdx, %rbx
	movq	%rdx, %r13
	xorl	%r12d, %r12d
	salq	$6, %rbx
	.p2align 4,,10
	.p2align 3
.L2774:
#APP
# 180 "mem.cc" 1
	# seq loop begin (n_chains = $7, payload = $0)
# 0 "" 2
#NO_APP
	testq	%r13, %r13
	jle	.L2772
	movq	8(%r11), %r9
	leaq	-64(%rbx), %r15
	movq	16(%r11), %r8
	shrq	$6, %r15
	movq	24(%r11), %rdi
	andl	$3, %r15d
	movq	32(%r11), %rsi
	movq	40(%r11), %rcx
	movq	(%r11), %r10
	movq	(%r10), %rax
	movq	(%r9), %rax
	movq	(%r8), %rax
	movq	(%rdi), %rax
	movq	(%rsi), %rax
	movq	(%rcx), %rax
	movq	(%r14), %rax
	movl	$64, %eax
	cmpq	$64, %rbx
	je	.L2772
	testq	%r15, %r15
	je	.L2773
	cmpq	$1, %r15
	je	.L5204
	cmpq	$2, %r15
	je	.L5205
	movq	64(%r10), %rax
	movq	64(%r9), %rax
	movq	64(%r8), %rax
	movq	64(%rdi), %rax
	movq	64(%rsi), %rax
	movq	64(%rcx), %rax
	movq	64(%r14), %rax
	movl	$128, %eax
.L5205:
	leaq	(%r9,%rax), %r15
	leaq	(%r10,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%rdi,%rax), %r15
	leaq	(%r8,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%rsi,%rax), %rdx
	leaq	(%rcx,%rax), %r15
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%r14,%rax), %rdx
	addq	$64, %rax
	movq	(%rdx), %rdx
.L5204:
	leaq	(%r10,%rax), %r15
	movq	(%r15), %rdx
	leaq	(%r8,%rax), %r15
	leaq	(%r9,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%rsi,%rax), %r15
	leaq	(%rdi,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%rcx,%rax), %rdx
	leaq	(%r14,%rax), %r15
	addq	$64, %rax
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	cmpq	%rax, %rbx
	je	.L2772
.L2773:
	leaq	(%r9,%rax), %r15
	leaq	(%r10,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%rdi,%rax), %r15
	leaq	(%r8,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%rcx,%rax), %r15
	leaq	(%rsi,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%r14,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	64(%rax), %rdx
	leaq	(%r10,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rsi,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rcx,%rdx), %r15
	addq	%r14, %rdx
	movq	(%r15), %r15
	movq	(%rdx), %rdx
	leaq	128(%rax), %rdx
	leaq	(%r10,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rsi,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rcx,%rdx), %r15
	addq	%r14, %rdx
	movq	(%r15), %r15
	movq	(%rdx), %rdx
	leaq	192(%rax), %rdx
	addq	$256, %rax
	leaq	(%r10,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rsi,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rcx,%rdx), %r15
	addq	%r14, %rdx
	movq	(%r15), %r15
	movq	(%rdx), %rdx
	cmpq	%rax, %rbx
	jne	.L2773
.L2772:
#APP
# 193 "mem.cc" 1
	# seq loop end (n_chains = $7, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, %r12
	cmpq	%r12, -240(%rbp)
	jne	.L2774
.L6020:
	movq	-232(%rbp), %r11
.L2885:
	salq	$6, %r11
	leaq	-64(%r14,%r11), %r15
	jmp	.L2569
	.p2align 4,,10
	.p2align 3
.L2551:
	movzbl	(%rdi), %r13d
	testl	%r9d, %r9d
	jne	.L6057
	cmpb	$114, %r13b
	je	.L3118
	cmpb	$115, %r13b
	jne	.L5897
	movq	104(%rsi), %r15
	cmpq	$0, -240(%rbp)
	movq	%r15, -256(%rbp)
	jle	.L3121
	movq	-232(%rbp), %rdi
	movq	$0, -288(%rbp)
	salq	$6, %rdi
	movq	%rdi, -272(%rbp)
	.p2align 4,,10
	.p2align 3
.L3124:
#APP
# 180 "mem.cc" 1
	# seq loop begin (n_chains = $14, payload = $0)
# 0 "" 2
#NO_APP
	cmpq	$0, -232(%rbp)
	jle	.L3122
	movq	80(%r11), %rdx
	movq	96(%r11), %r14
	movq	88(%r11), %rax
	movq	8(%r11), %r13
	movq	%rdx, %r15
	movq	%rdx, -264(%rbp)
	movq	-272(%rbp), %rdx
	movq	%r14, -280(%rbp)
	movq	16(%r11), %r12
	movq	24(%r11), %rbx
	movq	%rax, -248(%rbp)
	movq	32(%r11), %r10
	movq	40(%r11), %r9
	leaq	-64(%rdx), %rax
	movq	48(%r11), %r8
	shrq	$6, %rax
	movq	56(%r11), %rdi
	movq	%rax, %rdx
	movq	64(%r11), %rsi
	andl	$1, %edx
	movq	72(%r11), %rcx
	movq	(%r11), %r14
	movq	(%r14), %rax
	movq	0(%r13), %rax
	movq	(%r12), %rax
	movq	(%rbx), %rax
	movq	(%r10), %rax
	movq	(%r9), %rax
	movq	(%r8), %rax
	movq	(%rdi), %rax
	movq	(%rsi), %rax
	movq	(%rcx), %rax
	movq	(%r15), %rax
	movq	-248(%rbp), %rax
	movq	-280(%rbp), %r15
	movq	(%rax), %rax
	movq	(%r15), %rax
	movq	-256(%rbp), %rax
	cmpq	$64, -272(%rbp)
	movq	(%rax), %rax
	movl	$64, %eax
	je	.L3122
	testq	%rdx, %rdx
	je	.L5979
	movq	-264(%rbp), %rdx
	movq	-248(%rbp), %r15
	movq	64(%r14), %rax
	cmpq	$128, -272(%rbp)
	movq	64(%r13), %rax
	movq	64(%r12), %rax
	movq	64(%rbx), %rax
	movq	64(%r10), %rax
	movq	64(%r9), %rax
	movq	64(%r8), %rax
	movq	64(%rdi), %rax
	movq	64(%rsi), %rax
	movq	64(%rcx), %rax
	movq	64(%rdx), %rax
	movq	64(%r15), %rax
	movq	-256(%rbp), %rdx
	movq	-280(%rbp), %rax
	movq	64(%rax), %rax
	movq	64(%rdx), %rax
	movl	$128, %eax
	je	.L3122
.L5979:
	movq	%r11, -296(%rbp)
	movq	-280(%rbp), %r11
.L3123:
	leaq	(%r14,%rax), %r15
	movq	(%r15), %rdx
	leaq	(%r12,%rax), %r15
	leaq	0(%r13,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%r10,%rax), %r15
	leaq	(%rbx,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%r8,%rax), %r15
	leaq	(%r9,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%rsi,%rax), %r15
	leaq	(%rdi,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%rcx,%rax), %rdx
	movq	-264(%rbp), %r15
	movq	(%rdx), %rdx
	addq	%rax, %r15
	movq	(%r15), %rdx
	leaq	(%r11,%rax), %r15
	movq	-248(%rbp), %rdx
	addq	%rax, %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	movq	-256(%rbp), %rdx
	addq	%rax, %rdx
	movq	(%rdx), %rdx
	leaq	64(%rax), %rdx
	subq	$-128, %rax
	leaq	(%r14,%rdx), %r15
	movq	(%r15), %r15
	leaq	0(%r13,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r12,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rbx,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rsi,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rcx,%rdx), %r15
	movq	(%r15), %r15
	movq	-264(%rbp), %r15
	addq	%rdx, %r15
	movq	(%r15), %r15
	movq	-248(%rbp), %r15
	addq	%rdx, %r15
	movq	(%r15), %r15
	leaq	(%r11,%rdx), %r15
	movq	(%r15), %r15
	addq	-256(%rbp), %rdx
	movq	(%rdx), %rdx
	cmpq	%rax, -272(%rbp)
	jne	.L3123
	movq	-296(%rbp), %r11
.L3122:
#APP
# 193 "mem.cc" 1
	# seq loop end (n_chains = $14, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, -288(%rbp)
	movq	-288(%rbp), %r13
	cmpq	%r13, -240(%rbp)
	jne	.L3124
.L3121:
	movq	-232(%rbp), %r12
	movq	-256(%rbp), %rbx
	salq	$6, %r12
	leaq	-64(%rbx,%r12), %r15
	jmp	.L2569
	.p2align 4,,10
	.p2align 3
.L2550:
	movzbl	(%rdi), %r13d
	testl	%r9d, %r9d
	jne	.L6058
	cmpb	$114, %r13b
	je	.L3062
	cmpb	$115, %r13b
	jne	.L5894
	movq	96(%rsi), %r15
	cmpq	$0, -240(%rbp)
	movq	%r15, -248(%rbp)
	jle	.L6009
	movq	-232(%rbp), %r9
	movq	$0, -280(%rbp)
	salq	$6, %r9
	movq	%r9, -264(%rbp)
	.p2align 4,,10
	.p2align 3
.L3068:
#APP
# 180 "mem.cc" 1
	# seq loop begin (n_chains = $13, payload = $0)
# 0 "" 2
#NO_APP
	cmpq	$0, -232(%rbp)
	jle	.L3066
	movq	80(%r11), %rdx
	movq	88(%r11), %rax
	movq	8(%r11), %r13
	movq	16(%r11), %r12
	movq	%rdx, %r15
	movq	%rdx, -256(%rbp)
	movq	-264(%rbp), %rdx
	movq	24(%r11), %rbx
	movq	%rax, -272(%rbp)
	movq	32(%r11), %r10
	movq	40(%r11), %r9
	movq	48(%r11), %r8
	leaq	-64(%rdx), %rax
	movq	56(%r11), %rdi
	shrq	$6, %rax
	movq	64(%r11), %rsi
	movq	%rax, %rdx
	movq	72(%r11), %rcx
	andl	$1, %edx
	movq	(%r11), %r14
	cmpq	$64, -264(%rbp)
	movq	(%r14), %rax
	movq	0(%r13), %rax
	movq	(%r12), %rax
	movq	(%rbx), %rax
	movq	(%r10), %rax
	movq	(%r9), %rax
	movq	(%r8), %rax
	movq	(%rdi), %rax
	movq	(%rsi), %rax
	movq	(%rcx), %rax
	movq	(%r15), %rax
	movq	-272(%rbp), %rax
	movq	-248(%rbp), %r15
	movq	(%rax), %rax
	movq	(%r15), %rax
	movl	$64, %eax
	je	.L3066
	testq	%rdx, %rdx
	je	.L5975
	movq	-256(%rbp), %rdx
	movq	64(%r14), %rax
	movq	-248(%rbp), %r15
	movq	64(%r13), %rax
	cmpq	$128, -264(%rbp)
	movq	64(%r12), %rax
	movq	64(%rbx), %rax
	movq	64(%r10), %rax
	movq	64(%r9), %rax
	movq	64(%r8), %rax
	movq	64(%rdi), %rax
	movq	64(%rsi), %rax
	movq	64(%rcx), %rax
	movq	64(%rdx), %rax
	movq	-272(%rbp), %rax
	movq	64(%rax), %rax
	movq	64(%r15), %rax
	movl	$128, %eax
	je	.L3066
.L5975:
	movq	%r11, -288(%rbp)
	movq	-272(%rbp), %r11
.L3067:
	leaq	0(%r13,%rax), %r15
	leaq	(%r14,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%rbx,%rax), %r15
	leaq	(%r12,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%r9,%rax), %r15
	leaq	(%r10,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%rdi,%rax), %r15
	leaq	(%r8,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%rcx,%rax), %r15
	leaq	(%rsi,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%r11,%rax), %r15
	movq	-256(%rbp), %rdx
	addq	%rax, %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	movq	-248(%rbp), %rdx
	addq	%rax, %rdx
	movq	(%rdx), %rdx
	leaq	64(%rax), %rdx
	subq	$-128, %rax
	leaq	(%r14,%rdx), %r15
	movq	(%r15), %r15
	leaq	0(%r13,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r12,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rbx,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rsi,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rcx,%rdx), %r15
	movq	(%r15), %r15
	movq	-256(%rbp), %r15
	addq	%rdx, %r15
	movq	(%r15), %r15
	leaq	(%r11,%rdx), %r15
	addq	-248(%rbp), %rdx
	movq	(%r15), %r15
	movq	(%rdx), %rdx
	cmpq	%rax, -264(%rbp)
	jne	.L3067
	movq	-288(%rbp), %r11
.L3066:
#APP
# 193 "mem.cc" 1
	# seq loop end (n_chains = $13, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, -280(%rbp)
	movq	-280(%rbp), %r13
	cmpq	%r13, -240(%rbp)
	jne	.L3068
	jmp	.L6009
	.p2align 4,,10
	.p2align 3
.L2552:
	movzbl	(%rdi), %r13d
	testl	%r9d, %r9d
	jne	.L6059
	cmpb	$114, %r13b
	je	.L3176
	cmpb	$115, %r13b
	jne	.L5900
	movq	112(%rsi), %r15
	cmpq	$0, -240(%rbp)
	movq	%r15, -264(%rbp)
	jle	.L6013
	movq	-232(%rbp), %r8
	movq	$0, -296(%rbp)
	salq	$6, %r8
	movq	%r8, -280(%rbp)
	.p2align 4,,10
	.p2align 3
.L3182:
#APP
# 180 "mem.cc" 1
	# seq loop begin (n_chains = $15, payload = $0)
# 0 "" 2
#NO_APP
	cmpq	$0, -232(%rbp)
	jle	.L3180
	movq	80(%r11), %rax
	movq	88(%r11), %rdx
	movq	96(%r11), %r14
	movq	8(%r11), %r13
	movq	%rax, %r15
	movq	%rax, -272(%rbp)
	movq	104(%r11), %rax
	movq	%rdx, -248(%rbp)
	movq	-280(%rbp), %rdx
	movq	16(%r11), %r12
	movq	%r14, -256(%rbp)
	movq	24(%r11), %rbx
	movq	32(%r11), %r10
	movq	%rax, -288(%rbp)
	movq	40(%r11), %r9
	leaq	-64(%rdx), %rax
	movq	48(%r11), %r8
	shrq	$6, %rax
	movq	56(%r11), %rdi
	movq	%rax, %rdx
	movq	64(%r11), %rsi
	andl	$1, %edx
	movq	72(%r11), %rcx
	movq	(%r11), %r14
	movq	(%r14), %rax
	movq	0(%r13), %rax
	movq	(%r12), %rax
	movq	(%rbx), %rax
	movq	(%r10), %rax
	movq	(%r9), %rax
	movq	(%r8), %rax
	movq	(%rdi), %rax
	movq	(%rsi), %rax
	movq	(%rcx), %rax
	movq	(%r15), %rax
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	movq	-256(%rbp), %r15
	cmpq	$64, -280(%rbp)
	movq	(%r15), %rax
	movq	-288(%rbp), %rax
	movq	-264(%rbp), %r15
	movq	(%rax), %rax
	movq	(%r15), %rax
	movl	$64, %eax
	je	.L3180
	testq	%rdx, %rdx
	je	.L5983
	movq	-272(%rbp), %rdx
	movq	64(%r14), %rax
	movq	-256(%rbp), %r15
	movq	64(%r13), %rax
	movq	64(%r12), %rax
	movq	64(%rbx), %rax
	movq	64(%r10), %rax
	movq	64(%r9), %rax
	movq	64(%r8), %rax
	movq	64(%rdi), %rax
	movq	64(%rsi), %rax
	movq	64(%rcx), %rax
	movq	64(%rdx), %rax
	movq	-248(%rbp), %rax
	movq	-288(%rbp), %rdx
	cmpq	$128, -280(%rbp)
	movq	64(%rax), %rax
	movq	64(%r15), %rax
	movq	64(%rdx), %rax
	movq	-264(%rbp), %rax
	movq	64(%rax), %rax
	movl	$128, %eax
	je	.L3180
.L5983:
	movq	%r11, -304(%rbp)
	movq	-288(%rbp), %r11
.L3181:
	leaq	(%r14,%rax), %r15
	movq	(%r15), %rdx
	leaq	(%r12,%rax), %r15
	leaq	0(%r13,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%r10,%rax), %r15
	leaq	(%rbx,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%r8,%rax), %r15
	leaq	(%r9,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%rsi,%rax), %r15
	leaq	(%rdi,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%rcx,%rax), %rdx
	movq	-272(%rbp), %r15
	movq	(%rdx), %rdx
	addq	%rax, %r15
	movq	(%r15), %rdx
	movq	-248(%rbp), %rdx
	movq	-256(%rbp), %r15
	addq	%rax, %rdx
	addq	%rax, %r15
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%r11,%rax), %rdx
	movq	-264(%rbp), %r15
	movq	(%rdx), %rdx
	addq	%rax, %r15
	movq	(%r15), %rdx
	leaq	64(%rax), %rdx
	subq	$-128, %rax
	leaq	(%r14,%rdx), %r15
	movq	(%r15), %r15
	leaq	0(%r13,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r12,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rbx,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rsi,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rcx,%rdx), %r15
	movq	(%r15), %r15
	movq	-272(%rbp), %r15
	addq	%rdx, %r15
	movq	(%r15), %r15
	movq	-248(%rbp), %r15
	addq	%rdx, %r15
	movq	(%r15), %r15
	movq	-256(%rbp), %r15
	addq	%rdx, %r15
	movq	(%r15), %r15
	leaq	(%r11,%rdx), %r15
	addq	-264(%rbp), %rdx
	movq	(%r15), %r15
	movq	(%rdx), %rdx
	cmpq	%rax, -280(%rbp)
	jne	.L3181
	movq	-304(%rbp), %r11
.L3180:
#APP
# 193 "mem.cc" 1
	# seq loop end (n_chains = $15, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, -296(%rbp)
	movq	-296(%rbp), %r13
	cmpq	%r13, -240(%rbp)
	jne	.L3182
.L6013:
	movq	-232(%rbp), %r15
.L2934:
	movq	-264(%rbp), %r10
	salq	$6, %r15
	leaq	-64(%r10,%r15), %r15
	jmp	.L2569
	.p2align 4,,10
	.p2align 3
.L2546:
	movzbl	(%rdi), %r15d
	testl	%r9d, %r9d
	jne	.L6060
	cmpb	$114, %r15b
	je	.L2858
	cmpb	$115, %r15b
	jne	.L5882
	cmpq	$0, -240(%rbp)
	jle	.L6061
	movq	64(%rsi), %r12
	movq	%rdx, %r14
	movq	$0, -248(%rbp)
	salq	$6, %r14
	.p2align 4,,10
	.p2align 3
.L2864:
#APP
# 180 "mem.cc" 1
	# seq loop begin (n_chains = $9, payload = $0)
# 0 "" 2
#NO_APP
	cmpq	$0, -232(%rbp)
	jle	.L2862
	movq	8(%r11), %rbx
	leaq	-64(%r14), %r15
	movq	16(%r11), %r10
	shrq	$6, %r15
	movq	24(%r11), %r9
	andl	$1, %r15d
	movq	32(%r11), %r8
	movq	40(%r11), %rdi
	movq	48(%r11), %rsi
	movq	56(%r11), %rcx
	movq	(%r11), %r13
	movq	0(%r13), %rax
	movq	(%rbx), %rax
	movq	(%r10), %rax
	movq	(%r9), %rax
	movq	(%r8), %rax
	movq	(%rdi), %rax
	movq	(%rsi), %rax
	movq	(%rcx), %rax
	movq	(%r12), %rax
	movl	$64, %eax
	cmpq	$64, %r14
	je	.L2862
	testq	%r15, %r15
	je	.L2863
	movq	64(%r13), %rax
	movq	64(%rbx), %rax
	movq	64(%r10), %rax
	movq	64(%r9), %rax
	movq	64(%r8), %rax
	movq	64(%rdi), %rax
	movq	64(%rsi), %rax
	movq	64(%rcx), %rax
	movq	64(%r12), %rax
	movl	$128, %eax
	cmpq	$128, %r14
	je	.L2862
	.p2align 4,,10
	.p2align 3
.L2863:
	leaq	(%rbx,%rax), %r15
	leaq	0(%r13,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%r9,%rax), %r15
	leaq	(%r10,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%rdi,%rax), %r15
	leaq	(%r8,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%rcx,%rax), %r15
	leaq	(%rsi,%rax), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %rdx
	leaq	(%r12,%rax), %rdx
	movq	(%rdx), %rdx
	leaq	64(%rax), %rdx
	subq	$-128, %rax
	leaq	0(%r13,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rbx,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r10,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r9,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%r8,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rdi,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rsi,%rdx), %r15
	movq	(%r15), %r15
	leaq	(%rcx,%rdx), %r15
	addq	%r12, %rdx
	movq	(%r15), %r15
	movq	(%rdx), %rdx
	cmpq	%rax, %r14
	jne	.L2863
.L2862:
#APP
# 193 "mem.cc" 1
	# seq loop end (n_chains = $9, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, -248(%rbp)
	movq	-248(%rbp), %rbx
	cmpq	%rbx, -240(%rbp)
	jne	.L2864
.L2861:
	movq	-232(%rbp), %r11
	salq	$6, %r11
	leaq	-64(%r12,%r11), %r15
	jmp	.L2569
	.p2align 4,,10
	.p2align 3
.L2536:
	movq	stderr(%rip), %rdi
	movl	$.LC92, %edx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk
	movl	$1, %edi
	call	exit
.L6049:
	cmpb	$114, %r10b
	je	.L2560
	cmpb	$115, %r10b
	jne	.L5858
	cmpq	$0, -240(%rbp)
	jle	.L6062
	movq	(%rsi), %rcx
	movq	%rdx, %r8
	salq	$6, %rdx
	xorl	%r11d, %r11d
	movq	-240(%rbp), %r9
	addq	%rcx, %rdx
	.p2align 4,,10
	.p2align 3
.L2568:
#APP
# 180 "mem.cc" 1
	# seq loop begin (n_chains = $1, payload = $1)
# 0 "" 2
#NO_APP
	testq	%r8, %r8
	jle	.L2566
	leaq	64(%rcx), %rax
	movq	%rdx, %rbx
	vmovdqa	(%rcx), %ymm0
	subq	%rcx, %rbx
	vmovdqa	32(%rcx), %ymm0
	subq	$64, %rbx
	shrq	$6, %rbx
	andl	$7, %ebx
	cmpq	%rax, %rdx
	je	.L2566
	testq	%rbx, %rbx
	je	.L2567
	cmpq	$1, %rbx
	je	.L5110
	cmpq	$2, %rbx
	je	.L5111
	cmpq	$3, %rbx
	je	.L5112
	cmpq	$4, %rbx
	je	.L5113
	cmpq	$5, %rbx
	je	.L5114
	cmpq	$6, %rbx
	je	.L5115
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	leaq	128(%rcx), %rax
.L5115:
	vmovdqa	(%rax), %ymm0
	addq	$64, %rax
	vmovdqa	-32(%rax), %ymm0
.L5114:
	vmovdqa	(%rax), %ymm0
	addq	$64, %rax
	vmovdqa	-32(%rax), %ymm0
.L5113:
	vmovdqa	(%rax), %ymm0
	addq	$64, %rax
	vmovdqa	-32(%rax), %ymm0
.L5112:
	vmovdqa	(%rax), %ymm0
	addq	$64, %rax
	vmovdqa	-32(%rax), %ymm0
.L5111:
	vmovdqa	(%rax), %ymm0
	addq	$64, %rax
	vmovdqa	-32(%rax), %ymm0
.L5110:
	vmovdqa	(%rax), %ymm0
	addq	$64, %rax
	vmovdqa	-32(%rax), %ymm0
	cmpq	%rax, %rdx
	je	.L2566
.L2567:
	vmovdqa	(%rax), %ymm0
	addq	$512, %rax
	vmovdqa	-480(%rax), %ymm0
	vmovdqa	-448(%rax), %ymm0
	vmovdqa	-416(%rax), %ymm0
	vmovdqa	-384(%rax), %ymm0
	vmovdqa	-352(%rax), %ymm0
	vmovdqa	-320(%rax), %ymm0
	vmovdqa	-288(%rax), %ymm0
	vmovdqa	-256(%rax), %ymm0
	vmovdqa	-224(%rax), %ymm0
	vmovdqa	-192(%rax), %ymm0
	vmovdqa	-160(%rax), %ymm0
	vmovdqa	-128(%rax), %ymm0
	vmovdqa	-96(%rax), %ymm0
	vmovdqa	-64(%rax), %ymm0
	vmovdqa	-32(%rax), %ymm0
	cmpq	%rax, %rdx
	jne	.L2567
.L2566:
#APP
# 193 "mem.cc" 1
	# seq loop end (n_chains = $1, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, %r11
	cmpq	%r11, %r9
	jne	.L2568
	.p2align 4,,10
	.p2align 3
.L6024:
	vzeroupper
	jmp	.L6025
.L6047:
	cmpb	$114, %sil
	je	.L2590
	cmpb	$115, %sil
	jne	.L5860
	cmpq	$0, -240(%rbp)
	jle	.L6063
	movq	8(%r11), %rdi
	movq	%rdx, %r15
	xorl	%ebx, %ebx
	salq	$6, %rdx
	.p2align 4,,10
	.p2align 3
.L2598:
#APP
# 180 "mem.cc" 1
	# seq loop begin (n_chains = $2, payload = $1)
# 0 "" 2
#NO_APP
	testq	%r15, %r15
	jle	.L2596
	movq	(%r11), %r13
	leaq	-64(%rdx), %rcx
	leaq	64(%rdi), %rsi
	shrq	$6, %rcx
	andl	$7, %ecx
	leaq	0(%r13,%rdx), %r14
	vmovdqa	0(%r13), %ymm0
	leaq	64(%r13), %rax
	vmovdqa	32(%r13), %ymm0
	vmovdqa	(%rdi), %ymm0
	vmovdqa	32(%rdi), %ymm0
	cmpq	%r14, %rax
	je	.L2596
	testq	%rcx, %rcx
	je	.L2597
	cmpq	$1, %rcx
	je	.L5134
	cmpq	$2, %rcx
	je	.L5135
	cmpq	$3, %rcx
	je	.L5136
	cmpq	$4, %rcx
	je	.L5137
	cmpq	$5, %rcx
	je	.L5138
	cmpq	$6, %rcx
	je	.L5139
	vmovdqa	64(%r13), %ymm0
	vmovdqa	32(%rax), %ymm0
	leaq	128(%r13), %rax
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	leaq	128(%rdi), %rsi
.L5139:
	vmovdqa	(%rax), %ymm0
	addq	$64, %rsi
	addq	$64, %rax
	vmovdqa	-32(%rax), %ymm0
	vmovdqa	-64(%rsi), %ymm0
	vmovdqa	-32(%rsi), %ymm0
.L5138:
	vmovdqa	(%rax), %ymm0
	addq	$64, %rsi
	addq	$64, %rax
	vmovdqa	-32(%rax), %ymm0
	vmovdqa	-64(%rsi), %ymm0
	vmovdqa	-32(%rsi), %ymm0
.L5137:
	vmovdqa	(%rax), %ymm0
	addq	$64, %rsi
	addq	$64, %rax
	vmovdqa	-32(%rax), %ymm0
	vmovdqa	-64(%rsi), %ymm0
	vmovdqa	-32(%rsi), %ymm0
.L5136:
	vmovdqa	(%rax), %ymm0
	addq	$64, %rsi
	addq	$64, %rax
	vmovdqa	-32(%rax), %ymm0
	vmovdqa	-64(%rsi), %ymm0
	vmovdqa	-32(%rsi), %ymm0
.L5135:
	vmovdqa	(%rax), %ymm0
	addq	$64, %rsi
	addq	$64, %rax
	vmovdqa	-32(%rax), %ymm0
	vmovdqa	-64(%rsi), %ymm0
	vmovdqa	-32(%rsi), %ymm0
.L5134:
	vmovdqa	(%rax), %ymm0
	addq	$64, %rax
	addq	$64, %rsi
	vmovdqa	-32(%rax), %ymm0
	vmovdqa	-64(%rsi), %ymm0
	vmovdqa	-32(%rsi), %ymm0
	cmpq	%r14, %rax
	je	.L2596
.L2597:
	vmovdqa	(%rax), %ymm0
	addq	$512, %rax
	addq	$512, %rsi
	vmovdqa	-480(%rax), %ymm0
	vmovdqa	-512(%rsi), %ymm0
	vmovdqa	-480(%rsi), %ymm0
	vmovdqa	-448(%rax), %ymm0
	vmovdqa	-416(%rax), %ymm0
	vmovdqa	-448(%rsi), %ymm0
	vmovdqa	-416(%rsi), %ymm0
	vmovdqa	-384(%rax), %ymm0
	vmovdqa	-352(%rax), %ymm0
	vmovdqa	-384(%rsi), %ymm0
	vmovdqa	-352(%rsi), %ymm0
	vmovdqa	-320(%rax), %ymm0
	vmovdqa	-288(%rax), %ymm0
	vmovdqa	-320(%rsi), %ymm0
	vmovdqa	-288(%rsi), %ymm0
	vmovdqa	-256(%rax), %ymm0
	vmovdqa	-224(%rax), %ymm0
	vmovdqa	-256(%rsi), %ymm0
	vmovdqa	-224(%rsi), %ymm0
	vmovdqa	-192(%rax), %ymm0
	vmovdqa	-160(%rax), %ymm0
	vmovdqa	-192(%rsi), %ymm0
	vmovdqa	-160(%rsi), %ymm0
	vmovdqa	-128(%rax), %ymm0
	vmovdqa	-96(%rax), %ymm0
	vmovdqa	-128(%rsi), %ymm0
	vmovdqa	-96(%rsi), %ymm0
	vmovdqa	-64(%rax), %ymm0
	vmovdqa	-32(%rax), %ymm0
	vmovdqa	-64(%rsi), %ymm0
	vmovdqa	-32(%rsi), %ymm0
	cmpq	%r14, %rax
	jne	.L2597
.L2596:
#APP
# 193 "mem.cc" 1
	# seq loop end (n_chains = $2, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, %rbx
	cmpq	%rbx, %r8
	jne	.L2598
	vzeroupper
	movq	-232(%rbp), %r11
.L2593:
	salq	$6, %r11
	leaq	-64(%rdi,%r11), %r15
	jmp	.L2569
.L6045:
	cmpb	$114, %bl
	je	.L2619
	cmpb	$115, %bl
	jne	.L5862
	cmpq	$0, -240(%rbp)
	jle	.L6064
	movq	16(%rsi), %r10
	movq	%rdx, %rbx
	movq	%rdx, %r13
	movq	%r8, %r14
	salq	$6, %rbx
	xorl	%r12d, %r12d
	.p2align 4,,10
	.p2align 3
.L2627:
#APP
# 180 "mem.cc" 1
	# seq loop begin (n_chains = $3, payload = $1)
# 0 "" 2
#NO_APP
	testq	%r13, %r13
	jle	.L2625
	movq	(%r11), %rsi
	leaq	-64(%rbx), %rdi
	movq	8(%r11), %r9
	leaq	64(%r10), %rcx
	shrq	$6, %rdi
	andl	$3, %edi
	leaq	(%rsi,%rbx), %r8
	vmovdqa	(%rsi), %ymm0
	leaq	64(%rsi), %rax
	vmovdqa	32(%rsi), %ymm0
	leaq	64(%r9), %r15
	vmovdqa	(%r9), %ymm0
	vmovdqa	32(%r9), %ymm0
	vmovdqa	(%r10), %ymm0
	vmovdqa	32(%r10), %ymm0
	cmpq	%r8, %rax
	je	.L2625
	testq	%rdi, %rdi
	je	.L2626
	cmpq	$1, %rdi
	je	.L5154
	cmpq	$2, %rdi
	je	.L5155
	vmovdqa	64(%rsi), %ymm0
	vmovdqa	32(%rax), %ymm0
	leaq	128(%rsi), %rax
	vmovdqa	64(%r9), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	128(%r9), %r15
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	128(%r10), %rcx
.L5155:
	vmovdqa	(%rax), %ymm0
	addq	$64, %r15
	addq	$64, %rax
	addq	$64, %rcx
	vmovdqa	-32(%rax), %ymm0
	vmovdqa	-64(%r15), %ymm0
	vmovdqa	-32(%r15), %ymm0
	vmovdqa	-64(%rcx), %ymm0
	vmovdqa	-32(%rcx), %ymm0
.L5154:
	vmovdqa	(%rax), %ymm0
	addq	$64, %rax
	addq	$64, %r15
	addq	$64, %rcx
	vmovdqa	-32(%rax), %ymm0
	vmovdqa	-64(%r15), %ymm0
	vmovdqa	-32(%r15), %ymm0
	vmovdqa	-64(%rcx), %ymm0
	vmovdqa	-32(%rcx), %ymm0
	cmpq	%r8, %rax
	je	.L2625
.L2626:
	vmovdqa	(%rax), %ymm0
	addq	$256, %rax
	addq	$256, %r15
	addq	$256, %rcx
	vmovdqa	-224(%rax), %ymm0
	vmovdqa	-256(%r15), %ymm0
	vmovdqa	-224(%r15), %ymm0
	vmovdqa	-256(%rcx), %ymm0
	vmovdqa	-224(%rcx), %ymm0
	vmovdqa	-192(%rax), %ymm0
	vmovdqa	-160(%rax), %ymm0
	vmovdqa	-192(%r15), %ymm0
	vmovdqa	-160(%r15), %ymm0
	vmovdqa	-192(%rcx), %ymm0
	vmovdqa	-160(%rcx), %ymm0
	vmovdqa	-128(%rax), %ymm0
	vmovdqa	-96(%rax), %ymm0
	vmovdqa	-128(%r15), %ymm0
	vmovdqa	-96(%r15), %ymm0
	vmovdqa	-128(%rcx), %ymm0
	vmovdqa	-96(%rcx), %ymm0
	vmovdqa	-64(%rax), %ymm0
	vmovdqa	-32(%rax), %ymm0
	vmovdqa	-64(%r15), %ymm0
	vmovdqa	-32(%r15), %ymm0
	vmovdqa	-64(%rcx), %ymm0
	vmovdqa	-32(%rcx), %ymm0
	cmpq	%r8, %rax
	jne	.L2626
.L2625:
#APP
# 193 "mem.cc" 1
	# seq loop end (n_chains = $3, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, %r12
	cmpq	%r12, %r14
	jne	.L2627
	vzeroupper
	jmp	.L6011
.L6043:
	cmpb	$114, %cl
	je	.L2648
	cmpb	$115, %cl
	jne	.L5864
	cmpq	$0, -240(%rbp)
	jle	.L6065
	movq	24(%rsi), %rbx
	movq	%rdx, %r13
	movq	%rdx, %r15
	xorl	%r12d, %r12d
	salq	$6, %r13
	.p2align 4,,10
	.p2align 3
.L2654:
#APP
# 180 "mem.cc" 1
	# seq loop begin (n_chains = $4, payload = $1)
# 0 "" 2
#NO_APP
	testq	%r15, %r15
	jle	.L2652
	movq	(%r11), %rdi
	leaq	-64(%r13), %r8
	movq	8(%r11), %r14
	leaq	64(%rbx), %rdx
	shrq	$6, %r8
	movq	16(%r11), %r10
	andl	$3, %r8d
	leaq	(%rdi,%r13), %r9
	vmovdqa	(%rdi), %ymm0
	leaq	64(%rdi), %rax
	vmovdqa	32(%rdi), %ymm0
	leaq	64(%r14), %rsi
	vmovdqa	(%r14), %ymm0
	leaq	64(%r10), %rcx
	vmovdqa	32(%r14), %ymm0
	vmovdqa	(%r10), %ymm0
	vmovdqa	32(%r10), %ymm0
	vmovdqa	(%rbx), %ymm0
	vmovdqa	32(%rbx), %ymm0
	cmpq	%rax, %r9
	je	.L2652
	testq	%r8, %r8
	je	.L2653
	cmpq	$1, %r8
	je	.L5170
	cmpq	$2, %r8
	je	.L5171
	vmovdqa	64(%rdi), %ymm0
	vmovdqa	32(%rax), %ymm0
	leaq	128(%rdi), %rax
	vmovdqa	64(%r14), %ymm0
	vmovdqa	32(%rsi), %ymm0
	leaq	128(%r14), %rsi
	vmovdqa	64(%r10), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	128(%r10), %rcx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	128(%rbx), %rdx
.L5171:
	vmovdqa	(%rax), %ymm0
	addq	$64, %rsi
	addq	$64, %rax
	addq	$64, %rcx
	vmovdqa	-32(%rax), %ymm0
	addq	$64, %rdx
	vmovdqa	-64(%rsi), %ymm0
	vmovdqa	-32(%rsi), %ymm0
	vmovdqa	-64(%rcx), %ymm0
	vmovdqa	-32(%rcx), %ymm0
	vmovdqa	-64(%rdx), %ymm0
	vmovdqa	-32(%rdx), %ymm0
.L5170:
	vmovdqa	(%rax), %ymm0
	addq	$64, %rax
	addq	$64, %rsi
	addq	$64, %rcx
	vmovdqa	-32(%rax), %ymm0
	addq	$64, %rdx
	vmovdqa	-64(%rsi), %ymm0
	vmovdqa	-32(%rsi), %ymm0
	vmovdqa	-64(%rcx), %ymm0
	vmovdqa	-32(%rcx), %ymm0
	vmovdqa	-64(%rdx), %ymm0
	vmovdqa	-32(%rdx), %ymm0
	cmpq	%rax, %r9
	je	.L2652
.L2653:
	vmovdqa	(%rax), %ymm0
	addq	$256, %rax
	addq	$256, %rsi
	addq	$256, %rcx
	vmovdqa	-224(%rax), %ymm0
	addq	$256, %rdx
	vmovdqa	-256(%rsi), %ymm0
	vmovdqa	-224(%rsi), %ymm0
	vmovdqa	-256(%rcx), %ymm0
	vmovdqa	-224(%rcx), %ymm0
	vmovdqa	-256(%rdx), %ymm0
	vmovdqa	-224(%rdx), %ymm0
	vmovdqa	-192(%rax), %ymm0
	vmovdqa	-160(%rax), %ymm0
	vmovdqa	-192(%rsi), %ymm0
	vmovdqa	-160(%rsi), %ymm0
	vmovdqa	-192(%rcx), %ymm0
	vmovdqa	-160(%rcx), %ymm0
	vmovdqa	-192(%rdx), %ymm0
	vmovdqa	-160(%rdx), %ymm0
	vmovdqa	-128(%rax), %ymm0
	vmovdqa	-96(%rax), %ymm0
	vmovdqa	-128(%rsi), %ymm0
	vmovdqa	-96(%rsi), %ymm0
	vmovdqa	-128(%rcx), %ymm0
	vmovdqa	-96(%rcx), %ymm0
	vmovdqa	-128(%rdx), %ymm0
	vmovdqa	-96(%rdx), %ymm0
	vmovdqa	-64(%rax), %ymm0
	vmovdqa	-32(%rax), %ymm0
	vmovdqa	-64(%rsi), %ymm0
	vmovdqa	-32(%rsi), %ymm0
	vmovdqa	-64(%rcx), %ymm0
	vmovdqa	-32(%rcx), %ymm0
	vmovdqa	-64(%rdx), %ymm0
	vmovdqa	-32(%rdx), %ymm0
	cmpq	%rax, %r9
	jne	.L2653
.L2652:
#APP
# 193 "mem.cc" 1
	# seq loop end (n_chains = $4, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, %r12
	cmpq	%r12, -240(%rbp)
	jne	.L2654
	vzeroupper
	jmp	.L6010
.L6035:
	cmpb	$114, %sil
	je	.L3267
	cmpb	$115, %sil
	jne	.L5905
	cmpq	$0, -240(%rbp)
	jle	.L6008
	movq	128(%r11), %r15
	movq	$0, -296(%rbp)
	movq	%r15, -248(%rbp)
	.p2align 4,,10
	.p2align 3
.L3272:
#APP
# 180 "mem.cc" 1
	# seq loop begin (n_chains = $17, payload = $1)
# 0 "" 2
#NO_APP
	cmpq	$0, -232(%rbp)
	jle	.L3270
	movq	88(%r11), %rdx
	movq	%r11, -304(%rbp)
	movq	96(%r11), %rcx
	movq	32(%r11), %rax
	movq	(%r11), %r14
	movq	%rdx, -288(%rbp)
	movq	104(%r11), %rdx
	movq	%rcx, -280(%rbp)
	movq	112(%r11), %rcx
	movq	8(%r11), %r13
	movq	16(%r11), %r12
	movq	%rdx, -264(%rbp)
	movq	120(%r11), %rdx
	movq	24(%r11), %rbx
	movq	%rcx, -256(%rbp)
	movq	40(%r11), %r10
	movq	48(%r11), %r9
	movq	56(%r11), %r8
	movq	%rdx, -272(%rbp)
	xorl	%edx, %edx
	movq	64(%r11), %rdi
	movq	72(%r11), %rsi
	movq	80(%r11), %r15
	movq	%rax, %r11
	.p2align 4,,10
	.p2align 3
.L3271:
	movq	%rdx, %rax
	addq	$1, %rdx
	salq	$6, %rax
	leaq	(%r14,%rax), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	0(%r13,%rax), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r12,%rax), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%rbx,%rax), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r11,%rax), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r10,%rax), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r9,%rax), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r8,%rax), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%rdi,%rax), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%rsi,%rax), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r15,%rax), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	movq	-288(%rbp), %rcx
	addq	%rax, %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	movq	-280(%rbp), %rcx
	addq	%rax, %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	movq	-264(%rbp), %rcx
	addq	%rax, %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	movq	-256(%rbp), %rcx
	addq	%rax, %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	movq	-272(%rbp), %rcx
	addq	%rax, %rcx
	addq	-248(%rbp), %rax
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	cmpq	%rdx, -232(%rbp)
	jne	.L3271
	movq	-304(%rbp), %r11
.L3270:
#APP
# 193 "mem.cc" 1
	# seq loop end (n_chains = $17, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, -296(%rbp)
	movq	-296(%rbp), %r14
	cmpq	%r14, -240(%rbp)
	jne	.L3272
.L6026:
	vzeroupper
	jmp	.L6009
.L6034:
	cmpb	$114, %sil
	je	.L3327
	cmpb	$115, %sil
	jne	.L5910
	cmpq	$0, -240(%rbp)
	jle	.L3329
	leaq	144(%r11), %rsi
	xorl	%r8d, %r8d
	.p2align 4,,10
	.p2align 3
.L3333:
#APP
# 180 "mem.cc" 1
	# seq loop begin (n_chains = $18, payload = $1)
# 0 "" 2
#NO_APP
	cmpq	$0, -232(%rbp)
	jle	.L3330
	xorl	%edi, %edi
	.p2align 4,,10
	.p2align 3
.L3332:
	leaq	8(%r11), %r15
	movq	%rdi, %rdx
	movq	%rsi, %rcx
	salq	$6, %rdx
	subq	%r11, %rcx
	movq	%rdx, %r13
	addq	(%r11), %r13
	subq	$8, %rcx
	shrq	$3, %rcx
	andl	$7, %ecx
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
	cmpq	%rsi, %r15
	je	.L5911
	testq	%rcx, %rcx
	je	.L3331
	cmpq	$1, %rcx
	je	.L5235
	cmpq	$2, %rcx
	je	.L5236
	cmpq	$3, %rcx
	je	.L5237
	cmpq	$4, %rcx
	je	.L5238
	cmpq	$5, %rcx
	je	.L5239
	cmpq	$6, %rcx
	je	.L5240
	leaq	16(%r11), %r15
	movq	%rdx, %rbx
	addq	8(%r11), %rbx
	vmovdqa	(%rbx), %ymm0
	vmovdqa	32(%rbx), %ymm0
.L5240:
	movq	%rdx, %r14
	addq	(%r15), %r14
	addq	$8, %r15
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
.L5239:
	movq	%rdx, %r9
	addq	(%r15), %r9
	addq	$8, %r15
	vmovdqa	(%r9), %ymm0
	vmovdqa	32(%r9), %ymm0
.L5238:
	movq	%rdx, %r10
	addq	(%r15), %r10
	addq	$8, %r15
	vmovdqa	(%r10), %ymm0
	vmovdqa	32(%r10), %ymm0
.L5237:
	movq	%rdx, %rax
	addq	(%r15), %rax
	addq	$8, %r15
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
.L5236:
	movq	%rdx, %r12
	addq	(%r15), %r12
	addq	$8, %r15
	vmovdqa	(%r12), %ymm0
	vmovdqa	32(%r12), %ymm0
.L5235:
	movq	%rdx, %rcx
	addq	(%r15), %rcx
	addq	$8, %r15
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	cmpq	%rsi, %r15
	je	.L5911
.L3331:
	movq	%rdx, %r13
	movq	%rdx, %rbx
	addq	(%r15), %r13
	movq	%rdx, %r14
	addq	8(%r15), %rbx
	movq	%rdx, %r9
	movq	%rdx, %r10
	addq	16(%r15), %r14
	movq	%rdx, %rax
	movq	%rdx, %r12
	addq	24(%r15), %r9
	movq	%rdx, %rcx
	addq	$64, %r15
	addq	-32(%r15), %r10
	addq	-24(%r15), %rax
	addq	-16(%r15), %r12
	addq	-8(%r15), %rcx
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
	vmovdqa	(%rbx), %ymm0
	vmovdqa	32(%rbx), %ymm0
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	vmovdqa	(%r9), %ymm0
	vmovdqa	32(%r9), %ymm0
	vmovdqa	(%r10), %ymm0
	vmovdqa	32(%r10), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	vmovdqa	(%r12), %ymm0
	vmovdqa	32(%r12), %ymm0
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	cmpq	%rsi, %r15
	jne	.L3331
.L5911:
	addq	$1, %rdi
	cmpq	%rdi, -232(%rbp)
	jne	.L3332
.L3330:
#APP
# 193 "mem.cc" 1
	# seq loop end (n_chains = $18, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, %r8
	cmpq	%r8, -240(%rbp)
	jne	.L3333
	vzeroupper
	jmp	.L3329
.L6033:
	cmpb	$114, %sil
	je	.L3361
	cmpb	$115, %sil
	jne	.L5916
	cmpq	$0, -240(%rbp)
	jle	.L3363
	leaq	152(%r11), %rsi
	xorl	%r8d, %r8d
	.p2align 4,,10
	.p2align 3
.L3367:
#APP
# 180 "mem.cc" 1
	# seq loop begin (n_chains = $19, payload = $1)
# 0 "" 2
#NO_APP
	cmpq	$0, -232(%rbp)
	jle	.L3364
	xorl	%edi, %edi
	.p2align 4,,10
	.p2align 3
.L3366:
	leaq	8(%r11), %rdx
	movq	%rdi, %r14
	movq	%rsi, %rcx
	salq	$6, %r14
	subq	%r11, %rcx
	movq	%r14, %r13
	addq	(%r11), %r13
	subq	$8, %rcx
	shrq	$3, %rcx
	andl	$7, %ecx
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
	cmpq	%rsi, %rdx
	je	.L5917
	testq	%rcx, %rcx
	je	.L3365
	cmpq	$1, %rcx
	je	.L5259
	cmpq	$2, %rcx
	je	.L5260
	cmpq	$3, %rcx
	je	.L5261
	cmpq	$4, %rcx
	je	.L5262
	cmpq	$5, %rcx
	je	.L5263
	cmpq	$6, %rcx
	je	.L5264
	leaq	16(%r11), %rdx
	movq	%r14, %r15
	addq	8(%r11), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
.L5264:
	movq	%r14, %r9
	addq	(%rdx), %r9
	addq	$8, %rdx
	vmovdqa	(%r9), %ymm0
	vmovdqa	32(%r9), %ymm0
.L5263:
	movq	%r14, %r10
	addq	(%rdx), %r10
	addq	$8, %rdx
	vmovdqa	(%r10), %ymm0
	vmovdqa	32(%r10), %ymm0
.L5262:
	movq	%r14, %rax
	addq	(%rdx), %rax
	addq	$8, %rdx
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
.L5261:
	movq	%r14, %rbx
	addq	(%rdx), %rbx
	addq	$8, %rdx
	vmovdqa	(%rbx), %ymm0
	vmovdqa	32(%rbx), %ymm0
.L5260:
	movq	%r14, %r12
	addq	(%rdx), %r12
	addq	$8, %rdx
	vmovdqa	(%r12), %ymm0
	vmovdqa	32(%r12), %ymm0
.L5259:
	movq	%r14, %rcx
	addq	(%rdx), %rcx
	addq	$8, %rdx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	cmpq	%rsi, %rdx
	je	.L5917
.L3365:
	movq	%r14, %r13
	movq	%r14, %r15
	addq	(%rdx), %r13
	movq	%r14, %r9
	addq	8(%rdx), %r15
	movq	%r14, %r10
	movq	%r14, %rax
	addq	16(%rdx), %r9
	movq	%r14, %rbx
	movq	%r14, %r12
	addq	24(%rdx), %r10
	movq	%r14, %rcx
	addq	$64, %rdx
	addq	-32(%rdx), %rax
	addq	-24(%rdx), %rbx
	addq	-16(%rdx), %r12
	addq	-8(%rdx), %rcx
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%r9), %ymm0
	vmovdqa	32(%r9), %ymm0
	vmovdqa	(%r10), %ymm0
	vmovdqa	32(%r10), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	vmovdqa	(%rbx), %ymm0
	vmovdqa	32(%rbx), %ymm0
	vmovdqa	(%r12), %ymm0
	vmovdqa	32(%r12), %ymm0
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	cmpq	%rsi, %rdx
	jne	.L3365
.L5917:
	addq	$1, %rdi
	cmpq	%rdi, -232(%rbp)
	jne	.L3366
.L3364:
#APP
# 193 "mem.cc" 1
	# seq loop end (n_chains = $19, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, %r8
	cmpq	%r8, -240(%rbp)
	jne	.L3367
	vzeroupper
	jmp	.L3363
.L6055:
	cmpb	$114, %sil
	je	.L2747
	cmpb	$115, %sil
	jne	.L5872
	cmpq	$0, -240(%rbp)
	jle	.L6066
	movq	48(%r11), %rsi
	movq	%rdx, %r12
	movq	%rdx, %r15
	xorl	%r13d, %r13d
	salq	$6, %r12
	.p2align 4,,10
	.p2align 3
.L2753:
#APP
# 180 "mem.cc" 1
	# seq loop begin (n_chains = $7, payload = $1)
# 0 "" 2
#NO_APP
	testq	%r15, %r15
	jle	.L2751
	movq	8(%r11), %rbx
	leaq	-64(%r12), %rcx
	movl	$64, %eax
	movq	16(%r11), %r10
	shrq	$6, %rcx
	movq	24(%r11), %r9
	andl	$1, %ecx
	movq	32(%r11), %r8
	movq	40(%r11), %rdi
	movq	(%r11), %r14
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	vmovdqa	(%rbx), %ymm0
	vmovdqa	32(%rbx), %ymm0
	vmovdqa	(%r10), %ymm0
	vmovdqa	32(%r10), %ymm0
	vmovdqa	(%r9), %ymm0
	vmovdqa	32(%r9), %ymm0
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	vmovdqa	(%rdi), %ymm0
	vmovdqa	32(%rdi), %ymm0
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	cmpq	$64, %r12
	je	.L2751
	testq	%rcx, %rcx
	je	.L2752
	vmovdqa	64(%r14), %ymm0
	movl	$128, %eax
	vmovdqa	96(%r14), %ymm0
	vmovdqa	64(%rbx), %ymm0
	vmovdqa	96(%rbx), %ymm0
	vmovdqa	64(%r10), %ymm0
	vmovdqa	96(%r10), %ymm0
	vmovdqa	64(%r9), %ymm0
	vmovdqa	96(%r9), %ymm0
	vmovdqa	64(%r8), %ymm0
	vmovdqa	96(%r8), %ymm0
	vmovdqa	64(%rdi), %ymm0
	vmovdqa	96(%rdi), %ymm0
	vmovdqa	64(%rsi), %ymm0
	vmovdqa	96(%rsi), %ymm0
	cmpq	$128, %r12
	je	.L2751
	.p2align 4,,10
	.p2align 3
.L2752:
	leaq	(%r14,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	leaq	(%rbx,%rax), %rcx
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r10,%rax), %rdx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r9,%rax), %rcx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r8,%rax), %rdx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%rdi,%rax), %rcx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rsi,%rax), %rdx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	64(%rax), %rdx
	subq	$-128, %rax
	leaq	(%r14,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%rbx,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r10,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r9,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r8,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%rdi,%rdx), %rcx
	addq	%rsi, %rdx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	cmpq	%rax, %r12
	jne	.L2752
.L2751:
#APP
# 193 "mem.cc" 1
	# seq loop end (n_chains = $7, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, %r13
	cmpq	%r13, -240(%rbp)
	jne	.L2753
.L6023:
	vzeroupper
	movq	-232(%rbp), %r11
.L2838:
	salq	$6, %r11
	leaq	-64(%rsi,%r11), %r15
	jmp	.L2569
.L6037:
	cmpb	$114, %bl
	je	.L2790
	cmpb	$115, %bl
	jne	.L5876
	cmpq	$0, -240(%rbp)
	jle	.L6067
	movq	56(%rsi), %rsi
	movq	%rdx, %r13
	xorl	%r14d, %r14d
	salq	$6, %r13
	.p2align 4,,10
	.p2align 3
.L2796:
#APP
# 180 "mem.cc" 1
	# seq loop begin (n_chains = $8, payload = $1)
# 0 "" 2
#NO_APP
	cmpq	$0, -232(%rbp)
	jle	.L2794
	movq	8(%r11), %r12
	leaq	-64(%r13), %rcx
	movl	$64, %eax
	movq	16(%r11), %rbx
	shrq	$6, %rcx
	movq	24(%r11), %r10
	andl	$1, %ecx
	movq	32(%r11), %r9
	movq	40(%r11), %r8
	movq	48(%r11), %rdi
	movq	(%r11), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%r12), %ymm0
	vmovdqa	32(%r12), %ymm0
	vmovdqa	(%rbx), %ymm0
	vmovdqa	32(%rbx), %ymm0
	vmovdqa	(%r10), %ymm0
	vmovdqa	32(%r10), %ymm0
	vmovdqa	(%r9), %ymm0
	vmovdqa	32(%r9), %ymm0
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	vmovdqa	(%rdi), %ymm0
	vmovdqa	32(%rdi), %ymm0
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	cmpq	$64, %r13
	je	.L2794
	testq	%rcx, %rcx
	je	.L2795
	vmovdqa	64(%r15), %ymm0
	movl	$128, %eax
	vmovdqa	96(%r15), %ymm0
	vmovdqa	64(%r12), %ymm0
	vmovdqa	96(%r12), %ymm0
	vmovdqa	64(%rbx), %ymm0
	vmovdqa	96(%rbx), %ymm0
	vmovdqa	64(%r10), %ymm0
	vmovdqa	96(%r10), %ymm0
	vmovdqa	64(%r9), %ymm0
	vmovdqa	96(%r9), %ymm0
	vmovdqa	64(%r8), %ymm0
	vmovdqa	96(%r8), %ymm0
	vmovdqa	64(%rdi), %ymm0
	vmovdqa	96(%rdi), %ymm0
	vmovdqa	64(%rsi), %ymm0
	vmovdqa	96(%rsi), %ymm0
	cmpq	$128, %r13
	je	.L2794
	.p2align 4,,10
	.p2align 3
.L2795:
	leaq	(%r15,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	leaq	(%r12,%rax), %rcx
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rbx,%rax), %rdx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r10,%rax), %rcx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r9,%rax), %rdx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r8,%rax), %rcx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rdi,%rax), %rdx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%rsi,%rax), %rcx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	64(%rax), %rdx
	subq	$-128, %rax
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r15,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r12,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%rbx,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r10,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r9,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r8,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%rdi,%rdx), %rcx
	addq	%rsi, %rdx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	cmpq	%rax, %r13
	jne	.L2795
.L2794:
#APP
# 193 "mem.cc" 1
	# seq loop end (n_chains = $8, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, %r14
	cmpq	%r14, -240(%rbp)
	jne	.L2796
	jmp	.L6023
.L6057:
	cmpb	$114, %r13b
	je	.L3090
	cmpb	$115, %r13b
	jne	.L5896
	cmpq	$0, -240(%rbp)
	jle	.L6068
	movq	104(%rsi), %rcx
	movq	%rdx, %r15
	movq	$0, -272(%rbp)
	salq	$6, %r15
	movq	%r15, -264(%rbp)
	.p2align 4,,10
	.p2align 3
.L3096:
#APP
# 180 "mem.cc" 1
	# seq loop begin (n_chains = $14, payload = $1)
# 0 "" 2
#NO_APP
	cmpq	$0, -232(%rbp)
	jle	.L3094
	movq	96(%r11), %rdx
	movq	%r11, -280(%rbp)
	movq	(%r11), %rax
	movq	40(%r11), %rdi
	movq	8(%r11), %r14
	movq	%rdx, -256(%rbp)
	movq	16(%r11), %r13
	movq	%rax, %rdx
	movq	24(%r11), %r12
	xorl	%eax, %eax
	movq	32(%r11), %rbx
	movq	%rdi, -248(%rbp)
	movq	48(%r11), %r10
	movq	56(%r11), %r9
	movq	64(%r11), %r8
	movq	72(%r11), %rdi
	movq	80(%r11), %rsi
	movq	88(%r11), %r15
	movq	%rdx, %r11
	.p2align 4,,10
	.p2align 3
.L3095:
	leaq	(%r11,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r14,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	0(%r13,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r12,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rbx,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	movq	-248(%rbp), %rdx
	addq	%rax, %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r10,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r9,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r8,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rdi,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rsi,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r15,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	movq	-256(%rbp), %rdx
	addq	%rax, %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rcx,%rax), %rdx
	addq	$64, %rax
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	cmpq	%rax, -264(%rbp)
	jne	.L3095
	movq	-280(%rbp), %r11
.L3094:
#APP
# 193 "mem.cc" 1
	# seq loop end (n_chains = $14, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, -272(%rbp)
	movq	-272(%rbp), %r14
	cmpq	%r14, -240(%rbp)
	jne	.L3096
	jmp	.L6024
.L6053:
	cmpb	$114, %dil
	je	.L2677
	cmpb	$115, %dil
	jne	.L5866
	cmpq	$0, -240(%rbp)
	jle	.L6069
	movq	32(%rsi), %rcx
	movq	%rdx, %r10
	movq	%rdx, %rbx
	movq	%r8, %r13
	salq	$6, %r10
	xorl	%r12d, %r12d
	.p2align 4,,10
	.p2align 3
.L2683:
#APP
# 180 "mem.cc" 1
	# seq loop begin (n_chains = $5, payload = $1)
# 0 "" 2
#NO_APP
	testq	%rbx, %rbx
	jle	.L2681
	movq	8(%r11), %r15
	leaq	-64(%r10), %r14
	movl	$64, %eax
	movq	16(%r11), %r8
	shrq	$6, %r14
	movq	24(%r11), %rsi
	andl	$3, %r14d
	movq	(%r11), %r9
	vmovdqa	(%r9), %ymm0
	vmovdqa	32(%r9), %ymm0
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	cmpq	$64, %r10
	je	.L2681
	testq	%r14, %r14
	je	.L2682
	cmpq	$1, %r14
	je	.L5186
	cmpq	$2, %r14
	je	.L5187
	vmovdqa	64(%r9), %ymm0
	movl	$128, %eax
	vmovdqa	96(%r9), %ymm0
	vmovdqa	64(%r15), %ymm0
	vmovdqa	96(%r15), %ymm0
	vmovdqa	64(%r8), %ymm0
	vmovdqa	96(%r8), %ymm0
	vmovdqa	64(%rsi), %ymm0
	vmovdqa	96(%rsi), %ymm0
	vmovdqa	64(%rcx), %ymm0
	vmovdqa	96(%rcx), %ymm0
.L5187:
	leaq	(%r9,%rax), %rdx
	leaq	(%r15,%rax), %rdi
	vmovdqa	(%rdx), %ymm0
	leaq	(%r8,%rax), %r14
	vmovdqa	32(%rdx), %ymm0
	vmovdqa	(%rdi), %ymm0
	leaq	(%rsi,%rax), %rdx
	vmovdqa	32(%rdi), %ymm0
	leaq	(%rcx,%rax), %rdi
	addq	$64, %rax
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	vmovdqa	(%rdi), %ymm0
	vmovdqa	32(%rdi), %ymm0
.L5186:
	leaq	(%r9,%rax), %r14
	leaq	(%r15,%rax), %rdx
	vmovdqa	(%r14), %ymm0
	leaq	(%r8,%rax), %rdi
	vmovdqa	32(%r14), %ymm0
	vmovdqa	(%rdx), %ymm0
	leaq	(%rsi,%rax), %r14
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rcx,%rax), %rdx
	addq	$64, %rax
	vmovdqa	(%rdi), %ymm0
	vmovdqa	32(%rdi), %ymm0
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	cmpq	%rax, %r10
	je	.L2681
.L2682:
	leaq	(%r9,%rax), %rdi
	leaq	(%r15,%rax), %r14
	vmovdqa	(%rdi), %ymm0
	leaq	(%r8,%rax), %rdx
	vmovdqa	32(%rdi), %ymm0
	vmovdqa	(%r14), %ymm0
	leaq	(%rsi,%rax), %rdi
	vmovdqa	32(%r14), %ymm0
	leaq	(%rcx,%rax), %r14
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	64(%rax), %rdx
	vmovdqa	(%rdi), %ymm0
	vmovdqa	32(%rdi), %ymm0
	leaq	(%r9,%rdx), %rdi
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	leaq	(%r15,%rdx), %r14
	vmovdqa	(%rdi), %ymm0
	vmovdqa	32(%rdi), %ymm0
	leaq	(%r8,%rdx), %rdi
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	leaq	(%rsi,%rdx), %r14
	addq	%rcx, %rdx
	vmovdqa	(%rdi), %ymm0
	vmovdqa	32(%rdi), %ymm0
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	128(%rax), %rdx
	leaq	(%r9,%rdx), %rdi
	leaq	(%r15,%rdx), %r14
	vmovdqa	(%rdi), %ymm0
	vmovdqa	32(%rdi), %ymm0
	leaq	(%r8,%rdx), %rdi
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	leaq	(%rsi,%rdx), %r14
	addq	%rcx, %rdx
	vmovdqa	(%rdi), %ymm0
	vmovdqa	32(%rdi), %ymm0
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	192(%rax), %rdx
	addq	$256, %rax
	leaq	(%r9,%rdx), %rdi
	leaq	(%r15,%rdx), %r14
	vmovdqa	(%rdi), %ymm0
	vmovdqa	32(%rdi), %ymm0
	leaq	(%r8,%rdx), %rdi
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	leaq	(%rsi,%rdx), %r14
	addq	%rcx, %rdx
	vmovdqa	(%rdi), %ymm0
	vmovdqa	32(%rdi), %ymm0
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	cmpq	%rax, %r10
	jne	.L2682
.L2681:
#APP
# 193 "mem.cc" 1
	# seq loop end (n_chains = $5, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, %r12
	cmpq	%r12, %r13
	jne	.L2683
	jmp	.L6024
.L6051:
	cmpb	$114, %sil
	je	.L2706
	cmpb	$115, %sil
	jne	.L5868
	cmpq	$0, -240(%rbp)
	jle	.L6070
	movq	40(%r11), %rcx
	movq	%rdx, %r13
	movq	%rdx, %r12
	movq	%r8, %r14
	salq	$6, %r13
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L2712:
#APP
# 180 "mem.cc" 1
	# seq loop begin (n_chains = $6, payload = $1)
# 0 "" 2
#NO_APP
	testq	%r12, %r12
	jle	.L2710
	movq	8(%r11), %r9
	leaq	-64(%r13), %r15
	movl	$64, %eax
	movq	16(%r11), %r8
	shrq	$6, %r15
	movq	24(%r11), %rdi
	andl	$1, %r15d
	movq	32(%r11), %rsi
	movq	(%r11), %r10
	vmovdqa	(%r10), %ymm0
	vmovdqa	32(%r10), %ymm0
	vmovdqa	(%r9), %ymm0
	vmovdqa	32(%r9), %ymm0
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	vmovdqa	(%rdi), %ymm0
	vmovdqa	32(%rdi), %ymm0
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	cmpq	$64, %r13
	je	.L2710
	testq	%r15, %r15
	je	.L2711
	vmovdqa	64(%r10), %ymm0
	movl	$128, %eax
	vmovdqa	96(%r10), %ymm0
	vmovdqa	64(%r9), %ymm0
	vmovdqa	96(%r9), %ymm0
	vmovdqa	64(%r8), %ymm0
	vmovdqa	96(%r8), %ymm0
	vmovdqa	64(%rdi), %ymm0
	vmovdqa	96(%rdi), %ymm0
	vmovdqa	64(%rsi), %ymm0
	vmovdqa	96(%rsi), %ymm0
	vmovdqa	64(%rcx), %ymm0
	vmovdqa	96(%rcx), %ymm0
	cmpq	$128, %r13
	je	.L2710
	.p2align 4,,10
	.p2align 3
.L2711:
	leaq	(%r10,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	leaq	(%r9,%rax), %r15
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r8,%rax), %rdx
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rdi,%rax), %r15
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rsi,%rax), %rdx
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rcx,%rax), %r15
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	64(%rax), %rdx
	subq	$-128, %rax
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r10,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r9,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%r8,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rdi,%rdx), %r15
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	leaq	(%rsi,%rdx), %r15
	addq	%rcx, %rdx
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	cmpq	%rax, %r13
	jne	.L2711
.L2710:
#APP
# 193 "mem.cc" 1
	# seq loop end (n_chains = $6, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, %rbx
	cmpq	%rbx, %r14
	jne	.L2712
	jmp	.L6024
.L6032:
	cmpb	$114, %cl
	je	.L3395
	cmpb	$115, %cl
	jne	.L5922
	cmpq	$0, -240(%rbp)
	jle	.L3397
	leaq	160(%rsi), %rsi
	xorl	%r8d, %r8d
	.p2align 4,,10
	.p2align 3
.L3401:
#APP
# 180 "mem.cc" 1
	# seq loop begin (n_chains = $20, payload = $1)
# 0 "" 2
#NO_APP
	cmpq	$0, -232(%rbp)
	jle	.L3398
	xorl	%edi, %edi
	.p2align 4,,10
	.p2align 3
.L3400:
	leaq	8(%r11), %rbx
	movq	%rdi, %rdx
	movq	%rsi, %rcx
	salq	$6, %rdx
	subq	%r11, %rcx
	movq	%rdx, %r12
	addq	(%r11), %r12
	subq	$8, %rcx
	shrq	$3, %rcx
	andl	$7, %ecx
	vmovdqa	(%r12), %ymm0
	vmovdqa	32(%r12), %ymm0
	cmpq	%rsi, %rbx
	je	.L5923
	testq	%rcx, %rcx
	je	.L3399
	cmpq	$1, %rcx
	je	.L5283
	cmpq	$2, %rcx
	je	.L5284
	cmpq	$3, %rcx
	je	.L5285
	cmpq	$4, %rcx
	je	.L5286
	cmpq	$5, %rcx
	je	.L5287
	cmpq	$6, %rcx
	je	.L5288
	leaq	16(%r11), %rbx
	movq	%rdx, %r14
	addq	8(%r11), %r14
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
.L5288:
	movq	%rdx, %r9
	addq	(%rbx), %r9
	addq	$8, %rbx
	vmovdqa	(%r9), %ymm0
	vmovdqa	32(%r9), %ymm0
.L5287:
	movq	%rdx, %r10
	addq	(%rbx), %r10
	addq	$8, %rbx
	vmovdqa	(%r10), %ymm0
	vmovdqa	32(%r10), %ymm0
.L5286:
	movq	%rdx, %r15
	addq	(%rbx), %r15
	addq	$8, %rbx
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
.L5285:
	movq	%rdx, %r13
	addq	(%rbx), %r13
	addq	$8, %rbx
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
.L5284:
	movq	%rdx, %rax
	addq	(%rbx), %rax
	addq	$8, %rbx
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
.L5283:
	movq	%rdx, %rcx
	addq	(%rbx), %rcx
	addq	$8, %rbx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	cmpq	%rsi, %rbx
	je	.L5923
.L3399:
	movq	%rdx, %r12
	movq	%rdx, %r14
	addq	(%rbx), %r12
	movq	%rdx, %r9
	addq	8(%rbx), %r14
	movq	%rdx, %r10
	movq	%rdx, %r15
	addq	16(%rbx), %r9
	movq	%rdx, %r13
	movq	%rdx, %rax
	addq	24(%rbx), %r10
	movq	%rdx, %rcx
	addq	$64, %rbx
	addq	-32(%rbx), %r15
	addq	-24(%rbx), %r13
	addq	-16(%rbx), %rax
	addq	-8(%rbx), %rcx
	vmovdqa	(%r12), %ymm0
	vmovdqa	32(%r12), %ymm0
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	vmovdqa	(%r9), %ymm0
	vmovdqa	32(%r9), %ymm0
	vmovdqa	(%r10), %ymm0
	vmovdqa	32(%r10), %ymm0
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	cmpq	%rsi, %rbx
	jne	.L3399
.L5923:
	addq	$1, %rdi
	cmpq	%rdi, -232(%rbp)
	jne	.L3400
.L3398:
#APP
# 193 "mem.cc" 1
	# seq loop end (n_chains = $20, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, %r8
	cmpq	%r8, -240(%rbp)
	jne	.L3401
	vzeroupper
	jmp	.L3397
.L6060:
	cmpb	$114, %r15b
	je	.L2835
	cmpb	$115, %r15b
	jne	.L5880
	cmpq	$0, -240(%rbp)
	jle	.L6071
	movq	64(%rsi), %rsi
	movq	%rdx, %r14
	movq	$0, -248(%rbp)
	salq	$6, %r14
	.p2align 4,,10
	.p2align 3
.L2841:
#APP
# 180 "mem.cc" 1
	# seq loop begin (n_chains = $9, payload = $1)
# 0 "" 2
#NO_APP
	cmpq	$0, -232(%rbp)
	jle	.L2839
	movq	8(%r11), %r12
	leaq	-64(%r14), %rcx
	movl	$64, %eax
	movq	16(%r11), %rbx
	shrq	$6, %rcx
	movq	24(%r11), %r15
	andl	$1, %ecx
	movq	32(%r11), %r10
	movq	40(%r11), %r9
	movq	48(%r11), %r8
	movq	56(%r11), %rdi
	movq	(%r11), %r13
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
	vmovdqa	(%r12), %ymm0
	vmovdqa	32(%r12), %ymm0
	vmovdqa	(%rbx), %ymm0
	vmovdqa	32(%rbx), %ymm0
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%r10), %ymm0
	vmovdqa	32(%r10), %ymm0
	vmovdqa	(%r9), %ymm0
	vmovdqa	32(%r9), %ymm0
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	vmovdqa	(%rdi), %ymm0
	vmovdqa	32(%rdi), %ymm0
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	cmpq	$64, %r14
	je	.L2839
	testq	%rcx, %rcx
	je	.L2840
	vmovdqa	64(%r13), %ymm0
	movl	$128, %eax
	vmovdqa	96(%r13), %ymm0
	vmovdqa	64(%r12), %ymm0
	vmovdqa	96(%r12), %ymm0
	vmovdqa	64(%rbx), %ymm0
	vmovdqa	96(%rbx), %ymm0
	vmovdqa	64(%r15), %ymm0
	vmovdqa	96(%r15), %ymm0
	vmovdqa	64(%r10), %ymm0
	vmovdqa	96(%r10), %ymm0
	vmovdqa	64(%r9), %ymm0
	vmovdqa	96(%r9), %ymm0
	vmovdqa	64(%r8), %ymm0
	vmovdqa	96(%r8), %ymm0
	vmovdqa	64(%rdi), %ymm0
	vmovdqa	96(%rdi), %ymm0
	vmovdqa	64(%rsi), %ymm0
	vmovdqa	96(%rsi), %ymm0
	cmpq	$128, %r14
	je	.L2839
	.p2align 4,,10
	.p2align 3
.L2840:
	leaq	0(%r13,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	leaq	(%r12,%rax), %rcx
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rbx,%rax), %rdx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r15,%rax), %rcx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r10,%rax), %rdx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r9,%rax), %rcx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r8,%rax), %rdx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%rdi,%rax), %rcx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rsi,%rax), %rdx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	64(%rax), %rdx
	subq	$-128, %rax
	leaq	0(%r13,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r12,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%rbx,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r15,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r10,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r9,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r8,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%rdi,%rdx), %rcx
	addq	%rsi, %rdx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	cmpq	%rax, %r14
	jne	.L2840
.L2839:
#APP
# 193 "mem.cc" 1
	# seq loop end (n_chains = $9, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, -248(%rbp)
	movq	-248(%rbp), %r12
	cmpq	%r12, -240(%rbp)
	jne	.L2841
	jmp	.L6023
.L6041:
	cmpb	$114, %dil
	je	.L2882
	cmpb	$115, %dil
	jne	.L5884
	cmpq	$0, -240(%rbp)
	jle	.L6072
	movq	72(%rsi), %r14
	movq	%rdx, %r15
	movq	$0, -256(%rbp)
	salq	$6, %r15
	movq	%r15, -248(%rbp)
	.p2align 4,,10
	.p2align 3
.L2888:
#APP
# 180 "mem.cc" 1
	# seq loop begin (n_chains = $10, payload = $1)
# 0 "" 2
#NO_APP
	cmpq	$0, -232(%rbp)
	jle	.L2886
	movq	-248(%rbp), %rcx
	movl	$64, %eax
	movq	8(%r11), %rbx
	movq	16(%r11), %r15
	movq	24(%r11), %r10
	movq	32(%r11), %r9
	movq	%rcx, %rdx
	movq	40(%r11), %r8
	subq	$64, %rdx
	movq	48(%r11), %rdi
	shrq	$6, %rdx
	movq	56(%r11), %rsi
	andl	$1, %edx
	movq	64(%r11), %r13
	movq	(%r11), %r12
	vmovdqa	(%r12), %ymm0
	vmovdqa	32(%r12), %ymm0
	vmovdqa	(%rbx), %ymm0
	vmovdqa	32(%rbx), %ymm0
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%r10), %ymm0
	vmovdqa	32(%r10), %ymm0
	vmovdqa	(%r9), %ymm0
	vmovdqa	32(%r9), %ymm0
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	vmovdqa	(%rdi), %ymm0
	vmovdqa	32(%rdi), %ymm0
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	cmpq	$64, %rcx
	je	.L2886
	testq	%rdx, %rdx
	je	.L2887
	cmpq	$128, -248(%rbp)
	movl	$128, %eax
	vmovdqa	64(%r12), %ymm0
	vmovdqa	96(%r12), %ymm0
	vmovdqa	64(%rbx), %ymm0
	vmovdqa	96(%rbx), %ymm0
	vmovdqa	64(%r15), %ymm0
	vmovdqa	96(%r15), %ymm0
	vmovdqa	64(%r10), %ymm0
	vmovdqa	96(%r10), %ymm0
	vmovdqa	64(%r9), %ymm0
	vmovdqa	96(%r9), %ymm0
	vmovdqa	64(%r8), %ymm0
	vmovdqa	96(%r8), %ymm0
	vmovdqa	64(%rdi), %ymm0
	vmovdqa	96(%rdi), %ymm0
	vmovdqa	64(%rsi), %ymm0
	vmovdqa	96(%rsi), %ymm0
	vmovdqa	64(%r13), %ymm0
	vmovdqa	96(%r13), %ymm0
	vmovdqa	64(%r14), %ymm0
	vmovdqa	96(%r14), %ymm0
	je	.L2886
	.p2align 4,,10
	.p2align 3
.L2887:
	leaq	(%r12,%rax), %rcx
	leaq	(%rbx,%rax), %rdx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r15,%rax), %rcx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r10,%rax), %rdx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r9,%rax), %rcx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r8,%rax), %rdx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%rdi,%rax), %rcx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rsi,%rax), %rdx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	0(%r13,%rax), %rcx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r14,%rax), %rdx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	64(%rax), %rdx
	subq	$-128, %rax
	leaq	(%r12,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%rbx,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r15,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r10,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r9,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r8,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%rdi,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%rsi,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	0(%r13,%rdx), %rcx
	addq	%r14, %rdx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	cmpq	%rax, -248(%rbp)
	jne	.L2887
.L2886:
#APP
# 193 "mem.cc" 1
	# seq loop end (n_chains = $10, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, -256(%rbp)
	movq	-256(%rbp), %rbx
	cmpq	%rbx, -240(%rbp)
	jne	.L2888
	vzeroupper
	jmp	.L6020
.L6040:
	cmpb	$114, %dil
	je	.L2931
	cmpb	$115, %dil
	jne	.L5887
	movq	80(%rsi), %r15
	cmpq	$0, -240(%rbp)
	movq	%r15, -264(%rbp)
	jle	.L6073
	movq	-232(%rbp), %r14
	movq	$0, -256(%rbp)
	salq	$6, %r14
	movq	%r14, -248(%rbp)
	.p2align 4,,10
	.p2align 3
.L2937:
#APP
# 180 "mem.cc" 1
	# seq loop begin (n_chains = $11, payload = $1)
# 0 "" 2
#NO_APP
	cmpq	$0, -232(%rbp)
	jle	.L2935
	movq	-248(%rbp), %rcx
	movq	8(%r11), %rbx
	movq	16(%r11), %r15
	movq	24(%r11), %r10
	movq	%rcx, %rax
	movq	32(%r11), %r9
	subq	$64, %rax
	movq	40(%r11), %r8
	shrq	$6, %rax
	movq	48(%r11), %rdi
	andl	$1, %eax
	movq	56(%r11), %rsi
	movq	64(%r11), %r13
	movq	%rax, %rdx
	movq	72(%r11), %r14
	movq	(%r11), %r12
	movq	-264(%rbp), %rax
	vmovdqa	(%r12), %ymm0
	vmovdqa	32(%r12), %ymm0
	vmovdqa	(%rbx), %ymm0
	vmovdqa	32(%rbx), %ymm0
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%r10), %ymm0
	vmovdqa	32(%r10), %ymm0
	vmovdqa	(%r9), %ymm0
	vmovdqa	32(%r9), %ymm0
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	vmovdqa	(%rdi), %ymm0
	vmovdqa	32(%rdi), %ymm0
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	movl	$64, %eax
	cmpq	$64, %rcx
	je	.L2935
	testq	%rdx, %rdx
	je	.L5963
	movq	-264(%rbp), %rcx
	movl	$128, %eax
	cmpq	$128, -248(%rbp)
	vmovdqa	64(%r12), %ymm0
	vmovdqa	96(%r12), %ymm0
	vmovdqa	64(%rbx), %ymm0
	vmovdqa	96(%rbx), %ymm0
	vmovdqa	64(%r15), %ymm0
	vmovdqa	96(%r15), %ymm0
	vmovdqa	64(%r10), %ymm0
	vmovdqa	96(%r10), %ymm0
	vmovdqa	64(%r9), %ymm0
	vmovdqa	96(%r9), %ymm0
	vmovdqa	64(%r8), %ymm0
	vmovdqa	96(%r8), %ymm0
	vmovdqa	64(%rdi), %ymm0
	vmovdqa	96(%rdi), %ymm0
	vmovdqa	64(%rsi), %ymm0
	vmovdqa	96(%rsi), %ymm0
	vmovdqa	64(%r13), %ymm0
	vmovdqa	96(%r13), %ymm0
	vmovdqa	64(%r14), %ymm0
	vmovdqa	96(%r14), %ymm0
	vmovdqa	64(%rcx), %ymm0
	vmovdqa	96(%rcx), %ymm0
	je	.L2935
.L5963:
	movq	%r11, -272(%rbp)
	movq	-264(%rbp), %r11
.L2936:
	leaq	(%r12,%rax), %rcx
	leaq	(%rbx,%rax), %rdx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r15,%rax), %rcx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r10,%rax), %rdx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r9,%rax), %rcx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r8,%rax), %rdx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%rdi,%rax), %rcx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rsi,%rax), %rdx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	0(%r13,%rax), %rcx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r14,%rax), %rdx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r11,%rax), %rcx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	64(%rax), %rdx
	subq	$-128, %rax
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r12,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%rbx,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r15,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r10,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r9,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r8,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%rdi,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%rsi,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	0(%r13,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r14,%rdx), %rcx
	addq	%r11, %rdx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	cmpq	%rax, -248(%rbp)
	jne	.L2936
	movq	-272(%rbp), %r11
.L2935:
#APP
# 193 "mem.cc" 1
	# seq loop end (n_chains = $11, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, -256(%rbp)
	movq	-256(%rbp), %rbx
	cmpq	%rbx, -240(%rbp)
	jne	.L2937
	vzeroupper
	jmp	.L6013
.L6039:
	cmpb	$114, %r13b
	je	.L2982
	cmpb	$115, %r13b
	jne	.L5890
	movq	88(%rsi), %r15
	cmpq	$0, -240(%rbp)
	movq	%r15, -248(%rbp)
	jle	.L6027
	movq	-232(%rbp), %r13
	movq	$0, -264(%rbp)
	salq	$6, %r13
	movq	%r13, -256(%rbp)
	.p2align 4,,10
	.p2align 3
.L2988:
#APP
# 180 "mem.cc" 1
	# seq loop begin (n_chains = $12, payload = $1)
# 0 "" 2
#NO_APP
	cmpq	$0, -232(%rbp)
	jle	.L2986
	movq	16(%r11), %r10
	movq	-256(%rbp), %rdx
	movq	8(%r11), %rbx
	movq	32(%r11), %r9
	movq	%r10, %rcx
	movq	40(%r11), %r8
	movq	%r10, -272(%rbp)
	movq	48(%r11), %rdi
	subq	$64, %rdx
	movq	24(%r11), %r10
	shrq	$6, %rdx
	movq	56(%r11), %rsi
	andl	$1, %edx
	movq	64(%r11), %r13
	movq	(%r11), %r12
	movq	72(%r11), %r14
	movq	80(%r11), %r15
	vmovdqa	(%r12), %ymm0
	vmovdqa	32(%r12), %ymm0
	vmovdqa	(%rbx), %ymm0
	vmovdqa	32(%rbx), %ymm0
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	vmovdqa	(%r10), %ymm0
	vmovdqa	32(%r10), %ymm0
	vmovdqa	(%r9), %ymm0
	vmovdqa	32(%r9), %ymm0
	vmovdqa	(%r8), %ymm0
	vmovdqa	32(%r8), %ymm0
	vmovdqa	(%rdi), %ymm0
	vmovdqa	32(%rdi), %ymm0
	vmovdqa	(%rsi), %ymm0
	vmovdqa	32(%rsi), %ymm0
	vmovdqa	0(%r13), %ymm0
	vmovdqa	32(%r13), %ymm0
	vmovdqa	(%r14), %ymm0
	vmovdqa	32(%r14), %ymm0
	movq	-248(%rbp), %rax
	cmpq	$64, -256(%rbp)
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm0
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm0
	movl	$64, %eax
	je	.L2986
	testq	%rdx, %rdx
	je	.L5969
	vmovdqa	64(%r12), %ymm0
	movl	$128, %eax
	vmovdqa	96(%r12), %ymm0
	cmpq	$128, -256(%rbp)
	vmovdqa	64(%rbx), %ymm0
	vmovdqa	96(%rbx), %ymm0
	vmovdqa	64(%rcx), %ymm0
	vmovdqa	96(%rcx), %ymm0
	movq	-248(%rbp), %rcx
	vmovdqa	64(%r10), %ymm0
	vmovdqa	96(%r10), %ymm0
	vmovdqa	64(%r9), %ymm0
	vmovdqa	96(%r9), %ymm0
	vmovdqa	64(%r8), %ymm0
	vmovdqa	96(%r8), %ymm0
	vmovdqa	64(%rdi), %ymm0
	vmovdqa	96(%rdi), %ymm0
	vmovdqa	64(%rsi), %ymm0
	vmovdqa	96(%rsi), %ymm0
	vmovdqa	64(%r13), %ymm0
	vmovdqa	96(%r13), %ymm0
	vmovdqa	64(%r14), %ymm0
	vmovdqa	96(%r14), %ymm0
	vmovdqa	64(%r15), %ymm0
	vmovdqa	96(%r15), %ymm0
	vmovdqa	64(%rcx), %ymm0
	vmovdqa	96(%rcx), %ymm0
	je	.L2986
.L5969:
	movq	%r11, -280(%rbp)
	movq	-272(%rbp), %r11
.L2987:
	leaq	(%r12,%rax), %rdx
	leaq	(%rbx,%rax), %rcx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r11,%rax), %rdx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r10,%rax), %rcx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r9,%rax), %rdx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r8,%rax), %rcx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rdi,%rax), %rdx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%rsi,%rax), %rcx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	0(%r13,%rax), %rdx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r14,%rax), %rcx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r15,%rax), %rdx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	movq	-248(%rbp), %rcx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rcx,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	64(%rax), %rdx
	subq	$-128, %rax
	leaq	(%r12,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%rbx,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r11,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r10,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r9,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r8,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%rdi,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%rsi,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	0(%r13,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r14,%rdx), %rcx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	leaq	(%r15,%rdx), %rcx
	addq	-248(%rbp), %rdx
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm0
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	cmpq	%rax, -256(%rbp)
	jne	.L2987
	movq	-280(%rbp), %r11
.L2986:
#APP
# 193 "mem.cc" 1
	# seq loop end (n_chains = $12, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, -264(%rbp)
	movq	-264(%rbp), %rbx
	cmpq	%rbx, -240(%rbp)
	jne	.L2988
	jmp	.L6026
.L6058:
	cmpb	$114, %r13b
	je	.L3035
	cmpb	$115, %r13b
	jne	.L5893
	cmpq	$0, -240(%rbp)
	jle	.L6074
	movq	96(%rsi), %rcx
	movq	%rdx, %r15
	movq	$0, -264(%rbp)
	salq	$6, %r15
	movq	%r15, -256(%rbp)
	.p2align 4,,10
	.p2align 3
.L3041:
#APP
# 180 "mem.cc" 1
	# seq loop begin (n_chains = $13, payload = $1)
# 0 "" 2
#NO_APP
	cmpq	$0, -232(%rbp)
	jle	.L3039
	movq	40(%r11), %r9
	movq	%r11, -272(%rbp)
	movq	(%r11), %rax
	movq	8(%r11), %r14
	movq	16(%r11), %r13
	movq	%r9, %rdx
	movq	24(%r11), %r12
	movq	32(%r11), %rbx
	movq	%rax, -248(%rbp)
	xorl	%eax, %eax
	movq	48(%r11), %r10
	movq	56(%r11), %r9
	movq	64(%r11), %r8
	movq	72(%r11), %rdi
	movq	80(%r11), %rsi
	movq	88(%r11), %r15
	movq	%rdx, %r11
	.p2align 4,,10
	.p2align 3
.L3040:
	movq	-248(%rbp), %rdx
	addq	%rax, %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r14,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	0(%r13,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r12,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rbx,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r11,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r10,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r9,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r8,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rdi,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rsi,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r15,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rcx,%rax), %rdx
	addq	$64, %rax
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	cmpq	%rax, -256(%rbp)
	jne	.L3040
	movq	-272(%rbp), %r11
.L3039:
#APP
# 193 "mem.cc" 1
	# seq loop end (n_chains = $13, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, -264(%rbp)
	movq	-264(%rbp), %r14
	cmpq	%r14, -240(%rbp)
	jne	.L3041
	jmp	.L6024
.L6036:
	cmpb	$114, %r12b
	je	.L3206
	cmpb	$115, %r12b
	jne	.L5902
	cmpq	$0, -240(%rbp)
	jle	.L6075
	movq	120(%rsi), %rcx
	movq	%rdx, %r15
	movq	$0, -288(%rbp)
	salq	$6, %r15
	movq	%r15, -280(%rbp)
	.p2align 4,,10
	.p2align 3
.L3212:
#APP
# 180 "mem.cc" 1
	# seq loop begin (n_chains = $16, payload = $1)
# 0 "" 2
#NO_APP
	cmpq	$0, -232(%rbp)
	jle	.L3210
	movq	104(%r11), %rax
	movq	%r11, -296(%rbp)
	movq	40(%r11), %r10
	movq	96(%r11), %rdx
	movq	8(%r11), %r14
	movq	%rax, -256(%rbp)
	movq	112(%r11), %rax
	movq	16(%r11), %r13
	movq	%r10, -264(%rbp)
	movq	24(%r11), %r12
	movq	32(%r11), %rbx
	movq	%rax, -248(%rbp)
	movq	(%r11), %rax
	movq	48(%r11), %r10
	movq	56(%r11), %r9
	movq	64(%r11), %r8
	movq	72(%r11), %rdi
	movq	%rax, -272(%rbp)
	xorl	%eax, %eax
	movq	80(%r11), %rsi
	movq	88(%r11), %r15
	movq	%rdx, %r11
	.p2align 4,,10
	.p2align 3
.L3211:
	movq	-272(%rbp), %rdx
	addq	%rax, %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r14,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	0(%r13,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r12,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rbx,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	movq	-264(%rbp), %rdx
	addq	%rax, %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r10,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r9,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r8,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rdi,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rsi,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r15,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r11,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	movq	-256(%rbp), %rdx
	addq	%rax, %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	movq	-248(%rbp), %rdx
	addq	%rax, %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rcx,%rax), %rdx
	addq	$64, %rax
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	cmpq	%rax, -280(%rbp)
	jne	.L3211
	movq	-296(%rbp), %r11
.L3210:
#APP
# 193 "mem.cc" 1
	# seq loop end (n_chains = $16, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, -288(%rbp)
	movq	-288(%rbp), %r14
	cmpq	%r14, -240(%rbp)
	jne	.L3212
	jmp	.L6024
.L6059:
	cmpb	$114, %r13b
	je	.L3147
	cmpb	$115, %r13b
	jne	.L5899
	cmpq	$0, -240(%rbp)
	jle	.L6076
	movq	112(%rsi), %rcx
	movq	%rdx, %r15
	movq	$0, -280(%rbp)
	salq	$6, %r15
	movq	%r15, -272(%rbp)
	.p2align 4,,10
	.p2align 3
.L3153:
#APP
# 180 "mem.cc" 1
	# seq loop begin (n_chains = $15, payload = $1)
# 0 "" 2
#NO_APP
	cmpq	$0, -232(%rbp)
	jle	.L3151
	movq	40(%r11), %rax
	movq	%r11, -288(%rbp)
	movq	96(%r11), %rdx
	movq	8(%r11), %r14
	movq	16(%r11), %r13
	movq	%rax, -256(%rbp)
	movq	104(%r11), %rax
	movq	24(%r11), %r12
	movq	32(%r11), %rbx
	movq	48(%r11), %r10
	movq	%rax, -248(%rbp)
	movq	(%r11), %rax
	movq	56(%r11), %r9
	movq	64(%r11), %r8
	movq	72(%r11), %rdi
	movq	80(%r11), %rsi
	movq	%rax, -264(%rbp)
	xorl	%eax, %eax
	movq	88(%r11), %r15
	movq	%rdx, %r11
	.p2align 4,,10
	.p2align 3
.L3152:
	movq	-264(%rbp), %rdx
	addq	%rax, %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r14,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	0(%r13,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r12,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rbx,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	movq	-256(%rbp), %rdx
	addq	%rax, %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r10,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r9,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r8,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rdi,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rsi,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r15,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%r11,%rax), %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	movq	-248(%rbp), %rdx
	addq	%rax, %rdx
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	leaq	(%rcx,%rax), %rdx
	addq	$64, %rax
	vmovdqa	(%rdx), %ymm0
	vmovdqa	32(%rdx), %ymm0
	cmpq	%rax, -272(%rbp)
	jne	.L3152
	movq	-288(%rbp), %r11
.L3151:
#APP
# 193 "mem.cc" 1
	# seq loop end (n_chains = $15, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, -280(%rbp)
	movq	-280(%rbp), %r14
	cmpq	%r14, -240(%rbp)
	jne	.L3153
	jmp	.L6024
.L5859:
	movq	(%rsi), %rax
	testq	%r8, %r8
	jle	.L2579
	movq	%rdx, %rsi
	xorl	%ecx, %ecx
	movq	%r8, %r15
	.p2align 4,,10
	.p2align 3
.L2587:
#APP
# 267 "mem.cc" 1
	# traverse loop begin (n_chains = $1, payload = $0)
# 0 "" 2
#NO_APP
	testq	%rsi, %rsi
	jle	.L2585
	leaq	-1(%rsi), %r13
	movq	(%rax), %rax
	movl	$1, %r14d
	andl	$7, %r13d
	cmpq	$1, %rsi
	je	.L2585
	testq	%r13, %r13
	je	.L2586
	cmpq	$1, %r13
	je	.L5128
	cmpq	$2, %r13
	je	.L5129
	cmpq	$3, %r13
	je	.L5130
	cmpq	$4, %r13
	je	.L5131
	cmpq	$5, %r13
	je	.L5132
	cmpq	$6, %r13
	je	.L5133
	movq	(%rax), %rax
	movl	$2, %r14d
.L5133:
	movq	(%rax), %rax
	addq	$1, %r14
.L5132:
	movq	(%rax), %rax
	addq	$1, %r14
.L5131:
	movq	(%rax), %rax
	addq	$1, %r14
.L5130:
	movq	(%rax), %rax
	addq	$1, %r14
.L5129:
	movq	(%rax), %rax
	addq	$1, %r14
.L5128:
	addq	$1, %r14
	movq	(%rax), %rax
	cmpq	%r14, %rsi
	je	.L2585
.L2586:
	movq	(%rax), %rdi
	addq	$8, %r14
	movq	(%rdi), %rbx
	movq	(%rbx), %rdx
	movq	(%rdx), %r8
	movq	(%r8), %r11
	movq	(%r11), %r9
	movq	(%r9), %r10
	movq	(%r10), %rax
	cmpq	%r14, %rsi
	jne	.L2586
.L2585:
#APP
# 281 "mem.cc" 1
	# traverse loop end (n_chains = $1, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, %rcx
	cmpq	%rcx, %r15
	jne	.L2587
.L2579:
	movq	%rax, %r15
	jmp	.L2569
.L3008:
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L6022
	movq	-232(%rbp), %rsi
	movq	%r11, %rdi
	movq	%r8, %rdx
	addq	$520, %rsp
	popq	%rbx
	popq	%r12
	popq	%r11
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r11), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_Z13access_randomILi12ELi0EEP6recordPS1_ll
.L5878:
	.cfi_restore_state
	movq	(%rsi), %r12
	movq	8(%rsi), %rdi
	movq	24(%r11), %rcx
	movq	16(%rsi), %rsi
	movq	32(%r11), %r10
	movq	%r12, -224(%rbp)
	movq	40(%r11), %r9
	movq	%rdi, -216(%rbp)
	movq	48(%r11), %r8
	movq	%rcx, -200(%rbp)
	movq	56(%r11), %r13
	movq	%rsi, -208(%rbp)
	cmpq	$0, -240(%rbp)
	movq	%r10, -192(%rbp)
	movq	%r9, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r13, -168(%rbp)
	jle	.L6077
	xorl	%ebx, %ebx
	movq	%r12, %rax
	movq	%r12, %r15
	movq	%r12, -344(%rbp)
	movq	%rbx, %r12
	movq	-232(%rbp), %rbx
	movq	%r10, %r11
	xorl	%r14d, %r14d
	movq	%r10, -312(%rbp)
	xorl	%edx, %edx
	movq	%r9, %r10
	movq	%r9, -320(%rbp)
	movq	%r8, %r9
	movq	%r8, -328(%rbp)
	movq	%r13, %r8
	movq	%r13, -336(%rbp)
	xorl	%r13d, %r13d
	movq	%rdi, -288(%rbp)
	movq	%rsi, -296(%rbp)
	movq	%rcx, -304(%rbp)
	movb	$0, -248(%rbp)
	movb	$0, -256(%rbp)
	movb	$0, -264(%rbp)
	movb	$0, -272(%rbp)
	movb	$0, -280(%rbp)
	.p2align 4,,10
	.p2align 3
.L2824:
#APP
# 267 "mem.cc" 1
	# traverse loop begin (n_chains = $8, payload = $0)
# 0 "" 2
#NO_APP
	testq	%rbx, %rbx
	jle	.L2822
	leaq	-1(%rbx), %r15
	movq	(%rax), %rax
	movl	$1, %edx
	movq	(%rdi), %rdi
	andl	$3, %r15d
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	cmpq	$1, %rbx
	je	.L5879
	testq	%r15, %r15
	je	.L5947
	cmpq	$1, %r15
	je	.L5214
	cmpq	$2, %r15
	je	.L5215
	movq	(%rax), %rax
	movl	$2, %edx
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
.L5215:
	movq	(%rax), %rax
	addq	$1, %rdx
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
.L5214:
	addq	$1, %rdx
	movq	(%rax), %rax
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	cmpq	%rdx, %rbx
	je	.L5879
.L5947:
	movq	%r12, %r15
	movq	%rbx, %r14
	movq	%rdx, %r13
.L2823:
	movq	(%rax), %r12
	addq	$4, %r13
	movq	(%rdi), %rbx
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %rdx
	movq	(%r8), %rax
	movq	(%r12), %rdi
	movq	(%rbx), %r12
	movq	(%rsi), %rbx
	movq	(%rcx), %rcx
	movq	(%r11), %r9
	movq	(%r10), %r8
	movq	(%rdx), %r11
	movq	(%rax), %rax
	movq	(%rdi), %r10
	movq	(%r12), %rdi
	movq	(%rbx), %rsi
	movq	(%rcx), %r12
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%r11), %rdx
	movq	(%rax), %rbx
	movq	(%r10), %rax
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%r12), %rcx
	movq	(%r9), %r11
	movq	(%r8), %r10
	movq	(%rdx), %r9
	movq	(%rbx), %r8
	cmpq	%r13, %r14
	jne	.L2823
	movq	%r15, %r12
	movq	%r14, %rbx
.L5879:
	movq	%rax, %r15
	movb	$1, -248(%rbp)
	movl	$1, %r14d
	movl	$1, %r13d
	movb	$1, -256(%rbp)
	movl	$1, %edx
	movb	$1, -264(%rbp)
	movb	$1, -272(%rbp)
	movb	$1, -280(%rbp)
.L2822:
#APP
# 281 "mem.cc" 1
	# traverse loop end (n_chains = $8, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, %r12
	cmpq	%r12, -240(%rbp)
	jne	.L2824
	movq	-344(%rbp), %r12
	testb	%dl, %dl
	jne	.L6078
.L2825:
	testb	%r13b, %r13b
	je	.L2826
	movq	%rdi, -216(%rbp)
	movq	%rdi, -288(%rbp)
.L2826:
	testb	%r14b, %r14b
	je	.L2827
	movq	%rsi, -208(%rbp)
	movq	%rsi, -296(%rbp)
.L2827:
	cmpb	$0, -280(%rbp)
	je	.L2828
	movq	%rcx, -200(%rbp)
	movq	%rcx, -304(%rbp)
.L2828:
	cmpb	$0, -272(%rbp)
	je	.L2829
	movq	%r11, -192(%rbp)
	movq	%r11, -312(%rbp)
.L2829:
	cmpb	$0, -264(%rbp)
	je	.L2830
	movq	%r10, -184(%rbp)
	movq	%r10, -320(%rbp)
.L2830:
	cmpb	$0, -256(%rbp)
	je	.L2831
	movq	%r9, -176(%rbp)
	movq	%r9, -328(%rbp)
.L2831:
	cmpb	$0, -248(%rbp)
	je	.L2821
	movq	%r8, -168(%rbp)
	movq	%r8, -336(%rbp)
.L2821:
	movq	-288(%rbp), %rcx
	movq	-296(%rbp), %r11
	movq	-304(%rbp), %rax
.L6017:
	movq	-312(%rbp), %rbx
	movq	-320(%rbp), %rax
	movq	-328(%rbp), %rdi
	movq	-336(%rbp), %rsi
	jmp	.L2569
.L2956:
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L6022
	movq	-232(%rbp), %rsi
	movq	%r8, %rdx
	movq	%r11, %rdi
	addq	$520, %rsp
	popq	%rbx
	popq	%r12
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r10), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_Z13access_randomILi11ELi0EEP6recordPS1_ll
.L5885:
	.cfi_restore_state
	movq	(%rsi), %r15
	movq	8(%rsi), %rcx
	movq	16(%rsi), %r12
	movq	24(%rsi), %r8
	movq	32(%rsi), %r10
	movq	%r15, -224(%rbp)
	movq	72(%r11), %rax
	movq	%rcx, -216(%rbp)
	movq	40(%rsi), %rsi
	movq	%r12, -208(%rbp)
	movq	48(%r11), %rdx
	movq	%r8, -200(%rbp)
	movq	56(%r11), %r13
	movq	%r10, -192(%rbp)
	movq	64(%r11), %r14
	movq	%rax, -248(%rbp)
	cmpq	$0, -240(%rbp)
	movq	%rsi, -184(%rbp)
	movq	%rdx, -176(%rbp)
	movq	%r13, -168(%rbp)
	movq	%r14, -160(%rbp)
	movq	%rax, -152(%rbp)
	movq	%r15, -320(%rbp)
	jle	.L6079
	movq	%r10, -352(%rbp)
	movq	%r10, %r11
	movq	%rsi, %r10
	movq	%rdx, %r9
	movq	%rsi, -360(%rbp)
	movq	%r14, %rdi
	movq	%r8, %rbx
	movq	%r15, %rax
	movq	-248(%rbp), %rsi
	movq	%r8, -344(%rbp)
	movq	%r13, %r8
	movq	%r14, -384(%rbp)
	xorl	%r14d, %r14d
	movq	%rdx, -368(%rbp)
	xorl	%edx, %edx
	movq	%r13, -376(%rbp)
	xorl	%r13d, %r13d
	movq	%rsi, -392(%rbp)
	movq	%r14, -264(%rbp)
	movq	%rsi, %r14
	movq	%rdi, %rsi
	movq	%r8, %rdi
	movq	%rcx, -328(%rbp)
	movq	%r9, %r8
	movq	%r10, %r9
	movq	%r12, -336(%rbp)
	movb	$0, -248(%rbp)
	movb	$0, -256(%rbp)
	movb	$0, -272(%rbp)
	movb	$0, -280(%rbp)
	movb	$0, -288(%rbp)
	movb	$0, -296(%rbp)
	movb	$0, -304(%rbp)
	movb	$0, -312(%rbp)
	.p2align 4,,10
	.p2align 3
.L2918:
#APP
# 267 "mem.cc" 1
	# traverse loop begin (n_chains = $10, payload = $0)
# 0 "" 2
#NO_APP
	movq	-232(%rbp), %r10
	testq	%r10, %r10
	jle	.L2916
	movq	%r10, %rdx
	movq	(%rax), %rax
	movl	$1, %r15d
	subq	$1, %rdx
	movq	(%rcx), %rcx
	andl	$3, %edx
	movq	(%r12), %r12
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%r14), %r14
	cmpq	$1, %r10
	je	.L5886
	testq	%rdx, %rdx
	je	.L5961
	cmpq	$1, %rdx
	je	.L5218
	cmpq	$2, %rdx
	je	.L5219
	movq	(%rax), %rax
	movl	$2, %r15d
	movq	(%rcx), %rcx
	movq	(%r12), %r12
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%r14), %r14
.L5219:
	movq	(%rax), %rax
	addq	$1, %r15
	movq	(%rcx), %rcx
	movq	(%r12), %r12
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%r14), %r14
.L5218:
	movq	(%rax), %rax
	addq	$1, %r15
	movq	(%rcx), %rcx
	movq	(%r12), %r12
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%r14), %r14
	cmpq	%r15, -232(%rbp)
	je	.L5886
.L5961:
	movq	%r15, -248(%rbp)
.L2917:
	movq	(%rax), %r13
	movq	(%rcx), %r15
	movq	(%r12), %r12
	movq	(%rbx), %r10
	movq	(%r11), %rdx
	movq	(%r9), %rax
	movq	(%r8), %rcx
	movq	(%rdi), %r8
	movq	(%rsi), %r9
	movq	(%r14), %r11
	movq	0(%r13), %rbx
	movq	(%r15), %r14
	movq	(%r12), %rdi
	movq	(%r10), %rsi
	movq	(%rdx), %r13
	movq	(%rax), %r15
	movq	(%rcx), %r12
	movq	(%r8), %rax
	movq	(%r9), %r8
	movq	(%r11), %r9
	movq	(%rbx), %r11
	movq	(%r14), %rcx
	movq	(%rdi), %rbx
	movq	(%rsi), %rdi
	movq	0(%r13), %rdx
	movq	(%r15), %rsi
	movq	(%r12), %r10
	movq	(%rax), %r14
	movq	(%r8), %r13
	movq	(%r9), %r15
	movq	(%r11), %rax
	movq	%r15, -256(%rbp)
	movq	(%rcx), %rcx
	movq	(%rbx), %r12
	movq	(%rdi), %rbx
	movq	(%rdx), %r11
	movq	-256(%rbp), %rdx
	movq	(%rsi), %r9
	addq	$4, -248(%rbp)
	movq	(%r10), %r8
	movq	(%r14), %rdi
	movq	-248(%rbp), %r10
	movq	0(%r13), %rsi
	movq	(%rdx), %r14
	cmpq	%r10, -232(%rbp)
	jne	.L2917
.L5886:
	movq	%rax, %r15
	movb	$1, -248(%rbp)
	movl	$1, %r13d
	movl	$1, %edx
	movb	$1, -256(%rbp)
	movb	$1, -272(%rbp)
	movb	$1, -280(%rbp)
	movb	$1, -288(%rbp)
	movb	$1, -296(%rbp)
	movb	$1, -304(%rbp)
	movb	$1, -312(%rbp)
.L2916:
#APP
# 281 "mem.cc" 1
	# traverse loop end (n_chains = $10, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, -264(%rbp)
	movq	-264(%rbp), %r10
	cmpq	%r10, -240(%rbp)
	jne	.L2918
	movq	%r9, %r10
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rsi, %rdi
	movq	%r14, %rsi
	testb	%dl, %dl
	jne	.L6080
.L2919:
	testb	%r13b, %r13b
	je	.L2920
	movq	%rcx, -216(%rbp)
	movq	%rcx, -328(%rbp)
.L2920:
	cmpb	$0, -312(%rbp)
	je	.L2921
	movq	%r12, -208(%rbp)
	movq	%r12, -336(%rbp)
.L2921:
	cmpb	$0, -304(%rbp)
	je	.L2922
	movq	%rbx, -200(%rbp)
	movq	%rbx, -344(%rbp)
.L2922:
	cmpb	$0, -296(%rbp)
	je	.L2923
	movq	%r11, -192(%rbp)
	movq	%r11, -352(%rbp)
.L2923:
	cmpb	$0, -288(%rbp)
	je	.L2924
	movq	%r10, -184(%rbp)
	movq	%r10, -360(%rbp)
.L2924:
	cmpb	$0, -280(%rbp)
	je	.L2925
	movq	%r9, -176(%rbp)
	movq	%r9, -368(%rbp)
.L2925:
	cmpb	$0, -272(%rbp)
	je	.L2926
	movq	%r8, -168(%rbp)
	movq	%r8, -376(%rbp)
.L2926:
	cmpb	$0, -256(%rbp)
	je	.L2927
	movq	%rdi, -160(%rbp)
	movq	%rdi, -384(%rbp)
.L2927:
	cmpb	$0, -248(%rbp)
	je	.L2915
	movq	%rsi, -152(%rbp)
	movq	%rsi, -392(%rbp)
.L2915:
	movq	-320(%rbp), %r12
	movq	-328(%rbp), %rax
	movq	-336(%rbp), %r11
	movq	-344(%rbp), %rcx
	movq	-352(%rbp), %rbx
	movq	-360(%rbp), %r14
	movq	-368(%rbp), %r13
	movq	-376(%rbp), %rdx
	movq	-384(%rbp), %r10
	movq	-392(%rbp), %r9
	jmp	.L2569
.L2906:
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L6022
	movq	-232(%rbp), %rsi
	movq	%r8, %rdx
	movq	%r11, %rdi
	addq	$520, %rsp
	popq	%rbx
	popq	%r12
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r10), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_Z13access_randomILi10ELi0EEP6recordPS1_ll
.L2858:
	.cfi_restore_state
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L6022
	movq	-232(%rbp), %rsi
	movq	%r8, %rdx
	movq	%r11, %rdi
	addq	$520, %rsp
	popq	%rbx
	popq	%r12
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r10), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_Z13access_randomILi9ELi0EEP6recordPS1_ll
.L5882:
	.cfi_restore_state
	movq	(%rsi), %r14
	movq	16(%r11), %rcx
	movq	8(%rsi), %rsi
	movq	24(%r11), %r10
	movq	32(%r11), %r9
	movq	%r14, -224(%rbp)
	movq	40(%r11), %r8
	movq	%rcx, -208(%rbp)
	movq	48(%r11), %rdi
	movq	%rsi, -216(%rbp)
	movq	56(%r11), %r13
	movq	%r10, -200(%rbp)
	movq	64(%r11), %r12
	movq	%r9, -192(%rbp)
	cmpq	$0, -240(%rbp)
	movq	%r8, -184(%rbp)
	movq	%rdi, -176(%rbp)
	movq	%r13, -168(%rbp)
	movq	%r12, -160(%rbp)
	jle	.L6081
	movq	-232(%rbp), %r15
	movq	%r14, %rax
	movq	%r10, %rbx
	movq	%r9, %r11
	movq	%r10, -328(%rbp)
	xorl	%edx, %edx
	movq	%r8, %r10
	movq	%r9, -336(%rbp)
	movq	%rdi, %r9
	movq	%r8, -344(%rbp)
	movq	%r13, %r8
	movq	%rdi, -352(%rbp)
	movq	%r12, %rdi
	movq	%r12, -368(%rbp)
	xorl	%r12d, %r12d
	movq	%r13, -360(%rbp)
	xorl	%r13d, %r13d
	movq	%r14, -376(%rbp)
	movq	%rdi, %r14
	movq	%r8, %rdi
	movq	%r9, %r8
	movq	%rsi, -312(%rbp)
	movq	%rax, %r9
	movq	%rcx, -320(%rbp)
	movb	$0, -256(%rbp)
	movb	$0, -264(%rbp)
	movb	$0, -272(%rbp)
	movb	$0, -280(%rbp)
	movb	$0, -288(%rbp)
	movb	$0, -296(%rbp)
	movq	%r12, -248(%rbp)
	movb	%dl, -304(%rbp)
	.p2align 4,,10
	.p2align 3
.L2870:
#APP
# 267 "mem.cc" 1
	# traverse loop begin (n_chains = $9, payload = $0)
# 0 "" 2
#NO_APP
	testq	%r15, %r15
	jle	.L2868
	leaq	-1(%r15), %r12
	movq	(%rax), %rax
	movl	$1, %r13d
	movq	(%rsi), %rsi
	andl	$3, %r12d
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%r14), %r14
	cmpq	$1, %r15
	je	.L5883
	testq	%r12, %r12
	je	.L5955
	cmpq	$1, %r12
	je	.L5216
	cmpq	$2, %r12
	je	.L5217
	movq	(%rax), %rax
	movl	$2, %r13d
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%r14), %r14
.L5217:
	movq	(%rax), %rax
	addq	$1, %r13
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%r14), %r14
.L5216:
	addq	$1, %r13
	movq	(%rax), %rax
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%r14), %r14
	cmpq	%r13, %r15
	je	.L5883
.L5955:
	movq	%r15, -232(%rbp)
	movq	%r13, %r15
.L2869:
	movq	(%rax), %r12
	addq	$4, %r15
	movq	(%rsi), %r13
	movq	(%rcx), %rcx
	movq	(%rbx), %rbx
	movq	(%r11), %r9
	movq	(%r10), %rdx
	movq	(%r8), %rax
	movq	(%rdi), %rsi
	movq	(%r14), %r10
	movq	(%r12), %r11
	movq	0(%r13), %r14
	movq	(%rcx), %r12
	movq	(%rbx), %r8
	movq	(%r9), %rdi
	movq	(%rdx), %r13
	movq	(%rax), %rbx
	movq	(%rsi), %r9
	movq	(%r10), %rax
	movq	(%r11), %r10
	movq	(%r14), %rsi
	movq	(%r12), %rcx
	movq	(%r8), %r11
	movq	(%rdi), %r14
	movq	0(%r13), %rdx
	movq	(%rbx), %r12
	movq	(%r9), %rdi
	movq	(%rax), %r13
	movq	(%r10), %rax
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%r11), %rbx
	movq	(%r14), %r11
	movq	(%rdx), %r10
	movq	(%r12), %r8
	movq	(%rdi), %rdi
	movq	0(%r13), %r14
	cmpq	%r15, -232(%rbp)
	jne	.L2869
	movq	-232(%rbp), %r15
.L5883:
	movq	%rax, %r9
	movb	$1, -256(%rbp)
	movl	$1, %r12d
	movl	$1, %r13d
	movb	$1, -264(%rbp)
	movb	$1, -272(%rbp)
	movb	$1, -280(%rbp)
	movb	$1, -288(%rbp)
	movb	$1, -296(%rbp)
	movb	$1, -304(%rbp)
.L2868:
#APP
# 281 "mem.cc" 1
	# traverse loop end (n_chains = $9, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, -248(%rbp)
	movq	-248(%rbp), %rdx
	cmpq	%rdx, -240(%rbp)
	jne	.L2870
	movb	%r12b, -232(%rbp)
	movzbl	-304(%rbp), %r12d
	movq	%r9, %r15
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%r14, %rdi
	movq	-376(%rbp), %r14
	testb	%r12b, %r12b
	jne	.L6082
.L2871:
	testb	%r13b, %r13b
	je	.L2872
	movq	%rsi, -216(%rbp)
	movq	%rsi, -312(%rbp)
.L2872:
	cmpb	$0, -232(%rbp)
	je	.L2873
	movq	%rcx, -208(%rbp)
	movq	%rcx, -320(%rbp)
.L2873:
	cmpb	$0, -296(%rbp)
	je	.L2874
	movq	%rbx, -200(%rbp)
	movq	%rbx, -328(%rbp)
.L2874:
	cmpb	$0, -288(%rbp)
	je	.L2875
	movq	%r11, -192(%rbp)
	movq	%r11, -336(%rbp)
.L2875:
	cmpb	$0, -280(%rbp)
	je	.L2876
	movq	%r10, -184(%rbp)
	movq	%r10, -344(%rbp)
.L2876:
	cmpb	$0, -272(%rbp)
	je	.L2877
	movq	%r9, -176(%rbp)
	movq	%r9, -352(%rbp)
.L2877:
	cmpb	$0, -264(%rbp)
	je	.L2878
	movq	%r8, -168(%rbp)
	movq	%r8, -360(%rbp)
.L2878:
	cmpb	$0, -256(%rbp)
	je	.L2867
	movq	%rdi, -160(%rbp)
	movq	%rdi, -368(%rbp)
.L2867:
	movq	-312(%rbp), %rbx
	movq	-320(%rbp), %rax
	movq	-328(%rbp), %r10
	movq	-336(%rbp), %rsi
	movq	-344(%rbp), %rcx
	movq	-352(%rbp), %r11
	movq	-360(%rbp), %r13
	movq	-368(%rbp), %rdx
	jmp	.L2569
.L5900:
	movq	72(%r11), %r15
	movq	(%rsi), %r12
	movq	80(%r11), %r14
	movq	88(%r11), %rcx
	movq	96(%r11), %r13
	movq	%r15, -248(%rbp)
	movq	8(%rsi), %rbx
	movq	%r15, -152(%rbp)
	movq	16(%rsi), %r10
	movq	%r12, -224(%rbp)
	movq	104(%r11), %r15
	movq	%r14, -256(%rbp)
	movq	24(%rsi), %r9
	movq	%r14, -144(%rbp)
	movq	32(%rsi), %rdi
	movq	%rbx, -216(%rbp)
	movq	40(%rsi), %rax
	movq	%r10, -208(%rbp)
	movq	48(%rsi), %rdx
	movq	%r15, -280(%rbp)
	movq	64(%r11), %r8
	movq	%r9, -200(%rbp)
	movq	56(%rsi), %rsi
	movq	%rdi, -192(%rbp)
	movq	%rax, -184(%rbp)
	movq	%rdx, -176(%rbp)
	movq	%r8, -160(%rbp)
	movq	%rsi, -168(%rbp)
	movq	%rcx, -264(%rbp)
	movq	%rcx, -136(%rbp)
	movq	%r13, -272(%rbp)
	movq	%r13, -128(%rbp)
	movq	%r15, -120(%rbp)
	movq	112(%r11), %r11
	movq	%r12, %r15
	cmpq	$0, -240(%rbp)
	movq	%r12, -400(%rbp)
	movq	%r11, -288(%rbp)
	movq	%r11, -112(%rbp)
	jle	.L6083
	movq	%r10, -416(%rbp)
	movq	%r10, %r13
	movq	%rax, %r11
	movq	%rdx, %r10
	movq	%rax, -440(%rbp)
	movq	%r9, %r12
	movq	%rbx, %r14
	movq	-256(%rbp), %rax
	movq	%rdx, -448(%rbp)
	movq	-264(%rbp), %rdx
	movq	%r9, -424(%rbp)
	movq	%rsi, %r9
	movq	%rsi, -456(%rbp)
	movq	%rax, -480(%rbp)
	movq	%rax, %rsi
	movq	-272(%rbp), %rax
	movq	%rdx, -488(%rbp)
	movq	%rdx, %rcx
	movq	-280(%rbp), %rdx
	movq	%rbx, -408(%rbp)
	movq	%rdi, %rbx
	movq	%rdi, -432(%rbp)
	movq	-248(%rbp), %rdi
	movq	%rax, -496(%rbp)
	movq	%rax, -256(%rbp)
	movq	%rdx, %rax
	movq	%rdx, -504(%rbp)
	movq	-288(%rbp), %rdx
	movq	%r8, -464(%rbp)
	movq	%rdi, -472(%rbp)
	movb	$0, -352(%rbp)
	movq	%rdx, -512(%rbp)
	movb	$0, -344(%rbp)
	movb	$0, -336(%rbp)
	movb	$0, -296(%rbp)
	movb	$0, -368(%rbp)
	movb	$0, -360(%rbp)
	movb	$0, -376(%rbp)
	movb	$0, -384(%rbp)
	movb	$0, -392(%rbp)
	movb	$0, -288(%rbp)
	movb	$0, -312(%rbp)
	movb	$0, -304(%rbp)
	movb	$0, -248(%rbp)
	movb	$0, -328(%rbp)
	movb	$0, -320(%rbp)
	movq	$0, -280(%rbp)
	movq	%rax, -264(%rbp)
	movq	%rdx, -272(%rbp)
	.p2align 4,,10
	.p2align 3
.L3188:
#APP
# 267 "mem.cc" 1
	# traverse loop begin (n_chains = $15, payload = $0)
# 0 "" 2
#NO_APP
	movq	-232(%rbp), %rax
	testq	%rax, %rax
	jle	.L3186
	leaq	-1(%rax), %rdx
	movq	(%r15), %r15
	movq	$1, -248(%rbp)
	andl	$3, %edx
	movq	(%r14), %r14
	movq	%rdx, -288(%rbp)
	movq	-256(%rbp), %rdx
	movq	0(%r13), %r13
	movq	(%r12), %r12
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	%rdx, -256(%rbp)
	movq	-264(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -264(%rbp)
	movq	-272(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -272(%rbp)
	cmpq	$1, %rax
	je	.L5901
	movq	-288(%rbp), %rax
	testq	%rax, %rax
	je	.L3187
	cmpq	$1, %rax
	je	.L5228
	cmpq	$2, %rax
	je	.L5229
	movq	$2, -248(%rbp)
	movq	(%r15), %r15
	movq	-256(%rbp), %rdx
	movq	(%r14), %r14
	movq	0(%r13), %r13
	movq	(%r12), %r12
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, -256(%rbp)
	movq	(%rdx), %rax
	movq	-272(%rbp), %rdx
	movq	%rax, -264(%rbp)
	movq	(%rdx), %rax
	movq	%rax, -272(%rbp)
.L5229:
	movq	-256(%rbp), %rdx
	movq	(%r15), %r15
	movq	(%r14), %r14
	movq	0(%r13), %r13
	movq	(%r12), %r12
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rax
	movq	-264(%rbp), %rdx
	addq	$1, -248(%rbp)
	movq	%rax, -256(%rbp)
	movq	(%rdx), %rax
	movq	-272(%rbp), %rdx
	movq	%rax, -264(%rbp)
	movq	(%rdx), %rax
	movq	%rax, -272(%rbp)
.L5228:
	movq	-256(%rbp), %rdx
	movq	(%r15), %r15
	movq	(%r14), %r14
	movq	0(%r13), %r13
	movq	(%r12), %r12
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rax
	movq	-264(%rbp), %rdx
	addq	$1, -248(%rbp)
	movq	%rax, -256(%rbp)
	movq	(%rdx), %rax
	movq	-272(%rbp), %rdx
	movq	%rax, -264(%rbp)
	movq	(%rdx), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, -272(%rbp)
	cmpq	%rdx, -232(%rbp)
	je	.L5901
.L3187:
	movq	-256(%rbp), %rax
	movq	(%r15), %r15
	movq	(%r14), %r14
	movq	0(%r13), %r13
	movq	(%r12), %r12
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rax), %rdx
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-272(%rbp), %rax
	movq	(%rax), %rax
	movq	(%r15), %r15
	movq	(%r14), %r14
	movq	0(%r13), %r13
	movq	(%r12), %r12
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	%rdx, -264(%rbp)
	movq	-256(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r15), %r15
	movq	(%r14), %r14
	movq	0(%r13), %r13
	movq	%rax, -272(%rbp)
	movq	-264(%rbp), %rax
	movq	(%r12), %r12
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rax), %rax
	movq	(%rdx), %rdx
	movq	%rax, -256(%rbp)
	movq	-272(%rbp), %rax
	movq	(%rax), %rax
	movq	(%r15), %r15
	movq	(%r14), %r14
	movq	0(%r13), %r13
	movq	%rax, -272(%rbp)
	movq	(%r12), %r12
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	-256(%rbp), %rax
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	addq	$4, -248(%rbp)
	movq	(%rax), %rax
	movq	(%rdx), %rdx
	movq	%rax, -256(%rbp)
	movq	-272(%rbp), %rax
	movq	%rdx, -264(%rbp)
	movq	(%rax), %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, -272(%rbp)
	cmpq	%rax, -232(%rbp)
	jne	.L3187
.L5901:
	movb	$1, -352(%rbp)
	movb	$1, -344(%rbp)
	movb	$1, -336(%rbp)
	movb	$1, -296(%rbp)
	movb	$1, -368(%rbp)
	movb	$1, -360(%rbp)
	movb	$1, -376(%rbp)
	movb	$1, -384(%rbp)
	movb	$1, -392(%rbp)
	movb	$1, -288(%rbp)
	movb	$1, -312(%rbp)
	movb	$1, -304(%rbp)
	movb	$1, -248(%rbp)
	movb	$1, -328(%rbp)
	movb	$1, -320(%rbp)
.L3186:
#APP
# 281 "mem.cc" 1
	# traverse loop end (n_chains = $15, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, -280(%rbp)
	movq	-280(%rbp), %rdx
	cmpq	%rdx, -240(%rbp)
	jne	.L3188
	cmpb	$0, -320(%rbp)
	movq	-264(%rbp), %rax
	movq	-272(%rbp), %rdx
	jne	.L6084
.L3189:
	cmpb	$0, -328(%rbp)
	je	.L3190
	movq	%r14, -216(%rbp)
	movq	%r14, -408(%rbp)
.L3190:
	cmpb	$0, -248(%rbp)
	je	.L3191
	movq	%r13, -208(%rbp)
	movq	%r13, -416(%rbp)
.L3191:
	cmpb	$0, -304(%rbp)
	je	.L3192
	movq	%r12, -200(%rbp)
	movq	%r12, -424(%rbp)
.L3192:
	cmpb	$0, -312(%rbp)
	je	.L3193
	movq	%rbx, -192(%rbp)
	movq	%rbx, -432(%rbp)
.L3193:
	cmpb	$0, -288(%rbp)
	je	.L3194
	movq	%r11, -184(%rbp)
	movq	%r11, -440(%rbp)
.L3194:
	cmpb	$0, -392(%rbp)
	je	.L3195
	movq	%r10, -176(%rbp)
	movq	%r10, -448(%rbp)
.L3195:
	cmpb	$0, -384(%rbp)
	je	.L3196
	movq	%r9, -168(%rbp)
	movq	%r9, -456(%rbp)
.L3196:
	cmpb	$0, -376(%rbp)
	je	.L3197
	movq	%r8, -160(%rbp)
	movq	%r8, -464(%rbp)
.L3197:
	cmpb	$0, -360(%rbp)
	je	.L3198
	movq	%rdi, -152(%rbp)
	movq	%rdi, -472(%rbp)
.L3198:
	cmpb	$0, -368(%rbp)
	je	.L3199
	movq	%rsi, -144(%rbp)
	movq	%rsi, -480(%rbp)
.L3199:
	cmpb	$0, -296(%rbp)
	je	.L3200
	movq	%rcx, -136(%rbp)
	movq	%rcx, -488(%rbp)
.L3200:
	cmpb	$0, -336(%rbp)
	je	.L3201
	movq	-256(%rbp), %r14
	movq	%r14, -128(%rbp)
	movq	%r14, -496(%rbp)
.L3201:
	cmpb	$0, -344(%rbp)
	je	.L3202
	movq	%rax, -120(%rbp)
	movq	%rax, -504(%rbp)
.L3202:
	cmpb	$0, -352(%rbp)
	je	.L6018
	movq	%rdx, -112(%rbp)
	movq	%rdx, -512(%rbp)
.L6018:
	movq	-400(%rbp), %rbx
.L3156:
	movq	-408(%rbp), %rdx
	movq	-416(%rbp), %rax
	movq	-424(%rbp), %r11
	movq	-432(%rbp), %r14
	movq	-440(%rbp), %r13
	movq	-448(%rbp), %r12
	movq	-456(%rbp), %rbx
	movq	-464(%rbp), %r10
	movq	-472(%rbp), %r9
	movq	-480(%rbp), %r8
	movq	-488(%rbp), %rdi
	movq	-496(%rbp), %rsi
	movq	-504(%rbp), %rcx
	movq	-512(%rbp), %rdx
	jmp	.L2569
.L3176:
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L6022
	movq	-232(%rbp), %rsi
	movq	%r8, %rdx
	movq	%r11, %rdi
	addq	$520, %rsp
	popq	%rbx
	popq	%r12
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r10), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_Z13access_randomILi15ELi0EEP6recordPS1_ll
.L5925:
	.cfi_restore_state
	leaq	-224(%rbp), %rbx
	movl	$160, %edx
	movq	%rbx, %rdi
	call	memcpy
	xorl	%r8d, %r8d
	movq	%rbx, %rcx
	cmpq	$0, -240(%rbp)
	leaq	160(%rbx), %rsi
	jle	.L3422
	movq	-232(%rbp), %r9
	movq	-240(%rbp), %r10
	.p2align 4,,10
	.p2align 3
.L5857:
#APP
# 267 "mem.cc" 1
	# traverse loop begin (n_chains = $20, payload = $0)
# 0 "" 2
#NO_APP
	xorl	%edi, %edi
	testq	%r9, %r9
	jle	.L3425
	.p2align 4,,10
	.p2align 3
.L5851:
	movq	(%rcx), %r11
	leaq	8(%rcx), %r13
	movq	%rsi, %rdx
	subq	%rcx, %rdx
	subq	$8, %rdx
	shrq	$3, %rdx
	movq	(%r11), %r12
	andl	$7, %edx
	movq	%r12, (%rcx)
	cmpq	%rsi, %r13
	je	.L5927
	testq	%rdx, %rdx
	je	.L3424
	cmpq	$1, %rdx
	je	.L5301
	cmpq	$2, %rdx
	je	.L5302
	cmpq	$3, %rdx
	je	.L5303
	cmpq	$4, %rdx
	je	.L5304
	cmpq	$5, %rdx
	je	.L5305
	cmpq	$6, %rdx
	je	.L5306
	movq	8(%rcx), %r14
	leaq	16(%rcx), %r13
	movq	(%r14), %r15
	movq	%r15, 8(%rcx)
.L5306:
	movq	0(%r13), %rax
	addq	$8, %r13
	movq	(%rax), %rbx
	movq	%rbx, -8(%r13)
.L5305:
	movq	0(%r13), %rdx
	addq	$8, %r13
	movq	(%rdx), %r11
	movq	%r11, -8(%r13)
.L5304:
	movq	0(%r13), %r12
	addq	$8, %r13
	movq	(%r12), %r14
	movq	%r14, -8(%r13)
.L5303:
	movq	0(%r13), %r15
	addq	$8, %r13
	movq	(%r15), %rax
	movq	%rax, -8(%r13)
.L5302:
	movq	0(%r13), %rbx
	addq	$8, %r13
	movq	(%rbx), %rdx
	movq	%rdx, -8(%r13)
.L5301:
	movq	0(%r13), %r11
	addq	$8, %r13
	movq	(%r11), %r12
	movq	%r12, -8(%r13)
	cmpq	%rsi, %r13
	je	.L5927
.L3424:
	movq	0(%r13), %r14
	addq	$64, %r13
	movq	-56(%r13), %rax
	movq	-48(%r13), %rdx
	movq	-40(%r13), %r12
	movq	(%r14), %r15
	movq	(%rax), %rbx
	movq	(%rdx), %r11
	movq	(%r12), %r14
	movq	%r15, -64(%r13)
	movq	-32(%r13), %r15
	movq	%rbx, -56(%r13)
	movq	-24(%r13), %rbx
	movq	%r11, -48(%r13)
	movq	-16(%r13), %r11
	movq	%r14, -40(%r13)
	movq	-8(%r13), %r14
	movq	(%r15), %rax
	movq	(%rbx), %rdx
	movq	(%r11), %r12
	movq	(%r14), %r15
	movq	%rax, -32(%r13)
	movq	%rdx, -24(%r13)
	movq	%r12, -16(%r13)
	movq	%r15, -8(%r13)
	cmpq	%rsi, %r13
	jne	.L3424
.L5927:
	addq	$1, %rdi
	cmpq	%rdi, %r9
	jne	.L5851
.L3425:
#APP
# 281 "mem.cc" 1
	# traverse loop end (n_chains = $20, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, %r8
	cmpq	%r8, %r10
	jne	.L5857
.L3422:
	leaq	160(%rcx), %r13
.L3420:
	movq	(%rcx), %rsi
	movq	8(%rcx), %rdi
	movq	16(%rcx), %r8
	movq	24(%rcx), %r9
	movq	32(%rcx), %r10
	movq	40(%rcx), %rax
	movq	48(%rcx), %rbx
	movq	56(%rcx), %rdx
	movq	64(%rcx), %r11
	movq	72(%rcx), %r12
	addq	$80, %rcx
	cmpq	%rcx, %r13
	jne	.L3420
.L6014:
	movq	-224(%rbp), %r15
	jmp	.L2569
.L3412:
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L6022
	movq	-232(%rbp), %rsi
	movq	%r8, %rdx
	movq	%r11, %rdi
	addq	$520, %rsp
	popq	%rbx
	popq	%r12
	popq	%r8
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r8), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_Z13access_randomILi20ELi0EEP6recordPS1_ll
.L5867:
	.cfi_restore_state
	movq	(%rsi), %r9
	movq	8(%rsi), %rax
	movq	16(%rsi), %r12
	movq	24(%rsi), %r13
	cmpq	$0, -240(%rbp)
	movq	%r9, -224(%rbp)
	movq	32(%rsi), %rsi
	movq	%rax, -216(%rbp)
	movq	%r12, -208(%rbp)
	movq	%r13, -200(%rbp)
	movq	%rsi, -192(%rbp)
	jle	.L6085
	movq	-232(%rbp), %r10
	movq	%r8, %r11
	movq	%r9, %r15
	xorl	%r14d, %r14d
	.p2align 4,,10
	.p2align 3
.L2703:
#APP
# 267 "mem.cc" 1
	# traverse loop begin (n_chains = $5, payload = $0)
# 0 "" 2
#NO_APP
	testq	%r10, %r10
	jle	.L2700
	leaq	-1(%r10), %r8
	movq	(%r15), %r15
	movl	$1, %ebx
	movq	(%rax), %rax
	andl	$7, %r8d
	movq	(%r12), %r12
	movq	0(%r13), %r13
	movq	(%rsi), %rsi
	cmpq	$1, %r10
	je	.L2700
	testq	%r8, %r8
	je	.L2701
	cmpq	$1, %r8
	je	.L5190
	cmpq	$2, %r8
	je	.L5191
	cmpq	$3, %r8
	je	.L5192
	cmpq	$4, %r8
	je	.L5193
	cmpq	$5, %r8
	je	.L5194
	cmpq	$6, %r8
	je	.L5195
	movq	(%r15), %r15
	movl	$2, %ebx
	movq	(%rax), %rax
	movq	(%r12), %r12
	movq	0(%r13), %r13
	movq	(%rsi), %rsi
.L5195:
	movq	(%r15), %r15
	addq	$1, %rbx
	movq	(%rax), %rax
	movq	(%r12), %r12
	movq	0(%r13), %r13
	movq	(%rsi), %rsi
.L5194:
	movq	(%r15), %r15
	addq	$1, %rbx
	movq	(%rax), %rax
	movq	(%r12), %r12
	movq	0(%r13), %r13
	movq	(%rsi), %rsi
.L5193:
	movq	(%r15), %r15
	addq	$1, %rbx
	movq	(%rax), %rax
	movq	(%r12), %r12
	movq	0(%r13), %r13
	movq	(%rsi), %rsi
.L5192:
	movq	(%r15), %r15
	addq	$1, %rbx
	movq	(%rax), %rax
	movq	(%r12), %r12
	movq	0(%r13), %r13
	movq	(%rsi), %rsi
.L5191:
	movq	(%r15), %r15
	addq	$1, %rbx
	movq	(%rax), %rax
	movq	(%r12), %r12
	movq	0(%r13), %r13
	movq	(%rsi), %rsi
.L5190:
	addq	$1, %rbx
	movq	(%r15), %r15
	movq	(%rax), %rax
	movq	(%r12), %r12
	movq	0(%r13), %r13
	movq	(%rsi), %rsi
	cmpq	%rbx, %r10
	je	.L2700
.L2701:
	movq	(%r15), %r15
	addq	$8, %rbx
	movq	(%rax), %rdi
	movq	(%r12), %rdx
	movq	0(%r13), %rcx
	movq	(%rsi), %r9
	movq	(%r15), %r8
	movq	(%rdi), %rax
	movq	(%rdx), %r12
	movq	(%rcx), %r13
	movq	(%r9), %rsi
	movq	(%r8), %r15
	movq	(%rax), %rdi
	movq	(%r12), %rdx
	movq	0(%r13), %rcx
	movq	(%rsi), %r9
	movq	(%r15), %r8
	movq	(%rdi), %rax
	movq	(%rdx), %r12
	movq	(%rcx), %r13
	movq	(%r9), %rsi
	movq	(%r8), %r15
	movq	(%rax), %rdi
	movq	(%r12), %rdx
	movq	0(%r13), %rcx
	movq	(%rsi), %r9
	movq	(%r15), %r8
	movq	(%rdi), %rax
	movq	(%rdx), %r12
	movq	(%rcx), %r13
	movq	(%r9), %rsi
	movq	(%r8), %r15
	movq	(%rax), %rdi
	movq	(%r12), %rdx
	movq	0(%r13), %rcx
	movq	(%rsi), %r9
	movq	(%r15), %r15
	movq	(%rdi), %rax
	movq	(%rdx), %r12
	movq	(%rcx), %r13
	movq	(%r9), %rsi
	cmpq	%rbx, %r10
	jne	.L2701
.L2700:
#APP
# 281 "mem.cc" 1
	# traverse loop end (n_chains = $5, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, %r14
	cmpq	%r14, %r11
	jne	.L2703
	jmp	.L2569
.L2691:
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L6022
	movq	-232(%rbp), %rsi
	movq	%r8, %rdx
	movq	%r11, %rdi
	addq	$520, %rsp
	popq	%rbx
	popq	%r12
	popq	%r8
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r8), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_Z13access_randomILi5ELi0EEP6recordPS1_ll
.L5913:
	.cfi_restore_state
	leaq	-224(%rbp), %rdi
	movq	%r11, %rsi
	movl	$144, %edx
	call	memcpy
	xorl	%r8d, %r8d
	cmpq	$0, -240(%rbp)
	movq	%rax, %rcx
	leaq	144(%rax), %rsi
	jle	.L3354
	movq	-232(%rbp), %r9
	movq	-240(%rbp), %r10
	.p2align 4,,10
	.p2align 3
.L5853:
#APP
# 267 "mem.cc" 1
	# traverse loop begin (n_chains = $18, payload = $0)
# 0 "" 2
#NO_APP
	xorl	%edi, %edi
	testq	%r9, %r9
	jle	.L3357
	.p2align 4,,10
	.p2align 3
.L5847:
	movq	(%rcx), %r13
	leaq	8(%rcx), %r12
	movq	%rsi, %rdx
	subq	%rcx, %rdx
	subq	$8, %rdx
	shrq	$3, %rdx
	movq	0(%r13), %r15
	andl	$7, %edx
	movq	%r15, (%rcx)
	cmpq	%r12, %rsi
	je	.L5915
	testq	%rdx, %rdx
	je	.L3356
	cmpq	$1, %rdx
	je	.L5253
	cmpq	$2, %rdx
	je	.L5254
	cmpq	$3, %rdx
	je	.L5255
	cmpq	$4, %rdx
	je	.L5256
	cmpq	$5, %rdx
	je	.L5257
	cmpq	$6, %rdx
	je	.L5258
	movq	8(%rcx), %rax
	leaq	16(%rcx), %r12
	movq	(%rax), %rbx
	movq	%rbx, 8(%rcx)
.L5258:
	movq	(%r12), %r14
	addq	$8, %r12
	movq	(%r14), %r11
	movq	%r11, -8(%r12)
.L5257:
	movq	(%r12), %rdx
	addq	$8, %r12
	movq	(%rdx), %r13
	movq	%r13, -8(%r12)
.L5256:
	movq	(%r12), %r15
	addq	$8, %r12
	movq	(%r15), %rax
	movq	%rax, -8(%r12)
.L5255:
	movq	(%r12), %rbx
	addq	$8, %r12
	movq	(%rbx), %r14
	movq	%r14, -8(%r12)
.L5254:
	movq	(%r12), %r11
	addq	$8, %r12
	movq	(%r11), %rdx
	movq	%rdx, -8(%r12)
.L5253:
	movq	(%r12), %r13
	addq	$8, %r12
	movq	0(%r13), %r15
	movq	%r15, -8(%r12)
	cmpq	%r12, %rsi
	je	.L5915
.L3356:
	movq	(%r12), %rax
	addq	$64, %r12
	movq	-56(%r12), %r14
	movq	-48(%r12), %rdx
	movq	-40(%r12), %r15
	movq	(%rax), %rbx
	movq	(%r14), %r11
	movq	(%rdx), %r13
	movq	(%r15), %rax
	movq	%rbx, -64(%r12)
	movq	-32(%r12), %rbx
	movq	%r11, -56(%r12)
	movq	-24(%r12), %r11
	movq	%r13, -48(%r12)
	movq	-16(%r12), %r13
	movq	%rax, -40(%r12)
	movq	-8(%r12), %rax
	movq	(%rbx), %r14
	movq	(%r11), %rdx
	movq	0(%r13), %r15
	movq	(%rax), %rbx
	movq	%r14, -32(%r12)
	movq	%rdx, -24(%r12)
	movq	%r15, -16(%r12)
	movq	%rbx, -8(%r12)
	cmpq	%r12, %rsi
	jne	.L3356
.L5915:
	addq	$1, %rdi
	cmpq	%rdi, %r9
	jne	.L5847
.L3357:
#APP
# 281 "mem.cc" 1
	# traverse loop end (n_chains = $18, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, %r8
	cmpq	%r8, %r10
	jne	.L5853
.L3354:
	leaq	144(%rcx), %r12
.L3352:
	movq	(%rcx), %rsi
	movq	8(%rcx), %rdi
	movq	16(%rcx), %r8
	movq	24(%rcx), %r9
	movq	32(%rcx), %r10
	movq	40(%rcx), %r14
	movq	48(%rcx), %r11
	movq	56(%rcx), %rdx
	movq	64(%rcx), %r13
	addq	$72, %rcx
	cmpq	%rcx, %r12
	jne	.L3352
	jmp	.L6014
.L5919:
	leaq	-224(%rbp), %rdi
	movq	%r11, %rsi
	movl	$152, %edx
	call	memcpy
	xorl	%r8d, %r8d
	cmpq	$0, -240(%rbp)
	movq	%rax, %rcx
	leaq	152(%rax), %rsi
	jle	.L3388
	movq	-232(%rbp), %r9
	movq	-240(%rbp), %r10
	.p2align 4,,10
	.p2align 3
.L5855:
#APP
# 267 "mem.cc" 1
	# traverse loop begin (n_chains = $19, payload = $0)
# 0 "" 2
#NO_APP
	xorl	%edi, %edi
	testq	%r9, %r9
	jle	.L3391
	.p2align 4,,10
	.p2align 3
.L5849:
	movq	(%rcx), %r12
	leaq	8(%rcx), %rax
	movq	%rsi, %rdx
	subq	%rcx, %rdx
	subq	$8, %rdx
	shrq	$3, %rdx
	movq	(%r12), %r14
	andl	$7, %edx
	movq	%r14, (%rcx)
	cmpq	%rsi, %rax
	je	.L5921
	testq	%rdx, %rdx
	je	.L3390
	cmpq	$1, %rdx
	je	.L5277
	cmpq	$2, %rdx
	je	.L5278
	cmpq	$3, %rdx
	je	.L5279
	cmpq	$4, %rdx
	je	.L5280
	cmpq	$5, %rdx
	je	.L5281
	cmpq	$6, %rdx
	je	.L5282
	movq	8(%rcx), %r15
	leaq	16(%rcx), %rax
	movq	(%r15), %r13
	movq	%r13, 8(%rcx)
.L5282:
	movq	(%rax), %rbx
	addq	$8, %rax
	movq	(%rbx), %r11
	movq	%r11, -8(%rax)
.L5281:
	movq	(%rax), %rdx
	addq	$8, %rax
	movq	(%rdx), %r12
	movq	%r12, -8(%rax)
.L5280:
	movq	(%rax), %r14
	addq	$8, %rax
	movq	(%r14), %r15
	movq	%r15, -8(%rax)
.L5279:
	movq	(%rax), %r13
	addq	$8, %rax
	movq	0(%r13), %rbx
	movq	%rbx, -8(%rax)
.L5278:
	movq	(%rax), %r11
	addq	$8, %rax
	movq	(%r11), %rdx
	movq	%rdx, -8(%rax)
.L5277:
	movq	(%rax), %r12
	addq	$8, %rax
	movq	(%r12), %r14
	movq	%r14, -8(%rax)
	cmpq	%rsi, %rax
	je	.L5921
.L3390:
	movq	(%rax), %r15
	addq	$64, %rax
	movq	-56(%rax), %rbx
	movq	-48(%rax), %rdx
	movq	-40(%rax), %r14
	movq	(%r15), %r13
	movq	(%rbx), %r11
	movq	(%rdx), %r12
	movq	(%r14), %r15
	movq	%r13, -64(%rax)
	movq	-32(%rax), %r13
	movq	%r11, -56(%rax)
	movq	-24(%rax), %r11
	movq	%r12, -48(%rax)
	movq	-16(%rax), %r12
	movq	%r15, -40(%rax)
	movq	-8(%rax), %r15
	movq	0(%r13), %rbx
	movq	(%r11), %rdx
	movq	(%r12), %r14
	movq	(%r15), %r13
	movq	%rbx, -32(%rax)
	movq	%rdx, -24(%rax)
	movq	%r14, -16(%rax)
	movq	%r13, -8(%rax)
	cmpq	%rsi, %rax
	jne	.L3390
.L5921:
	addq	$1, %rdi
	cmpq	%rdi, %r9
	jne	.L5849
.L3391:
#APP
# 281 "mem.cc" 1
	# traverse loop end (n_chains = $19, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, %r8
	cmpq	%r8, %r10
	jne	.L5855
.L3388:
	leaq	152(%rcx), %rsi
	movq	(%rcx), %rax
	addq	$8, %rcx
.L3386:
	movq	(%rcx), %rdi
	movq	8(%rcx), %r8
	movq	16(%rcx), %r9
	movq	24(%rcx), %r10
	movq	32(%rcx), %rbx
	movq	40(%rcx), %r11
	movq	48(%rcx), %rdx
	movq	56(%rcx), %r12
	movq	64(%rcx), %r14
	addq	$72, %rcx
	cmpq	%rcx, %rsi
	jne	.L3386
	jmp	.L6014
.L5874:
	movq	(%r11), %rbx
	movq	8(%r11), %rsi
	movq	16(%r11), %rcx
	movq	24(%r11), %rdx
	movq	32(%r11), %rax
	movq	%rbx, -224(%rbp)
	movq	40(%r11), %r9
	movq	%rsi, -216(%rbp)
	movq	48(%r11), %r8
	movq	%rcx, -208(%rbp)
	cmpq	$0, -240(%rbp)
	movq	%rdx, -200(%rbp)
	movq	%rax, -192(%rbp)
	movq	%r9, -184(%rbp)
	movq	%r8, -176(%rbp)
	jle	.L6086
	movq	%rbx, %rdi
	movq	%rbx, %r15
	movq	%rbx, -320(%rbp)
	xorl	%r14d, %r14d
	movq	%rsi, -272(%rbp)
	xorl	%r13d, %r13d
	xorl	%r10d, %r10d
	xorl	%r12d, %r12d
	movq	-232(%rbp), %rbx
	movq	%rcx, -280(%rbp)
	xorl	%r11d, %r11d
	movq	%rdx, -288(%rbp)
	movq	%rax, -296(%rbp)
	movq	%r9, -304(%rbp)
	movq	%r8, -312(%rbp)
	movb	$0, -248(%rbp)
	movb	$0, -256(%rbp)
	movb	$0, -264(%rbp)
	.p2align 4,,10
	.p2align 3
.L2780:
#APP
# 267 "mem.cc" 1
	# traverse loop begin (n_chains = $7, payload = $0)
# 0 "" 2
#NO_APP
	testq	%rbx, %rbx
	jle	.L2778
	leaq	-1(%rbx), %r12
	movq	(%r15), %r15
	movl	$1, %edi
	movq	(%rsi), %rsi
	andl	$7, %r12d
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r9), %r9
	movq	(%r8), %r8
	cmpq	$1, %rbx
	je	.L5875
	testq	%r12, %r12
	je	.L2779
	cmpq	$1, %r12
	je	.L5206
	cmpq	$2, %r12
	je	.L5207
	cmpq	$3, %r12
	je	.L5208
	cmpq	$4, %r12
	je	.L5209
	cmpq	$5, %r12
	je	.L5210
	cmpq	$6, %r12
	je	.L5211
	movq	(%r15), %r15
	movl	$2, %edi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r9), %r9
	movq	(%r8), %r8
.L5211:
	movq	(%r15), %r15
	addq	$1, %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r9), %r9
	movq	(%r8), %r8
.L5210:
	movq	(%r15), %r15
	addq	$1, %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r9), %r9
	movq	(%r8), %r8
.L5209:
	movq	(%r15), %r15
	addq	$1, %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r9), %r9
	movq	(%r8), %r8
.L5208:
	movq	(%r15), %r15
	addq	$1, %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r9), %r9
	movq	(%r8), %r8
.L5207:
	movq	(%r15), %r15
	addq	$1, %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r9), %r9
	movq	(%r8), %r8
.L5206:
	addq	$1, %rdi
	movq	(%r15), %r15
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r9), %r9
	movq	(%r8), %r8
	cmpq	%rdi, %rbx
	je	.L5875
.L2779:
	movq	(%r15), %r10
	addq	$8, %rdi
	movq	(%rsi), %r15
	movq	(%rcx), %r13
	movq	(%rdx), %r14
	movq	(%rax), %r12
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%r10), %r10
	movq	(%r15), %rsi
	movq	0(%r13), %rcx
	movq	(%r14), %rdx
	movq	(%r12), %rax
	movq	(%r9), %r15
	movq	(%r8), %r13
	movq	(%r10), %r14
	movq	(%rsi), %r12
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r15), %r9
	movq	0(%r13), %r8
	movq	(%r14), %r10
	movq	(%r12), %rsi
	movq	(%rcx), %r15
	movq	(%rdx), %r13
	movq	(%rax), %r14
	movq	(%r9), %r12
	movq	(%r8), %r8
	movq	(%r10), %r10
	movq	(%rsi), %rsi
	movq	(%r15), %rcx
	movq	0(%r13), %rdx
	movq	(%r14), %rax
	movq	(%r12), %r9
	movq	(%r8), %r15
	movq	(%r10), %r13
	movq	(%rsi), %r14
	movq	(%rcx), %r12
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r9), %r9
	movq	(%r15), %r8
	movq	0(%r13), %r10
	movq	(%r14), %rsi
	movq	(%r12), %rcx
	movq	(%rdx), %r13
	movq	(%rax), %r14
	movq	(%r9), %r12
	movq	(%r8), %r8
	movq	(%r10), %r15
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	0(%r13), %rdx
	movq	(%r14), %rax
	movq	(%r12), %r9
	movq	(%r8), %r8
	cmpq	%rdi, %rbx
	jne	.L2779
.L5875:
	movq	%r15, %rdi
	movb	$1, -248(%rbp)
	movl	$1, %r14d
	movl	$1, %r13d
	movb	$1, -256(%rbp)
	movl	$1, %r10d
	movl	$1, %r12d
	movb	$1, -264(%rbp)
.L2778:
#APP
# 281 "mem.cc" 1
	# traverse loop end (n_chains = $7, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, %r11
	cmpq	%r11, -240(%rbp)
	jne	.L2780
	movq	-320(%rbp), %rbx
	testb	%r12b, %r12b
	jne	.L6087
.L2781:
	testb	%r10b, %r10b
	je	.L2782
	movq	%rsi, -216(%rbp)
	movq	%rsi, -272(%rbp)
.L2782:
	testb	%r13b, %r13b
	je	.L2783
	movq	%rcx, -208(%rbp)
	movq	%rcx, -280(%rbp)
.L2783:
	testb	%r14b, %r14b
	je	.L2784
	movq	%rdx, -200(%rbp)
	movq	%rdx, -288(%rbp)
.L2784:
	cmpb	$0, -264(%rbp)
	je	.L2785
	movq	%rax, -192(%rbp)
	movq	%rax, -296(%rbp)
.L2785:
	cmpb	$0, -256(%rbp)
	je	.L2786
	movq	%r9, -184(%rbp)
	movq	%r9, -304(%rbp)
.L2786:
	cmpb	$0, -248(%rbp)
	je	.L2777
	movq	%r8, -176(%rbp)
	movq	%r8, -312(%rbp)
.L2777:
	movq	-272(%rbp), %r11
	movq	-280(%rbp), %rdx
	movq	-288(%rbp), %rax
	movq	-296(%rbp), %rax
.L6012:
	movq	-304(%rbp), %rsi
	movq	-312(%rbp), %r11
	jmp	.L2569
.L2768:
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L6022
	movq	-232(%rbp), %rsi
	movq	%r8, %rdx
	movq	%r11, %rdi
	addq	$520, %rsp
	popq	%rbx
	popq	%r12
	popq	%r9
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r9), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_Z13access_randomILi7ELi0EEP6recordPS1_ll
.L2575:
	.cfi_restore_state
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L6022
	movq	-232(%rbp), %rsi
	movq	%r8, %rdx
	movq	%r11, %rdi
	addq	$520, %rsp
	popq	%rbx
	popq	%r12
	popq	%rax
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%rax), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_Z13access_randomILi1ELi0EEP6recordPS1_ll
.L5870:
	.cfi_restore_state
	movq	(%r11), %rbx
	movq	8(%r11), %rdi
	movq	16(%r11), %rsi
	movq	24(%r11), %rcx
	movq	32(%r11), %rdx
	movq	%rbx, -224(%rbp)
	movq	40(%r11), %rax
	movq	%rdi, -216(%rbp)
	movq	%rbx, %r11
	cmpq	$0, -240(%rbp)
	movq	%rsi, -208(%rbp)
	movq	%rcx, -200(%rbp)
	movq	%rdx, -192(%rbp)
	movq	%rax, -184(%rbp)
	jle	.L6088
	movq	%r11, -296(%rbp)
	movq	%rbx, %r8
	movq	%rbx, %r15
	xorl	%r14d, %r14d
	movq	%rdi, -256(%rbp)
	xorl	%r13d, %r13d
	xorl	%r9d, %r9d
	xorl	%ebx, %ebx
	movq	%rsi, -264(%rbp)
	xorl	%r12d, %r12d
	xorl	%r10d, %r10d
	movq	-232(%rbp), %r11
	movq	%rcx, -272(%rbp)
	movq	%rdx, -280(%rbp)
	movq	%rax, -288(%rbp)
	movb	$0, -248(%rbp)
	.p2align 4,,10
	.p2align 3
.L2738:
#APP
# 267 "mem.cc" 1
	# traverse loop begin (n_chains = $6, payload = $0)
# 0 "" 2
#NO_APP
	testq	%r11, %r11
	jle	.L2736
	leaq	-1(%r11), %r9
	movq	(%r15), %r15
	movl	$1, %r8d
	movq	(%rdi), %rdi
	andl	$7, %r9d
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	cmpq	$1, %r11
	je	.L5871
	testq	%r9, %r9
	je	.L2737
	cmpq	$1, %r9
	je	.L5198
	cmpq	$2, %r9
	je	.L5199
	cmpq	$3, %r9
	je	.L5200
	cmpq	$4, %r9
	je	.L5201
	cmpq	$5, %r9
	je	.L5202
	cmpq	$6, %r9
	je	.L5203
	movq	(%r15), %r15
	movl	$2, %r8d
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
.L5203:
	movq	(%r15), %r15
	addq	$1, %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
.L5202:
	movq	(%r15), %r15
	addq	$1, %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
.L5201:
	movq	(%r15), %r15
	addq	$1, %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
.L5200:
	movq	(%r15), %r15
	addq	$1, %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
.L5199:
	movq	(%r15), %r15
	addq	$1, %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
.L5198:
	addq	$1, %r8
	movq	(%r15), %r15
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	cmpq	%r8, %r11
	je	.L5871
.L2737:
	movq	(%r15), %r14
	addq	$8, %r8
	movq	(%rdi), %r12
	movq	(%rsi), %r13
	movq	(%rcx), %r15
	movq	(%rdx), %rbx
	movq	(%rax), %rax
	movq	(%r14), %r9
	movq	(%r12), %rdi
	movq	0(%r13), %rsi
	movq	(%r15), %rcx
	movq	(%rbx), %rdx
	movq	(%rax), %r14
	movq	(%r9), %r12
	movq	(%rdi), %r13
	movq	(%rsi), %r15
	movq	(%rcx), %rbx
	movq	(%rdx), %rdx
	movq	(%r14), %rax
	movq	(%r12), %r9
	movq	0(%r13), %rdi
	movq	(%r15), %rsi
	movq	(%rbx), %rcx
	movq	(%rdx), %r14
	movq	(%rax), %r12
	movq	(%r9), %r13
	movq	(%rdi), %r15
	movq	(%rsi), %rbx
	movq	(%rcx), %rcx
	movq	(%r14), %rdx
	movq	(%r12), %rax
	movq	0(%r13), %r9
	movq	(%r15), %rdi
	movq	(%rbx), %rsi
	movq	(%rcx), %r14
	movq	(%rdx), %r12
	movq	(%rax), %r13
	movq	(%r9), %r15
	movq	(%rdi), %rbx
	movq	(%rsi), %r9
	movq	(%r14), %rcx
	movq	(%r12), %rdx
	movq	0(%r13), %rax
	movq	(%r15), %r15
	movq	(%rbx), %rdi
	movq	(%r9), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	cmpq	%r8, %r11
	jne	.L2737
.L5871:
	movq	%r15, %r8
	movb	$1, -248(%rbp)
	movl	$1, %r14d
	movl	$1, %r13d
	movl	$1, %r9d
	movl	$1, %ebx
	movl	$1, %r12d
.L2736:
#APP
# 281 "mem.cc" 1
	# traverse loop end (n_chains = $6, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, %r10
	cmpq	%r10, -240(%rbp)
	jne	.L2738
	movq	-296(%rbp), %r11
	testb	%r12b, %r12b
	jne	.L6089
.L2739:
	testb	%bl, %bl
	je	.L2740
	movq	%rdi, -216(%rbp)
	movq	%rdi, -256(%rbp)
.L2740:
	testb	%r9b, %r9b
	je	.L2741
	movq	%rsi, -208(%rbp)
	movq	%rsi, -264(%rbp)
.L2741:
	testb	%r13b, %r13b
	je	.L2742
	movq	%rcx, -200(%rbp)
	movq	%rcx, -272(%rbp)
.L2742:
	testb	%r14b, %r14b
	je	.L2743
	movq	%rdx, -192(%rbp)
	movq	%rdx, -280(%rbp)
.L2743:
	cmpb	$0, -248(%rbp)
	je	.L2735
	movq	%rax, -184(%rbp)
	movq	%rax, -288(%rbp)
.L2735:
	movq	-256(%rbp), %r10
	movq	-264(%rbp), %rdi
	movq	-272(%rbp), %rsi
	movq	-280(%rbp), %rcx
	movq	-288(%rbp), %rdx
	jmp	.L2569
.L2726:
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L6022
	movq	-232(%rbp), %rsi
	movq	%r11, %rdi
	movq	%r8, %rdx
	addq	$520, %rsp
	popq	%rbx
	popq	%r12
	popq	%r11
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r11), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_Z13access_randomILi6ELi0EEP6recordPS1_ll
.L5865:
	.cfi_restore_state
	movq	(%rsi), %r15
	movq	8(%rsi), %rax
	movq	16(%rsi), %r12
	movq	24(%rsi), %r13
	cmpq	$0, -240(%rbp)
	movq	%r15, -224(%rbp)
	movq	%rax, -216(%rbp)
	movq	%r12, -208(%rbp)
	movq	%r13, -200(%rbp)
	jle	.L2673
	movq	-232(%rbp), %r9
	movq	%r8, %r10
	xorl	%r8d, %r8d
	.p2align 4,,10
	.p2align 3
.L2674:
#APP
# 267 "mem.cc" 1
	# traverse loop begin (n_chains = $4, payload = $0)
# 0 "" 2
#NO_APP
	testq	%r9, %r9
	jle	.L2671
	leaq	-1(%r9), %rbx
	movq	(%r15), %r15
	movl	$1, %esi
	movq	(%rax), %rax
	andl	$7, %ebx
	movq	(%r12), %r12
	movq	0(%r13), %r13
	cmpq	$1, %r9
	je	.L2671
	testq	%rbx, %rbx
	je	.L2672
	cmpq	$1, %rbx
	je	.L5180
	cmpq	$2, %rbx
	je	.L5181
	cmpq	$3, %rbx
	je	.L5182
	cmpq	$4, %rbx
	je	.L5183
	cmpq	$5, %rbx
	je	.L5184
	cmpq	$6, %rbx
	je	.L5185
	movq	(%r15), %r15
	movl	$2, %esi
	movq	(%rax), %rax
	movq	(%r12), %r12
	movq	0(%r13), %r13
.L5185:
	movq	(%r15), %r15
	addq	$1, %rsi
	movq	(%rax), %rax
	movq	(%r12), %r12
	movq	0(%r13), %r13
.L5184:
	movq	(%r15), %r15
	addq	$1, %rsi
	movq	(%rax), %rax
	movq	(%r12), %r12
	movq	0(%r13), %r13
.L5183:
	movq	(%r15), %r15
	addq	$1, %rsi
	movq	(%rax), %rax
	movq	(%r12), %r12
	movq	0(%r13), %r13
.L5182:
	movq	(%r15), %r15
	addq	$1, %rsi
	movq	(%rax), %rax
	movq	(%r12), %r12
	movq	0(%r13), %r13
.L5181:
	movq	(%r15), %r15
	addq	$1, %rsi
	movq	(%rax), %rax
	movq	(%r12), %r12
	movq	0(%r13), %r13
.L5180:
	addq	$1, %rsi
	movq	(%r15), %r15
	movq	(%rax), %rax
	movq	(%r12), %r12
	movq	0(%r13), %r13
	cmpq	%rsi, %r9
	je	.L2671
.L2672:
	movq	(%r15), %rdi
	addq	$8, %rsi
	movq	(%rax), %r14
	movq	(%r12), %rdx
	movq	0(%r13), %r11
	movq	(%rdi), %r15
	movq	(%r14), %rbx
	movq	(%rdx), %r12
	movq	(%r11), %rcx
	movq	(%r15), %r13
	movq	(%rbx), %rax
	movq	(%r12), %r14
	movq	(%rcx), %r11
	movq	0(%r13), %rdi
	movq	(%rax), %r15
	movq	(%r14), %rdx
	movq	(%r11), %rbx
	movq	(%rdi), %r12
	movq	(%r15), %r13
	movq	(%rdx), %r14
	movq	(%rbx), %rcx
	movq	(%r12), %r11
	movq	0(%r13), %rax
	movq	(%r14), %r15
	movq	(%rcx), %rbx
	movq	(%r11), %rdi
	movq	(%rax), %r12
	movq	(%r15), %rdx
	movq	(%rbx), %r13
	movq	(%rdi), %r15
	movq	(%r12), %rax
	movq	(%rdx), %r12
	movq	0(%r13), %r13
	cmpq	%rsi, %r9
	jne	.L2672
.L2671:
#APP
# 281 "mem.cc" 1
	# traverse loop end (n_chains = $4, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, %r8
	cmpq	%r8, %r10
	jne	.L2674
.L2673:
	jmp	.L2569
.L2662:
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L6022
	movq	-232(%rbp), %rsi
	movq	%r11, %rdi
	movq	%r8, %rdx
	addq	$520, %rsp
	popq	%rbx
	popq	%r12
	popq	%r11
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r11), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_Z13access_randomILi4ELi0EEP6recordPS1_ll
.L5861:
	.cfi_restore_state
	movq	%r8, %r9
	movq	(%r11), %rax
	movq	8(%r11), %rdx
	testq	%r8, %r8
	jle	.L2608
	movq	-232(%rbp), %r8
	xorl	%edi, %edi
	movq	%r9, %rbx
	.p2align 4,,10
	.p2align 3
.L2616:
#APP
# 267 "mem.cc" 1
	# traverse loop begin (n_chains = $2, payload = $0)
# 0 "" 2
#NO_APP
	testq	%r8, %r8
	jle	.L2614
	leaq	-1(%r8), %r15
	movq	(%rax), %rax
	movl	$1, %ecx
	andl	$7, %r15d
	movq	(%rdx), %rdx
	cmpq	$1, %r8
	je	.L2614
	testq	%r15, %r15
	je	.L2615
	cmpq	$1, %r15
	je	.L5148
	cmpq	$2, %r15
	je	.L5149
	cmpq	$3, %r15
	je	.L5150
	cmpq	$4, %r15
	je	.L5151
	cmpq	$5, %r15
	je	.L5152
	cmpq	$6, %r15
	je	.L5153
	movq	(%rax), %rax
	movl	$2, %ecx
	movq	(%rdx), %rdx
.L5153:
	movq	(%rax), %rax
	addq	$1, %rcx
	movq	(%rdx), %rdx
.L5152:
	movq	(%rax), %rax
	addq	$1, %rcx
	movq	(%rdx), %rdx
.L5151:
	movq	(%rax), %rax
	addq	$1, %rcx
	movq	(%rdx), %rdx
.L5150:
	movq	(%rax), %rax
	addq	$1, %rcx
	movq	(%rdx), %rdx
.L5149:
	movq	(%rax), %rax
	addq	$1, %rcx
	movq	(%rdx), %rdx
.L5148:
	addq	$1, %rcx
	movq	(%rax), %rax
	movq	(%rdx), %rdx
	cmpq	%rcx, %r8
	je	.L2614
.L2615:
	movq	(%rax), %r12
	addq	$8, %rcx
	movq	(%rdx), %r13
	movq	(%r12), %r14
	movq	0(%r13), %r11
	movq	(%r14), %r10
	movq	(%r11), %rsi
	movq	(%r10), %r9
	movq	(%rsi), %r15
	movq	(%r9), %rax
	movq	(%r15), %rdx
	movq	(%rax), %r12
	movq	(%rdx), %r13
	movq	(%r12), %r14
	movq	0(%r13), %r11
	movq	(%r14), %rax
	movq	(%r11), %rdx
	cmpq	%rcx, %r8
	jne	.L2615
.L2614:
#APP
# 281 "mem.cc" 1
	# traverse loop end (n_chains = $2, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, %rdi
	cmpq	%rdi, %rbx
	jne	.L2616
.L2608:
	movq	%rax, %r15
	jmp	.L2569
.L2604:
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L6022
	movq	-232(%rbp), %rsi
	movq	%r8, %rdx
	movq	%r11, %rdi
	addq	$520, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r13), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_Z13access_randomILi2ELi0EEP6recordPS1_ll
.L5894:
	.cfi_restore_state
	movq	(%rsi), %r12
	movq	72(%r11), %r15
	movq	80(%r11), %r14
	movq	88(%r11), %rcx
	movq	8(%rsi), %rbx
	movq	%r12, -224(%rbp)
	movq	16(%rsi), %r10
	movq	%r15, -248(%rbp)
	movq	24(%rsi), %r9
	movq	%r15, -152(%rbp)
	movq	%r12, %r15
	movq	32(%rsi), %rdi
	movq	%r14, -256(%rbp)
	movq	40(%rsi), %rax
	movq	%rbx, -216(%rbp)
	movq	48(%rsi), %rdx
	movq	%r10, -208(%rbp)
	movq	64(%r11), %r8
	movq	%r9, -200(%rbp)
	movq	96(%r11), %r11
	movq	%rdi, -192(%rbp)
	movq	56(%rsi), %rsi
	movq	%rax, -184(%rbp)
	cmpq	$0, -240(%rbp)
	movq	%rdx, -176(%rbp)
	movq	%r8, -160(%rbp)
	movq	%r14, -144(%rbp)
	movq	%rsi, -168(%rbp)
	movq	%rcx, -264(%rbp)
	movq	%rcx, -136(%rbp)
	movq	%r11, -272(%rbp)
	movq	%r11, -128(%rbp)
	movq	%r12, -368(%rbp)
	jle	.L6090
	movq	-264(%rbp), %rcx
	movq	%rbx, %r14
	movq	%r10, %r13
	movq	%r9, %r12
	movq	%rbx, -376(%rbp)
	movq	%rdi, %rbx
	movq	%rax, %r11
	movq	%r10, -384(%rbp)
	movq	%rdx, %r10
	movq	%r9, -392(%rbp)
	movq	%rsi, %r9
	movq	%rdi, -400(%rbp)
	movq	-248(%rbp), %rdi
	movq	%rdx, -416(%rbp)
	movq	-272(%rbp), %rdx
	movq	%rsi, -424(%rbp)
	movq	-256(%rbp), %rsi
	movq	%rax, -408(%rbp)
	movq	%r15, %rax
	movq	%r8, -432(%rbp)
	movq	%rdi, -440(%rbp)
	movq	%rsi, -448(%rbp)
	movq	%rcx, -456(%rbp)
	movq	%rdx, -464(%rbp)
	movq	%r15, -248(%rbp)
	movq	%r13, %r15
	movq	%r14, %r13
	movq	%rax, %r14
	movq	%rdx, -256(%rbp)
	movq	%rcx, %rdx
	movq	%rsi, %rcx
	movq	%rdi, %rsi
	movb	$0, -328(%rbp)
	movq	%r8, %rdi
	movq	%r9, %r8
	movq	%r10, %r9
	movb	$0, -264(%rbp)
	movq	%r11, %r10
	movq	%rbx, %r11
	xorl	%ebx, %ebx
	movb	$0, -344(%rbp)
	movb	$0, -336(%rbp)
	movb	$0, -280(%rbp)
	movb	$0, -288(%rbp)
	movb	$0, -360(%rbp)
	movb	$0, -352(%rbp)
	movb	$0, -312(%rbp)
	movb	$0, -304(%rbp)
	movb	$0, -296(%rbp)
	movb	$0, -320(%rbp)
	movq	$0, -272(%rbp)
	.p2align 4,,10
	.p2align 3
.L3074:
#APP
# 267 "mem.cc" 1
	# traverse loop begin (n_chains = $13, payload = $0)
# 0 "" 2
#NO_APP
	movq	-232(%rbp), %rax
	testq	%rax, %rax
	jle	.L3072
	movq	%rax, %rbx
	movq	-248(%rbp), %r14
	movq	$1, -248(%rbp)
	movq	-256(%rbp), %rax
	subq	$1, %rbx
	andl	$3, %ebx
	cmpq	$1, -232(%rbp)
	movq	(%r14), %r14
	movq	0(%r13), %r13
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)
	je	.L5895
	testq	%rbx, %rbx
	je	.L3073
	cmpq	$1, %rbx
	je	.L5224
	cmpq	$2, %rbx
	je	.L5225
	movq	$2, -248(%rbp)
	movq	(%r14), %r14
	movq	0(%r13), %r13
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)
.L5225:
	movq	(%r14), %r14
	movq	0(%r13), %r13
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	addq	$1, -248(%rbp)
	movq	%rax, -256(%rbp)
.L5224:
	movq	(%r14), %r14
	movq	0(%r13), %r13
	movq	(%r15), %r15
	movq	(%r12), %r12
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rbx
	addq	$1, -248(%rbp)
	movq	-248(%rbp), %rax
	movq	%rbx, -256(%rbp)
	cmpq	%rax, -232(%rbp)
	je	.L5895
	movq	-256(%rbp), %rax
.L3073:
	movq	(%r14), %r14
	movq	0(%r13), %r13
	movq	(%r15), %r15
	movq	(%r12), %rbx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %r12
	movq	(%rax), %rax
	movq	(%r14), %r14
	movq	0(%r13), %r13
	movq	(%r15), %rdx
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%r12), %r12
	movq	(%rax), %r15
	movq	(%r14), %r14
	movq	0(%r13), %rax
	movq	(%rdx), %rdx
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%r12), %r13
	movq	(%r15), %r12
	movq	(%r14), %r14
	addq	$4, -248(%rbp)
	movq	%r13, -256(%rbp)
	movq	(%rax), %r13
	movq	(%rdx), %r15
	movq	%r12, -264(%rbp)
	movq	-256(%rbp), %rax
	movq	(%rbx), %r12
	movq	-264(%rbp), %rbx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rax), %rdx
	movq	(%rbx), %rax
	movq	-248(%rbp), %rbx
	cmpq	%rbx, -232(%rbp)
	jne	.L3073
	movq	%rax, -256(%rbp)
.L5895:
	movq	%r14, -248(%rbp)
	movl	$1, %ebx
	movb	$1, -328(%rbp)
	movb	$1, -264(%rbp)
	movb	$1, -344(%rbp)
	movb	$1, -336(%rbp)
	movb	$1, -280(%rbp)
	movb	$1, -288(%rbp)
	movb	$1, -360(%rbp)
	movb	$1, -352(%rbp)
	movb	$1, -312(%rbp)
	movb	$1, -304(%rbp)
	movb	$1, -296(%rbp)
	movb	$1, -320(%rbp)
.L3072:
#APP
# 281 "mem.cc" 1
	# traverse loop end (n_chains = $13, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, -272(%rbp)
	movq	-272(%rbp), %rax
	cmpq	%rax, -240(%rbp)
	jne	.L3074
	cmpb	$0, -320(%rbp)
	movb	%bl, -232(%rbp)
	movq	%r14, %rax
	movq	%r11, %rbx
	movq	%r13, %r14
	movq	%r10, %r11
	movq	%r15, %r13
	movq	%r9, %r10
	movq	-248(%rbp), %r15
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movq	%rdx, %rcx
	movq	-256(%rbp), %rdx
	jne	.L6091
.L3075:
	cmpb	$0, -296(%rbp)
	je	.L3076
	movq	%r14, -216(%rbp)
	movq	%r14, -376(%rbp)
.L3076:
	cmpb	$0, -304(%rbp)
	je	.L3077
	movq	%r13, -208(%rbp)
	movq	%r13, -384(%rbp)
.L3077:
	cmpb	$0, -232(%rbp)
	je	.L3078
	movq	%r12, -200(%rbp)
	movq	%r12, -392(%rbp)
.L3078:
	cmpb	$0, -312(%rbp)
	je	.L3079
	movq	%rbx, -192(%rbp)
	movq	%rbx, -400(%rbp)
.L3079:
	cmpb	$0, -352(%rbp)
	je	.L3080
	movq	%r11, -184(%rbp)
	movq	%r11, -408(%rbp)
.L3080:
	cmpb	$0, -360(%rbp)
	je	.L3081
	movq	%r10, -176(%rbp)
	movq	%r10, -416(%rbp)
.L3081:
	cmpb	$0, -288(%rbp)
	je	.L3082
	movq	%r9, -168(%rbp)
	movq	%r9, -424(%rbp)
.L3082:
	cmpb	$0, -280(%rbp)
	je	.L3083
	movq	%r8, -160(%rbp)
	movq	%r8, -432(%rbp)
.L3083:
	cmpb	$0, -336(%rbp)
	je	.L3084
	movq	%rdi, -152(%rbp)
	movq	%rdi, -440(%rbp)
.L3084:
	cmpb	$0, -344(%rbp)
	je	.L3085
	movq	%rsi, -144(%rbp)
	movq	%rsi, -448(%rbp)
.L3085:
	cmpb	$0, -264(%rbp)
	je	.L3086
	movq	%rcx, -136(%rbp)
	movq	%rcx, -456(%rbp)
.L3086:
	cmpb	$0, -328(%rbp)
	je	.L6016
	movq	%rdx, -128(%rbp)
	movq	%rdx, -464(%rbp)
.L6016:
	movq	-368(%rbp), %r14
.L3044:
	movq	-376(%rbp), %r12
	movq	-384(%rbp), %r8
	movq	-392(%rbp), %rdi
	movq	-400(%rbp), %rsi
	movq	-408(%rbp), %rcx
	movq	-416(%rbp), %rdx
	movq	-424(%rbp), %r11
	movq	-432(%rbp), %rax
	movq	-440(%rbp), %r14
	movq	-448(%rbp), %r13
	movq	-456(%rbp), %rbx
	movq	-464(%rbp), %r10
	jmp	.L2569
.L3062:
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L6022
	movq	-232(%rbp), %rsi
	movq	%r8, %rdx
	movq	%r11, %rdi
	addq	$520, %rsp
	popq	%rbx
	popq	%r12
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r10), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_Z13access_randomILi13ELi0EEP6recordPS1_ll
.L5888:
	.cfi_restore_state
	movq	72(%r11), %r15
	movq	(%rsi), %r13
	movq	8(%rsi), %r12
	movq	16(%rsi), %r10
	movq	24(%rsi), %r9
	movq	%r15, -248(%rbp)
	movq	32(%rsi), %rcx
	movq	%r13, -224(%rbp)
	movq	40(%rsi), %rdx
	movq	%r12, -216(%rbp)
	movq	56(%r11), %r8
	movq	%r10, -208(%rbp)
	movq	64(%r11), %r14
	movq	%r9, -200(%rbp)
	movq	80(%r11), %r11
	movq	%rcx, -192(%rbp)
	movq	48(%rsi), %rsi
	movq	%rdx, -184(%rbp)
	cmpq	$0, -240(%rbp)
	movq	%r8, -168(%rbp)
	movq	%r14, -160(%rbp)
	movq	%r15, -152(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%r11, -256(%rbp)
	movq	%r11, -144(%rbp)
	jle	.L6092
	movq	%rcx, %r11
	movq	%rcx, -368(%rbp)
	movq	%r9, %rbx
	movq	%r13, %r15
	movq	-256(%rbp), %rcx
	movq	%r13, %rax
	movq	%r13, -336(%rbp)
	movq	%r14, %rdi
	movq	%r12, %r13
	movq	%r12, -344(%rbp)
	movq	%r10, %r12
	movq	%r10, -352(%rbp)
	movq	%rdx, %r10
	movq	%r9, -360(%rbp)
	movq	%rsi, %r9
	movq	%rdx, -376(%rbp)
	xorl	%edx, %edx
	movq	%rsi, -384(%rbp)
	movq	-248(%rbp), %rsi
	movq	%r14, -400(%rbp)
	movq	%rcx, %r14
	movq	%r8, -424(%rbp)
	movb	%dl, -328(%rbp)
	movq	%r14, %rdx
	movq	%r11, %r14
	movq	%rbx, %r11
	movq	%r12, %rbx
	movq	%r13, %r12
	movq	-424(%rbp), %r13
	movq	%r8, -392(%rbp)
	movq	%rcx, -416(%rbp)
	movq	%r9, %r8
	xorl	%ecx, %ecx
	movq	%rsi, -408(%rbp)
	movb	$0, -320(%rbp)
	movb	$0, -280(%rbp)
	movb	$0, -304(%rbp)
	movb	$0, -312(%rbp)
	movb	$0, -256(%rbp)
	movb	$0, -264(%rbp)
	movb	$0, -288(%rbp)
	movb	$0, -296(%rbp)
	movb	$0, -248(%rbp)
	movq	$0, -272(%rbp)
	.p2align 4,,10
	.p2align 3
.L2968:
#APP
# 267 "mem.cc" 1
	# traverse loop begin (n_chains = $11, payload = $0)
# 0 "" 2
#NO_APP
	movq	-232(%rbp), %r9
	testq	%r9, %r9
	jle	.L2966
	movq	%r9, %rcx
	movq	(%rax), %rax
	movl	$1, %r15d
	subq	$1, %rcx
	movq	(%r12), %r12
	andl	$3, %ecx
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r10), %r10
	movq	(%r8), %r8
	movq	0(%r13), %r13
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	cmpq	$1, %r9
	je	.L5889
	testq	%rcx, %rcx
	je	.L2967
	cmpq	$1, %rcx
	je	.L5220
	cmpq	$2, %rcx
	je	.L5221
	movq	(%rax), %rax
	movl	$2, %r15d
	movq	(%r12), %r12
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r10), %r10
	movq	(%r8), %r8
	movq	0(%r13), %r13
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
.L5221:
	movq	(%rax), %rax
	addq	$1, %r15
	movq	(%r12), %r12
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r10), %r10
	movq	(%r8), %r8
	movq	0(%r13), %r13
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
.L5220:
	movq	(%rax), %rax
	addq	$1, %r15
	movq	(%r12), %r12
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r14), %r14
	movq	(%r10), %r10
	movq	(%r8), %r8
	movq	0(%r13), %r13
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rdx), %rdx
	cmpq	%r15, -232(%rbp)
	je	.L5889
.L2967:
	movq	(%rax), %rcx
	addq	$4, %r15
	movq	(%r12), %r12
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r14), %rax
	movq	(%r10), %r9
	movq	(%r8), %r8
	movq	0(%r13), %r10
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rdx), %r13
	movq	(%rcx), %r14
	movq	(%r12), %r12
	movq	(%rbx), %rcx
	movq	(%r11), %rdx
	movq	(%rax), %rax
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%r10), %r10
	movq	(%rdi), %rdi
	movq	(%rsi), %r11
	movq	0(%r13), %rbx
	movq	(%r14), %r13
	movq	(%r12), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %r14
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%r10), %r12
	movq	(%rdi), %rdi
	movq	%r12, -248(%rbp)
	movq	(%r11), %rax
	movq	(%rbx), %r10
	movq	%rax, -256(%rbp)
	movq	0(%r13), %rax
	movq	%r10, -264(%rbp)
	movq	(%rsi), %r12
	movq	-248(%rbp), %r13
	movq	(%rcx), %rbx
	movq	-256(%rbp), %rsi
	movq	-264(%rbp), %rcx
	movq	(%rdx), %r11
	movq	(%r14), %r14
	movq	(%r9), %r10
	movq	(%r8), %r8
	movq	0(%r13), %r13
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rdx
	cmpq	%r15, -232(%rbp)
	jne	.L2967
.L5889:
	movq	%rax, %r15
	movb	$1, -320(%rbp)
	movl	$1, %ecx
	movb	$1, -280(%rbp)
	movb	$1, -304(%rbp)
	movb	$1, -312(%rbp)
	movb	$1, -256(%rbp)
	movb	$1, -264(%rbp)
	movb	$1, -288(%rbp)
	movb	$1, -296(%rbp)
	movb	$1, -248(%rbp)
	movb	$1, -328(%rbp)
.L2966:
#APP
# 281 "mem.cc" 1
	# traverse loop end (n_chains = $11, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, -272(%rbp)
	movq	-272(%rbp), %r9
	cmpq	%r9, -240(%rbp)
	jne	.L2968
	movq	%r13, -232(%rbp)
	movq	%r12, %r13
	movq	%rbx, %r12
	movq	%r11, %rbx
	movq	%r14, %r11
	movq	%rdx, %r14
	movzbl	-328(%rbp), %edx
	movq	%r8, %r9
	movq	-232(%rbp), %r8
	testb	%dl, %dl
	jne	.L6093
.L2969:
	testb	%cl, %cl
	je	.L2970
	movq	%r13, -216(%rbp)
	movq	%r13, -344(%rbp)
.L2970:
	cmpb	$0, -248(%rbp)
	je	.L2971
	movq	%r12, -208(%rbp)
	movq	%r12, -352(%rbp)
.L2971:
	cmpb	$0, -296(%rbp)
	je	.L2972
	movq	%rbx, -200(%rbp)
	movq	%rbx, -360(%rbp)
.L2972:
	cmpb	$0, -288(%rbp)
	je	.L2973
	movq	%r11, -192(%rbp)
	movq	%r11, -368(%rbp)
.L2973:
	cmpb	$0, -264(%rbp)
	je	.L2974
	movq	%r10, -184(%rbp)
	movq	%r10, -376(%rbp)
.L2974:
	cmpb	$0, -256(%rbp)
	je	.L2975
	movq	%r9, -176(%rbp)
	movq	%r9, -384(%rbp)
.L2975:
	cmpb	$0, -312(%rbp)
	je	.L2976
	movq	%r8, -168(%rbp)
	movq	%r8, -392(%rbp)
.L2976:
	cmpb	$0, -304(%rbp)
	je	.L2977
	movq	%rdi, -160(%rbp)
	movq	%rdi, -400(%rbp)
.L2977:
	cmpb	$0, -280(%rbp)
	je	.L2978
	movq	%rsi, -152(%rbp)
	movq	%rsi, -408(%rbp)
.L2978:
	cmpb	$0, -320(%rbp)
	je	.L2965
	movq	%r14, -144(%rbp)
	movq	%r14, -416(%rbp)
.L2965:
	movq	-336(%rbp), %r10
	movq	-344(%rbp), %rsi
	movq	-352(%rbp), %rcx
	movq	-360(%rbp), %r13
	movq	-368(%rbp), %r12
	movq	-376(%rbp), %rbx
	movq	-384(%rbp), %r11
	movq	-392(%rbp), %r14
	movq	-400(%rbp), %rdx
	movq	-408(%rbp), %r9
	movq	-416(%rbp), %r8
	jmp	.L2569
.L5897:
	movq	72(%r11), %r15
	movq	80(%r11), %r14
	movq	88(%r11), %rcx
	movq	96(%r11), %r13
	movq	(%rsi), %r12
	movq	%r15, -248(%rbp)
	movq	8(%rsi), %rbx
	movq	%r15, -152(%rbp)
	movq	16(%rsi), %r10
	movq	%r14, -256(%rbp)
	movq	24(%rsi), %r9
	movq	%r14, -144(%rbp)
	movq	32(%rsi), %rdi
	movq	%r12, -224(%rbp)
	movq	40(%rsi), %rax
	movq	%rbx, -216(%rbp)
	movq	48(%rsi), %rdx
	movq	%r10, -208(%rbp)
	movq	64(%r11), %r8
	movq	%r9, -200(%rbp)
	movq	56(%rsi), %rsi
	movq	%rdi, -192(%rbp)
	movq	104(%r11), %r11
	movq	%rax, -184(%rbp)
	movq	%rdx, -176(%rbp)
	movq	%r8, -160(%rbp)
	movq	%rsi, -168(%rbp)
	movq	%rcx, -264(%rbp)
	movq	%rcx, -136(%rbp)
	movq	%r13, -272(%rbp)
	movq	%r13, -128(%rbp)
	movq	%r11, -280(%rbp)
	movq	%r11, -120(%rbp)
	cmpq	$0, -240(%rbp)
	jle	.L6094
	movq	%rax, -432(%rbp)
	movq	%r12, %r15
	movq	%rbx, %r14
	movq	%r10, %r13
	movq	%rax, -384(%rbp)
	movq	-256(%rbp), %rax
	movq	-272(%rbp), %r11
	movq	%r12, -392(%rbp)
	movq	%r9, %r12
	movq	%rbx, -400(%rbp)
	movq	%rdi, %rbx
	movq	%r10, -408(%rbp)
	movq	%rdx, %r10
	movq	%r9, -416(%rbp)
	movq	%rsi, %r9
	movq	%rdi, -424(%rbp)
	movq	-248(%rbp), %rdi
	movq	%rdx, -440(%rbp)
	movq	-264(%rbp), %rdx
	movq	%rsi, -448(%rbp)
	movq	%rax, %rsi
	movq	%rax, -472(%rbp)
	movq	-280(%rbp), %rax
	movq	%r11, -488(%rbp)
	movq	%r8, -456(%rbp)
	movq	%rdx, %rcx
	movq	%rdi, -464(%rbp)
	movq	%rdx, -480(%rbp)
	movq	%rax, -496(%rbp)
	movb	$0, -344(%rbp)
	movb	$0, -336(%rbp)
	movb	$0, -304(%rbp)
	movb	$0, -264(%rbp)
	movb	$0, -280(%rbp)
	movb	$0, -360(%rbp)
	movb	$0, -352(%rbp)
	movb	$0, -296(%rbp)
	movb	$0, -376(%rbp)
	movb	$0, -368(%rbp)
	movb	$0, -288(%rbp)
	movb	$0, -312(%rbp)
	movb	$0, -320(%rbp)
	movq	%r11, -256(%rbp)
	movq	-384(%rbp), %r11
	movb	$0, -328(%rbp)
	movq	$0, -272(%rbp)
	movq	%r15, -248(%rbp)
	.p2align 4,,10
	.p2align 3
.L3130:
#APP
# 267 "mem.cc" 1
	# traverse loop begin (n_chains = $14, payload = $0)
# 0 "" 2
#NO_APP
	movq	-232(%rbp), %rdx
	testq	%rdx, %rdx
	jle	.L3128
	movq	%rdx, %r15
	subq	$1, %r15
	movq	%r15, %rdx
	movq	-248(%rbp), %r15
	movq	$1, -248(%rbp)
	andl	$3, %edx
	cmpq	$1, -232(%rbp)
	movq	%rdx, -264(%rbp)
	movq	-256(%rbp), %rdx
	movq	(%r15), %r15
	movq	(%r14), %r14
	movq	0(%r13), %r13
	movq	(%r12), %r12
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	%rdx, -256(%rbp)
	je	.L5898
	movq	-264(%rbp), %rdx
	testq	%rdx, %rdx
	je	.L5981
	cmpq	$1, %rdx
	je	.L5226
	cmpq	$2, %rdx
	je	.L5227
	movq	$2, -248(%rbp)
	movq	(%r15), %r15
	movq	-256(%rbp), %rdx
	movq	(%r14), %r14
	movq	0(%r13), %r13
	movq	(%r12), %r12
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	%rdx, -256(%rbp)
.L5227:
	movq	-256(%rbp), %rdx
	movq	(%r15), %r15
	movq	(%r14), %r14
	movq	0(%r13), %r13
	movq	(%r12), %r12
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	addq	$1, -248(%rbp)
	movq	(%rax), %rax
	movq	%rdx, -256(%rbp)
.L5226:
	movq	-256(%rbp), %rdx
	movq	(%r15), %r15
	movq	(%r14), %r14
	movq	0(%r13), %r13
	movq	(%r12), %r12
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	addq	$1, -248(%rbp)
	movq	(%rax), %rax
	movq	%rdx, -256(%rbp)
	movq	-248(%rbp), %rdx
	cmpq	%rdx, -232(%rbp)
	je	.L5898
.L5981:
	movq	-256(%rbp), %rdx
	movq	%rax, -264(%rbp)
.L3129:
	movq	-264(%rbp), %rax
	movq	(%r15), %r15
	movq	(%r14), %r14
	movq	0(%r13), %r13
	movq	(%r12), %r12
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r15), %r15
	movq	(%r14), %r14
	movq	0(%r13), %r13
	movq	(%r12), %r12
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r15), %r15
	movq	(%r14), %r14
	movq	0(%r13), %r13
	movq	(%r12), %r12
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	(%r15), %r15
	movq	(%r14), %r14
	movq	0(%r13), %r13
	movq	(%r12), %r12
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	addq	$4, -248(%rbp)
	movq	%rax, -264(%rbp)
	movq	-248(%rbp), %rax
	cmpq	%rax, -232(%rbp)
	jne	.L3129
	movq	-264(%rbp), %rax
	movq	%rdx, -256(%rbp)
.L5898:
	movq	%r15, -248(%rbp)
	movb	$1, -344(%rbp)
	movb	$1, -336(%rbp)
	movb	$1, -304(%rbp)
	movb	$1, -264(%rbp)
	movb	$1, -280(%rbp)
	movb	$1, -360(%rbp)
	movb	$1, -352(%rbp)
	movb	$1, -296(%rbp)
	movb	$1, -376(%rbp)
	movb	$1, -368(%rbp)
	movb	$1, -288(%rbp)
	movb	$1, -312(%rbp)
	movb	$1, -320(%rbp)
	movb	$1, -328(%rbp)
.L3128:
#APP
# 281 "mem.cc" 1
	# traverse loop end (n_chains = $14, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, -272(%rbp)
	movq	-272(%rbp), %rdx
	cmpq	%rdx, -240(%rbp)
	jne	.L3130
	cmpb	$0, -328(%rbp)
	movq	%r15, -232(%rbp)
	movq	%rax, %rdx
	movq	-248(%rbp), %r15
	movq	%r11, -384(%rbp)
	movq	-256(%rbp), %rax
	jne	.L6095
.L3131:
	cmpb	$0, -320(%rbp)
	je	.L3132
	movq	%r14, -216(%rbp)
	movq	%r14, -400(%rbp)
.L3132:
	cmpb	$0, -312(%rbp)
	je	.L3133
	movq	%r13, -208(%rbp)
	movq	%r13, -408(%rbp)
.L3133:
	cmpb	$0, -288(%rbp)
	je	.L3134
	movq	%r12, -200(%rbp)
	movq	%r12, -416(%rbp)
.L3134:
	cmpb	$0, -368(%rbp)
	je	.L3135
	movq	%rbx, -192(%rbp)
	movq	%rbx, -424(%rbp)
.L3135:
	cmpb	$0, -376(%rbp)
	je	.L3136
	movq	-384(%rbp), %r14
	movq	%r14, -184(%rbp)
	movq	%r14, -432(%rbp)
.L3136:
	cmpb	$0, -296(%rbp)
	je	.L3137
	movq	%r10, -176(%rbp)
	movq	%r10, -440(%rbp)
.L3137:
	cmpb	$0, -352(%rbp)
	je	.L3138
	movq	%r9, -168(%rbp)
	movq	%r9, -448(%rbp)
.L3138:
	cmpb	$0, -360(%rbp)
	je	.L3139
	movq	%r8, -160(%rbp)
	movq	%r8, -456(%rbp)
.L3139:
	cmpb	$0, -280(%rbp)
	je	.L3140
	movq	%rdi, -152(%rbp)
	movq	%rdi, -464(%rbp)
.L3140:
	cmpb	$0, -264(%rbp)
	je	.L3141
	movq	%rsi, -144(%rbp)
	movq	%rsi, -472(%rbp)
.L3141:
	cmpb	$0, -304(%rbp)
	je	.L3142
	movq	%rcx, -136(%rbp)
	movq	%rcx, -480(%rbp)
.L3142:
	cmpb	$0, -336(%rbp)
	je	.L3143
	movq	%rax, -128(%rbp)
	movq	%rax, -488(%rbp)
.L3143:
	cmpb	$0, -344(%rbp)
	je	.L3127
	movq	%rdx, -120(%rbp)
	movq	%rdx, -496(%rbp)
.L3127:
	movq	-392(%rbp), %r8
	movq	-400(%rbp), %rdi
	movq	-408(%rbp), %rsi
	movq	-416(%rbp), %rcx
	movq	-424(%rbp), %rdx
	movq	-432(%rbp), %rax
	movq	-440(%rbp), %r11
	movq	-448(%rbp), %r14
	movq	-456(%rbp), %r13
	movq	-464(%rbp), %r12
	movq	-472(%rbp), %rbx
	movq	-480(%rbp), %r10
	movq	-488(%rbp), %r9
	movq	-496(%rbp), %r8
	jmp	.L2569
.L3118:
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L6022
	movq	-232(%rbp), %rsi
	movq	%r8, %rdx
	movq	%r11, %rdi
	addq	$520, %rsp
	popq	%rbx
	popq	%r12
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r10), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_Z13access_randomILi14ELi0EEP6recordPS1_ll
.L3297:
	.cfi_restore_state
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L6022
	movq	-232(%rbp), %rsi
	movq	%r8, %rdx
	movq	%r11, %rdi
	addq	$520, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r13), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_Z13access_randomILi17ELi0EEP6recordPS1_ll
.L5907:
	.cfi_restore_state
	leaq	-224(%rbp), %rdi
	movl	$136, %edx
	movq	%r11, %rsi
	call	memcpy
	movq	-224(%rbp), %rdx
	cmpq	$0, -240(%rbp)
	movq	%rdx, -432(%rbp)
	jle	.L6029
	movq	-184(%rbp), %r10
	movq	%rdx, %r15
	movq	-176(%rbp), %rax
	movq	-216(%rbp), %rdi
	movq	-200(%rbp), %rbx
	movq	-192(%rbp), %r9
	movq	%r10, -472(%rbp)
	movq	%r10, %r11
	movq	-168(%rbp), %rcx
	movq	%rax, -480(%rbp)
	movq	%rax, %r10
	movq	-152(%rbp), %rsi
	movq	%rdi, -440(%rbp)
	movq	%rdi, %r14
	movq	-144(%rbp), %rdx
	movq	%rbx, -456(%rbp)
	movq	%rbx, %r12
	movq	-136(%rbp), %rax
	movq	%r9, -464(%rbp)
	movq	%r9, %rbx
	movq	%rcx, -488(%rbp)
	movq	%rcx, %r9
	movq	-208(%rbp), %r13
	movq	%rsi, -504(%rbp)
	movq	%rsi, %rdi
	movq	-160(%rbp), %r8
	movq	%rdx, -512(%rbp)
	movq	%rdx, %rsi
	movq	-128(%rbp), %rdx
	movq	%rax, -520(%rbp)
	movq	%rax, %rcx
	movq	-120(%rbp), %rax
	movq	%r13, -448(%rbp)
	movq	%r8, -496(%rbp)
	movq	%rdx, -528(%rbp)
	movq	%rdx, -288(%rbp)
	movq	-112(%rbp), %rdx
	movq	%rax, -536(%rbp)
	movq	%rax, -248(%rbp)
	movq	-104(%rbp), %rax
	movq	%rdx, -544(%rbp)
	movq	%rdx, -256(%rbp)
	movq	%rax, -552(%rbp)
	movq	-96(%rbp), %rdx
	movb	$0, -376(%rbp)
	movb	$0, -328(%rbp)
	movb	$0, -320(%rbp)
	movq	%rdx, -560(%rbp)
	movb	$0, -296(%rbp)
	movb	$0, -352(%rbp)
	movb	$0, -408(%rbp)
	movb	$0, -416(%rbp)
	movb	$0, -264(%rbp)
	movb	$0, -424(%rbp)
	movb	$0, -360(%rbp)
	movb	$0, -384(%rbp)
	movb	$0, -400(%rbp)
	movb	$0, -336(%rbp)
	movb	$0, -392(%rbp)
	movb	$0, -344(%rbp)
	movb	$0, -368(%rbp)
	movb	$0, -312(%rbp)
	movq	$0, -304(%rbp)
	movq	%rdx, -272(%rbp)
	movq	%rax, -280(%rbp)
	.p2align 4,,10
	.p2align 3
.L3305:
#APP
# 267 "mem.cc" 1
	# traverse loop begin (n_chains = $17, payload = $0)
# 0 "" 2
#NO_APP
	cmpq	$0, -232(%rbp)
	jle	.L3323
	movq	$1, -264(%rbp)
	movq	(%r15), %r15
	movq	-232(%rbp), %rax
	movq	(%r14), %r14
	movq	0(%r13), %r13
	movq	(%r12), %r12
	leaq	-1(%rax), %rdx
	movq	(%rbx), %rbx
	andl	$3, %edx
	movq	(%r11), %r11
	movq	%rdx, -296(%rbp)
	movq	-288(%rbp), %rdx
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	%rdx, -288(%rbp)
	movq	-248(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -248(%rbp)
	movq	-256(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -256(%rbp)
	movq	-280(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -280(%rbp)
	movq	-272(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -272(%rbp)
	cmpq	$1, %rax
	je	.L5097
	movq	-296(%rbp), %rax
	testq	%rax, %rax
	je	.L5993
	cmpq	$1, %rax
	je	.L5233
	cmpq	$2, %rax
	je	.L5234
	movq	$2, -264(%rbp)
	movq	(%r15), %r15
	movq	-288(%rbp), %rdx
	movq	(%r14), %r14
	movq	0(%r13), %r13
	movq	(%r12), %r12
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, -288(%rbp)
	movq	(%rdx), %rax
	movq	-256(%rbp), %rdx
	movq	%rax, -248(%rbp)
	movq	(%rdx), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, -256(%rbp)
	movq	(%rdx), %rax
	movq	-272(%rbp), %rdx
	movq	%rax, -280(%rbp)
	movq	(%rdx), %rax
	movq	%rax, -272(%rbp)
.L5234:
	movq	-288(%rbp), %rdx
	movq	(%r15), %r15
	movq	(%r14), %r14
	movq	0(%r13), %r13
	movq	(%r12), %r12
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rax
	movq	-248(%rbp), %rdx
	addq	$1, -264(%rbp)
	movq	%rax, -288(%rbp)
	movq	(%rdx), %rax
	movq	-256(%rbp), %rdx
	movq	%rax, -248(%rbp)
	movq	(%rdx), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, -256(%rbp)
	movq	(%rdx), %rax
	movq	-272(%rbp), %rdx
	movq	%rax, -280(%rbp)
	movq	(%rdx), %rax
	movq	%rax, -272(%rbp)
.L5233:
	movq	-288(%rbp), %rdx
	movq	(%r15), %r15
	movq	(%r14), %r14
	movq	0(%r13), %r13
	movq	(%r12), %r12
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rax
	movq	-248(%rbp), %rdx
	addq	$1, -264(%rbp)
	movq	%rax, -288(%rbp)
	movq	(%rdx), %rax
	movq	-256(%rbp), %rdx
	movq	%rax, -248(%rbp)
	movq	(%rdx), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, -256(%rbp)
	movq	(%rdx), %rax
	movq	-272(%rbp), %rdx
	movq	%rax, -280(%rbp)
	movq	(%rdx), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, -272(%rbp)
	cmpq	%rdx, -232(%rbp)
	je	.L5097
.L5993:
	movq	-288(%rbp), %rdx
.L5232:
	movq	(%r15), %r15
	movq	(%r14), %r14
	movq	0(%r13), %r13
	movq	(%r12), %r12
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, -288(%rbp)
	movq	(%rdx), %rax
	movq	-256(%rbp), %rdx
	movq	%rax, -248(%rbp)
	movq	(%rdx), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, -296(%rbp)
	movq	(%rdx), %rax
	movq	-272(%rbp), %rdx
	movq	%rax, -256(%rbp)
	movq	(%rdx), %rax
	movq	(%r15), %r15
	movq	(%r14), %r14
	movq	0(%r13), %r13
	movq	%rax, -272(%rbp)
	movq	(%r12), %r12
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	-248(%rbp), %rax
	movq	-288(%rbp), %rdx
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-296(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -280(%rbp)
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-272(%rbp), %rax
	movq	(%rax), %rax
	movq	(%r15), %r15
	movq	(%r14), %r14
	movq	0(%r13), %r13
	movq	%rax, -272(%rbp)
	movq	(%r12), %r12
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -280(%rbp)
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -288(%rbp)
	movq	-272(%rbp), %rax
	movq	(%rax), %rax
	movq	(%r15), %r15
	movq	(%r14), %r14
	movq	0(%r13), %r13
	movq	%rax, -272(%rbp)
	movq	-248(%rbp), %rax
	movq	(%r12), %r12
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-288(%rbp), %rax
	addq	$4, -264(%rbp)
	movq	(%rax), %rax
	movq	%rax, -280(%rbp)
	movq	-272(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -272(%rbp)
	movq	-264(%rbp), %rax
	cmpq	%rax, -232(%rbp)
	jne	.L5232
	movq	%rdx, -288(%rbp)
.L5097:
	movb	$1, -376(%rbp)
	movb	$1, -328(%rbp)
	movb	$1, -320(%rbp)
	movb	$1, -296(%rbp)
	movb	$1, -352(%rbp)
	movb	$1, -408(%rbp)
	movb	$1, -416(%rbp)
	movb	$1, -264(%rbp)
	movb	$1, -424(%rbp)
	movb	$1, -360(%rbp)
	movb	$1, -384(%rbp)
	movb	$1, -400(%rbp)
	movb	$1, -336(%rbp)
	movb	$1, -392(%rbp)
	movb	$1, -344(%rbp)
	movb	$1, -368(%rbp)
	movb	$1, -312(%rbp)
.L3323:
#APP
# 281 "mem.cc" 1
	# traverse loop end (n_chains = $17, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, -304(%rbp)
	movq	-304(%rbp), %rdx
	cmpq	%rdx, -240(%rbp)
	jne	.L3305
	cmpb	$0, -312(%rbp)
	movq	-272(%rbp), %rdx
	movq	-280(%rbp), %rax
	jne	.L6096
.L3306:
	cmpb	$0, -368(%rbp)
	je	.L3307
	movq	%r14, -216(%rbp)
	movq	%r14, -440(%rbp)
.L3307:
	cmpb	$0, -344(%rbp)
	je	.L3308
	movq	%r13, -208(%rbp)
	movq	%r13, -448(%rbp)
.L3308:
	cmpb	$0, -392(%rbp)
	je	.L3309
	movq	%r12, -200(%rbp)
	movq	%r12, -456(%rbp)
.L3309:
	cmpb	$0, -336(%rbp)
	je	.L3310
	movq	%rbx, -192(%rbp)
	movq	%rbx, -464(%rbp)
.L3310:
	cmpb	$0, -400(%rbp)
	je	.L3311
	movq	%r11, -184(%rbp)
	movq	%r11, -472(%rbp)
.L3311:
	cmpb	$0, -384(%rbp)
	je	.L3312
	movq	%r10, -176(%rbp)
	movq	%r10, -480(%rbp)
.L3312:
	cmpb	$0, -360(%rbp)
	je	.L3313
	movq	%r9, -168(%rbp)
	movq	%r9, -488(%rbp)
.L3313:
	cmpb	$0, -424(%rbp)
	je	.L3314
	movq	%r8, -160(%rbp)
	movq	%r8, -496(%rbp)
.L3314:
	cmpb	$0, -264(%rbp)
	je	.L3315
	movq	%rdi, -152(%rbp)
	movq	%rdi, -504(%rbp)
.L3315:
	cmpb	$0, -416(%rbp)
	je	.L3316
	movq	%rsi, -144(%rbp)
	movq	%rsi, -512(%rbp)
.L3316:
	cmpb	$0, -408(%rbp)
	je	.L3317
	movq	%rcx, -136(%rbp)
	movq	%rcx, -520(%rbp)
.L3317:
	cmpb	$0, -352(%rbp)
	je	.L3318
	movq	-288(%rbp), %r15
	movq	%r15, -128(%rbp)
	movq	%r15, -528(%rbp)
.L3318:
	cmpb	$0, -296(%rbp)
	je	.L3319
	movq	-248(%rbp), %r14
	movq	%r14, -120(%rbp)
	movq	%r14, -536(%rbp)
.L3319:
	cmpb	$0, -320(%rbp)
	je	.L3320
	movq	-256(%rbp), %r13
	movq	%r13, -112(%rbp)
	movq	%r13, -544(%rbp)
.L3320:
	cmpb	$0, -328(%rbp)
	je	.L3321
	movq	%rax, -104(%rbp)
	movq	%rax, -552(%rbp)
.L3321:
	cmpb	$0, -376(%rbp)
	je	.L3322
	movq	%rdx, -96(%rbp)
	movq	%rdx, -560(%rbp)
.L3322:
	movq	-432(%rbp), %r15
	movq	-440(%rbp), %rdi
	movq	-448(%rbp), %rsi
	movq	-456(%rbp), %rcx
	movq	-464(%rbp), %rdx
	movq	-472(%rbp), %r14
	movq	-480(%rbp), %r13
	movq	-488(%rbp), %rax
	movq	-496(%rbp), %r12
	movq	-504(%rbp), %rbx
	movq	-512(%rbp), %r11
	movq	-520(%rbp), %r10
	movq	-528(%rbp), %r9
	movq	-536(%rbp), %r8
	movq	-544(%rbp), %rdi
	movq	-552(%rbp), %rsi
	movq	-560(%rbp), %rcx
	jmp	.L2569
.L3378:
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L6022
	movq	-232(%rbp), %rsi
	movq	%r11, %rdi
	movq	%r8, %rdx
	addq	$520, %rsp
	popq	%rbx
	popq	%r12
	popq	%r11
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r11), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_Z13access_randomILi19ELi0EEP6recordPS1_ll
.L3344:
	.cfi_restore_state
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L6022
	movq	-232(%rbp), %rsi
	movq	%r11, %rdi
	movq	%r8, %rdx
	addq	$520, %rsp
	popq	%rbx
	popq	%r12
	popq	%r11
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r11), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_Z13access_randomILi18ELi0EEP6recordPS1_ll
.L5891:
	.cfi_restore_state
	movq	64(%r11), %rbx
	movq	72(%r11), %r15
	movq	80(%r11), %r14
	movq	(%rsi), %r12
	movq	8(%rsi), %r10
	movq	%rbx, -248(%rbp)
	movq	16(%rsi), %r9
	movq	%rbx, -160(%rbp)
	movq	24(%rsi), %r8
	movq	%r15, -256(%rbp)
	movq	40(%r11), %rax
	movq	%r12, -224(%rbp)
	movq	48(%r11), %rdx
	movq	%r10, -216(%rbp)
	movq	56(%r11), %rdi
	movq	%r9, -208(%rbp)
	movq	88(%r11), %r11
	movq	%r8, -200(%rbp)
	movq	32(%rsi), %rsi
	movq	%rax, -184(%rbp)
	cmpq	$0, -240(%rbp)
	movq	%rdx, -176(%rbp)
	movq	%rdi, -168(%rbp)
	movq	%r15, -152(%rbp)
	movq	%rsi, -192(%rbp)
	movq	%r14, -264(%rbp)
	movq	%r14, -144(%rbp)
	movq	%r11, -272(%rbp)
	movq	%r11, -136(%rbp)
	jle	.L6097
	movq	-248(%rbp), %rcx
	movq	%r10, %r13
	movq	%rsi, %r11
	movq	%r12, %r15
	movq	%r10, -360(%rbp)
	movq	%rax, %r10
	movq	%r12, %r14
	movq	%r8, %rbx
	movq	%rax, -392(%rbp)
	movq	-264(%rbp), %rax
	movq	%r12, -352(%rbp)
	movq	%r9, %r12
	movq	%r9, -368(%rbp)
	movq	%rdx, %r9
	movq	%rsi, -384(%rbp)
	movq	-256(%rbp), %rsi
	movq	%rdx, -400(%rbp)
	movq	-272(%rbp), %rdx
	movq	%r8, -376(%rbp)
	movq	%rdi, %r8
	movq	%rdi, -408(%rbp)
	movq	%rcx, %rdi
	movq	%rcx, -416(%rbp)
	movq	%rax, %rcx
	movq	%rsi, -424(%rbp)
	movq	%rax, -432(%rbp)
	xorl	%eax, %eax
	movq	%r12, -248(%rbp)
	movq	%rcx, %r12
	movq	%rsi, %rcx
	movq	%rdi, %rsi
	movq	%rdx, -440(%rbp)
	movq	%r8, %rdi
	movq	%r9, %r8
	movq	%r10, %r9
	movb	$0, -304(%rbp)
	movq	%r11, %r10
	movq	%rbx, %r11
	movb	$0, -344(%rbp)
	movb	$0, -312(%rbp)
	movb	$0, -320(%rbp)
	movb	$0, -328(%rbp)
	movb	$0, -288(%rbp)
	movb	$0, -336(%rbp)
	movb	$0, -296(%rbp)
	movb	$0, -264(%rbp)
	movb	$0, -256(%rbp)
	movb	$0, -280(%rbp)
	movq	$0, -272(%rbp)
	.p2align 4,,10
	.p2align 3
.L3020:
#APP
# 267 "mem.cc" 1
	# traverse loop begin (n_chains = $12, payload = $0)
# 0 "" 2
#NO_APP
	movq	-232(%rbp), %rbx
	testq	%rbx, %rbx
	jle	.L3018
	movq	-248(%rbp), %r15
	movq	%rbx, %rax
	movq	(%r14), %r14
	subq	$1, %rax
	movq	0(%r13), %r13
	andl	$3, %eax
	movq	(%r15), %r15
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	%r15, -248(%rbp)
	movq	(%r8), %r8
	movl	$1, %r15d
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%r12), %r12
	movq	(%rdx), %rdx
	cmpq	$1, %rbx
	je	.L5892
	testq	%rax, %rax
	je	.L5972
	cmpq	$1, %rax
	je	.L5222
	cmpq	$2, %rax
	je	.L5223
	movq	-248(%rbp), %rbx
	movl	$2, %r15d
	movq	(%r14), %r14
	movq	0(%r13), %r13
	movq	(%rbx), %rax
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	%rax, -248(%rbp)
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%r12), %r12
	movq	(%rdx), %rdx
.L5223:
	movq	-248(%rbp), %rbx
	addq	$1, %r15
	movq	(%r14), %r14
	movq	0(%r13), %r13
	movq	(%rbx), %rax
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	%rax, -248(%rbp)
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%r12), %r12
	movq	(%rdx), %rdx
.L5222:
	movq	-248(%rbp), %rbx
	addq	$1, %r15
	movq	(%r14), %r14
	movq	0(%r13), %r13
	movq	(%rbx), %rax
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	%rax, -248(%rbp)
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%r12), %r12
	movq	(%rdx), %rdx
	cmpq	%r15, -232(%rbp)
	je	.L5892
	movq	%rax, %rbx
	movq	%r15, -248(%rbp)
.L3019:
	movq	(%r14), %r15
	movq	0(%r13), %r13
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %r14
	movq	(%r12), %r12
	movq	(%rdx), %rdx
	movq	(%r15), %r15
	movq	0(%r13), %r13
	movq	(%rbx), %rax
	movq	(%r11), %rcx
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%r14), %r11
	movq	(%r12), %rbx
	movq	(%rdx), %r12
	movq	(%r15), %r14
	movq	0(%r13), %rdx
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%r11), %r15
	movq	(%rbx), %r13
	movq	(%r12), %r11
	movq	(%r14), %r14
	addq	$4, -248(%rbp)
	movq	%r13, -256(%rbp)
	movq	(%rdx), %r13
	movq	-256(%rbp), %r12
	movq	%r11, -264(%rbp)
	movq	-264(%rbp), %rdx
	movq	(%rax), %rbx
	movq	(%rcx), %r11
	movq	-248(%rbp), %rax
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%r15), %rcx
	movq	(%r12), %r12
	movq	(%rdx), %rdx
	cmpq	%rax, -232(%rbp)
	jne	.L3019
	movq	%rbx, -248(%rbp)
.L5892:
	movq	%r14, %r15
	movb	$1, -304(%rbp)
	movl	$1, %eax
	movb	$1, -344(%rbp)
	movb	$1, -312(%rbp)
	movb	$1, -320(%rbp)
	movb	$1, -328(%rbp)
	movb	$1, -288(%rbp)
	movb	$1, -336(%rbp)
	movb	$1, -296(%rbp)
	movb	$1, -264(%rbp)
	movb	$1, -256(%rbp)
	movb	$1, -280(%rbp)
.L3018:
#APP
# 281 "mem.cc" 1
	# traverse loop end (n_chains = $12, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, -272(%rbp)
	movq	-272(%rbp), %rbx
	cmpq	%rbx, -240(%rbp)
	jne	.L3020
	movq	%r11, %rbx
	movq	%r10, %r11
	movq	%r9, %r10
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movq	%r12, %rcx
	movq	-248(%rbp), %r12
	testb	%al, %al
	jne	.L6098
.L3021:
	cmpb	$0, -280(%rbp)
	je	.L3022
	movq	%r13, -216(%rbp)
	movq	%r13, -360(%rbp)
.L3022:
	cmpb	$0, -256(%rbp)
	je	.L3023
	movq	%r12, -208(%rbp)
	movq	%r12, -368(%rbp)
.L3023:
	cmpb	$0, -264(%rbp)
	je	.L3024
	movq	%rbx, -200(%rbp)
	movq	%rbx, -376(%rbp)
.L3024:
	cmpb	$0, -296(%rbp)
	je	.L3025
	movq	%r11, -192(%rbp)
	movq	%r11, -384(%rbp)
.L3025:
	cmpb	$0, -336(%rbp)
	je	.L3026
	movq	%r10, -184(%rbp)
	movq	%r10, -392(%rbp)
.L3026:
	cmpb	$0, -288(%rbp)
	je	.L3027
	movq	%r9, -176(%rbp)
	movq	%r9, -400(%rbp)
.L3027:
	cmpb	$0, -328(%rbp)
	je	.L3028
	movq	%r8, -168(%rbp)
	movq	%r8, -408(%rbp)
.L3028:
	cmpb	$0, -320(%rbp)
	je	.L3029
	movq	%rdi, -160(%rbp)
	movq	%rdi, -416(%rbp)
.L3029:
	cmpb	$0, -312(%rbp)
	je	.L3030
	movq	%rsi, -152(%rbp)
	movq	%rsi, -424(%rbp)
.L3030:
	cmpb	$0, -344(%rbp)
	je	.L3031
	movq	%rcx, -144(%rbp)
	movq	%rcx, -432(%rbp)
.L3031:
	cmpb	$0, -304(%rbp)
	je	.L3017
	movq	%rdx, -136(%rbp)
	movq	%rdx, -440(%rbp)
.L3017:
	movq	-352(%rbp), %rbx
	movq	-360(%rbp), %r11
	movq	-368(%rbp), %r10
	movq	-376(%rbp), %r9
	movq	-384(%rbp), %r8
	movq	-392(%rbp), %rdi
	movq	-400(%rbp), %rsi
	movq	-408(%rbp), %rcx
	movq	-416(%rbp), %rdx
	movq	-424(%rbp), %r14
	movq	-432(%rbp), %rax
	movq	-440(%rbp), %r12
	jmp	.L2569
.L5972:
	movq	-248(%rbp), %rbx
	movq	%r15, -248(%rbp)
	jmp	.L3019
.L5903:
	movq	72(%r11), %r15
	movq	(%rsi), %rbx
	movq	80(%r11), %r14
	movq	88(%r11), %r10
	movq	96(%r11), %r12
	movq	%r15, -248(%rbp)
	movq	8(%rsi), %r13
	movq	%r15, -152(%rbp)
	movq	16(%rsi), %r9
	movq	%r14, -256(%rbp)
	movq	104(%r11), %r15
	movq	%r14, -144(%rbp)
	movq	24(%rsi), %rdi
	movq	%rbx, -224(%rbp)
	movq	32(%rsi), %rcx
	movq	%r13, -216(%rbp)
	movq	40(%rsi), %rax
	movq	%r9, -208(%rbp)
	movq	48(%rsi), %rdx
	movq	%r15, -280(%rbp)
	movq	64(%r11), %r8
	movq	%rdi, -200(%rbp)
	movq	56(%rsi), %rsi
	movq	%rcx, -192(%rbp)
	movq	%rax, -184(%rbp)
	movq	%rdx, -176(%rbp)
	movq	%r8, -160(%rbp)
	movq	%rsi, -168(%rbp)
	movq	%r10, -264(%rbp)
	movq	%r10, -136(%rbp)
	movq	%r12, -272(%rbp)
	movq	%r12, -128(%rbp)
	movq	%r15, -120(%rbp)
	movq	112(%r11), %r14
	movq	%rbx, %r15
	movq	120(%r11), %r11
	movq	%rbx, -416(%rbp)
	cmpq	$0, -240(%rbp)
	movq	%r14, -288(%rbp)
	movq	%r14, -112(%rbp)
	movq	%r11, -296(%rbp)
	movq	%r11, -104(%rbp)
	jle	.L6099
	movq	%rcx, -448(%rbp)
	movq	%rcx, %rbx
	movq	%rax, %r11
	movq	%rdx, %r10
	movq	%rax, -456(%rbp)
	movq	%r13, %r14
	movq	%rdi, %r12
	movq	-256(%rbp), %rcx
	movq	-264(%rbp), %rax
	movq	%rdx, -464(%rbp)
	movq	-272(%rbp), %rdx
	movq	%r13, -424(%rbp)
	movq	%r9, %r13
	movq	%r9, -432(%rbp)
	movq	%rsi, %r9
	movq	%rdi, -440(%rbp)
	movq	-248(%rbp), %rdi
	movq	%rsi, -472(%rbp)
	movq	%rcx, %rsi
	movq	%rcx, -496(%rbp)
	movq	%rax, %rcx
	movq	%rax, -504(%rbp)
	movq	-280(%rbp), %rax
	movq	%rdx, -512(%rbp)
	movq	%rdx, -248(%rbp)
	movq	-288(%rbp), %rdx
	movq	%r8, -480(%rbp)
	movq	%rax, -520(%rbp)
	movq	%rax, -256(%rbp)
	movq	%rdx, -528(%rbp)
	movq	%rdx, %rax
	movq	-296(%rbp), %rdx
	movq	%rdi, -488(%rbp)
	movb	$0, -384(%rbp)
	movb	$0, -376(%rbp)
	movq	%rdx, -536(%rbp)
	movb	$0, -328(%rbp)
	movb	$0, -320(%rbp)
	movb	$0, -312(%rbp)
	movb	$0, -264(%rbp)
	movb	$0, -352(%rbp)
	movb	$0, -344(%rbp)
	movb	$0, -336(%rbp)
	movb	$0, -400(%rbp)
	movb	$0, -408(%rbp)
	movb	$0, -392(%rbp)
	movb	$0, -304(%rbp)
	movb	$0, -368(%rbp)
	movb	$0, -360(%rbp)
	movb	$0, -288(%rbp)
	movq	$0, -296(%rbp)
	movq	%rax, -272(%rbp)
	movq	%rdx, -280(%rbp)
	.p2align 4,,10
	.p2align 3
.L3248:
#APP
# 267 "mem.cc" 1
	# traverse loop begin (n_chains = $16, payload = $0)
# 0 "" 2
#NO_APP
	movq	-232(%rbp), %rax
	testq	%rax, %rax
	jle	.L3246
	leaq	-1(%rax), %rdx
	movq	(%r15), %r15
	movq	$1, -264(%rbp)
	andl	$3, %edx
	movq	(%r14), %r14
	movq	%rdx, -288(%rbp)
	movq	-248(%rbp), %rdx
	movq	0(%r13), %r13
	movq	(%r12), %r12
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	%rdx, -248(%rbp)
	movq	-256(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -256(%rbp)
	movq	-272(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -272(%rbp)
	movq	-280(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -280(%rbp)
	cmpq	$1, %rax
	je	.L5904
	movq	-288(%rbp), %rax
	testq	%rax, %rax
	je	.L3247
	cmpq	$1, %rax
	je	.L5230
	cmpq	$2, %rax
	je	.L5231
	movq	$2, -264(%rbp)
	movq	(%r15), %r15
	movq	-248(%rbp), %rdx
	movq	(%r14), %r14
	movq	0(%r13), %r13
	movq	(%r12), %r12
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rax
	movq	-256(%rbp), %rdx
	movq	%rax, -248(%rbp)
	movq	(%rdx), %rax
	movq	-272(%rbp), %rdx
	movq	%rax, -256(%rbp)
	movq	(%rdx), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, -272(%rbp)
	movq	(%rdx), %rax
	movq	%rax, -280(%rbp)
.L5231:
	movq	-248(%rbp), %rdx
	movq	(%r15), %r15
	movq	(%r14), %r14
	movq	0(%r13), %r13
	movq	(%r12), %r12
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rax
	movq	-256(%rbp), %rdx
	addq	$1, -264(%rbp)
	movq	%rax, -248(%rbp)
	movq	(%rdx), %rax
	movq	-272(%rbp), %rdx
	movq	%rax, -256(%rbp)
	movq	(%rdx), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, -272(%rbp)
	movq	(%rdx), %rax
	movq	%rax, -280(%rbp)
.L5230:
	movq	-248(%rbp), %rdx
	movq	(%r15), %r15
	movq	(%r14), %r14
	movq	0(%r13), %r13
	movq	(%r12), %r12
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rax
	movq	-256(%rbp), %rdx
	addq	$1, -264(%rbp)
	movq	%rax, -248(%rbp)
	movq	(%rdx), %rax
	movq	-272(%rbp), %rdx
	movq	%rax, -256(%rbp)
	movq	(%rdx), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, -272(%rbp)
	movq	(%rdx), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, -280(%rbp)
	cmpq	%rdx, -232(%rbp)
	je	.L5904
.L3247:
	movq	(%r15), %r15
	movq	(%r14), %r14
	movq	0(%r13), %r13
	movq	(%r12), %r12
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	-248(%rbp), %rax
	movq	%rcx, -288(%rbp)
	movq	-256(%rbp), %rcx
	movq	(%rax), %rdx
	movq	(%rcx), %rax
	movq	-272(%rbp), %rcx
	movq	%rax, -248(%rbp)
	movq	(%rcx), %rax
	movq	-280(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%r15), %r15
	movq	(%r14), %r14
	movq	0(%r13), %r13
	movq	%rcx, -256(%rbp)
	movq	(%r12), %r12
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	-288(%rbp), %rcx
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	%rdx, -272(%rbp)
	movq	-248(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	%rdx, -248(%rbp)
	movq	-256(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	(%r15), %r15
	movq	(%r14), %r14
	movq	0(%r13), %r13
	movq	%rdx, -256(%rbp)
	movq	-272(%rbp), %rdx
	movq	(%r12), %r12
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	%rdx, -272(%rbp)
	movq	-248(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	%rdx, -280(%rbp)
	movq	-256(%rbp), %rdx
	addq	$4, -264(%rbp)
	movq	(%rdx), %rdx
	movq	(%r15), %r15
	movq	(%r14), %r14
	movq	0(%r13), %r13
	movq	%rdx, -288(%rbp)
	movq	-272(%rbp), %rdx
	movq	(%r12), %r12
	movq	(%rbx), %rbx
	movq	(%r11), %r11
	movq	(%r10), %r10
	movq	(%r9), %r9
	movq	(%r8), %r8
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	(%rcx), %rcx
	movq	(%rdx), %rdx
	movq	%rdx, -248(%rbp)
	movq	-280(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	%rdx, -256(%rbp)
	movq	-288(%rbp), %rdx
	movq	%rax, -272(%rbp)
	movq	(%rdx), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, -280(%rbp)
	cmpq	%rdx, -232(%rbp)
	jne	.L3247
.L5904:
	movb	$1, -384(%rbp)
	movb	$1, -376(%rbp)
	movb	$1, -328(%rbp)
	movb	$1, -320(%rbp)
	movb	$1, -312(%rbp)
	movb	$1, -264(%rbp)
	movb	$1, -352(%rbp)
	movb	$1, -344(%rbp)
	movb	$1, -336(%rbp)
	movb	$1, -400(%rbp)
	movb	$1, -408(%rbp)
	movb	$1, -392(%rbp)
	movb	$1, -304(%rbp)
	movb	$1, -368(%rbp)
	movb	$1, -360(%rbp)
	movb	$1, -288(%rbp)
.L3246:
#APP
# 281 "mem.cc" 1
	# traverse loop end (n_chains = $16, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, -296(%rbp)
	movq	-296(%rbp), %rax
	cmpq	%rax, -240(%rbp)
	jne	.L3248
	cmpb	$0, -288(%rbp)
	movq	-272(%rbp), %rax
	movq	-280(%rbp), %rdx
	jne	.L6100
.L3249:
	cmpb	$0, -360(%rbp)
	je	.L3250
	movq	%r14, -216(%rbp)
	movq	%r14, -424(%rbp)
.L3250:
	cmpb	$0, -368(%rbp)
	je	.L3251
	movq	%r13, -208(%rbp)
	movq	%r13, -432(%rbp)
.L3251:
	cmpb	$0, -304(%rbp)
	je	.L3252
	movq	%r12, -200(%rbp)
	movq	%r12, -440(%rbp)
.L3252:
	cmpb	$0, -392(%rbp)
	je	.L3253
	movq	%rbx, -192(%rbp)
	movq	%rbx, -448(%rbp)
.L3253:
	cmpb	$0, -408(%rbp)
	je	.L3254
	movq	%r11, -184(%rbp)
	movq	%r11, -456(%rbp)
.L3254:
	cmpb	$0, -400(%rbp)
	je	.L3255
	movq	%r10, -176(%rbp)
	movq	%r10, -464(%rbp)
.L3255:
	cmpb	$0, -336(%rbp)
	je	.L3256
	movq	%r9, -168(%rbp)
	movq	%r9, -472(%rbp)
.L3256:
	cmpb	$0, -344(%rbp)
	je	.L3257
	movq	%r8, -160(%rbp)
	movq	%r8, -480(%rbp)
.L3257:
	cmpb	$0, -352(%rbp)
	je	.L3258
	movq	%rdi, -152(%rbp)
	movq	%rdi, -488(%rbp)
.L3258:
	cmpb	$0, -264(%rbp)
	je	.L3259
	movq	%rsi, -144(%rbp)
	movq	%rsi, -496(%rbp)
.L3259:
	cmpb	$0, -312(%rbp)
	je	.L3260
	movq	%rcx, -136(%rbp)
	movq	%rcx, -504(%rbp)
.L3260:
	cmpb	$0, -320(%rbp)
	je	.L3261
	movq	-248(%rbp), %r14
	movq	%r14, -128(%rbp)
	movq	%r14, -512(%rbp)
.L3261:
	cmpb	$0, -328(%rbp)
	je	.L3262
	movq	-256(%rbp), %r13
	movq	%r13, -120(%rbp)
	movq	%r13, -520(%rbp)
.L3262:
	cmpb	$0, -376(%rbp)
	je	.L3263
	movq	%rax, -112(%rbp)
	movq	%rax, -528(%rbp)
.L3263:
	cmpb	$0, -384(%rbp)
	je	.L6019
	movq	%rdx, -104(%rbp)
	movq	%rdx, -536(%rbp)
.L6019:
	movq	-416(%rbp), %r10
.L3215:
	movq	-424(%rbp), %r11
	movq	-432(%rbp), %r14
	movq	-440(%rbp), %r13
	movq	-448(%rbp), %r12
	movq	-456(%rbp), %rbx
	movq	-464(%rbp), %r10
	movq	-472(%rbp), %r9
	movq	-480(%rbp), %r8
	movq	-488(%rbp), %rdi
	movq	-496(%rbp), %rsi
	movq	-504(%rbp), %rcx
	movq	-512(%rbp), %rdx
	movq	-520(%rbp), %rax
	movq	-528(%rbp), %r11
	movq	-536(%rbp), %r14
	jmp	.L2569
.L3236:
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L6022
	movq	-232(%rbp), %rsi
	movq	%r8, %rdx
	movq	%r11, %rdi
	addq	$520, %rsp
	popq	%rbx
	popq	%r12
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r10), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_Z13access_randomILi16ELi0EEP6recordPS1_ll
.L2812:
	.cfi_restore_state
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L6022
	movq	-232(%rbp), %rsi
	movq	%r11, %rdi
	movq	%r8, %rdx
	addq	$520, %rsp
	popq	%rbx
	popq	%r12
	popq	%r11
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r11), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_Z13access_randomILi8ELi0EEP6recordPS1_ll
.L5863:
	.cfi_restore_state
	movq	%r8, %rdi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	16(%rsi), %rcx
	testq	%r8, %r8
	jle	.L2637
	movq	-232(%rbp), %r9
	xorl	%r8d, %r8d
	movq	%rdi, %r12
	.p2align 4,,10
	.p2align 3
.L2645:
#APP
# 267 "mem.cc" 1
	# traverse loop begin (n_chains = $3, payload = $0)
# 0 "" 2
#NO_APP
	testq	%r9, %r9
	jle	.L2643
	leaq	-1(%r9), %r14
	movq	(%rax), %rax
	movl	$1, %esi
	movq	(%rdx), %rdx
	andl	$7, %r14d
	movq	(%rcx), %rcx
	cmpq	$1, %r9
	je	.L2643
	testq	%r14, %r14
	je	.L2644
	cmpq	$1, %r14
	je	.L5164
	cmpq	$2, %r14
	je	.L5165
	cmpq	$3, %r14
	je	.L5166
	cmpq	$4, %r14
	je	.L5167
	cmpq	$5, %r14
	je	.L5168
	cmpq	$6, %r14
	je	.L5169
	movq	(%rax), %rax
	movl	$2, %esi
	movq	(%rdx), %rdx
	movq	(%rcx), %rcx
.L5169:
	movq	(%rax), %rax
	addq	$1, %rsi
	movq	(%rdx), %rdx
	movq	(%rcx), %rcx
.L5168:
	movq	(%rax), %rax
	addq	$1, %rsi
	movq	(%rdx), %rdx
	movq	(%rcx), %rcx
.L5167:
	movq	(%rax), %rax
	addq	$1, %rsi
	movq	(%rdx), %rdx
	movq	(%rcx), %rcx
.L5166:
	movq	(%rax), %rax
	addq	$1, %rsi
	movq	(%rdx), %rdx
	movq	(%rcx), %rcx
.L5165:
	movq	(%rax), %rax
	addq	$1, %rsi
	movq	(%rdx), %rdx
	movq	(%rcx), %rcx
.L5164:
	addq	$1, %rsi
	movq	(%rax), %rax
	movq	(%rdx), %rdx
	movq	(%rcx), %rcx
	cmpq	%rsi, %r9
	je	.L2643
.L2644:
	movq	(%rax), %r13
	addq	$8, %rsi
	movq	(%rdx), %r15
	movq	(%rcx), %r11
	movq	0(%r13), %r10
	movq	(%r15), %rbx
	movq	(%r11), %rdi
	movq	(%r10), %r14
	movq	(%rbx), %rdx
	movq	(%rdi), %rcx
	movq	(%r14), %rax
	movq	(%rdx), %r13
	movq	(%rcx), %r15
	movq	(%rax), %r11
	movq	0(%r13), %r10
	movq	(%r15), %rbx
	movq	(%r11), %rdi
	movq	(%r10), %r14
	movq	(%rbx), %rcx
	movq	(%rdi), %rax
	movq	(%r14), %rdx
	movq	(%rcx), %r13
	movq	(%rax), %rax
	movq	(%rdx), %rdx
	movq	0(%r13), %rcx
	cmpq	%rsi, %r9
	jne	.L2644
.L2643:
#APP
# 281 "mem.cc" 1
	# traverse loop end (n_chains = $3, payload = $0)
# 0 "" 2
#NO_APP
	addq	$1, %r8
	cmpq	%r8, %r12
	jne	.L2645
.L2637:
	movq	%rax, %r15
	jmp	.L2569
.L2633:
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L6022
	movq	-232(%rbp), %rsi
	movq	%r11, %rdi
	movq	%r8, %rdx
	addq	$520, %rsp
	popq	%rbx
	popq	%r12
	popq	%r11
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r11), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_Z13access_randomILi3ELi0EEP6recordPS1_ll
.L5858:
	.cfi_restore_state
	movq	(%rsi), %rax
	testq	%r8, %r8
	jle	.L2579
	movq	%rdx, %r9
	xorl	%r11d, %r11d
	.p2align 4,,10
	.p2align 3
.L2573:
#APP
# 267 "mem.cc" 1
	# traverse loop begin (n_chains = $1, payload = $1)
# 0 "" 2
#NO_APP
	testq	%r9, %r9
	jle	.L2571
	vmovdqa	(%rax), %ymm9
	leaq	-1(%r9), %rbx
	movl	$1, %edx
	vmovdqa	32(%rax), %ymm1
	andl	$7, %ebx
	vmovq	%xmm9, %rax
	cmpq	$1, %r9
	je	.L2571
	testq	%rbx, %rbx
	je	.L2572
	cmpq	$1, %rbx
	je	.L5116
	cmpq	$2, %rbx
	je	.L5117
	cmpq	$3, %rbx
	je	.L5118
	cmpq	$4, %rbx
	je	.L5119
	cmpq	$5, %rbx
	je	.L5120
	cmpq	$6, %rbx
	je	.L5121
	vmovdqa	(%rax), %ymm10
	movl	$2, %edx
	vmovdqa	32(%rax), %ymm1
	vmovq	%xmm10, %rax
.L5121:
	vmovdqa	(%rax), %ymm11
	addq	$1, %rdx
	vmovdqa	32(%rax), %ymm1
	vmovq	%xmm11, %rax
.L5120:
	vmovdqa	(%rax), %ymm12
	addq	$1, %rdx
	vmovdqa	32(%rax), %ymm1
	vmovq	%xmm12, %rax
.L5119:
	vmovdqa	(%rax), %ymm13
	addq	$1, %rdx
	vmovdqa	32(%rax), %ymm1
	vmovq	%xmm13, %rax
.L5118:
	vmovdqa	(%rax), %ymm14
	addq	$1, %rdx
	vmovdqa	32(%rax), %ymm1
	vmovq	%xmm14, %rax
.L5117:
	vmovdqa	(%rax), %ymm15
	addq	$1, %rdx
	vmovdqa	32(%rax), %ymm1
	vmovq	%xmm15, %rax
.L5116:
	vmovdqa	(%rax), %ymm0
	addq	$1, %rdx
	vmovdqa	32(%rax), %ymm1
	vmovq	%xmm0, %rax
	cmpq	%rdx, %r9
	je	.L2571
.L2572:
	vmovdqa	(%rax), %ymm2
	addq	$8, %rdx
	vmovdqa	32(%rax), %ymm1
	vmovq	%xmm2, %r10
	vmovdqa	(%r10), %ymm3
	vmovdqa	32(%r10), %ymm1
	vmovq	%xmm3, %r12
	vmovdqa	(%r12), %ymm4
	vmovdqa	32(%r12), %ymm1
	vmovq	%xmm4, %r13
	vmovdqa	0(%r13), %ymm5
	vmovdqa	32(%r13), %ymm1
	vmovq	%xmm5, %r14
	vmovdqa	(%r14), %ymm6
	vmovdqa	32(%r14), %ymm1
	vmovq	%xmm6, %rsi
	vmovdqa	(%rsi), %ymm7
	vmovdqa	32(%rsi), %ymm1
	vmovq	%xmm7, %r15
	vmovdqa	(%r15), %ymm8
	vmovdqa	32(%r15), %ymm1
	vmovq	%xmm8, %rdi
	vmovdqa	(%rdi), %ymm9
	vmovdqa	32(%rdi), %ymm1
	vmovq	%xmm9, %rax
	cmpq	%rdx, %r9
	jne	.L2572
.L2571:
#APP
# 281 "mem.cc" 1
	# traverse loop end (n_chains = $1, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, %r11
	cmpq	%r11, %r8
	jne	.L2573
	vzeroupper
	jmp	.L2579
.L2560:
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L6022
	movq	-232(%rbp), %rsi
	movq	%r8, %rdx
	movq	%r11, %rdi
	addq	$520, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r13), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_Z13access_randomILi1ELi1EEP6recordPS1_ll
.L5862:
	.cfi_restore_state
	movq	%r8, %r10
	movq	(%rsi), %rax
	movq	8(%rsi), %rcx
	movq	16(%rsi), %rdx
	testq	%r8, %r8
	jle	.L2623
	movq	-232(%rbp), %r8
	xorl	%edi, %edi
	movq	%r10, %r9
	.p2align 4,,10
	.p2align 3
.L2631:
#APP
# 267 "mem.cc" 1
	# traverse loop begin (n_chains = $3, payload = $1)
# 0 "" 2
#NO_APP
	testq	%r8, %r8
	jle	.L2629
	vmovdqa	(%rax), %ymm14
	leaq	-1(%r8), %r15
	movl	$1, %esi
	vmovdqa	32(%rax), %ymm1
	andl	$3, %r15d
	vmovdqa	(%rcx), %ymm15
	vmovq	%xmm14, %rax
	vmovdqa	32(%rcx), %ymm1
	vmovdqa	(%rdx), %ymm0
	vmovq	%xmm15, %rcx
	vmovdqa	32(%rdx), %ymm1
	vmovq	%xmm0, %rdx
	cmpq	$1, %r8
	je	.L2629
	testq	%r15, %r15
	je	.L2630
	cmpq	$1, %r15
	je	.L5156
	cmpq	$2, %r15
	je	.L5157
	vmovdqa	(%rax), %ymm2
	movl	$2, %esi
	vmovdqa	32(%rax), %ymm1
	vmovdqa	(%rcx), %ymm3
	vmovq	%xmm2, %rax
	vmovdqa	32(%rcx), %ymm1
	vmovdqa	(%rdx), %ymm4
	vmovq	%xmm3, %rcx
	vmovdqa	32(%rdx), %ymm1
	vmovq	%xmm4, %rdx
.L5157:
	vmovdqa	(%rax), %ymm5
	addq	$1, %rsi
	vmovdqa	32(%rax), %ymm1
	vmovdqa	(%rcx), %ymm6
	vmovq	%xmm5, %rax
	vmovdqa	32(%rcx), %ymm1
	vmovdqa	(%rdx), %ymm7
	vmovq	%xmm6, %rcx
	vmovdqa	32(%rdx), %ymm1
	vmovq	%xmm7, %rdx
.L5156:
	vmovdqa	(%rax), %ymm8
	addq	$1, %rsi
	vmovdqa	32(%rax), %ymm1
	vmovdqa	(%rcx), %ymm9
	vmovq	%xmm8, %rax
	vmovdqa	32(%rcx), %ymm1
	vmovdqa	(%rdx), %ymm10
	vmovq	%xmm9, %rcx
	vmovdqa	32(%rdx), %ymm1
	vmovq	%xmm10, %rdx
	cmpq	%rsi, %r8
	je	.L2629
.L2630:
	vmovdqa	(%rax), %ymm11
	addq	$4, %rsi
	vmovdqa	32(%rax), %ymm1
	vmovdqa	(%rcx), %ymm12
	vmovq	%xmm11, %rbx
	vmovdqa	32(%rcx), %ymm1
	vmovdqa	(%rdx), %ymm13
	vmovq	%xmm12, %r12
	vmovdqa	32(%rdx), %ymm1
	vmovq	%xmm13, %r13
	vmovdqa	(%rbx), %ymm14
	vmovdqa	32(%rbx), %ymm1
	vmovdqa	(%r12), %ymm15
	vmovq	%xmm14, %r14
	vmovdqa	32(%r12), %ymm1
	vmovdqa	0(%r13), %ymm0
	vmovq	%xmm15, %r11
	vmovdqa	32(%r13), %ymm1
	vmovq	%xmm0, %r10
	vmovdqa	(%r14), %ymm2
	vmovdqa	32(%r14), %ymm1
	vmovdqa	(%r11), %ymm3
	vmovq	%xmm2, %r15
	vmovdqa	32(%r11), %ymm1
	vmovdqa	(%r10), %ymm4
	vmovq	%xmm3, %rcx
	vmovdqa	32(%r10), %ymm1
	vmovq	%xmm4, %rdx
	vmovdqa	(%r15), %ymm5
	vmovdqa	32(%r15), %ymm1
	vmovdqa	(%rcx), %ymm6
	vmovq	%xmm5, %rax
	vmovdqa	32(%rcx), %ymm1
	vmovdqa	(%rdx), %ymm7
	vmovq	%xmm6, %rcx
	vmovdqa	32(%rdx), %ymm1
	vmovq	%xmm7, %rdx
	cmpq	%rsi, %r8
	jne	.L2630
.L2629:
#APP
# 281 "mem.cc" 1
	# traverse loop end (n_chains = $3, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, %rdi
	cmpq	%rdi, %r9
	jne	.L2631
	vzeroupper
.L2623:
	movq	%rax, %r15
	jmp	.L2569
.L2619:
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L6022
	movq	-232(%rbp), %rsi
	movq	%r8, %rdx
	movq	%r11, %rdi
	addq	$520, %rsp
	popq	%rbx
	popq	%r12
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r10), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_Z13access_randomILi3ELi1EEP6recordPS1_ll
.L5860:
	.cfi_restore_state
	movq	(%r11), %rax
	movq	8(%r11), %rdx
	testq	%r8, %r8
	jle	.L2608
	movq	-232(%rbp), %rdi
	xorl	%esi, %esi
	movq	%r8, %r15
	.p2align 4,,10
	.p2align 3
.L2602:
#APP
# 267 "mem.cc" 1
	# traverse loop begin (n_chains = $2, payload = $1)
# 0 "" 2
#NO_APP
	testq	%rdi, %rdi
	jle	.L2600
	vmovdqa	(%rax), %ymm8
	leaq	-1(%rdi), %r11
	movl	$1, %ecx
	vmovdqa	32(%rax), %ymm1
	andl	$3, %r11d
	vmovdqa	(%rdx), %ymm9
	vmovq	%xmm8, %rax
	vmovdqa	32(%rdx), %ymm1
	vmovq	%xmm9, %rdx
	cmpq	$1, %rdi
	je	.L2600
	testq	%r11, %r11
	je	.L2601
	cmpq	$1, %r11
	je	.L5140
	cmpq	$2, %r11
	je	.L5141
	vmovdqa	(%rax), %ymm10
	movl	$2, %ecx
	vmovdqa	32(%rax), %ymm1
	vmovdqa	(%rdx), %ymm11
	vmovq	%xmm10, %rax
	vmovdqa	32(%rdx), %ymm1
	vmovq	%xmm11, %rdx
.L5141:
	vmovdqa	(%rax), %ymm12
	addq	$1, %rcx
	vmovdqa	32(%rax), %ymm1
	vmovdqa	(%rdx), %ymm13
	vmovq	%xmm12, %rax
	vmovdqa	32(%rdx), %ymm1
	vmovq	%xmm13, %rdx
.L5140:
	vmovdqa	(%rax), %ymm14
	addq	$1, %rcx
	vmovdqa	32(%rax), %ymm1
	vmovdqa	(%rdx), %ymm15
	vmovq	%xmm14, %rax
	vmovdqa	32(%rdx), %ymm1
	vmovq	%xmm15, %rdx
	cmpq	%rcx, %rdi
	je	.L2600
.L2601:
	vmovdqa	(%rax), %ymm0
	addq	$4, %rcx
	vmovdqa	32(%rax), %ymm1
	vmovdqa	(%rdx), %ymm2
	vmovq	%xmm0, %rbx
	vmovdqa	32(%rdx), %ymm1
	vmovq	%xmm2, %rdx
	vmovdqa	(%rbx), %ymm3
	vmovdqa	32(%rbx), %ymm1
	vmovdqa	(%rdx), %ymm4
	vmovq	%xmm3, %r8
	vmovdqa	32(%rdx), %ymm1
	vmovq	%xmm4, %r9
	vmovdqa	(%r8), %ymm5
	vmovdqa	32(%r8), %ymm1
	vmovdqa	(%r9), %ymm6
	vmovq	%xmm5, %r10
	vmovdqa	32(%r9), %ymm1
	vmovq	%xmm6, %r12
	vmovdqa	(%r10), %ymm7
	vmovdqa	32(%r10), %ymm1
	vmovdqa	(%r12), %ymm8
	vmovq	%xmm7, %rax
	vmovdqa	32(%r12), %ymm1
	vmovq	%xmm8, %rdx
	cmpq	%rcx, %rdi
	jne	.L2601
.L2600:
#APP
# 281 "mem.cc" 1
	# traverse loop end (n_chains = $2, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, %rsi
	cmpq	%rsi, %r15
	jne	.L2602
	vzeroupper
	jmp	.L2608
.L2590:
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L6022
	movq	-232(%rbp), %rsi
	movq	%r8, %rdx
	movq	%r11, %rdi
	addq	$520, %rsp
	popq	%rbx
	popq	%r12
	popq	%r9
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r9), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_Z13access_randomILi2ELi1EEP6recordPS1_ll
.L5916:
	.cfi_restore_state
	leaq	-224(%rbp), %r15
	movq	%r11, %rsi
	movl	$152, %edx
	movq	%r15, %rdi
	call	memcpy
	xorl	%r8d, %r8d
	movq	%r15, %rcx
	cmpq	$0, -240(%rbp)
	leaq	152(%r15), %rsi
	jle	.L3372
	.p2align 4,,10
	.p2align 3
.L5854:
#APP
# 267 "mem.cc" 1
	# traverse loop begin (n_chains = $19, payload = $1)
# 0 "" 2
#NO_APP
	xorl	%edi, %edi
	cmpq	$0, -232(%rbp)
	jle	.L3375
	.p2align 4,,10
	.p2align 3
.L5848:
	movq	(%rcx), %r9
	leaq	8(%rcx), %r13
	movq	%rsi, %rdx
	subq	%rcx, %rdx
	subq	$8, %rdx
	shrq	$3, %rdx
	vmovdqa	(%r9), %ymm2
	andl	$7, %edx
	vmovdqa	32(%r9), %ymm1
	vmovq	%xmm2, (%rcx)
	cmpq	%rsi, %r13
	je	.L5918
	testq	%rdx, %rdx
	je	.L3374
	cmpq	$1, %rdx
	je	.L5265
	cmpq	$2, %rdx
	je	.L5266
	cmpq	$3, %rdx
	je	.L5267
	cmpq	$4, %rdx
	je	.L5268
	cmpq	$5, %rdx
	je	.L5269
	cmpq	$6, %rdx
	je	.L5270
	movq	8(%rcx), %r10
	leaq	16(%rcx), %r13
	vmovdqa	(%r10), %ymm3
	vmovdqa	32(%r10), %ymm1
	vmovq	%xmm3, 8(%rcx)
.L5270:
	movq	0(%r13), %rax
	addq	$8, %r13
	vmovdqa	(%rax), %ymm4
	vmovdqa	32(%rax), %ymm1
	vmovq	%xmm4, -8(%r13)
.L5269:
	movq	0(%r13), %rbx
	addq	$8, %r13
	vmovdqa	(%rbx), %ymm5
	vmovdqa	32(%rbx), %ymm1
	vmovq	%xmm5, -8(%r13)
.L5268:
	movq	0(%r13), %r12
	addq	$8, %r13
	vmovdqa	(%r12), %ymm6
	vmovdqa	32(%r12), %ymm1
	vmovq	%xmm6, -8(%r13)
.L5267:
	movq	0(%r13), %r14
	addq	$8, %r13
	vmovdqa	(%r14), %ymm7
	vmovdqa	32(%r14), %ymm1
	vmovq	%xmm7, -8(%r13)
.L5266:
	movq	0(%r13), %r11
	addq	$8, %r13
	vmovdqa	(%r11), %ymm8
	vmovdqa	32(%r11), %ymm1
	vmovq	%xmm8, -8(%r13)
.L5265:
	movq	0(%r13), %r15
	addq	$8, %r13
	vmovdqa	(%r15), %ymm9
	vmovdqa	32(%r15), %ymm1
	vmovq	%xmm9, -8(%r13)
	cmpq	%rsi, %r13
	je	.L5918
.L3374:
	movq	0(%r13), %rdx
	addq	$64, %r13
	movq	-56(%r13), %r9
	movq	-48(%r13), %r10
	movq	-40(%r13), %rax
	movq	-32(%r13), %rbx
	movq	-24(%r13), %r12
	movq	-16(%r13), %r14
	movq	-8(%r13), %r11
	vmovdqa	(%rdx), %ymm10
	vmovdqa	32(%rdx), %ymm1
	vmovdqa	(%r9), %ymm11
	vmovq	%xmm10, -64(%r13)
	vmovdqa	32(%r9), %ymm1
	vmovdqa	(%r10), %ymm12
	vmovq	%xmm11, -56(%r13)
	vmovdqa	32(%r10), %ymm1
	vmovdqa	(%rax), %ymm13
	vmovq	%xmm12, -48(%r13)
	vmovdqa	32(%rax), %ymm1
	vmovdqa	(%rbx), %ymm14
	vmovq	%xmm13, -40(%r13)
	vmovdqa	32(%rbx), %ymm1
	vmovdqa	(%r12), %ymm15
	vmovq	%xmm14, -32(%r13)
	vmovdqa	32(%r12), %ymm1
	vmovdqa	(%r14), %ymm0
	vmovq	%xmm15, -24(%r13)
	vmovdqa	32(%r14), %ymm1
	vmovdqa	(%r11), %ymm2
	vmovq	%xmm0, -16(%r13)
	vmovdqa	32(%r11), %ymm1
	vmovq	%xmm2, -8(%r13)
	cmpq	%rsi, %r13
	jne	.L3374
.L5918:
	addq	$1, %rdi
	cmpq	%rdi, -232(%rbp)
	jne	.L5848
.L3375:
#APP
# 281 "mem.cc" 1
	# traverse loop end (n_chains = $19, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, %r8
	cmpq	%r8, -240(%rbp)
	jne	.L5854
	vzeroupper
.L3372:
	leaq	152(%rcx), %r13
	movq	(%rcx), %r15
	addq	$8, %rcx
.L3370:
	movq	(%rcx), %rsi
	movq	8(%rcx), %rdi
	movq	16(%rcx), %r8
	movq	24(%rcx), %rdx
	movq	32(%rcx), %r9
	movq	40(%rcx), %r10
	movq	48(%rcx), %rax
	movq	56(%rcx), %rbx
	movq	64(%rcx), %r12
	addq	$72, %rcx
	cmpq	%rcx, %r13
	jne	.L3370
	jmp	.L6014
	.p2align 4,,10
	.p2align 3
.L3361:
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L6022
	movq	-232(%rbp), %rsi
	movq	%r8, %rdx
	movq	%r11, %rdi
	addq	$520, %rsp
	popq	%rbx
	popq	%r12
	popq	%r8
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r8), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_Z13access_randomILi19ELi1EEP6recordPS1_ll
.L5910:
	.cfi_restore_state
	leaq	-224(%rbp), %r15
	movq	%r11, %rsi
	movl	$144, %edx
	movq	%r15, %rdi
	call	memcpy
	xorl	%r8d, %r8d
	movq	%r15, %rcx
	cmpq	$0, -240(%rbp)
	leaq	144(%r15), %rsi
	jle	.L3338
	.p2align 4,,10
	.p2align 3
.L5852:
#APP
# 267 "mem.cc" 1
	# traverse loop begin (n_chains = $18, payload = $1)
# 0 "" 2
#NO_APP
	xorl	%edi, %edi
	cmpq	$0, -232(%rbp)
	jle	.L3341
	.p2align 4,,10
	.p2align 3
.L5846:
	movq	(%rcx), %r9
	leaq	8(%rcx), %rbx
	movq	%rsi, %r14
	subq	%rcx, %r14
	subq	$8, %r14
	shrq	$3, %r14
	vmovdqa	(%r9), %ymm3
	andl	$7, %r14d
	vmovdqa	32(%r9), %ymm1
	vmovq	%xmm3, (%rcx)
	cmpq	%rsi, %rbx
	je	.L5912
	testq	%r14, %r14
	je	.L3340
	cmpq	$1, %r14
	je	.L5241
	cmpq	$2, %r14
	je	.L5242
	cmpq	$3, %r14
	je	.L5243
	cmpq	$4, %r14
	je	.L5244
	cmpq	$5, %r14
	je	.L5245
	cmpq	$6, %r14
	je	.L5246
	movq	8(%rcx), %r10
	leaq	16(%rcx), %rbx
	vmovdqa	(%r10), %ymm4
	vmovdqa	32(%r10), %ymm1
	vmovq	%xmm4, 8(%rcx)
.L5246:
	movq	(%rbx), %rax
	addq	$8, %rbx
	vmovdqa	(%rax), %ymm5
	vmovdqa	32(%rax), %ymm1
	vmovq	%xmm5, -8(%rbx)
.L5245:
	movq	(%rbx), %r12
	addq	$8, %rbx
	vmovdqa	(%r12), %ymm6
	vmovdqa	32(%r12), %ymm1
	vmovq	%xmm6, -8(%rbx)
.L5244:
	movq	(%rbx), %rdx
	addq	$8, %rbx
	vmovdqa	(%rdx), %ymm7
	vmovdqa	32(%rdx), %ymm1
	vmovq	%xmm7, -8(%rbx)
.L5243:
	movq	(%rbx), %r13
	addq	$8, %rbx
	vmovdqa	0(%r13), %ymm8
	vmovdqa	32(%r13), %ymm1
	vmovq	%xmm8, -8(%rbx)
.L5242:
	movq	(%rbx), %r11
	addq	$8, %rbx
	vmovdqa	(%r11), %ymm9
	vmovdqa	32(%r11), %ymm1
	vmovq	%xmm9, -8(%rbx)
.L5241:
	movq	(%rbx), %r15
	addq	$8, %rbx
	vmovdqa	(%r15), %ymm10
	vmovdqa	32(%r15), %ymm1
	vmovq	%xmm10, -8(%rbx)
	cmpq	%rsi, %rbx
	je	.L5912
.L3340:
	movq	(%rbx), %r14
	addq	$64, %rbx
	movq	-56(%rbx), %r9
	movq	-48(%rbx), %r10
	movq	-40(%rbx), %rax
	movq	-32(%rbx), %r12
	movq	-24(%rbx), %rdx
	movq	-16(%rbx), %r13
	movq	-8(%rbx), %r11
	vmovdqa	(%r14), %ymm11
	vmovdqa	32(%r14), %ymm1
	vmovdqa	(%r9), %ymm12
	vmovq	%xmm11, -64(%rbx)
	vmovdqa	32(%r9), %ymm1
	vmovdqa	(%r10), %ymm13
	vmovq	%xmm12, -56(%rbx)
	vmovdqa	32(%r10), %ymm1
	vmovdqa	(%rax), %ymm14
	vmovq	%xmm13, -48(%rbx)
	vmovdqa	32(%rax), %ymm1
	vmovdqa	(%r12), %ymm15
	vmovq	%xmm14, -40(%rbx)
	vmovdqa	32(%r12), %ymm1
	vmovdqa	(%rdx), %ymm0
	vmovq	%xmm15, -32(%rbx)
	vmovdqa	32(%rdx), %ymm1
	vmovdqa	0(%r13), %ymm2
	vmovq	%xmm0, -24(%rbx)
	vmovdqa	32(%r13), %ymm1
	vmovdqa	(%r11), %ymm3
	vmovq	%xmm2, -16(%rbx)
	vmovdqa	32(%r11), %ymm1
	vmovq	%xmm3, -8(%rbx)
	cmpq	%rsi, %rbx
	jne	.L3340
.L5912:
	addq	$1, %rdi
	cmpq	%rdi, -232(%rbp)
	jne	.L5846
.L3341:
#APP
# 281 "mem.cc" 1
	# traverse loop end (n_chains = $18, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, %r8
	cmpq	%r8, -240(%rbp)
	jne	.L5852
	vzeroupper
.L3338:
	leaq	144(%rcx), %rbx
.L3336:
	movq	(%rcx), %r15
	movq	8(%rcx), %rsi
	movq	16(%rcx), %rdi
	movq	24(%rcx), %r8
	movq	32(%rcx), %r14
	movq	40(%rcx), %r9
	movq	48(%rcx), %r10
	movq	56(%rcx), %rax
	movq	64(%rcx), %r12
	addq	$72, %rcx
	cmpq	%rbx, %rcx
	jne	.L3336
	jmp	.L6014
	.p2align 4,,10
	.p2align 3
.L3327:
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L6022
	movq	-232(%rbp), %rsi
	movq	%r8, %rdx
	movq	%r11, %rdi
	addq	$520, %rsp
	popq	%rbx
	popq	%r12
	popq	%r8
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r8), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_Z13access_randomILi18ELi1EEP6recordPS1_ll
.L5876:
	.cfi_restore_state
	movq	(%rsi), %r12
	movq	8(%rsi), %r13
	movq	16(%rsi), %r14
	movq	24(%rsi), %rcx
	movq	32(%rsi), %rdx
	movq	%r12, -224(%rbp)
	movq	40(%rsi), %r10
	movq	%r13, -216(%rbp)
	movq	48(%rsi), %r9
	movq	%r14, -208(%rbp)
	movq	56(%rsi), %r8
	movq	%rcx, -200(%rbp)
	cmpq	$0, -240(%rbp)
	movq	%rdx, -192(%rbp)
	movq	%r10, -184(%rbp)
	movq	%r9, -176(%rbp)
	movq	%r8, -168(%rbp)
	jle	.L6101
	movq	%r12, %rax
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rcx, -304(%rbp)
	movq	%rdx, -312(%rbp)
	movq	%r12, %r15
	xorl	%r11d, %r11d
	xorl	%ebx, %ebx
	movq	%r10, -320(%rbp)
	movq	%r9, -328(%rbp)
	movq	%r8, -336(%rbp)
	movb	$0, -248(%rbp)
	movb	$0, -256(%rbp)
	movb	$0, -264(%rbp)
	movb	$0, -272(%rbp)
	movb	$0, -280(%rbp)
	movb	$0, -288(%rbp)
	movb	$0, -296(%rbp)
	.p2align 4,,10
	.p2align 3
.L2802:
#APP
# 267 "mem.cc" 1
	# traverse loop begin (n_chains = $8, payload = $1)
# 0 "" 2
#NO_APP
	cmpq	$0, -232(%rbp)
	jle	.L2800
	movq	-232(%rbp), %r15
	movl	$1, %r11d
	vmovdqa	(%rax), %ymm13
	vmovdqa	32(%rax), %ymm1
	vmovdqa	(%rdi), %ymm14
	vmovq	%xmm13, %rax
	subq	$1, %r15
	vmovdqa	32(%rdi), %ymm1
	andl	$1, %r15d
	vmovdqa	(%rsi), %ymm15
	vmovq	%xmm14, %rdi
	cmpq	$1, -232(%rbp)
	vmovdqa	32(%rsi), %ymm1
	vmovq	%xmm15, %rsi
	vmovdqa	(%rcx), %ymm0
	vmovdqa	32(%rcx), %ymm1
	vmovdqa	(%rdx), %ymm2
	vmovq	%xmm0, %rcx
	vmovdqa	32(%rdx), %ymm1
	vmovdqa	(%r10), %ymm3
	vmovq	%xmm2, %rdx
	vmovdqa	32(%r10), %ymm1
	vmovdqa	(%r9), %ymm4
	vmovq	%xmm3, %r10
	vmovdqa	32(%r9), %ymm1
	vmovdqa	(%r8), %ymm5
	vmovq	%xmm4, %r9
	vmovdqa	32(%r8), %ymm1
	vmovq	%xmm5, %r8
	je	.L5877
	testq	%r15, %r15
	je	.L5943
	cmpq	$2, -232(%rbp)
	movl	$2, %r11d
	vmovdqa	(%rax), %ymm6
	vmovdqa	32(%rax), %ymm1
	vmovdqa	(%rdi), %ymm7
	vmovq	%xmm6, %rax
	vmovdqa	32(%rdi), %ymm1
	vmovdqa	(%rsi), %ymm8
	vmovq	%xmm7, %rdi
	vmovdqa	32(%rsi), %ymm1
	vmovdqa	(%rcx), %ymm9
	vmovq	%xmm8, %rsi
	vmovdqa	32(%rcx), %ymm1
	vmovdqa	(%rdx), %ymm10
	vmovq	%xmm9, %rcx
	vmovdqa	32(%rdx), %ymm1
	vmovdqa	(%r10), %ymm11
	vmovq	%xmm10, %rdx
	vmovdqa	32(%r10), %ymm1
	vmovdqa	(%r9), %ymm12
	vmovq	%xmm11, %r10
	vmovdqa	32(%r9), %ymm1
	vmovdqa	(%r8), %ymm13
	vmovq	%xmm12, %r9
	vmovdqa	32(%r8), %ymm1
	vmovq	%xmm13, %r8
	je	.L5877
.L5943:
	movq	-232(%rbp), %r15
.L2801:
	vmovdqa	(%rax), %ymm14
	addq	$2, %r11
	vmovdqa	32(%rax), %ymm1
	vmovdqa	(%rdi), %ymm15
	vmovq	%xmm14, %rax
	vmovdqa	32(%rdi), %ymm1
	vmovdqa	(%rsi), %ymm0
	vmovq	%xmm15, %rdi
	vmovdqa	32(%rsi), %ymm1
	vmovdqa	(%rcx), %ymm2
	vmovq	%xmm0, %rsi
	vmovdqa	32(%rcx), %ymm1
	vmovdqa	(%rdx), %ymm3
	vmovq	%xmm2, %rcx
	vmovdqa	32(%rdx), %ymm1
	vmovdqa	(%r10), %ymm4
	vmovq	%xmm3, %rdx
	vmovdqa	32(%r10), %ymm1
	vmovdqa	(%r9), %ymm5
	vmovq	%xmm4, %r10
	vmovdqa	32(%r9), %ymm1
	vmovdqa	(%r8), %ymm6
	vmovq	%xmm5, %r9
	vmovdqa	32(%r8), %ymm1
	vmovq	%xmm6, %r8
	vmovdqa	(%rax), %ymm7
	vmovdqa	32(%rax), %ymm1
	vmovdqa	(%rdi), %ymm8
	vmovq	%xmm7, %rax
	vmovdqa	32(%rdi), %ymm1
	vmovdqa	(%rsi), %ymm9
	vmovq	%xmm8, %rdi
	vmovdqa	32(%rsi), %ymm1
	vmovdqa	(%rcx), %ymm10
	vmovq	%xmm9, %rsi
	vmovdqa	32(%rcx), %ymm1
	vmovdqa	(%rdx), %ymm11
	vmovq	%xmm10, %rcx
	vmovdqa	32(%rdx), %ymm1
	vmovdqa	(%r10), %ymm12
	vmovq	%xmm11, %rdx
	vmovdqa	32(%r10), %ymm1
	vmovdqa	(%r9), %ymm13
	vmovq	%xmm12, %r10
	vmovdqa	32(%r9), %ymm1
	vmovdqa	(%r8), %ymm14
	vmovq	%xmm13, %r9
	vmovdqa	32(%r8), %ymm1
	vmovq	%xmm14, %r8
	cmpq	%r11, %r15
	jne	.L2801
.L5877:
	movq	%rax, %r15
	movb	$1, -248(%rbp)
	movl	$1, %r11d
	movb	$1, -256(%rbp)
	movb	$1, -264(%rbp)
	movb	$1, -272(%rbp)
	movb	$1, -280(%rbp)
	movb	$1, -288(%rbp)
	movb	$1, -296(%rbp)
.L2800:
#APP
# 281 "mem.cc" 1
	# traverse loop end (n_chains = $8, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, %rbx
	cmpq	%rbx, -240(%rbp)
	jne	.L2802
	testb	%r11b, %r11b
	jne	.L6102
.L2803:
	cmpb	$0, -296(%rbp)
	je	.L2804
	movq	%rdi, -216(%rbp)
	movq	%rdi, %r13
.L2804:
	cmpb	$0, -288(%rbp)
	je	.L2805
	movq	%rsi, -208(%rbp)
	movq	%rsi, %r14
.L2805:
	cmpb	$0, -280(%rbp)
	je	.L2806
	movq	%rcx, -200(%rbp)
	movq	%rcx, -304(%rbp)
.L2806:
	cmpb	$0, -272(%rbp)
	je	.L2807
	movq	%rdx, -192(%rbp)
	movq	%rdx, -312(%rbp)
.L2807:
	cmpb	$0, -264(%rbp)
	je	.L2808
	movq	%r10, -184(%rbp)
	movq	%r10, -320(%rbp)
.L2808:
	cmpb	$0, -256(%rbp)
	je	.L2809
	movq	%r9, -176(%rbp)
	movq	%r9, -328(%rbp)
.L2809:
	cmpb	$0, -248(%rbp)
	jne	.L6103
	vzeroupper
	movq	-304(%rbp), %rax
	jmp	.L6017
	.p2align 4,,10
	.p2align 3
.L2790:
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L6022
	movq	-232(%rbp), %rsi
	movq	%r11, %rdi
	movq	%r8, %rdx
	addq	$520, %rsp
	popq	%rbx
	popq	%r12
	popq	%r11
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r11), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_Z13access_randomILi8ELi1EEP6recordPS1_ll
.L5872:
	.cfi_restore_state
	movq	(%r11), %rbx
	movq	8(%r11), %r12
	movq	16(%r11), %r13
	movq	24(%r11), %r14
	movq	32(%r11), %rax
	movq	%rbx, -224(%rbp)
	movq	40(%r11), %r8
	movq	%r12, -216(%rbp)
	movq	48(%r11), %rdi
	movq	%r13, -208(%rbp)
	cmpq	$0, -240(%rbp)
	movq	%r14, -200(%rbp)
	movq	%rax, -192(%rbp)
	movq	%r8, -184(%rbp)
	movq	%rdi, -176(%rbp)
	jle	.L6104
	xorl	%r11d, %r11d
	movq	%rbx, %r9
	movq	%rbx, %r15
	movq	%rbx, -320(%rbp)
	movq	%r11, %rbx
	movq	-232(%rbp), %r11
	movq	%r12, %rsi
	movq	%r13, %rcx
	movq	%r14, %rdx
	movq	%rax, -296(%rbp)
	xorl	%r10d, %r10d
	movq	%r8, -304(%rbp)
	movq	%rdi, -312(%rbp)
	movb	$0, -248(%rbp)
	movb	$0, -256(%rbp)
	movb	$0, -264(%rbp)
	movb	$0, -272(%rbp)
	movb	$0, -280(%rbp)
	movb	$0, -288(%rbp)
	.p2align 4,,10
	.p2align 3
.L2759:
#APP
# 267 "mem.cc" 1
	# traverse loop begin (n_chains = $7, payload = $1)
# 0 "" 2
#NO_APP
	testq	%r11, %r11
	jle	.L2757
	vmovdqa	(%r15), %ymm15
	leaq	-1(%r11), %r10
	movl	$1, %r9d
	vmovdqa	32(%r15), %ymm1
	andl	$1, %r10d
	vmovdqa	(%rsi), %ymm0
	vmovq	%xmm15, %r15
	vmovdqa	32(%rsi), %ymm1
	vmovdqa	(%rcx), %ymm2
	vmovq	%xmm0, %rsi
	vmovdqa	32(%rcx), %ymm1
	vmovdqa	(%rdx), %ymm3
	vmovq	%xmm2, %rcx
	vmovdqa	32(%rdx), %ymm1
	vmovdqa	(%rax), %ymm4
	vmovq	%xmm3, %rdx
	vmovdqa	32(%rax), %ymm1
	vmovdqa	(%r8), %ymm5
	vmovq	%xmm4, %rax
	vmovdqa	32(%r8), %ymm1
	vmovdqa	(%rdi), %ymm6
	vmovq	%xmm5, %r8
	vmovdqa	32(%rdi), %ymm1
	vmovq	%xmm6, %rdi
	cmpq	$1, %r11
	je	.L5873
	testq	%r10, %r10
	je	.L2758
	vmovdqa	(%r15), %ymm7
	movl	$2, %r9d
	vmovdqa	32(%r15), %ymm1
	vmovdqa	(%rsi), %ymm8
	vmovq	%xmm7, %r15
	vmovdqa	32(%rsi), %ymm1
	vmovdqa	(%rcx), %ymm9
	vmovq	%xmm8, %rsi
	vmovdqa	32(%rcx), %ymm1
	vmovdqa	(%rdx), %ymm10
	vmovq	%xmm9, %rcx
	vmovdqa	32(%rdx), %ymm1
	vmovdqa	(%rax), %ymm11
	vmovq	%xmm10, %rdx
	vmovdqa	32(%rax), %ymm1
	vmovdqa	(%r8), %ymm12
	vmovq	%xmm11, %rax
	vmovdqa	32(%r8), %ymm1
	vmovdqa	(%rdi), %ymm13
	vmovq	%xmm12, %r8
	vmovdqa	32(%rdi), %ymm1
	vmovq	%xmm13, %rdi
	cmpq	$2, %r11
	je	.L5873
	.p2align 4,,10
	.p2align 3
.L2758:
	vmovdqa	(%r15), %ymm14
	addq	$2, %r9
	vmovdqa	32(%r15), %ymm1
	vmovdqa	(%rsi), %ymm15
	vmovq	%xmm14, %r15
	vmovdqa	32(%rsi), %ymm1
	vmovdqa	(%rcx), %ymm0
	vmovq	%xmm15, %r10
	vmovdqa	32(%rcx), %ymm1
	vmovdqa	(%rdx), %ymm2
	vmovq	%xmm0, %rcx
	vmovdqa	32(%rdx), %ymm1
	vmovdqa	(%rax), %ymm3
	vmovq	%xmm2, %rdx
	vmovdqa	32(%rax), %ymm1
	vmovdqa	(%r8), %ymm4
	vmovq	%xmm3, %rax
	vmovdqa	32(%r8), %ymm1
	vmovdqa	(%rdi), %ymm5
	vmovq	%xmm4, %r8
	vmovdqa	32(%rdi), %ymm1
	vmovq	%xmm5, %rdi
	vmovdqa	(%r15), %ymm6
	vmovdqa	32(%r15), %ymm1
	vmovdqa	(%r10), %ymm7
	vmovq	%xmm6, %r15
	vmovdqa	32(%r10), %ymm1
	vmovdqa	(%rcx), %ymm8
	vmovq	%xmm7, %rsi
	vmovdqa	32(%rcx), %ymm1
	vmovdqa	(%rdx), %ymm9
	vmovq	%xmm8, %rcx
	vmovdqa	32(%rdx), %ymm1
	vmovdqa	(%rax), %ymm10
	vmovq	%xmm9, %rdx
	vmovdqa	32(%rax), %ymm1
	vmovdqa	(%r8), %ymm11
	vmovq	%xmm10, %rax
	vmovdqa	32(%r8), %ymm1
	vmovdqa	(%rdi), %ymm12
	vmovq	%xmm11, %r8
	vmovdqa	32(%rdi), %ymm1
	vmovq	%xmm12, %rdi
	cmpq	%r9, %r11
	jne	.L2758
.L5873:
	movq	%r15, %r9
	movb	$1, -248(%rbp)
	movl	$1, %r10d
	movb	$1, -256(%rbp)
	movb	$1, -264(%rbp)
	movb	$1, -272(%rbp)
	movb	$1, -280(%rbp)
	movb	$1, -288(%rbp)
.L2757:
#APP
# 281 "mem.cc" 1
	# traverse loop end (n_chains = $7, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, %rbx
	cmpq	%rbx, -240(%rbp)
	jne	.L2759
	movq	-320(%rbp), %rbx
	testb	%r10b, %r10b
	jne	.L6105
.L2760:
	cmpb	$0, -288(%rbp)
	je	.L2761
	movq	%rsi, -216(%rbp)
	movq	%rsi, %r12
.L2761:
	cmpb	$0, -280(%rbp)
	je	.L2762
	movq	%rcx, -208(%rbp)
	movq	%rcx, %r13
.L2762:
	cmpb	$0, -272(%rbp)
	je	.L2763
	movq	%rdx, -200(%rbp)
	movq	%rdx, %r14
.L2763:
	cmpb	$0, -264(%rbp)
	je	.L2764
	movq	%rax, -192(%rbp)
	movq	%rax, -296(%rbp)
.L2764:
	cmpb	$0, -256(%rbp)
	je	.L2765
	movq	%r8, -184(%rbp)
	movq	%r8, -304(%rbp)
.L2765:
	cmpb	$0, -248(%rbp)
	jne	.L6106
	vzeroupper
	movq	-296(%rbp), %rax
	jmp	.L6012
	.p2align 4,,10
	.p2align 3
.L2747:
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L6022
	movq	-232(%rbp), %rsi
	movq	%r8, %rdx
	movq	%r11, %rdi
	addq	$520, %rsp
	popq	%rbx
	popq	%r12
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r10), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_Z13access_randomILi7ELi1EEP6recordPS1_ll
.L5922:
	.cfi_restore_state
	leaq	-224(%rbp), %r14
	movl	$160, %edx
	movq	%r14, %rdi
	call	memcpy
	xorl	%r8d, %r8d
	movq	%r14, %rcx
	cmpq	$0, -240(%rbp)
	leaq	160(%r14), %rsi
	jle	.L3406
	.p2align 4,,10
	.p2align 3
.L5856:
#APP
# 267 "mem.cc" 1
	# traverse loop begin (n_chains = $20, payload = $1)
# 0 "" 2
#NO_APP
	xorl	%edi, %edi
	cmpq	$0, -232(%rbp)
	jle	.L3409
	.p2align 4,,10
	.p2align 3
.L5850:
	movq	(%rcx), %r9
	leaq	8(%rcx), %r11
	movq	%rsi, %rbx
	subq	%rcx, %rbx
	subq	$8, %rbx
	shrq	$3, %rbx
	vmovdqa	(%r9), %ymm0
	andl	$7, %ebx
	vmovdqa	32(%r9), %ymm1
	vmovq	%xmm0, (%rcx)
	cmpq	%rsi, %r11
	je	.L5924
	testq	%rbx, %rbx
	je	.L3408
	cmpq	$1, %rbx
	je	.L5289
	cmpq	$2, %rbx
	je	.L5290
	cmpq	$3, %rbx
	je	.L5291
	cmpq	$4, %rbx
	je	.L5292
	cmpq	$5, %rbx
	je	.L5293
	cmpq	$6, %rbx
	je	.L5294
	movq	8(%rcx), %r10
	leaq	16(%rcx), %r11
	vmovdqa	(%r10), %ymm2
	vmovdqa	32(%r10), %ymm1
	vmovq	%xmm2, 8(%rcx)
.L5294:
	movq	(%r11), %r15
	addq	$8, %r11
	vmovdqa	(%r15), %ymm3
	vmovdqa	32(%r15), %ymm1
	vmovq	%xmm3, -8(%r11)
.L5293:
	movq	(%r11), %r13
	addq	$8, %r11
	vmovdqa	0(%r13), %ymm4
	vmovdqa	32(%r13), %ymm1
	vmovq	%xmm4, -8(%r11)
.L5292:
	movq	(%r11), %rax
	addq	$8, %r11
	vmovdqa	(%rax), %ymm5
	vmovdqa	32(%rax), %ymm1
	vmovq	%xmm5, -8(%r11)
.L5291:
	movq	(%r11), %rdx
	addq	$8, %r11
	vmovdqa	(%rdx), %ymm6
	vmovdqa	32(%rdx), %ymm1
	vmovq	%xmm6, -8(%r11)
.L5290:
	movq	(%r11), %r12
	addq	$8, %r11
	vmovdqa	(%r12), %ymm7
	vmovdqa	32(%r12), %ymm1
	vmovq	%xmm7, -8(%r11)
.L5289:
	movq	(%r11), %r14
	addq	$8, %r11
	vmovdqa	(%r14), %ymm8
	vmovdqa	32(%r14), %ymm1
	vmovq	%xmm8, -8(%r11)
	cmpq	%rsi, %r11
	je	.L5924
.L3408:
	movq	(%r11), %rbx
	addq	$64, %r11
	movq	-56(%r11), %r9
	movq	-48(%r11), %r10
	movq	-40(%r11), %r15
	movq	-32(%r11), %r13
	movq	-24(%r11), %rax
	movq	-16(%r11), %rdx
	movq	-8(%r11), %r12
	vmovdqa	(%rbx), %ymm9
	vmovdqa	32(%rbx), %ymm1
	vmovdqa	(%r9), %ymm10
	vmovq	%xmm9, -64(%r11)
	vmovdqa	32(%r9), %ymm1
	vmovdqa	(%r10), %ymm11
	vmovq	%xmm10, -56(%r11)
	vmovdqa	32(%r10), %ymm1
	vmovdqa	(%r15), %ymm12
	vmovq	%xmm11, -48(%r11)
	vmovdqa	32(%r15), %ymm1
	vmovdqa	0(%r13), %ymm13
	vmovq	%xmm12, -40(%r11)
	vmovdqa	32(%r13), %ymm1
	vmovdqa	(%rax), %ymm14
	vmovq	%xmm13, -32(%r11)
	vmovdqa	32(%rax), %ymm1
	vmovdqa	(%rdx), %ymm15
	vmovq	%xmm14, -24(%r11)
	vmovdqa	32(%rdx), %ymm1
	vmovdqa	(%r12), %ymm0
	vmovq	%xmm15, -16(%r11)
	vmovdqa	32(%r12), %ymm1
	vmovq	%xmm0, -8(%r11)
	cmpq	%rsi, %r11
	jne	.L3408
.L5924:
	addq	$1, %rdi
	cmpq	%rdi, -232(%rbp)
	jne	.L5850
.L3409:
#APP
# 281 "mem.cc" 1
	# traverse loop end (n_chains = $20, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, %r8
	cmpq	%r8, -240(%rbp)
	jne	.L5856
	vzeroupper
.L3406:
	leaq	160(%rcx), %r11
.L3404:
	movq	(%rcx), %r14
	movq	8(%rcx), %rsi
	movq	16(%rcx), %rdi
	movq	24(%rcx), %r8
	movq	32(%rcx), %rbx
	movq	40(%rcx), %r9
	movq	48(%rcx), %r10
	movq	56(%rcx), %r15
	movq	64(%rcx), %r13
	movq	72(%rcx), %rax
	addq	$80, %rcx
	cmpq	%rcx, %r11
	jne	.L3404
	jmp	.L6014
	.p2align 4,,10
	.p2align 3
.L3395:
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L6022
	movq	-232(%rbp), %rsi
	movq	%r8, %rdx
	movq	%r11, %rdi
	addq	$520, %rsp
	popq	%rbx
	popq	%r12
	popq	%r8
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r8), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_Z13access_randomILi20ELi1EEP6recordPS1_ll
.L5868:
	.cfi_restore_state
	movq	(%r11), %r8
	movq	8(%r11), %rbx
	movq	16(%r11), %r12
	movq	24(%r11), %r13
	movq	32(%r11), %r14
	movq	%r8, -224(%rbp)
	movq	40(%r11), %rax
	movq	%rbx, -216(%rbp)
	movq	%r8, %r11
	cmpq	$0, -240(%rbp)
	movq	%r12, -208(%rbp)
	movq	%r13, -200(%rbp)
	movq	%r14, -192(%rbp)
	movq	%rax, -184(%rbp)
	jle	.L6107
	movq	-232(%rbp), %r11
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r13, %rcx
	movq	%r14, %rdx
	movq	%rax, -288(%rbp)
	movq	%r8, %r15
	xorl	%r9d, %r9d
	movb	$0, -248(%rbp)
	xorl	%r10d, %r10d
	movb	$0, -256(%rbp)
	movb	$0, -264(%rbp)
	movb	$0, -272(%rbp)
	movb	$0, -280(%rbp)
	movq	%r8, -296(%rbp)
	.p2align 4,,10
	.p2align 3
.L2718:
#APP
# 267 "mem.cc" 1
	# traverse loop begin (n_chains = $6, payload = $1)
# 0 "" 2
#NO_APP
	testq	%r11, %r11
	jle	.L2716
	vmovdqa	(%r15), %ymm13
	leaq	-1(%r11), %r9
	movl	$1, %r8d
	vmovdqa	32(%r15), %ymm1
	andl	$1, %r9d
	vmovdqa	(%rdi), %ymm14
	vmovq	%xmm13, %r15
	vmovdqa	32(%rdi), %ymm1
	vmovdqa	(%rsi), %ymm15
	vmovq	%xmm14, %rdi
	vmovdqa	32(%rsi), %ymm1
	vmovdqa	(%rcx), %ymm0
	vmovq	%xmm15, %rsi
	vmovdqa	32(%rcx), %ymm1
	vmovdqa	(%rdx), %ymm2
	vmovq	%xmm0, %rcx
	vmovdqa	32(%rdx), %ymm1
	vmovdqa	(%rax), %ymm3
	vmovq	%xmm2, %rdx
	vmovdqa	32(%rax), %ymm1
	vmovq	%xmm3, %rax
	cmpq	$1, %r11
	je	.L5869
	testq	%r9, %r9
	je	.L2717
	vmovdqa	(%r15), %ymm4
	movl	$2, %r8d
	vmovdqa	32(%r15), %ymm1
	vmovdqa	(%rdi), %ymm5
	vmovq	%xmm4, %r15
	vmovdqa	32(%rdi), %ymm1
	vmovdqa	(%rsi), %ymm6
	vmovq	%xmm5, %rdi
	vmovdqa	32(%rsi), %ymm1
	vmovdqa	(%rcx), %ymm7
	vmovq	%xmm6, %rsi
	vmovdqa	32(%rcx), %ymm1
	vmovdqa	(%rdx), %ymm8
	vmovq	%xmm7, %rcx
	vmovdqa	32(%rdx), %ymm1
	vmovdqa	(%rax), %ymm9
	vmovq	%xmm8, %rdx
	vmovdqa	32(%rax), %ymm1
	vmovq	%xmm9, %rax
	cmpq	$2, %r11
	je	.L5869
	.p2align 4,,10
	.p2align 3
.L2717:
	vmovdqa	(%r15), %ymm10
	addq	$2, %r8
	vmovdqa	32(%r15), %ymm1
	vmovdqa	(%rdi), %ymm11
	vmovq	%xmm10, %r15
	vmovdqa	32(%rdi), %ymm1
	vmovdqa	(%rsi), %ymm12
	vmovq	%xmm11, %r9
	vmovdqa	32(%rsi), %ymm1
	vmovdqa	(%rcx), %ymm13
	vmovq	%xmm12, %rsi
	vmovdqa	32(%rcx), %ymm1
	vmovdqa	(%rdx), %ymm14
	vmovq	%xmm13, %rcx
	vmovdqa	32(%rdx), %ymm1
	vmovdqa	(%rax), %ymm15
	vmovq	%xmm14, %rdx
	vmovdqa	32(%rax), %ymm1
	vmovq	%xmm15, %rax
	vmovdqa	(%r15), %ymm0
	vmovdqa	32(%r15), %ymm1
	vmovdqa	(%r9), %ymm2
	vmovq	%xmm0, %r15
	vmovdqa	32(%r9), %ymm1
	vmovdqa	(%rsi), %ymm3
	vmovq	%xmm2, %rdi
	vmovdqa	32(%rsi), %ymm1
	vmovdqa	(%rcx), %ymm4
	vmovq	%xmm3, %rsi
	vmovdqa	32(%rcx), %ymm1
	vmovdqa	(%rdx), %ymm5
	vmovq	%xmm4, %rcx
	vmovdqa	32(%rdx), %ymm1
	vmovdqa	(%rax), %ymm6
	vmovq	%xmm5, %rdx
	vmovdqa	32(%rax), %ymm1
	vmovq	%xmm6, %rax
	cmpq	%r8, %r11
	jne	.L2717
.L5869:
	movq	%r15, %r8
	movb	$1, -248(%rbp)
	movl	$1, %r9d
	movb	$1, -256(%rbp)
	movb	$1, -264(%rbp)
	movb	$1, -272(%rbp)
	movb	$1, -280(%rbp)
.L2716:
#APP
# 281 "mem.cc" 1
	# traverse loop end (n_chains = $6, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, %r10
	cmpq	%r10, -240(%rbp)
	jne	.L2718
	movq	-296(%rbp), %r11
	testb	%r9b, %r9b
	jne	.L6108
.L2719:
	cmpb	$0, -280(%rbp)
	je	.L2720
	movq	%rdi, -216(%rbp)
	movq	%rdi, %rbx
.L2720:
	cmpb	$0, -272(%rbp)
	je	.L2721
	movq	%rsi, -208(%rbp)
	movq	%rsi, %r12
.L2721:
	cmpb	$0, -264(%rbp)
	je	.L2722
	movq	%rcx, -200(%rbp)
	movq	%rcx, %r13
.L2722:
	cmpb	$0, -256(%rbp)
	je	.L2723
	movq	%rdx, -192(%rbp)
	movq	%rdx, %r14
.L2723:
	cmpb	$0, -248(%rbp)
	jne	.L6109
	vzeroupper
	movq	-288(%rbp), %rax
	jmp	.L2569
	.p2align 4,,10
	.p2align 3
.L2706:
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L6022
	movq	-232(%rbp), %rsi
	movq	%r8, %rdx
	movq	%r11, %rdi
	addq	$520, %rsp
	popq	%rbx
	popq	%r12
	popq	%rcx
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%rcx), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_Z13access_randomILi6ELi1EEP6recordPS1_ll
.L5866:
	.cfi_restore_state
	movq	(%rsi), %r15
	movq	16(%r11), %rbx
	movq	8(%rsi), %rsi
	movq	24(%r11), %r12
	movq	32(%r11), %rax
	movq	%r15, -224(%rbp)
	cmpq	$0, -240(%rbp)
	movq	%rbx, -208(%rbp)
	movq	%rsi, -216(%rbp)
	movq	%r12, -200(%rbp)
	movq	%rax, -192(%rbp)
	jle	.L2688
	movq	-232(%rbp), %r10
	movq	%r8, %r14
	xorl	%r9d, %r9d
	.p2align 4,,10
	.p2align 3
.L2689:
#APP
# 267 "mem.cc" 1
	# traverse loop begin (n_chains = $5, payload = $1)
# 0 "" 2
#NO_APP
	testq	%r10, %r10
	jle	.L2686
	vmovdqa	(%r15), %ymm7
	leaq	-1(%r10), %rdi
	movl	$1, %r13d
	vmovdqa	32(%r15), %ymm1
	andl	$1, %edi
	vmovdqa	(%rsi), %ymm8
	vmovq	%xmm7, %r15
	vmovdqa	32(%rsi), %ymm1
	vmovdqa	(%rbx), %ymm9
	vmovq	%xmm8, %rsi
	vmovdqa	32(%rbx), %ymm1
	vmovdqa	(%r12), %ymm10
	vmovq	%xmm9, %rbx
	vmovdqa	32(%r12), %ymm1
	vmovdqa	(%rax), %ymm11
	vmovq	%xmm10, %r12
	vmovdqa	32(%rax), %ymm1
	vmovq	%xmm11, %rax
	cmpq	$1, %r10
	je	.L2686
	testq	%rdi, %rdi
	je	.L2687
	vmovdqa	(%r15), %ymm12
	movl	$2, %r13d
	vmovdqa	32(%r15), %ymm1
	vmovdqa	(%rsi), %ymm13
	vmovq	%xmm12, %r15
	vmovdqa	32(%rsi), %ymm1
	vmovdqa	(%rbx), %ymm14
	vmovq	%xmm13, %rsi
	vmovdqa	32(%rbx), %ymm1
	vmovdqa	(%r12), %ymm15
	vmovq	%xmm14, %rbx
	vmovdqa	32(%r12), %ymm1
	vmovdqa	(%rax), %ymm0
	vmovq	%xmm15, %r12
	vmovdqa	32(%rax), %ymm1
	vmovq	%xmm0, %rax
	cmpq	$2, %r10
	je	.L2686
	.p2align 4,,10
	.p2align 3
.L2687:
	vmovdqa	(%r15), %ymm2
	addq	$2, %r13
	vmovdqa	32(%r15), %ymm1
	vmovdqa	(%rsi), %ymm3
	vmovq	%xmm2, %r11
	vmovdqa	32(%rsi), %ymm1
	vmovdqa	(%rbx), %ymm4
	vmovq	%xmm3, %r8
	vmovdqa	32(%rbx), %ymm1
	vmovdqa	(%r12), %ymm5
	vmovq	%xmm4, %rcx
	vmovdqa	32(%r12), %ymm1
	vmovdqa	(%rax), %ymm6
	vmovq	%xmm5, %rdx
	vmovdqa	32(%rax), %ymm1
	vmovq	%xmm6, %rdi
	vmovdqa	(%r11), %ymm7
	vmovdqa	32(%r11), %ymm1
	vmovdqa	(%r8), %ymm8
	vmovq	%xmm7, %r15
	vmovdqa	32(%r8), %ymm1
	vmovdqa	(%rcx), %ymm9
	vmovq	%xmm8, %rsi
	vmovdqa	32(%rcx), %ymm1
	vmovdqa	(%rdx), %ymm10
	vmovq	%xmm9, %rbx
	vmovdqa	32(%rdx), %ymm1
	vmovdqa	(%rdi), %ymm11
	vmovq	%xmm10, %r12
	vmovdqa	32(%rdi), %ymm1
	vmovq	%xmm11, %rax
	cmpq	%r13, %r10
	jne	.L2687
.L2686:
#APP
# 281 "mem.cc" 1
	# traverse loop end (n_chains = $5, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, %r9
	cmpq	%r9, %r14
	jne	.L2689
	vzeroupper
.L2688:
	jmp	.L2569
.L2677:
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L6022
	movq	-232(%rbp), %rsi
	movq	%r11, %rdi
	movq	%r8, %rdx
	addq	$520, %rsp
	popq	%rbx
	popq	%r12
	popq	%r11
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r11), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_Z13access_randomILi5ELi1EEP6recordPS1_ll
.L5896:
	.cfi_restore_state
	movq	(%rsi), %r12
	movq	80(%r11), %r15
	movq	72(%r11), %r14
	movq	88(%r11), %r13
	movq	96(%r11), %r10
	movq	%r12, -224(%rbp)
	movq	8(%rsi), %rbx
	movq	%r15, -256(%rbp)
	movq	16(%rsi), %r9
	movq	%r15, -144(%rbp)
	movq	%r12, %r15
	movq	24(%rsi), %rdi
	movq	%r14, -248(%rbp)
	movq	32(%rsi), %rcx
	movq	%r14, -152(%rbp)
	movq	40(%rsi), %rax
	movq	%rbx, -216(%rbp)
	movq	48(%rsi), %rdx
	movq	%r9, -208(%rbp)
	movq	64(%r11), %r8
	movq	%rdi, -200(%rbp)
	movq	56(%rsi), %rsi
	movq	%rcx, -192(%rbp)
	movq	104(%r11), %r11
	movq	%rax, -184(%rbp)
	movq	%rdx, -176(%rbp)
	movq	%r8, -160(%rbp)
	movq	%rsi, -168(%rbp)
	movq	%r13, -264(%rbp)
	movq	%r13, -136(%rbp)
	movq	%r10, -272(%rbp)
	movq	%r10, -128(%rbp)
	movq	%r11, -280(%rbp)
	movq	%r11, -120(%rbp)
	cmpq	$0, -240(%rbp)
	movq	%r12, -376(%rbp)
	jle	.L6110
	movq	%rbx, -384(%rbp)
	movq	%rbx, %r14
	movq	%rax, %r11
	movq	%rcx, %rbx
	movq	%rcx, -408(%rbp)
	movq	%r9, %r13
	movq	%rdi, %r12
	movq	%rdx, %r10
	movq	-256(%rbp), %rcx
	movq	%rax, -416(%rbp)
	movq	-264(%rbp), %rax
	movq	%r9, -392(%rbp)
	movq	%rsi, %r9
	movq	%rdi, -400(%rbp)
	movq	-248(%rbp), %rdi
	movq	%rdx, -424(%rbp)
	movq	-272(%rbp), %rdx
	movq	%rsi, -432(%rbp)
	movq	%rcx, %rsi
	movq	%rcx, -456(%rbp)
	movq	%rax, %rcx
	movq	%rax, -464(%rbp)
	movq	-280(%rbp), %rax
	movq	%r8, -440(%rbp)
	movq	%rdi, -448(%rbp)
	movq	%rdx, -472(%rbp)
	movq	%rax, -480(%rbp)
	movq	%rax, -256(%rbp)
	movb	$0, -328(%rbp)
	movb	$0, -272(%rbp)
	movb	$0, -344(%rbp)
	movb	$0, -336(%rbp)
	movb	$0, -296(%rbp)
	movb	$0, -288(%rbp)
	movb	$0, -320(%rbp)
	movb	$0, -352(%rbp)
	movb	$0, -280(%rbp)
	movb	$0, -368(%rbp)
	movb	$0, -360(%rbp)
	movb	$0, -304(%rbp)
	movb	$0, -312(%rbp)
	movb	$0, -248(%rbp)
	movq	$0, -264(%rbp)
	.p2align 4,,10
	.p2align 3
.L3102:
#APP
# 267 "mem.cc" 1
	# traverse loop begin (n_chains = $14, payload = $1)
# 0 "" 2
#NO_APP
	cmpq	$0, -232(%rbp)
	jle	.L3100
	xorl	%eax, %eax
	movq	%rdx, -248(%rbp)
	.p2align 4,,10
	.p2align 3
.L3101:
	movq	-248(%rbp), %rdx
	addq	$1, %rax
	vmovdqa	(%r15), %ymm7
	vmovdqa	32(%r15), %ymm1
	vmovdqa	(%r14), %ymm8
	vmovq	%xmm7, %r15
	vmovdqa	32(%r14), %ymm1
	vmovdqa	0(%r13), %ymm9
	vmovq	%xmm8, %r14
	vmovdqa	32(%r13), %ymm1
	vmovdqa	(%r12), %ymm10
	vmovq	%xmm9, %r13
	vmovdqa	32(%r12), %ymm1
	vmovdqa	(%rbx), %ymm11
	vmovq	%xmm10, %r12
	vmovdqa	32(%rbx), %ymm1
	vmovdqa	(%r11), %ymm12
	vmovq	%xmm11, %rbx
	vmovdqa	32(%r11), %ymm1
	vmovdqa	(%r10), %ymm13
	vmovq	%xmm12, %r11
	vmovdqa	32(%r10), %ymm1
	vmovdqa	(%r9), %ymm14
	vmovq	%xmm13, %r10
	vmovdqa	32(%r9), %ymm1
	vmovdqa	(%r8), %ymm15
	vmovq	%xmm14, %r9
	vmovdqa	32(%r8), %ymm1
	vmovdqa	(%rdi), %ymm0
	vmovq	%xmm15, %r8
	vmovdqa	32(%rdi), %ymm1
	vmovdqa	(%rsi), %ymm2
	vmovq	%xmm0, %rdi
	vmovdqa	32(%rsi), %ymm1
	vmovdqa	(%rcx), %ymm3
	vmovq	%xmm2, %rsi
	vmovdqa	32(%rcx), %ymm1
	vmovdqa	(%rdx), %ymm4
	vmovq	%xmm3, %rcx
	vmovdqa	32(%rdx), %ymm1
	movq	-256(%rbp), %rdx
	vmovq	%xmm4, -248(%rbp)
	vmovdqa	(%rdx), %ymm5
	vmovdqa	32(%rdx), %ymm1
	vmovq	%xmm5, -256(%rbp)
	cmpq	%rax, -232(%rbp)
	jne	.L3101
	movq	-248(%rbp), %rdx
	movb	$1, -328(%rbp)
	movb	$1, -272(%rbp)
	movb	$1, -344(%rbp)
	movb	$1, -336(%rbp)
	movb	$1, -296(%rbp)
	movb	$1, -288(%rbp)
	movb	$1, -320(%rbp)
	movb	$1, -352(%rbp)
	movb	$1, -280(%rbp)
	movb	$1, -368(%rbp)
	movb	$1, -360(%rbp)
	movb	$1, -304(%rbp)
	movb	$1, -312(%rbp)
	movb	$1, -248(%rbp)
.L3100:
#APP
# 281 "mem.cc" 1
	# traverse loop end (n_chains = $14, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, -264(%rbp)
	movq	-264(%rbp), %rax
	cmpq	%rax, -240(%rbp)
	jne	.L3102
	cmpb	$0, -248(%rbp)
	jne	.L6111
.L3103:
	cmpb	$0, -312(%rbp)
	je	.L3104
	movq	%r14, -216(%rbp)
	movq	%r14, -384(%rbp)
.L3104:
	cmpb	$0, -304(%rbp)
	je	.L3105
	movq	%r13, -208(%rbp)
	movq	%r13, -392(%rbp)
.L3105:
	cmpb	$0, -360(%rbp)
	je	.L3106
	movq	%r12, -200(%rbp)
	movq	%r12, -400(%rbp)
.L3106:
	cmpb	$0, -368(%rbp)
	je	.L3107
	movq	%rbx, -192(%rbp)
	movq	%rbx, -408(%rbp)
.L3107:
	cmpb	$0, -280(%rbp)
	je	.L3108
	movq	%r11, -184(%rbp)
	movq	%r11, -416(%rbp)
.L3108:
	cmpb	$0, -352(%rbp)
	je	.L3109
	movq	%r10, -176(%rbp)
	movq	%r10, -424(%rbp)
.L3109:
	cmpb	$0, -320(%rbp)
	je	.L3110
	movq	%r9, -168(%rbp)
	movq	%r9, -432(%rbp)
.L3110:
	cmpb	$0, -288(%rbp)
	je	.L3111
	movq	%r8, -160(%rbp)
	movq	%r8, -440(%rbp)
.L3111:
	cmpb	$0, -296(%rbp)
	je	.L3112
	movq	%rdi, -152(%rbp)
	movq	%rdi, -448(%rbp)
.L3112:
	cmpb	$0, -336(%rbp)
	je	.L3113
	movq	%rsi, -144(%rbp)
	movq	%rsi, -456(%rbp)
.L3113:
	cmpb	$0, -344(%rbp)
	je	.L3114
	movq	%rcx, -136(%rbp)
	movq	%rcx, -464(%rbp)
.L3114:
	cmpb	$0, -272(%rbp)
	je	.L3115
	movq	%rdx, -128(%rbp)
	movq	%rdx, -472(%rbp)
.L3115:
	cmpb	$0, -328(%rbp)
	jne	.L6112
	vzeroupper
	movq	-376(%rbp), %r13
.L3099:
	movq	-384(%rbp), %r12
	movq	-392(%rbp), %rdi
	movq	-400(%rbp), %rsi
	movq	-408(%rbp), %rcx
	movq	-416(%rbp), %rdx
	movq	-424(%rbp), %rax
	movq	-432(%rbp), %r14
	movq	-440(%rbp), %r13
	movq	-448(%rbp), %rbx
	movq	-456(%rbp), %r10
	movq	-464(%rbp), %r9
	movq	-472(%rbp), %r8
	movq	-480(%rbp), %r11
	jmp	.L2569
.L3090:
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L6022
	movq	-232(%rbp), %rsi
	movq	%r8, %rdx
	movq	%r11, %rdi
	addq	$520, %rsp
	popq	%rbx
	popq	%r12
	popq	%rcx
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%rcx), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_Z13access_randomILi14ELi1EEP6recordPS1_ll
.L5893:
	.cfi_restore_state
	movq	72(%r11), %r14
	movq	80(%r11), %r15
	movq	88(%r11), %r13
	movq	(%rsi), %r12
	movq	8(%rsi), %rbx
	movq	%r14, -248(%rbp)
	movq	16(%rsi), %r9
	movq	%r14, -152(%rbp)
	movq	24(%rsi), %rdi
	movq	%r15, -264(%rbp)
	movq	32(%rsi), %rcx
	movq	%r12, -224(%rbp)
	movq	40(%rsi), %rax
	movq	%rbx, -216(%rbp)
	movq	48(%rsi), %rdx
	movq	%r9, -208(%rbp)
	movq	64(%r11), %r8
	movq	%rdi, -200(%rbp)
	movq	96(%r11), %r11
	movq	%rcx, -192(%rbp)
	movq	56(%rsi), %rsi
	movq	%rax, -184(%rbp)
	cmpq	$0, -240(%rbp)
	movq	%rdx, -176(%rbp)
	movq	%r8, -160(%rbp)
	movq	%r15, -144(%rbp)
	movq	%rsi, -168(%rbp)
	movq	%r13, -272(%rbp)
	movq	%r13, -136(%rbp)
	movq	%r11, -280(%rbp)
	movq	%r11, -128(%rbp)
	jle	.L6113
	movq	%r12, %r11
	movq	%r12, -368(%rbp)
	movq	%r12, %r15
	movq	%rbx, %r14
	movq	%rbx, -376(%rbp)
	movq	%rdi, %r12
	movq	%rcx, %rbx
	movq	%rdx, %r10
	movq	%rdi, -392(%rbp)
	movq	-248(%rbp), %rdi
	movq	%r9, %r13
	movq	%rcx, -400(%rbp)
	movq	-264(%rbp), %rcx
	movq	%rax, -408(%rbp)
	movq	%rax, -256(%rbp)
	movq	-272(%rbp), %rax
	movq	%rdx, -416(%rbp)
	movq	-280(%rbp), %rdx
	movq	%r9, -384(%rbp)
	movq	%rsi, %r9
	movq	%rsi, -424(%rbp)
	movq	%rcx, %rsi
	movq	%rcx, -448(%rbp)
	movq	%rax, %rcx
	movq	%rax, -456(%rbp)
	movq	%r11, %rax
	movq	%r8, -432(%rbp)
	movq	%rdi, -440(%rbp)
	movq	%rdx, -464(%rbp)
	movb	$0, -288(%rbp)
	movb	$0, -304(%rbp)
	movb	$0, -336(%rbp)
	movb	$0, -296(%rbp)
	movb	$0, -264(%rbp)
	movb	$0, -344(%rbp)
	movb	$0, -280(%rbp)
	movb	$0, -272(%rbp)
	movb	$0, -352(%rbp)
	movb	$0, -320(%rbp)
	movb	$0, -328(%rbp)
	movb	$0, -360(%rbp)
	movb	$0, -312(%rbp)
	movq	$0, -248(%rbp)
	.p2align 4,,10
	.p2align 3
.L3047:
#APP
# 267 "mem.cc" 1
	# traverse loop begin (n_chains = $13, payload = $1)
# 0 "" 2
#NO_APP
	cmpq	$0, -232(%rbp)
	jle	.L3045
	movq	-256(%rbp), %r11
	movq	%r15, %rax
	xorl	%r15d, %r15d
	.p2align 4,,10
	.p2align 3
.L3046:
	vmovdqa	(%rax), %ymm6
	addq	$1, %r15
	vmovdqa	32(%rax), %ymm1
	vmovdqa	(%r14), %ymm7
	vmovq	%xmm6, %rax
	vmovdqa	32(%r14), %ymm1
	vmovdqa	0(%r13), %ymm8
	vmovq	%xmm7, %r14
	vmovdqa	32(%r13), %ymm1
	vmovdqa	(%r12), %ymm9
	vmovq	%xmm8, %r13
	vmovdqa	32(%r12), %ymm1
	vmovdqa	(%rbx), %ymm10
	vmovq	%xmm9, %r12
	vmovdqa	32(%rbx), %ymm1
	vmovdqa	(%r11), %ymm11
	vmovq	%xmm10, %rbx
	vmovdqa	32(%r11), %ymm1
	vmovdqa	(%r10), %ymm12
	vmovq	%xmm11, %r11
	vmovdqa	32(%r10), %ymm1
	vmovdqa	(%r9), %ymm13
	vmovq	%xmm12, %r10
	vmovdqa	32(%r9), %ymm1
	vmovdqa	(%r8), %ymm14
	vmovq	%xmm13, %r9
	vmovdqa	32(%r8), %ymm1
	vmovdqa	(%rdi), %ymm15
	vmovq	%xmm14, %r8
	vmovdqa	32(%rdi), %ymm1
	vmovdqa	(%rsi), %ymm0
	vmovq	%xmm15, %rdi
	vmovdqa	32(%rsi), %ymm1
	vmovdqa	(%rcx), %ymm2
	vmovq	%xmm0, %rsi
	vmovdqa	32(%rcx), %ymm1
	vmovdqa	(%rdx), %ymm3
	vmovq	%xmm2, %rcx
	vmovdqa	32(%rdx), %ymm1
	vmovq	%xmm3, %rdx
	cmpq	%r15, -232(%rbp)
	jne	.L3046
	movq	%r11, -256(%rbp)
	movq	%rax, %r15
	movb	$1, -288(%rbp)
	movb	$1, -304(%rbp)
	movb	$1, -336(%rbp)
	movb	$1, -296(%rbp)
	movb	$1, -264(%rbp)
	movb	$1, -344(%rbp)
	movb	$1, -280(%rbp)
	movb	$1, -272(%rbp)
	movb	$1, -352(%rbp)
	movb	$1, -320(%rbp)
	movb	$1, -328(%rbp)
	movb	$1, -360(%rbp)
	movb	$1, -312(%rbp)
.L3045:
#APP
# 281 "mem.cc" 1
	# traverse loop end (n_chains = $13, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, -248(%rbp)
	movq	-248(%rbp), %r11
	cmpq	%r11, -240(%rbp)
	jne	.L3047
	cmpb	$0, -312(%rbp)
	jne	.L6114
.L3048:
	cmpb	$0, -360(%rbp)
	je	.L3049
	movq	%r14, -216(%rbp)
	movq	%r14, -376(%rbp)
.L3049:
	cmpb	$0, -328(%rbp)
	je	.L3050
	movq	%r13, -208(%rbp)
	movq	%r13, -384(%rbp)
.L3050:
	cmpb	$0, -320(%rbp)
	je	.L3051
	movq	%r12, -200(%rbp)
	movq	%r12, -392(%rbp)
.L3051:
	cmpb	$0, -352(%rbp)
	je	.L3052
	movq	%rbx, -192(%rbp)
	movq	%rbx, -400(%rbp)
.L3052:
	cmpb	$0, -272(%rbp)
	je	.L3053
	movq	-256(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	%rax, -408(%rbp)
.L3053:
	cmpb	$0, -280(%rbp)
	je	.L3054
	movq	%r10, -176(%rbp)
	movq	%r10, -416(%rbp)
.L3054:
	cmpb	$0, -344(%rbp)
	je	.L3055
	movq	%r9, -168(%rbp)
	movq	%r9, -424(%rbp)
.L3055:
	cmpb	$0, -264(%rbp)
	je	.L3056
	movq	%r8, -160(%rbp)
	movq	%r8, -432(%rbp)
.L3056:
	cmpb	$0, -296(%rbp)
	je	.L3057
	movq	%rdi, -152(%rbp)
	movq	%rdi, -440(%rbp)
.L3057:
	cmpb	$0, -336(%rbp)
	je	.L3058
	movq	%rsi, -144(%rbp)
	movq	%rsi, -448(%rbp)
.L3058:
	cmpb	$0, -304(%rbp)
	je	.L3059
	movq	%rcx, -136(%rbp)
	movq	%rcx, -456(%rbp)
.L3059:
	cmpb	$0, -288(%rbp)
	jne	.L6115
	vzeroupper
	jmp	.L6016
	.p2align 4,,10
	.p2align 3
.L3035:
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L6022
	movq	-232(%rbp), %rsi
	movq	%r8, %rdx
	movq	%r11, %rdi
	addq	$520, %rsp
	popq	%rbx
	popq	%r12
	popq	%rcx
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%rcx), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_Z13access_randomILi13ELi1EEP6recordPS1_ll
.L5890:
	.cfi_restore_state
	movq	(%rsi), %r12
	movq	8(%rsi), %r10
	movq	16(%rsi), %r9
	movq	24(%rsi), %rdi
	movq	32(%rsi), %rcx
	movq	%r12, -224(%rbp)
	movq	40(%rsi), %rdx
	movq	%r10, -216(%rbp)
	movq	72(%r11), %rbx
	movq	%r9, -208(%rbp)
	movq	80(%r11), %rax
	movq	%rdi, -200(%rbp)
	movq	88(%r11), %r13
	movq	%rcx, -192(%rbp)
	movq	48(%rsi), %rsi
	movq	%rdx, -184(%rbp)
	movq	56(%r11), %r8
	movq	%rbx, -248(%rbp)
	movq	64(%r11), %r14
	movq	%rbx, -152(%rbp)
	cmpq	$0, -240(%rbp)
	movq	%rax, -256(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%r8, -168(%rbp)
	movq	%r14, -160(%rbp)
	movq	%rax, -144(%rbp)
	movq	%r13, -264(%rbp)
	movq	%r13, -136(%rbp)
	jle	.L6116
	movq	%r12, %r15
	movq	%r12, -352(%rbp)
	movq	%r12, %rax
	movq	%r10, %r13
	movq	%r10, -360(%rbp)
	movq	%r9, %r12
	movq	%rcx, %r11
	movq	%rdx, %r10
	movq	%r9, -368(%rbp)
	movq	%rsi, %r9
	movq	%rdi, %rbx
	movq	%rcx, -384(%rbp)
	movq	-256(%rbp), %rcx
	movq	%rdx, -392(%rbp)
	movq	-264(%rbp), %rdx
	movq	%rsi, -400(%rbp)
	movq	-248(%rbp), %rsi
	movq	%rdi, -376(%rbp)
	movq	%r14, %rdi
	movq	%r8, -408(%rbp)
	movq	%r14, -416(%rbp)
	movq	%rsi, -424(%rbp)
	movq	%rcx, -432(%rbp)
	movq	%rdx, -440(%rbp)
	movb	$0, -312(%rbp)
	movb	$0, -336(%rbp)
	movb	$0, -320(%rbp)
	movb	$0, -304(%rbp)
	movb	$0, -344(%rbp)
	movb	$0, -296(%rbp)
	movb	$0, -256(%rbp)
	movb	$0, -328(%rbp)
	movb	$0, -272(%rbp)
	movb	$0, -280(%rbp)
	movb	$0, -264(%rbp)
	movb	$0, -288(%rbp)
	movq	$0, -248(%rbp)
	.p2align 4,,10
	.p2align 3
.L2994:
#APP
# 267 "mem.cc" 1
	# traverse loop begin (n_chains = $12, payload = $1)
# 0 "" 2
#NO_APP
	cmpq	$0, -232(%rbp)
	jle	.L2992
	movq	-232(%rbp), %r15
	xorl	%r14d, %r14d
	.p2align 4,,10
	.p2align 3
.L2993:
	vmovdqa	(%rax), %ymm4
	addq	$1, %r14
	vmovdqa	32(%rax), %ymm1
	vmovdqa	0(%r13), %ymm5
	vmovq	%xmm4, %rax
	vmovdqa	32(%r13), %ymm1
	vmovdqa	(%r12), %ymm6
	vmovq	%xmm5, %r13
	vmovdqa	32(%r12), %ymm1
	vmovdqa	(%rbx), %ymm7
	vmovq	%xmm6, %r12
	vmovdqa	32(%rbx), %ymm1
	vmovdqa	(%r11), %ymm8
	vmovq	%xmm7, %rbx
	vmovdqa	32(%r11), %ymm1
	vmovdqa	(%r10), %ymm9
	vmovq	%xmm8, %r11
	vmovdqa	32(%r10), %ymm1
	vmovdqa	(%r9), %ymm10
	vmovq	%xmm9, %r10
	vmovdqa	32(%r9), %ymm1
	vmovdqa	(%r8), %ymm11
	vmovq	%xmm10, %r9
	vmovdqa	32(%r8), %ymm1
	vmovdqa	(%rdi), %ymm12
	vmovq	%xmm11, %r8
	vmovdqa	32(%rdi), %ymm1
	vmovdqa	(%rsi), %ymm13
	vmovq	%xmm12, %rdi
	vmovdqa	32(%rsi), %ymm1
	vmovdqa	(%rcx), %ymm14
	vmovq	%xmm13, %rsi
	vmovdqa	32(%rcx), %ymm1
	vmovdqa	(%rdx), %ymm15
	vmovq	%xmm14, %rcx
	vmovdqa	32(%rdx), %ymm1
	vmovq	%xmm15, %rdx
	cmpq	%r14, %r15
	jne	.L2993
	movq	%rax, %r15
	movb	$1, -312(%rbp)
	movb	$1, -336(%rbp)
	movb	$1, -320(%rbp)
	movb	$1, -304(%rbp)
	movb	$1, -344(%rbp)
	movb	$1, -296(%rbp)
	movb	$1, -256(%rbp)
	movb	$1, -328(%rbp)
	movb	$1, -272(%rbp)
	movb	$1, -280(%rbp)
	movb	$1, -264(%rbp)
	movb	$1, -288(%rbp)
.L2992:
#APP
# 281 "mem.cc" 1
	# traverse loop end (n_chains = $12, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, -248(%rbp)
	movq	-248(%rbp), %r14
	cmpq	%r14, -240(%rbp)
	jne	.L2994
	cmpb	$0, -288(%rbp)
	jne	.L6117
.L2995:
	cmpb	$0, -264(%rbp)
	je	.L2996
	movq	%r13, -216(%rbp)
	movq	%r13, -360(%rbp)
.L2996:
	cmpb	$0, -280(%rbp)
	je	.L2997
	movq	%r12, -208(%rbp)
	movq	%r12, -368(%rbp)
.L2997:
	cmpb	$0, -272(%rbp)
	je	.L2998
	movq	%rbx, -200(%rbp)
	movq	%rbx, -376(%rbp)
.L2998:
	cmpb	$0, -328(%rbp)
	je	.L2999
	movq	%r11, -192(%rbp)
	movq	%r11, -384(%rbp)
.L2999:
	cmpb	$0, -256(%rbp)
	je	.L3000
	movq	%r10, -184(%rbp)
	movq	%r10, -392(%rbp)
.L3000:
	cmpb	$0, -296(%rbp)
	je	.L3001
	movq	%r9, -176(%rbp)
	movq	%r9, -400(%rbp)
.L3001:
	cmpb	$0, -344(%rbp)
	je	.L3002
	movq	%r8, -168(%rbp)
	movq	%r8, -408(%rbp)
.L3002:
	cmpb	$0, -304(%rbp)
	je	.L3003
	movq	%rdi, -160(%rbp)
	movq	%rdi, -416(%rbp)
.L3003:
	cmpb	$0, -320(%rbp)
	je	.L3004
	movq	%rsi, -152(%rbp)
	movq	%rsi, -424(%rbp)
.L3004:
	cmpb	$0, -336(%rbp)
	je	.L3005
	movq	%rcx, -144(%rbp)
	movq	%rcx, -432(%rbp)
.L3005:
	cmpb	$0, -312(%rbp)
	jne	.L6118
	vzeroupper
	jmp	.L3017
	.p2align 4,,10
	.p2align 3
.L2982:
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L6022
	movq	-232(%rbp), %rsi
	movq	%r8, %rdx
	movq	%r11, %rdi
	addq	$520, %rsp
	popq	%rbx
	popq	%r12
	popq	%r8
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r8), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_Z13access_randomILi12ELi1EEP6recordPS1_ll
.L5887:
	.cfi_restore_state
	movq	(%rsi), %r15
	movq	72(%r11), %rax
	movq	8(%rsi), %r9
	movq	16(%rsi), %r8
	movq	24(%rsi), %rdi
	movq	%r15, -224(%rbp)
	movq	32(%rsi), %rcx
	movq	%rax, -248(%rbp)
	movq	40(%rsi), %rdx
	movq	%r9, -216(%rbp)
	movq	56(%r11), %r13
	movq	%r8, -208(%rbp)
	movq	64(%r11), %r14
	movq	%rdi, -200(%rbp)
	movq	80(%r11), %r11
	movq	%rcx, -192(%rbp)
	movq	48(%rsi), %rsi
	movq	%rdx, -184(%rbp)
	cmpq	$0, -240(%rbp)
	movq	%r13, -168(%rbp)
	movq	%r14, -160(%rbp)
	movq	%rax, -152(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%r11, -256(%rbp)
	movq	%r11, -144(%rbp)
	movq	%r15, -328(%rbp)
	jle	.L6119
	movq	%r9, -336(%rbp)
	movq	%r9, %r12
	movq	%rcx, %r10
	movq	%rdx, %r9
	movq	%rcx, -360(%rbp)
	movq	%r8, %rbx
	movq	%rdi, %r11
	movq	%r15, %rax
	movq	-248(%rbp), %rcx
	movq	%rdx, -368(%rbp)
	movq	-256(%rbp), %rdx
	movq	%r8, -344(%rbp)
	movq	%rsi, %r8
	movq	%rdi, -352(%rbp)
	movq	%r13, %rdi
	movq	%rsi, -376(%rbp)
	movq	%r14, %rsi
	movq	%r13, -384(%rbp)
	xorl	%r13d, %r13d
	movq	%r14, -392(%rbp)
	xorl	%r14d, %r14d
	movq	%rcx, -400(%rbp)
	movq	%rdx, -408(%rbp)
	movb	$0, -248(%rbp)
	movb	$0, -256(%rbp)
	movb	$0, -264(%rbp)
	movb	$0, -272(%rbp)
	movb	$0, -280(%rbp)
	movb	$0, -288(%rbp)
	movb	$0, -296(%rbp)
	movb	$0, -304(%rbp)
	movb	$0, -312(%rbp)
	movb	$0, -320(%rbp)
	.p2align 4,,10
	.p2align 3
.L2943:
#APP
# 267 "mem.cc" 1
	# traverse loop begin (n_chains = $11, payload = $1)
# 0 "" 2
#NO_APP
	cmpq	$0, -232(%rbp)
	jle	.L2941
	movq	-232(%rbp), %r15
	xorl	%r13d, %r13d
	.p2align 4,,10
	.p2align 3
.L2942:
	vmovdqa	(%rax), %ymm0
	addq	$1, %r13
	vmovdqa	32(%rax), %ymm1
	vmovdqa	(%r12), %ymm2
	vmovq	%xmm0, %rax
	vmovdqa	32(%r12), %ymm1
	vmovdqa	(%rbx), %ymm3
	vmovq	%xmm2, %r12
	vmovdqa	32(%rbx), %ymm1
	vmovdqa	(%r11), %ymm4
	vmovq	%xmm3, %rbx
	vmovdqa	32(%r11), %ymm1
	vmovdqa	(%r10), %ymm5
	vmovq	%xmm4, %r11
	vmovdqa	32(%r10), %ymm1
	vmovdqa	(%r9), %ymm6
	vmovq	%xmm5, %r10
	vmovdqa	32(%r9), %ymm1
	vmovdqa	(%r8), %ymm7
	vmovq	%xmm6, %r9
	vmovdqa	32(%r8), %ymm1
	vmovdqa	(%rdi), %ymm8
	vmovq	%xmm7, %r8
	vmovdqa	32(%rdi), %ymm1
	vmovdqa	(%rsi), %ymm9
	vmovq	%xmm8, %rdi
	vmovdqa	32(%rsi), %ymm1
	vmovdqa	(%rcx), %ymm10
	vmovq	%xmm9, %rsi
	vmovdqa	32(%rcx), %ymm1
	vmovdqa	(%rdx), %ymm11
	vmovq	%xmm10, %rcx
	vmovdqa	32(%rdx), %ymm1
	vmovq	%xmm11, %rdx
	cmpq	%r13, %r15
	jne	.L2942
	movq	%rax, %r15
	movb	$1, -248(%rbp)
	movl	$1, %r13d
	movb	$1, -256(%rbp)
	movb	$1, -264(%rbp)
	movb	$1, -272(%rbp)
	movb	$1, -280(%rbp)
	movb	$1, -288(%rbp)
	movb	$1, -296(%rbp)
	movb	$1, -304(%rbp)
	movb	$1, -312(%rbp)
	movb	$1, -320(%rbp)
.L2941:
#APP
# 281 "mem.cc" 1
	# traverse loop end (n_chains = $11, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, %r14
	cmpq	%r14, -240(%rbp)
	jne	.L2943
	testb	%r13b, %r13b
	jne	.L6120
.L2944:
	cmpb	$0, -320(%rbp)
	je	.L2945
	movq	%r12, -216(%rbp)
	movq	%r12, -336(%rbp)
.L2945:
	cmpb	$0, -312(%rbp)
	je	.L2946
	movq	%rbx, -208(%rbp)
	movq	%rbx, -344(%rbp)
.L2946:
	cmpb	$0, -304(%rbp)
	je	.L2947
	movq	%r11, -200(%rbp)
	movq	%r11, -352(%rbp)
.L2947:
	cmpb	$0, -296(%rbp)
	je	.L2948
	movq	%r10, -192(%rbp)
	movq	%r10, -360(%rbp)
.L2948:
	cmpb	$0, -288(%rbp)
	je	.L2949
	movq	%r9, -184(%rbp)
	movq	%r9, -368(%rbp)
.L2949:
	cmpb	$0, -280(%rbp)
	je	.L2950
	movq	%r8, -176(%rbp)
	movq	%r8, -376(%rbp)
.L2950:
	cmpb	$0, -272(%rbp)
	je	.L2951
	movq	%rdi, -168(%rbp)
	movq	%rdi, -384(%rbp)
.L2951:
	cmpb	$0, -264(%rbp)
	je	.L2952
	movq	%rsi, -160(%rbp)
	movq	%rsi, -392(%rbp)
.L2952:
	cmpb	$0, -256(%rbp)
	je	.L2953
	movq	%rcx, -152(%rbp)
	movq	%rcx, -400(%rbp)
.L2953:
	cmpb	$0, -248(%rbp)
	jne	.L6121
	vzeroupper
	movq	-328(%rbp), %r14
.L2940:
	movq	-336(%rbp), %rbx
	movq	-344(%rbp), %r11
	movq	-352(%rbp), %r10
	movq	-360(%rbp), %r9
	movq	-368(%rbp), %r8
	movq	-376(%rbp), %rdi
	movq	-384(%rbp), %rsi
	movq	-392(%rbp), %rcx
	movq	-400(%rbp), %rdx
	movq	-408(%rbp), %r13
	jmp	.L2569
.L2931:
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L6022
	movq	-232(%rbp), %rsi
	movq	%r8, %rdx
	movq	%r11, %rdi
	addq	$520, %rsp
	popq	%rbx
	popq	%r12
	popq	%r9
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r9), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_Z13access_randomILi11ELi1EEP6recordPS1_ll
.L5884:
	.cfi_restore_state
	movq	(%rsi), %r14
	movq	8(%rsi), %rbx
	movq	16(%rsi), %r9
	movq	24(%rsi), %r8
	movq	32(%rsi), %rdi
	movq	%r14, -224(%rbp)
	movq	72(%r11), %rax
	movq	%rbx, -216(%rbp)
	movq	40(%rsi), %rsi
	movq	%r9, -208(%rbp)
	movq	48(%r11), %rcx
	movq	%r8, -200(%rbp)
	movq	56(%r11), %rdx
	movq	%rdi, -192(%rbp)
	movq	64(%r11), %r13
	movq	%rax, -248(%rbp)
	cmpq	$0, -240(%rbp)
	movq	%rsi, -184(%rbp)
	movq	%rcx, -176(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%r13, -160(%rbp)
	movq	%rax, -152(%rbp)
	jle	.L6122
	movq	%r8, -336(%rbp)
	movq	%r8, %r10
	movq	%rsi, %r8
	movq	%r9, %r11
	movq	%rsi, -352(%rbp)
	movq	%rdx, %rsi
	movq	%r14, %rax
	movq	%r14, %r15
	movq	%rdx, -368(%rbp)
	movq	-248(%rbp), %rdx
	xorl	%r12d, %r12d
	movq	%r9, -328(%rbp)
	movq	%rdi, %r9
	movq	%rdi, -344(%rbp)
	movq	%rcx, %rdi
	movq	%rcx, -360(%rbp)
	movq	%r13, %rcx
	movq	%r13, -376(%rbp)
	xorl	%r13d, %r13d
	movq	%rbx, -320(%rbp)
	movq	%rdx, -384(%rbp)
	movb	$0, -248(%rbp)
	movb	$0, -256(%rbp)
	movb	$0, -264(%rbp)
	movb	$0, -272(%rbp)
	movb	$0, -280(%rbp)
	movb	$0, -288(%rbp)
	movb	$0, -296(%rbp)
	movb	$0, -304(%rbp)
	movb	$0, -312(%rbp)
	.p2align 4,,10
	.p2align 3
.L2894:
#APP
# 267 "mem.cc" 1
	# traverse loop begin (n_chains = $10, payload = $1)
# 0 "" 2
#NO_APP
	cmpq	$0, -232(%rbp)
	jle	.L2892
	movq	-232(%rbp), %r15
	xorl	%r13d, %r13d
	.p2align 4,,10
	.p2align 3
.L2893:
	vmovdqa	(%rax), %ymm12
	addq	$1, %r13
	vmovdqa	32(%rax), %ymm1
	vmovdqa	(%rbx), %ymm13
	vmovq	%xmm12, %rax
	vmovdqa	32(%rbx), %ymm1
	vmovdqa	(%r11), %ymm14
	vmovq	%xmm13, %rbx
	vmovdqa	32(%r11), %ymm1
	vmovdqa	(%r10), %ymm15
	vmovq	%xmm14, %r11
	vmovdqa	32(%r10), %ymm1
	vmovdqa	(%r9), %ymm0
	vmovq	%xmm15, %r10
	vmovdqa	32(%r9), %ymm1
	vmovdqa	(%r8), %ymm2
	vmovq	%xmm0, %r9
	vmovdqa	32(%r8), %ymm1
	vmovdqa	(%rdi), %ymm3
	vmovq	%xmm2, %r8
	vmovdqa	32(%rdi), %ymm1
	vmovdqa	(%rsi), %ymm4
	vmovq	%xmm3, %rdi
	vmovdqa	32(%rsi), %ymm1
	vmovdqa	(%rcx), %ymm5
	vmovq	%xmm4, %rsi
	vmovdqa	32(%rcx), %ymm1
	vmovdqa	(%rdx), %ymm6
	vmovq	%xmm5, %rcx
	vmovdqa	32(%rdx), %ymm1
	vmovq	%xmm6, %rdx
	cmpq	%r13, %r15
	jne	.L2893
	movq	%rax, %r15
	movb	$1, -248(%rbp)
	movl	$1, %r13d
	movb	$1, -256(%rbp)
	movb	$1, -264(%rbp)
	movb	$1, -272(%rbp)
	movb	$1, -280(%rbp)
	movb	$1, -288(%rbp)
	movb	$1, -296(%rbp)
	movb	$1, -304(%rbp)
	movb	$1, -312(%rbp)
.L2892:
#APP
# 281 "mem.cc" 1
	# traverse loop end (n_chains = $10, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, %r12
	cmpq	%r12, -240(%rbp)
	jne	.L2894
	testb	%r13b, %r13b
	jne	.L6123
.L2895:
	cmpb	$0, -312(%rbp)
	je	.L2896
	movq	%rbx, -216(%rbp)
	movq	%rbx, -320(%rbp)
.L2896:
	cmpb	$0, -304(%rbp)
	je	.L2897
	movq	%r11, -208(%rbp)
	movq	%r11, -328(%rbp)
.L2897:
	cmpb	$0, -296(%rbp)
	je	.L2898
	movq	%r10, -200(%rbp)
	movq	%r10, -336(%rbp)
.L2898:
	cmpb	$0, -288(%rbp)
	je	.L2899
	movq	%r9, -192(%rbp)
	movq	%r9, -344(%rbp)
.L2899:
	cmpb	$0, -280(%rbp)
	je	.L2900
	movq	%r8, -184(%rbp)
	movq	%r8, -352(%rbp)
.L2900:
	cmpb	$0, -272(%rbp)
	je	.L2901
	movq	%rdi, -176(%rbp)
	movq	%rdi, -360(%rbp)
.L2901:
	cmpb	$0, -264(%rbp)
	je	.L2902
	movq	%rsi, -168(%rbp)
	movq	%rsi, -368(%rbp)
.L2902:
	cmpb	$0, -256(%rbp)
	je	.L2903
	movq	%rcx, -160(%rbp)
	movq	%rcx, -376(%rbp)
.L2903:
	cmpb	$0, -248(%rbp)
	jne	.L6124
	vzeroupper
	movq	-320(%rbp), %r12
.L2891:
	movq	-328(%rbp), %rax
	movq	-336(%rbp), %rbx
	movq	-344(%rbp), %r11
	movq	-352(%rbp), %r10
	movq	-360(%rbp), %r9
	movq	-368(%rbp), %r8
	movq	-376(%rbp), %rdi
	movq	-384(%rbp), %rsi
	jmp	.L2569
.L2882:
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L6022
	movq	-232(%rbp), %rsi
	movq	%r11, %rdi
	movq	%r8, %rdx
	addq	$520, %rsp
	popq	%rbx
	popq	%r12
	popq	%r11
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r11), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_Z13access_randomILi10ELi1EEP6recordPS1_ll
.L5905:
	.cfi_restore_state
	leaq	-224(%rbp), %rdi
	movl	$136, %edx
	movq	%r11, %rsi
	call	memcpy
	movq	-224(%rbp), %r12
	cmpq	$0, -240(%rbp)
	movq	%r12, -432(%rbp)
	jle	.L6029
	movq	-208(%rbp), %r10
	movq	-200(%rbp), %r9
	movq	-192(%rbp), %r8
	movq	-184(%rbp), %rdi
	movq	-176(%rbp), %rsi
	movq	%r10, -448(%rbp)
	movq	%r10, %r11
	movq	-168(%rbp), %rcx
	movq	%r9, -456(%rbp)
	movq	%r9, %r10
	movq	-128(%rbp), %r13
	movq	%r8, -464(%rbp)
	movq	%r8, %r9
	movq	-160(%rbp), %rdx
	movq	%rdi, -472(%rbp)
	movq	%rdi, %r8
	movq	-152(%rbp), %rax
	movq	%rsi, -480(%rbp)
	movq	%rsi, %rdi
	movq	-144(%rbp), %r15
	movq	%rcx, -488(%rbp)
	movq	%rcx, %rsi
	movq	-216(%rbp), %rbx
	movq	%r13, -528(%rbp)
	movq	%rdx, -496(%rbp)
	movq	%rdx, %rcx
	movq	-136(%rbp), %r14
	movq	%rax, -504(%rbp)
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	%r15, -512(%rbp)
	movq	%r15, -264(%rbp)
	movq	%r13, %r15
	movq	-112(%rbp), %r13
	movq	%rbx, -440(%rbp)
	movq	%rax, -536(%rbp)
	movq	%rax, -256(%rbp)
	movq	-104(%rbp), %rax
	movq	%r13, -544(%rbp)
	movq	%r13, -280(%rbp)
	movq	%r14, -520(%rbp)
	movq	%rax, -552(%rbp)
	movq	-96(%rbp), %r13
	movq	%rax, -272(%rbp)
	movb	$0, -328(%rbp)
	movb	$0, -408(%rbp)
	movq	%r13, -560(%rbp)
	movb	$0, -384(%rbp)
	movb	$0, -304(%rbp)
	movb	$0, -320(%rbp)
	movb	$0, -400(%rbp)
	movb	$0, -392(%rbp)
	movb	$0, -424(%rbp)
	movb	$0, -312(%rbp)
	movb	$0, -376(%rbp)
	movb	$0, -368(%rbp)
	movb	$0, -416(%rbp)
	movb	$0, -360(%rbp)
	movb	$0, -336(%rbp)
	movb	$0, -352(%rbp)
	movb	$0, -344(%rbp)
	movb	$0, -296(%rbp)
	movq	$0, -288(%rbp)
	.p2align 4,,10
	.p2align 3
.L3276:
#APP
# 267 "mem.cc" 1
	# traverse loop begin (n_chains = $17, payload = $1)
# 0 "" 2
#NO_APP
	cmpq	$0, -232(%rbp)
	movq	$0, -248(%rbp)
	jle	.L3294
	.p2align 4,,10
	.p2align 3
.L5094:
	movq	-264(%rbp), %rax
	vmovdqa	(%r12), %ymm4
	vmovdqa	32(%r12), %ymm1
	vmovdqa	(%rbx), %ymm5
	vmovq	%xmm4, %r12
	vmovdqa	32(%rbx), %ymm1
	vmovdqa	(%r11), %ymm6
	vmovq	%xmm5, %rbx
	vmovdqa	32(%r11), %ymm1
	vmovdqa	(%r10), %ymm7
	vmovq	%xmm6, %r11
	vmovdqa	32(%r10), %ymm1
	vmovdqa	(%r9), %ymm8
	vmovq	%xmm7, %r10
	vmovdqa	32(%r9), %ymm1
	vmovdqa	(%r8), %ymm9
	vmovq	%xmm8, %r9
	vmovdqa	32(%r8), %ymm1
	vmovdqa	(%rdi), %ymm10
	vmovq	%xmm9, %r8
	vmovdqa	32(%rdi), %ymm1
	vmovdqa	(%rsi), %ymm11
	vmovq	%xmm10, %rdi
	vmovdqa	32(%rsi), %ymm1
	vmovdqa	(%rcx), %ymm12
	vmovq	%xmm11, %rsi
	vmovdqa	32(%rcx), %ymm1
	vmovdqa	(%rdx), %ymm13
	vmovq	%xmm12, %rcx
	vmovdqa	32(%rdx), %ymm1
	vmovdqa	(%rax), %ymm14
	vmovq	%xmm13, %rdx
	vmovdqa	32(%rax), %ymm1
	movq	-256(%rbp), %rax
	vmovq	%xmm14, -264(%rbp)
	vmovdqa	(%r14), %ymm15
	vmovdqa	32(%r14), %ymm1
	vmovdqa	(%r15), %ymm0
	vmovq	%xmm15, %r14
	vmovdqa	32(%r15), %ymm1
	vmovdqa	(%rax), %ymm2
	vmovq	%xmm0, %r15
	vmovdqa	32(%rax), %ymm1
	vmovq	%xmm2, -256(%rbp)
	movq	-280(%rbp), %rax
	addq	$1, -248(%rbp)
	vmovdqa	(%rax), %ymm3
	vmovdqa	32(%rax), %ymm1
	movq	-272(%rbp), %rax
	vmovq	%xmm3, -280(%rbp)
	vmovdqa	(%rax), %ymm4
	vmovdqa	32(%rax), %ymm1
	vmovdqa	0(%r13), %ymm5
	vmovq	%xmm4, -272(%rbp)
	vmovdqa	32(%r13), %ymm1
	movq	-248(%rbp), %rax
	vmovq	%xmm5, %r13
	cmpq	%rax, -232(%rbp)
	jne	.L5094
	movb	$1, -328(%rbp)
	movb	$1, -408(%rbp)
	movb	$1, -384(%rbp)
	movb	$1, -304(%rbp)
	movb	$1, -320(%rbp)
	movb	$1, -400(%rbp)
	movb	$1, -392(%rbp)
	movb	$1, -424(%rbp)
	movb	$1, -312(%rbp)
	movb	$1, -376(%rbp)
	movb	$1, -368(%rbp)
	movb	$1, -416(%rbp)
	movb	$1, -360(%rbp)
	movb	$1, -336(%rbp)
	movb	$1, -352(%rbp)
	movb	$1, -344(%rbp)
	movb	$1, -296(%rbp)
.L3294:
#APP
# 281 "mem.cc" 1
	# traverse loop end (n_chains = $17, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, -288(%rbp)
	movq	-288(%rbp), %rax
	cmpq	%rax, -240(%rbp)
	jne	.L3276
	cmpb	$0, -296(%rbp)
	jne	.L6125
.L3277:
	cmpb	$0, -344(%rbp)
	je	.L3278
	movq	%rbx, -216(%rbp)
	movq	%rbx, -440(%rbp)
.L3278:
	cmpb	$0, -352(%rbp)
	je	.L3279
	movq	%r11, -208(%rbp)
	movq	%r11, -448(%rbp)
.L3279:
	cmpb	$0, -336(%rbp)
	je	.L3280
	movq	%r10, -200(%rbp)
	movq	%r10, -456(%rbp)
.L3280:
	cmpb	$0, -360(%rbp)
	je	.L3281
	movq	%r9, -192(%rbp)
	movq	%r9, -464(%rbp)
.L3281:
	cmpb	$0, -416(%rbp)
	je	.L3282
	movq	%r8, -184(%rbp)
	movq	%r8, -472(%rbp)
.L3282:
	cmpb	$0, -368(%rbp)
	je	.L3283
	movq	%rdi, -176(%rbp)
	movq	%rdi, -480(%rbp)
.L3283:
	cmpb	$0, -376(%rbp)
	je	.L3284
	movq	%rsi, -168(%rbp)
	movq	%rsi, -488(%rbp)
.L3284:
	cmpb	$0, -312(%rbp)
	je	.L3285
	movq	%rcx, -160(%rbp)
	movq	%rcx, -496(%rbp)
.L3285:
	cmpb	$0, -424(%rbp)
	je	.L3286
	movq	%rdx, -152(%rbp)
	movq	%rdx, -504(%rbp)
.L3286:
	cmpb	$0, -392(%rbp)
	je	.L3287
	movq	-264(%rbp), %r12
	movq	%r12, -144(%rbp)
	movq	%r12, -512(%rbp)
.L3287:
	cmpb	$0, -400(%rbp)
	je	.L3288
	movq	%r14, -136(%rbp)
	movq	%r14, -520(%rbp)
.L3288:
	cmpb	$0, -320(%rbp)
	je	.L3289
	movq	%r15, -128(%rbp)
	movq	%r15, -528(%rbp)
.L3289:
	cmpb	$0, -304(%rbp)
	je	.L3290
	movq	-256(%rbp), %rbx
	movq	%rbx, -120(%rbp)
	movq	%rbx, -536(%rbp)
.L3290:
	cmpb	$0, -384(%rbp)
	je	.L3291
	movq	-280(%rbp), %r11
	movq	%r11, -112(%rbp)
	movq	%r11, -544(%rbp)
.L3291:
	cmpb	$0, -408(%rbp)
	je	.L3292
	movq	-272(%rbp), %r10
	movq	%r10, -104(%rbp)
	movq	%r10, -552(%rbp)
.L3292:
	cmpb	$0, -328(%rbp)
	je	.L6028
	movq	%r13, -96(%rbp)
	movq	%r13, -560(%rbp)
.L6028:
	vzeroupper
	jmp	.L3322
	.p2align 4,,10
	.p2align 3
.L3267:
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L6022
	movq	-232(%rbp), %rsi
	movq	%r8, %rdx
	movq	%r11, %rdi
	addq	$520, %rsp
	popq	%rbx
	popq	%r12
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r10), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_Z13access_randomILi17ELi1EEP6recordPS1_ll
.L5864:
	.cfi_restore_state
	movq	(%rsi), %rbx
	movq	8(%rsi), %rcx
	movq	16(%rsi), %rax
	movq	24(%rsi), %rdx
	cmpq	$0, -240(%rbp)
	movq	%rbx, -224(%rbp)
	movq	%rcx, -216(%rbp)
	movq	%rax, -208(%rbp)
	movq	%rdx, -200(%rbp)
	jle	.L6126
	movq	-232(%rbp), %r9
	movq	%r8, %r10
	movq	%rbx, %r15
	xorl	%r8d, %r8d
	.p2align 4,,10
	.p2align 3
.L2660:
#APP
# 267 "mem.cc" 1
	# traverse loop begin (n_chains = $4, payload = $1)
# 0 "" 2
#NO_APP
	testq	%r9, %r9
	jle	.L2657
	vmovdqa	(%r15), %ymm12
	leaq	-1(%r9), %r14
	movl	$1, %esi
	vmovdqa	32(%r15), %ymm1
	andl	$3, %r14d
	vmovdqa	(%rcx), %ymm13
	vmovq	%xmm12, %r15
	vmovdqa	32(%rcx), %ymm1
	vmovdqa	(%rax), %ymm14
	vmovq	%xmm13, %rcx
	vmovdqa	32(%rax), %ymm1
	vmovdqa	(%rdx), %ymm15
	vmovq	%xmm14, %rax
	vmovdqa	32(%rdx), %ymm1
	vmovq	%xmm15, %rdx
	cmpq	$1, %r9
	je	.L2657
	testq	%r14, %r14
	je	.L2658
	cmpq	$1, %r14
	je	.L5172
	cmpq	$2, %r14
	je	.L5173
	vmovdqa	(%r15), %ymm0
	movl	$2, %esi
	vmovdqa	32(%r15), %ymm1
	vmovdqa	(%rcx), %ymm2
	vmovq	%xmm0, %r15
	vmovdqa	32(%rcx), %ymm1
	vmovdqa	(%rax), %ymm3
	vmovq	%xmm2, %rcx
	vmovdqa	32(%rax), %ymm1
	vmovdqa	(%rdx), %ymm4
	vmovq	%xmm3, %rax
	vmovdqa	32(%rdx), %ymm1
	vmovq	%xmm4, %rdx
.L5173:
	vmovdqa	(%r15), %ymm5
	addq	$1, %rsi
	vmovdqa	32(%r15), %ymm1
	vmovdqa	(%rcx), %ymm6
	vmovq	%xmm5, %r15
	vmovdqa	32(%rcx), %ymm1
	vmovdqa	(%rax), %ymm7
	vmovq	%xmm6, %rcx
	vmovdqa	32(%rax), %ymm1
	vmovdqa	(%rdx), %ymm8
	vmovq	%xmm7, %rax
	vmovdqa	32(%rdx), %ymm1
	vmovq	%xmm8, %rdx
.L5172:
	vmovdqa	(%r15), %ymm9
	addq	$1, %rsi
	vmovdqa	32(%r15), %ymm1
	vmovdqa	(%rcx), %ymm10
	vmovq	%xmm9, %r15
	vmovdqa	32(%rcx), %ymm1
	vmovdqa	(%rax), %ymm11
	vmovq	%xmm10, %rcx
	vmovdqa	32(%rax), %ymm1
	vmovdqa	(%rdx), %ymm12
	vmovq	%xmm11, %rax
	vmovdqa	32(%rdx), %ymm1
	vmovq	%xmm12, %rdx
	cmpq	%rsi, %r9
	je	.L2657
.L2658:
	vmovdqa	(%r15), %ymm13
	addq	$4, %rsi
	vmovdqa	32(%r15), %ymm1
	vmovdqa	(%rcx), %ymm14
	vmovq	%xmm13, %rdi
	vmovdqa	32(%rcx), %ymm1
	vmovdqa	(%rax), %ymm15
	vmovq	%xmm14, %r12
	vmovdqa	32(%rax), %ymm1
	vmovdqa	(%rdx), %ymm0
	vmovq	%xmm15, %r13
	vmovdqa	32(%rdx), %ymm1
	vmovq	%xmm0, %r15
	vmovdqa	(%rdi), %ymm2
	vmovdqa	32(%rdi), %ymm1
	vmovdqa	(%r12), %ymm3
	vmovq	%xmm2, %r11
	vmovdqa	32(%r12), %ymm1
	vmovdqa	0(%r13), %ymm4
	vmovq	%xmm3, %rbx
	vmovdqa	32(%r13), %ymm1
	vmovdqa	(%r15), %ymm5
	vmovq	%xmm4, %r14
	vmovdqa	32(%r15), %ymm1
	vmovq	%xmm5, %rdx
	vmovdqa	(%r11), %ymm6
	vmovdqa	32(%r11), %ymm1
	vmovdqa	(%rbx), %ymm7
	vmovq	%xmm6, %rdi
	vmovdqa	32(%rbx), %ymm1
	vmovdqa	(%r14), %ymm8
	vmovq	%xmm7, %rcx
	vmovdqa	32(%r14), %ymm1
	vmovdqa	(%rdx), %ymm9
	vmovq	%xmm8, %rax
	vmovdqa	32(%rdx), %ymm1
	vmovq	%xmm9, %r12
	vmovdqa	(%rdi), %ymm10
	vmovdqa	32(%rdi), %ymm1
	vmovdqa	(%rcx), %ymm11
	vmovq	%xmm10, %r15
	vmovdqa	32(%rcx), %ymm1
	vmovdqa	(%rax), %ymm12
	vmovq	%xmm11, %rcx
	vmovdqa	32(%rax), %ymm1
	vmovdqa	(%r12), %ymm13
	vmovq	%xmm12, %rax
	vmovdqa	32(%r12), %ymm1
	vmovq	%xmm13, %rdx
	cmpq	%rsi, %r9
	jne	.L2658
.L2657:
#APP
# 281 "mem.cc" 1
	# traverse loop end (n_chains = $4, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, %r8
	cmpq	%r8, %r10
	jne	.L2660
	vzeroupper
	jmp	.L2569
.L2648:
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L6022
	movq	-232(%rbp), %rsi
	movq	%r8, %rdx
	movq	%r11, %rdi
	addq	$520, %rsp
	popq	%rbx
	popq	%r12
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r10), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_Z13access_randomILi4ELi1EEP6recordPS1_ll
.L2835:
	.cfi_restore_state
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L6022
	movq	-232(%rbp), %rsi
	movq	%r11, %rdi
	movq	%r8, %rdx
	addq	$520, %rsp
	popq	%rbx
	popq	%r12
	popq	%r11
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r11), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_Z13access_randomILi9ELi1EEP6recordPS1_ll
.L5880:
	.cfi_restore_state
	movq	(%rsi), %r13
	movq	8(%rsi), %r14
	movq	16(%rsi), %rcx
	movq	24(%rsi), %rdx
	movq	32(%rsi), %r12
	movq	%r13, -224(%rbp)
	movq	40(%rsi), %r9
	movq	%r14, -216(%rbp)
	movq	48(%rsi), %r8
	movq	%rcx, -208(%rbp)
	movq	56(%rsi), %rdi
	movq	%rdx, -200(%rbp)
	movq	64(%rsi), %rbx
	movq	%r12, -192(%rbp)
	cmpq	$0, -240(%rbp)
	movq	%r9, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%rdi, -168(%rbp)
	movq	%rbx, -160(%rbp)
	jle	.L6127
	movq	%r12, -328(%rbp)
	movq	%r12, %r11
	movq	%r9, %r10
	movq	%r13, %rax
	movq	%r9, -336(%rbp)
	movq	%r14, %rsi
	movq	%r8, %r9
	movq	%r13, %r15
	movq	%r8, -344(%rbp)
	xorl	%r12d, %r12d
	movq	%rdi, %r8
	movq	%rdi, -352(%rbp)
	movq	%rbx, %rdi
	movq	%rbx, -360(%rbp)
	xorl	%ebx, %ebx
	movq	%rcx, -312(%rbp)
	movq	%rdx, -320(%rbp)
	movb	$0, -248(%rbp)
	movb	$0, -256(%rbp)
	movb	$0, -264(%rbp)
	movb	$0, -272(%rbp)
	movb	$0, -280(%rbp)
	movb	$0, -288(%rbp)
	movb	$0, -296(%rbp)
	movb	$0, -304(%rbp)
	.p2align 4,,10
	.p2align 3
.L2847:
#APP
# 267 "mem.cc" 1
	# traverse loop begin (n_chains = $9, payload = $1)
# 0 "" 2
#NO_APP
	cmpq	$0, -232(%rbp)
	jle	.L2845
	movq	-232(%rbp), %r15
	movl	$1, %ebx
	vmovdqa	(%rax), %ymm7
	vmovdqa	32(%rax), %ymm1
	vmovdqa	(%rsi), %ymm8
	vmovq	%xmm7, %rax
	subq	$1, %r15
	vmovdqa	32(%rsi), %ymm1
	andl	$1, %r15d
	vmovdqa	(%rcx), %ymm9
	vmovq	%xmm8, %rsi
	cmpq	$1, -232(%rbp)
	vmovdqa	32(%rcx), %ymm1
	vmovq	%xmm9, %rcx
	vmovdqa	(%rdx), %ymm10
	vmovdqa	32(%rdx), %ymm1
	vmovdqa	(%r11), %ymm11
	vmovq	%xmm10, %rdx
	vmovdqa	32(%r11), %ymm1
	vmovdqa	(%r10), %ymm12
	vmovq	%xmm11, %r11
	vmovdqa	32(%r10), %ymm1
	vmovdqa	(%r9), %ymm13
	vmovq	%xmm12, %r10
	vmovdqa	32(%r9), %ymm1
	vmovdqa	(%r8), %ymm14
	vmovq	%xmm13, %r9
	vmovdqa	32(%r8), %ymm1
	vmovdqa	(%rdi), %ymm15
	vmovq	%xmm14, %r8
	vmovdqa	32(%rdi), %ymm1
	vmovq	%xmm15, %rdi
	je	.L5881
	testq	%r15, %r15
	je	.L5951
	cmpq	$2, -232(%rbp)
	movl	$2, %ebx
	vmovdqa	(%rax), %ymm0
	vmovdqa	32(%rax), %ymm1
	vmovdqa	(%rsi), %ymm2
	vmovq	%xmm0, %rax
	vmovdqa	32(%rsi), %ymm1
	vmovdqa	(%rcx), %ymm3
	vmovq	%xmm2, %rsi
	vmovdqa	32(%rcx), %ymm1
	vmovdqa	(%rdx), %ymm4
	vmovq	%xmm3, %rcx
	vmovdqa	32(%rdx), %ymm1
	vmovdqa	(%r11), %ymm5
	vmovq	%xmm4, %rdx
	vmovdqa	32(%r11), %ymm1
	vmovdqa	(%r10), %ymm6
	vmovq	%xmm5, %r11
	vmovdqa	32(%r10), %ymm1
	vmovdqa	(%r9), %ymm7
	vmovq	%xmm6, %r10
	vmovdqa	32(%r9), %ymm1
	vmovdqa	(%r8), %ymm8
	vmovq	%xmm7, %r9
	vmovdqa	32(%r8), %ymm1
	vmovdqa	(%rdi), %ymm9
	vmovq	%xmm8, %r8
	vmovdqa	32(%rdi), %ymm1
	vmovq	%xmm9, %rdi
	je	.L5881
.L5951:
	movq	-232(%rbp), %r15
.L2846:
	vmovdqa	(%rax), %ymm10
	addq	$2, %rbx
	vmovdqa	32(%rax), %ymm1
	vmovdqa	(%rsi), %ymm11
	vmovq	%xmm10, %rax
	vmovdqa	32(%rsi), %ymm1
	vmovdqa	(%rcx), %ymm12
	vmovq	%xmm11, %rsi
	vmovdqa	32(%rcx), %ymm1
	vmovdqa	(%rdx), %ymm13
	vmovq	%xmm12, %rcx
	vmovdqa	32(%rdx), %ymm1
	vmovdqa	(%r11), %ymm14
	vmovq	%xmm13, %rdx
	vmovdqa	32(%r11), %ymm1
	vmovdqa	(%r10), %ymm15
	vmovq	%xmm14, %r11
	vmovdqa	32(%r10), %ymm1
	vmovdqa	(%r9), %ymm0
	vmovq	%xmm15, %r10
	vmovdqa	32(%r9), %ymm1
	vmovdqa	(%r8), %ymm2
	vmovq	%xmm0, %r9
	vmovdqa	32(%r8), %ymm1
	vmovdqa	(%rdi), %ymm3
	vmovq	%xmm2, %r8
	vmovdqa	32(%rdi), %ymm1
	vmovq	%xmm3, %rdi
	vmovdqa	(%rax), %ymm4
	vmovdqa	32(%rax), %ymm1
	vmovdqa	(%rsi), %ymm5
	vmovq	%xmm4, %rax
	vmovdqa	32(%rsi), %ymm1
	vmovdqa	(%rcx), %ymm6
	vmovq	%xmm5, %rsi
	vmovdqa	32(%rcx), %ymm1
	vmovdqa	(%rdx), %ymm7
	vmovq	%xmm6, %rcx
	vmovdqa	32(%rdx), %ymm1
	vmovdqa	(%r11), %ymm8
	vmovq	%xmm7, %rdx
	vmovdqa	32(%r11), %ymm1
	vmovdqa	(%r10), %ymm9
	vmovq	%xmm8, %r11
	vmovdqa	32(%r10), %ymm1
	vmovdqa	(%r9), %ymm10
	vmovq	%xmm9, %r10
	vmovdqa	32(%r9), %ymm1
	vmovdqa	(%r8), %ymm11
	vmovq	%xmm10, %r9
	vmovdqa	32(%r8), %ymm1
	vmovdqa	(%rdi), %ymm12
	vmovq	%xmm11, %r8
	vmovdqa	32(%rdi), %ymm1
	vmovq	%xmm12, %rdi
	cmpq	%rbx, %r15
	jne	.L2846
.L5881:
	movq	%rax, %r15
	movb	$1, -248(%rbp)
	movl	$1, %ebx
	movb	$1, -256(%rbp)
	movb	$1, -264(%rbp)
	movb	$1, -272(%rbp)
	movb	$1, -280(%rbp)
	movb	$1, -288(%rbp)
	movb	$1, -296(%rbp)
	movb	$1, -304(%rbp)
.L2845:
#APP
# 281 "mem.cc" 1
	# traverse loop end (n_chains = $9, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, %r12
	cmpq	%r12, -240(%rbp)
	jne	.L2847
	testb	%bl, %bl
	jne	.L6128
.L2848:
	cmpb	$0, -304(%rbp)
	je	.L2849
	movq	%rsi, -216(%rbp)
	movq	%rsi, %r14
.L2849:
	cmpb	$0, -296(%rbp)
	je	.L2850
	movq	%rcx, -208(%rbp)
	movq	%rcx, -312(%rbp)
.L2850:
	cmpb	$0, -288(%rbp)
	je	.L2851
	movq	%rdx, -200(%rbp)
	movq	%rdx, -320(%rbp)
.L2851:
	cmpb	$0, -280(%rbp)
	je	.L2852
	movq	%r11, -192(%rbp)
	movq	%r11, -328(%rbp)
.L2852:
	cmpb	$0, -272(%rbp)
	je	.L2853
	movq	%r10, -184(%rbp)
	movq	%r10, -336(%rbp)
.L2853:
	cmpb	$0, -264(%rbp)
	je	.L2854
	movq	%r9, -176(%rbp)
	movq	%r9, -344(%rbp)
.L2854:
	cmpb	$0, -256(%rbp)
	je	.L2855
	movq	%r8, -168(%rbp)
	movq	%r8, -352(%rbp)
.L2855:
	cmpb	$0, -248(%rbp)
	jne	.L6129
	vzeroupper
	movq	-312(%rbp), %r12
.L2844:
	movq	-320(%rbp), %rax
	movq	-328(%rbp), %rsi
	movq	-336(%rbp), %rcx
	movq	-344(%rbp), %rdx
	movq	-352(%rbp), %r11
	movq	-360(%rbp), %r10
	jmp	.L2569
.L5899:
	movq	72(%r11), %r14
	movq	80(%r11), %r15
	movq	88(%r11), %r13
	movq	96(%r11), %r10
	movq	(%rsi), %r12
	movq	%r14, -248(%rbp)
	movq	8(%rsi), %rbx
	movq	%r14, -152(%rbp)
	movq	16(%rsi), %r9
	movq	%r15, -256(%rbp)
	movq	24(%rsi), %rdi
	movq	%r15, -144(%rbp)
	movq	32(%rsi), %rcx
	movq	%r12, -224(%rbp)
	movq	40(%rsi), %rax
	movq	%rbx, -216(%rbp)
	movq	48(%rsi), %rdx
	movq	%r9, -208(%rbp)
	movq	64(%r11), %r8
	movq	%rdi, -200(%rbp)
	movq	104(%r11), %r14
	movq	%rcx, -192(%rbp)
	movq	56(%rsi), %rsi
	movq	%rax, -184(%rbp)
	movq	%rdx, -176(%rbp)
	movq	%r8, -160(%rbp)
	movq	%r13, -264(%rbp)
	movq	%rsi, -168(%rbp)
	movq	%r13, -136(%rbp)
	movq	%r10, -272(%rbp)
	movq	%r10, -128(%rbp)
	movq	%r14, -280(%rbp)
	movq	%r14, -120(%rbp)
	movq	112(%r11), %r11
	cmpq	$0, -240(%rbp)
	movq	%r11, -296(%rbp)
	movq	%r11, -112(%rbp)
	jle	.L6130
	movq	%rbx, -408(%rbp)
	movq	%rbx, %r14
	movq	%rcx, %rbx
	movq	%r9, %r13
	movq	%rcx, -432(%rbp)
	movq	%r12, %r11
	movq	%r12, %r15
	movq	%rdx, %r10
	movq	-256(%rbp), %rcx
	movq	%rax, -440(%rbp)
	movq	%rax, -288(%rbp)
	movq	-264(%rbp), %rax
	movq	%r9, -416(%rbp)
	movq	%rsi, %r9
	movq	%rsi, -456(%rbp)
	movq	%rcx, -480(%rbp)
	movq	%rcx, %rsi
	movq	%rax, -488(%rbp)
	movq	%rax, %rcx
	movq	-280(%rbp), %rax
	movq	%r12, -400(%rbp)
	movq	%rdi, %r12
	movq	%rdi, -424(%rbp)
	movq	-248(%rbp), %rdi
	movq	%rdx, -448(%rbp)
	movq	-272(%rbp), %rdx
	movq	%rax, -504(%rbp)
	movq	-296(%rbp), %rax
	movq	%r8, -464(%rbp)
	movq	%rdi, -472(%rbp)
	movq	%rdx, -496(%rbp)
	movq	%rax, -512(%rbp)
	movq	%rax, -264(%rbp)
	movq	%r11, %rax
	movb	$0, -248(%rbp)
	movb	$0, -312(%rbp)
	movb	$0, -304(%rbp)
	movb	$0, -368(%rbp)
	movb	$0, -360(%rbp)
	movb	$0, -336(%rbp)
	movb	$0, -296(%rbp)
	movb	$0, -384(%rbp)
	movb	$0, -376(%rbp)
	movb	$0, -344(%rbp)
	movb	$0, -392(%rbp)
	movb	$0, -352(%rbp)
	movb	$0, -328(%rbp)
	movb	$0, -320(%rbp)
	movb	$0, -256(%rbp)
	movq	$0, -272(%rbp)
	.p2align 4,,10
	.p2align 3
.L3159:
#APP
# 267 "mem.cc" 1
	# traverse loop begin (n_chains = $15, payload = $1)
# 0 "" 2
#NO_APP
	cmpq	$0, -232(%rbp)
	jle	.L3157
	movq	%r15, -256(%rbp)
	movq	-288(%rbp), %r11
	movq	-280(%rbp), %r15
	movq	$0, -248(%rbp)
	.p2align 4,,10
	.p2align 3
.L3158:
	movq	-256(%rbp), %rax
	vmovdqa	(%rax), %ymm7
	vmovdqa	32(%rax), %ymm1
	movq	-264(%rbp), %rax
	vmovq	%xmm7, -256(%rbp)
	vmovdqa	(%r14), %ymm8
	vmovdqa	32(%r14), %ymm1
	vmovdqa	0(%r13), %ymm9
	vmovq	%xmm8, %r14
	vmovdqa	32(%r13), %ymm1
	vmovdqa	(%r12), %ymm10
	vmovq	%xmm9, %r13
	vmovdqa	32(%r12), %ymm1
	vmovdqa	(%rbx), %ymm11
	vmovq	%xmm10, %r12
	vmovdqa	32(%rbx), %ymm1
	vmovdqa	(%r11), %ymm12
	vmovq	%xmm11, %rbx
	vmovdqa	32(%r11), %ymm1
	vmovdqa	(%r10), %ymm13
	vmovq	%xmm12, %r11
	vmovdqa	32(%r10), %ymm1
	vmovdqa	(%r9), %ymm14
	vmovq	%xmm13, %r10
	vmovdqa	32(%r9), %ymm1
	vmovdqa	(%r8), %ymm15
	vmovq	%xmm14, %r9
	vmovdqa	32(%r8), %ymm1
	vmovdqa	(%rdi), %ymm0
	vmovq	%xmm15, %r8
	vmovdqa	32(%rdi), %ymm1
	vmovdqa	(%rsi), %ymm2
	vmovq	%xmm0, %rdi
	vmovdqa	32(%rsi), %ymm1
	vmovdqa	(%rcx), %ymm3
	vmovq	%xmm2, %rsi
	vmovdqa	32(%rcx), %ymm1
	vmovdqa	(%rdx), %ymm4
	vmovq	%xmm3, %rcx
	vmovdqa	32(%rdx), %ymm1
	vmovdqa	(%r15), %ymm5
	vmovq	%xmm4, %rdx
	vmovdqa	32(%r15), %ymm1
	vmovdqa	(%rax), %ymm6
	vmovq	%xmm5, %r15
	vmovdqa	32(%rax), %ymm1
	addq	$1, -248(%rbp)
	vmovq	%xmm6, -264(%rbp)
	movq	-248(%rbp), %rax
	cmpq	%rax, -232(%rbp)
	jne	.L3158
	movq	-256(%rbp), %rax
	movq	%r15, -280(%rbp)
	movq	%r11, -288(%rbp)
	movb	$1, -248(%rbp)
	movb	$1, -312(%rbp)
	movq	%rax, %r15
	movb	$1, -304(%rbp)
	movb	$1, -368(%rbp)
	movb	$1, -360(%rbp)
	movb	$1, -336(%rbp)
	movb	$1, -296(%rbp)
	movb	$1, -384(%rbp)
	movb	$1, -376(%rbp)
	movb	$1, -344(%rbp)
	movb	$1, -392(%rbp)
	movb	$1, -352(%rbp)
	movb	$1, -328(%rbp)
	movb	$1, -320(%rbp)
	movb	$1, -256(%rbp)
.L3157:
#APP
# 281 "mem.cc" 1
	# traverse loop end (n_chains = $15, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, -272(%rbp)
	movq	-272(%rbp), %r11
	cmpq	%r11, -240(%rbp)
	jne	.L3159
	cmpb	$0, -256(%rbp)
	jne	.L6131
.L3160:
	cmpb	$0, -320(%rbp)
	je	.L3161
	movq	%r14, -216(%rbp)
	movq	%r14, -408(%rbp)
.L3161:
	cmpb	$0, -328(%rbp)
	je	.L3162
	movq	%r13, -208(%rbp)
	movq	%r13, -416(%rbp)
.L3162:
	cmpb	$0, -352(%rbp)
	je	.L3163
	movq	%r12, -200(%rbp)
	movq	%r12, -424(%rbp)
.L3163:
	cmpb	$0, -392(%rbp)
	je	.L3164
	movq	%rbx, -192(%rbp)
	movq	%rbx, -432(%rbp)
.L3164:
	cmpb	$0, -344(%rbp)
	je	.L3165
	movq	-288(%rbp), %r14
	movq	%r14, -184(%rbp)
	movq	%r14, -440(%rbp)
.L3165:
	cmpb	$0, -376(%rbp)
	je	.L3166
	movq	%r10, -176(%rbp)
	movq	%r10, -448(%rbp)
.L3166:
	cmpb	$0, -384(%rbp)
	je	.L3167
	movq	%r9, -168(%rbp)
	movq	%r9, -456(%rbp)
.L3167:
	cmpb	$0, -296(%rbp)
	je	.L3168
	movq	%r8, -160(%rbp)
	movq	%r8, -464(%rbp)
.L3168:
	cmpb	$0, -336(%rbp)
	je	.L3169
	movq	%rdi, -152(%rbp)
	movq	%rdi, -472(%rbp)
.L3169:
	cmpb	$0, -360(%rbp)
	je	.L3170
	movq	%rsi, -144(%rbp)
	movq	%rsi, -480(%rbp)
.L3170:
	cmpb	$0, -368(%rbp)
	je	.L3171
	movq	%rcx, -136(%rbp)
	movq	%rcx, -488(%rbp)
.L3171:
	cmpb	$0, -304(%rbp)
	je	.L3172
	movq	%rdx, -128(%rbp)
	movq	%rdx, -496(%rbp)
.L3172:
	cmpb	$0, -312(%rbp)
	je	.L3173
	movq	-280(%rbp), %r13
	movq	%r13, -120(%rbp)
	movq	%r13, -504(%rbp)
.L3173:
	cmpb	$0, -248(%rbp)
	jne	.L6132
	vzeroupper
	jmp	.L6018
	.p2align 4,,10
	.p2align 3
.L5902:
	movq	72(%r11), %r14
	movq	80(%r11), %r15
	movq	88(%r11), %rbx
	movq	96(%r11), %r10
	movq	(%rsi), %r13
	movq	%r14, -248(%rbp)
	movq	8(%rsi), %r12
	movq	%r14, -152(%rbp)
	movq	16(%rsi), %r9
	movq	%r15, -256(%rbp)
	movq	24(%rsi), %rdi
	movq	%r15, -144(%rbp)
	movq	32(%rsi), %rcx
	movq	%r13, -224(%rbp)
	movq	40(%rsi), %rax
	movq	%r12, -216(%rbp)
	movq	48(%rsi), %rdx
	movq	%r9, -208(%rbp)
	movq	64(%r11), %r8
	movq	%rdi, -200(%rbp)
	movq	104(%r11), %r14
	movq	%rcx, -192(%rbp)
	movq	56(%rsi), %rsi
	movq	%rax, -184(%rbp)
	movq	%rdx, -176(%rbp)
	movq	%r8, -160(%rbp)
	movq	%rbx, -264(%rbp)
	movq	%rsi, -168(%rbp)
	movq	%rbx, -136(%rbp)
	movq	%r10, -272(%rbp)
	movq	%r10, -128(%rbp)
	movq	%r14, -280(%rbp)
	movq	%r14, -120(%rbp)
	movq	112(%r11), %r15
	cmpq	$0, -240(%rbp)
	movq	120(%r11), %r11
	movq	%r15, -296(%rbp)
	movq	%r15, -112(%rbp)
	movq	%r11, -304(%rbp)
	movq	%r11, -104(%rbp)
	jle	.L6133
	movq	%rcx, -448(%rbp)
	movq	%rcx, %rbx
	movq	%r13, %r11
	movq	%r13, %r15
	movq	%rax, -456(%rbp)
	movq	%r12, %r14
	movq	%rdx, %r10
	movq	-256(%rbp), %rcx
	movq	%rax, -288(%rbp)
	movq	-264(%rbp), %rax
	movq	%r13, -416(%rbp)
	movq	%r9, %r13
	movq	%r9, -432(%rbp)
	movq	%rsi, %r9
	movq	%rsi, -472(%rbp)
	movq	%rcx, %rsi
	movq	%rcx, -496(%rbp)
	movq	%rax, %rcx
	movq	%rax, -504(%rbp)
	movq	-280(%rbp), %rax
	movq	%r12, -424(%rbp)
	movq	%rdi, %r12
	movq	%rdi, -440(%rbp)
	movq	-248(%rbp), %rdi
	movq	%rdx, -464(%rbp)
	movq	-272(%rbp), %rdx
	movq	%rax, -520(%rbp)
	movq	%rax, -264(%rbp)
	movq	-296(%rbp), %rax
	movq	%r8, -480(%rbp)
	movq	%rdi, -488(%rbp)
	movq	%rdx, -512(%rbp)
	movq	%rax, -528(%rbp)
	movq	%rax, -272(%rbp)
	movq	-304(%rbp), %rax
	movb	$0, -384(%rbp)
	movb	$0, -376(%rbp)
	movb	$0, -368(%rbp)
	movq	%rax, -536(%rbp)
	movq	%rax, -296(%rbp)
	movq	%r11, %rax
	movb	$0, -304(%rbp)
	movb	$0, -312(%rbp)
	movb	$0, -320(%rbp)
	movb	$0, -256(%rbp)
	movb	$0, -336(%rbp)
	movb	$0, -328(%rbp)
	movb	$0, -248(%rbp)
	movb	$0, -360(%rbp)
	movb	$0, -352(%rbp)
	movb	$0, -344(%rbp)
	movb	$0, -400(%rbp)
	movb	$0, -408(%rbp)
	movb	$0, -392(%rbp)
	movq	$0, -280(%rbp)
	.p2align 4,,10
	.p2align 3
.L3218:
#APP
# 267 "mem.cc" 1
	# traverse loop begin (n_chains = $16, payload = $1)
# 0 "" 2
#NO_APP
	cmpq	$0, -232(%rbp)
	jle	.L3216
	movq	%r15, -256(%rbp)
	movq	-288(%rbp), %r11
	movq	-296(%rbp), %r15
	movq	$0, -248(%rbp)
	.p2align 4,,10
	.p2align 3
.L3217:
	movq	-256(%rbp), %rax
	vmovdqa	(%rax), %ymm6
	vmovdqa	32(%rax), %ymm1
	movq	-264(%rbp), %rax
	vmovq	%xmm6, -256(%rbp)
	vmovdqa	(%r14), %ymm7
	vmovdqa	32(%r14), %ymm1
	vmovdqa	0(%r13), %ymm8
	vmovq	%xmm7, %r14
	vmovdqa	32(%r13), %ymm1
	vmovdqa	(%r12), %ymm9
	vmovq	%xmm8, %r13
	vmovdqa	32(%r12), %ymm1
	vmovdqa	(%rbx), %ymm10
	vmovq	%xmm9, %r12
	vmovdqa	32(%rbx), %ymm1
	vmovdqa	(%r11), %ymm11
	vmovq	%xmm10, %rbx
	vmovdqa	32(%r11), %ymm1
	vmovdqa	(%r10), %ymm12
	vmovq	%xmm11, %r11
	vmovdqa	32(%r10), %ymm1
	vmovdqa	(%r9), %ymm13
	vmovq	%xmm12, %r10
	vmovdqa	32(%r9), %ymm1
	vmovdqa	(%r8), %ymm14
	vmovq	%xmm13, %r9
	vmovdqa	32(%r8), %ymm1
	vmovdqa	(%rdi), %ymm15
	vmovq	%xmm14, %r8
	vmovdqa	32(%rdi), %ymm1
	vmovdqa	(%rsi), %ymm0
	vmovq	%xmm15, %rdi
	vmovdqa	32(%rsi), %ymm1
	vmovdqa	(%rcx), %ymm2
	vmovq	%xmm0, %rsi
	vmovdqa	32(%rcx), %ymm1
	vmovdqa	(%rdx), %ymm3
	vmovq	%xmm2, %rcx
	vmovdqa	32(%rdx), %ymm1
	vmovdqa	(%rax), %ymm4
	vmovq	%xmm3, %rdx
	vmovdqa	32(%rax), %ymm1
	vmovq	%xmm4, -264(%rbp)
	movq	-272(%rbp), %rax
	addq	$1, -248(%rbp)
	vmovdqa	(%rax), %ymm5
	vmovdqa	32(%rax), %ymm1
	vmovdqa	(%r15), %ymm6
	vmovq	%xmm5, -272(%rbp)
	vmovdqa	32(%r15), %ymm1
	movq	-248(%rbp), %rax
	vmovq	%xmm6, %r15
	cmpq	%rax, -232(%rbp)
	jne	.L3217
	movq	-256(%rbp), %rax
	movq	%r15, -296(%rbp)
	movq	%r11, -288(%rbp)
	movb	$1, -384(%rbp)
	movb	$1, -376(%rbp)
	movq	%rax, %r15
	movb	$1, -368(%rbp)
	movb	$1, -304(%rbp)
	movb	$1, -312(%rbp)
	movb	$1, -320(%rbp)
	movb	$1, -256(%rbp)
	movb	$1, -336(%rbp)
	movb	$1, -328(%rbp)
	movb	$1, -248(%rbp)
	movb	$1, -360(%rbp)
	movb	$1, -352(%rbp)
	movb	$1, -344(%rbp)
	movb	$1, -400(%rbp)
	movb	$1, -408(%rbp)
	movb	$1, -392(%rbp)
.L3216:
#APP
# 281 "mem.cc" 1
	# traverse loop end (n_chains = $16, payload = $1)
# 0 "" 2
#NO_APP
	addq	$1, -280(%rbp)
	movq	-280(%rbp), %r11
	cmpq	%r11, -240(%rbp)
	jne	.L3218
	cmpb	$0, -392(%rbp)
	jne	.L6134
.L3219:
	cmpb	$0, -408(%rbp)
	je	.L3220
	movq	%r14, -216(%rbp)
	movq	%r14, -424(%rbp)
.L3220:
	cmpb	$0, -400(%rbp)
	je	.L3221
	movq	%r13, -208(%rbp)
	movq	%r13, -432(%rbp)
.L3221:
	cmpb	$0, -344(%rbp)
	je	.L3222
	movq	%r12, -200(%rbp)
	movq	%r12, -440(%rbp)
.L3222:
	cmpb	$0, -352(%rbp)
	je	.L3223
	movq	%rbx, -192(%rbp)
	movq	%rbx, -448(%rbp)
.L3223:
	cmpb	$0, -360(%rbp)
	je	.L3224
	movq	-288(%rbp), %r14
	movq	%r14, -184(%rbp)
	movq	%r14, -456(%rbp)
.L3224:
	cmpb	$0, -248(%rbp)
	je	.L3225
	movq	%r10, -176(%rbp)
	movq	%r10, -464(%rbp)
.L3225:
	cmpb	$0, -328(%rbp)
	je	.L3226
	movq	%r9, -168(%rbp)
	movq	%r9, -472(%rbp)
.L3226:
	cmpb	$0, -336(%rbp)
	je	.L3227
	movq	%r8, -160(%rbp)
	movq	%r8, -480(%rbp)
.L3227:
	cmpb	$0, -256(%rbp)
	je	.L3228
	movq	%rdi, -152(%rbp)
	movq	%rdi, -488(%rbp)
.L3228:
	cmpb	$0, -320(%rbp)
	je	.L3229
	movq	%rsi, -144(%rbp)
	movq	%rsi, -496(%rbp)
.L3229:
	cmpb	$0, -312(%rbp)
	je	.L3230
	movq	%rcx, -136(%rbp)
	movq	%rcx, -504(%rbp)
.L3230:
	cmpb	$0, -304(%rbp)
	je	.L3231
	movq	%rdx, -128(%rbp)
	movq	%rdx, -512(%rbp)
.L3231:
	cmpb	$0, -368(%rbp)
	je	.L3232
	movq	-264(%rbp), %r13
	movq	%r13, -120(%rbp)
	movq	%r13, -520(%rbp)
.L3232:
	cmpb	$0, -376(%rbp)
	je	.L3233
	movq	-272(%rbp), %r12
	movq	%r12, -112(%rbp)
	movq	%r12, -528(%rbp)
.L3233:
	cmpb	$0, -384(%rbp)
	jne	.L6135
	vzeroupper
	jmp	.L6019
	.p2align 4,,10
	.p2align 3
.L3147:
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L6022
	movq	-232(%rbp), %rsi
	movq	%r8, %rdx
	movq	%r11, %rdi
	addq	$520, %rsp
	popq	%rbx
	popq	%r12
	popq	%rcx
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%rcx), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_Z13access_randomILi15ELi1EEP6recordPS1_ll
.L3206:
	.cfi_restore_state
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L6022
	movq	-232(%rbp), %rsi
	movq	%r8, %rdx
	movq	%r11, %rdi
	addq	$520, %rsp
	popq	%rbx
	popq	%r12
	popq	%rcx
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%rcx), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_Z13access_randomILi16ELi1EEP6recordPS1_ll
.L6132:
	.cfi_restore_state
	movq	-264(%rbp), %r12
	movq	%r12, -112(%rbp)
	movq	%r12, -512(%rbp)
	vzeroupper
	movq	-400(%rbp), %rbx
	jmp	.L3156
.L6131:
	movq	%rax, -224(%rbp)
	movq	%rax, -400(%rbp)
	jmp	.L3160
.L6130:
	movq	%r9, -416(%rbp)
	movq	-248(%rbp), %r10
	movq	%r12, %r15
	movq	%rdi, -424(%rbp)
	movq	-256(%rbp), %r9
	movq	%rsi, -456(%rbp)
	movq	-272(%rbp), %rdi
	movq	%r8, -464(%rbp)
	movq	-280(%rbp), %rsi
	movq	-264(%rbp), %r8
	movq	%rbx, -408(%rbp)
	movq	%r12, %rbx
	movq	%r12, -400(%rbp)
	movq	%rcx, -432(%rbp)
	movq	%rax, -440(%rbp)
	movq	%rdx, -448(%rbp)
	movq	%r10, -472(%rbp)
	movq	%r9, -480(%rbp)
	movq	%r8, -488(%rbp)
	movq	%rdi, -496(%rbp)
	movq	%rsi, -504(%rbp)
	movq	%r11, -512(%rbp)
	jmp	.L3156
.L6128:
	movq	%rax, -224(%rbp)
	movq	%rax, %r13
	jmp	.L2848
.L6127:
	movq	%r12, -328(%rbp)
	movq	%r13, %r15
	movq	%rcx, %r12
	movq	%rcx, -312(%rbp)
	movq	%rdx, -320(%rbp)
	movq	%r9, -336(%rbp)
	movq	%r8, -344(%rbp)
	movq	%rdi, -352(%rbp)
	movq	%rbx, -360(%rbp)
	jmp	.L2844
.L6065:
	movq	24(%rsi), %rbx
	movq	%rdx, %r11
	jmp	.L2651
.L6008:
	movq	128(%r11), %r13
	movq	%r13, -248(%rbp)
.L6027:
	movq	%rdx, %r10
	jmp	.L3269
.L6095:
	movq	-232(%rbp), %r11
	movq	%r11, -224(%rbp)
	movq	%r11, -392(%rbp)
	jmp	.L3131
.L6094:
	movq	%r12, -392(%rbp)
	movq	%r12, %r15
	movq	-248(%rbp), %r13
	movq	%rbx, -400(%rbp)
	movq	-256(%rbp), %r12
	movq	%r10, -408(%rbp)
	movq	-264(%rbp), %rbx
	movq	-272(%rbp), %r10
	movq	%r9, -416(%rbp)
	movq	%rdi, -424(%rbp)
	movq	%rax, -432(%rbp)
	movq	%rdx, -440(%rbp)
	movq	%rsi, -448(%rbp)
	movq	%r8, -456(%rbp)
	movq	%r13, -464(%rbp)
	movq	%r12, -472(%rbp)
	movq	%rbx, -480(%rbp)
	movq	%r10, -488(%rbp)
	movq	%r11, -496(%rbp)
	jmp	.L3127
.L6108:
	movq	%r8, -224(%rbp)
	movq	%r8, %r11
	jmp	.L2719
.L6107:
	movq	%r8, %r15
	movq	%rax, -288(%rbp)
	jmp	.L2569
.L6105:
	movq	%r9, -224(%rbp)
	movq	%r9, %rbx
	jmp	.L2760
.L6104:
	movq	%rbx, %r15
	movq	%rax, -296(%rbp)
	movq	%r8, -304(%rbp)
	movq	%rdi, -312(%rbp)
	jmp	.L6012
.L6106:
	movq	%rdi, -176(%rbp)
	movq	%rdi, -312(%rbp)
	vzeroupper
	movq	-296(%rbp), %rax
	jmp	.L6012
.L6103:
	movq	%r8, -168(%rbp)
	movq	%r8, -336(%rbp)
	vzeroupper
	movq	-304(%rbp), %rax
	jmp	.L6017
.L6102:
	movq	%rax, -224(%rbp)
	movq	%rax, %r12
	jmp	.L2803
.L6101:
	movq	%r12, %r15
	movq	%rcx, -304(%rbp)
	movq	%rcx, %rax
	movq	%rdx, -312(%rbp)
	movq	%r10, -320(%rbp)
	movq	%r9, -328(%rbp)
	movq	%r8, -336(%rbp)
	jmp	.L6017
.L6100:
	movq	%r15, -224(%rbp)
	movq	%r15, -416(%rbp)
	jmp	.L3249
.L6099:
	movq	%r9, -432(%rbp)
	movq	-248(%rbp), %r12
	movq	%rdi, -440(%rbp)
	movq	-256(%rbp), %rbx
	movq	%r8, -480(%rbp)
	movq	-264(%rbp), %r10
	movq	-272(%rbp), %r9
	movq	%r13, -424(%rbp)
	movq	-280(%rbp), %r8
	movq	%rcx, -448(%rbp)
	movq	-288(%rbp), %rdi
	movq	%rax, -456(%rbp)
	movq	%rdx, -464(%rbp)
	movq	%rsi, -472(%rbp)
	movq	%r12, -488(%rbp)
	movq	%rbx, -496(%rbp)
	movq	%r10, -504(%rbp)
	movq	%r9, -512(%rbp)
	movq	%r8, -520(%rbp)
	movq	%rdi, -528(%rbp)
	movq	%r11, -536(%rbp)
	jmp	.L6019
.L6097:
	movq	%rdx, -400(%rbp)
	movq	-248(%rbp), %r14
	movq	%r12, %r15
	movq	-256(%rbp), %r13
	movq	%r12, -352(%rbp)
	movq	-264(%rbp), %rdx
	movq	%r10, -360(%rbp)
	movq	%r9, -368(%rbp)
	movq	%r8, -376(%rbp)
	movq	%rsi, -384(%rbp)
	movq	%rax, -392(%rbp)
	movq	%rdi, -408(%rbp)
	movq	%r14, -416(%rbp)
	movq	%r13, -424(%rbp)
	movq	%rdx, -432(%rbp)
	movq	%r11, -440(%rbp)
	jmp	.L3017
.L6067:
	movq	56(%rsi), %rsi
	movq	%rdx, %r11
	jmp	.L2838
.L6098:
	movq	%r14, -224(%rbp)
	movq	%r14, -352(%rbp)
	jmp	.L3021
.L6066:
	movq	48(%r11), %rsi
	movq	%rdx, %r11
	jmp	.L2838
.L6096:
	movq	%r15, -224(%rbp)
	movq	%r15, -432(%rbp)
	jmp	.L3306
.L6029:
	movq	-216(%rbp), %r9
	movq	-208(%rbp), %r8
	movq	-200(%rbp), %rdi
	movq	-192(%rbp), %rsi
	movq	%r9, -440(%rbp)
	movq	-184(%rbp), %rcx
	movq	%r8, -448(%rbp)
	movq	-176(%rbp), %rdx
	movq	-168(%rbp), %r14
	movq	%rdi, -456(%rbp)
	movq	-160(%rbp), %r15
	movq	%rsi, -464(%rbp)
	movq	-152(%rbp), %r13
	movq	%rcx, -472(%rbp)
	movq	-144(%rbp), %rax
	movq	%rdx, -480(%rbp)
	movq	-136(%rbp), %r12
	movq	%r14, -488(%rbp)
	movq	-128(%rbp), %rbx
	movq	%r15, -496(%rbp)
	movq	-120(%rbp), %r11
	movq	%r13, -504(%rbp)
	movq	-112(%rbp), %r10
	movq	%rax, -512(%rbp)
	movq	-104(%rbp), %r9
	movq	%r12, -520(%rbp)
	movq	-96(%rbp), %r8
	movq	%rbx, -528(%rbp)
	movq	%r11, -536(%rbp)
	movq	%r10, -544(%rbp)
	movq	%r9, -552(%rbp)
	movq	%r8, -560(%rbp)
	jmp	.L3322
.L6134:
	movq	%rax, -224(%rbp)
	movq	%rax, -416(%rbp)
	jmp	.L3219
.L6133:
	movq	%r9, -432(%rbp)
	movq	%r13, %r15
	movq	%r13, %r10
	movq	-248(%rbp), %r9
	movq	%rdi, -440(%rbp)
	movq	-264(%rbp), %rdi
	movq	%rcx, -448(%rbp)
	movq	-280(%rbp), %rcx
	movq	%rdx, -464(%rbp)
	movq	-296(%rbp), %rdx
	movq	%rsi, -472(%rbp)
	movq	-272(%rbp), %rsi
	movq	%r8, -480(%rbp)
	movq	-256(%rbp), %r8
	movq	%r13, -416(%rbp)
	movq	%r12, -424(%rbp)
	movq	%rax, -456(%rbp)
	movq	%r9, -488(%rbp)
	movq	%r8, -496(%rbp)
	movq	%rdi, -504(%rbp)
	movq	%rsi, -512(%rbp)
	movq	%rcx, -520(%rbp)
	movq	%rdx, -528(%rbp)
	movq	%r11, -536(%rbp)
	jmp	.L3215
.L6129:
	movq	%rdi, -160(%rbp)
	movq	%rdi, -360(%rbp)
	vzeroupper
	movq	-312(%rbp), %r12
	jmp	.L2844
.L6135:
	movq	-296(%rbp), %rbx
	movq	%rbx, -104(%rbp)
	movq	%rbx, -536(%rbp)
	vzeroupper
	movq	-416(%rbp), %r10
	jmp	.L3215
.L6078:
	movq	%rax, -224(%rbp)
	movq	%rax, %r12
	jmp	.L2825
.L6077:
	movq	%r12, %r15
	movq	%rdi, -288(%rbp)
	movq	%rsi, -296(%rbp)
	movq	%rcx, -304(%rbp)
	movq	%r10, -312(%rbp)
	movq	%r9, -320(%rbp)
	movq	%r8, -328(%rbp)
	movq	%r13, -336(%rbp)
	jmp	.L2821
.L6073:
	movq	%rdx, %r15
	jmp	.L2934
.L6038:
	movq	56(%rsi), %rbx
	jmp	.L6010
.L6072:
	movq	72(%rsi), %r14
	movq	%rdx, %r11
	jmp	.L2885
.L6071:
	movq	64(%rsi), %rsi
	movq	%rdx, %r11
	jmp	.L2838
.L6126:
	movq	%rbx, %r15
	jmp	.L2569
.L6125:
	movq	%r12, -224(%rbp)
	movq	%r12, -432(%rbp)
	jmp	.L3277
.L6084:
	movq	%r15, -224(%rbp)
	movq	%r15, -400(%rbp)
	jmp	.L3189
.L6083:
	movq	%rbx, -408(%rbp)
	movq	-248(%rbp), %r13
	movq	%r10, -416(%rbp)
	movq	-256(%rbp), %r12
	movq	%r9, -424(%rbp)
	movq	-264(%rbp), %rbx
	movq	-272(%rbp), %r10
	movq	%rdi, -432(%rbp)
	movq	-280(%rbp), %r9
	movq	%rax, -440(%rbp)
	movq	%rdx, -448(%rbp)
	movq	%rsi, -456(%rbp)
	movq	%r8, -464(%rbp)
	movq	%r13, -472(%rbp)
	movq	%r12, -480(%rbp)
	movq	%rbx, -488(%rbp)
	movq	%r10, -496(%rbp)
	movq	%r9, -504(%rbp)
	movq	%r11, -512(%rbp)
	jmp	.L6018
.L6081:
	movq	%r14, %r15
	movq	%rsi, -312(%rbp)
	movq	%rcx, -320(%rbp)
	movq	%r10, -328(%rbp)
	movq	%r9, -336(%rbp)
	movq	%r8, -344(%rbp)
	movq	%rdi, -352(%rbp)
	movq	%r13, -360(%rbp)
	movq	%r12, -368(%rbp)
	jmp	.L2867
.L6061:
	movq	64(%rsi), %r12
	jmp	.L2861
.L6085:
	movq	%r9, %r15
	jmp	.L2569
.L6082:
	movq	%rax, -224(%rbp)
	movq	%rax, %r14
	jmp	.L2871
.L6022:
	call	__stack_chk_fail
.L6054:
	movq	32(%rsi), %r9
	jmp	.L2694
.L6080:
	movq	%rax, -224(%rbp)
	movq	%rax, -320(%rbp)
	jmp	.L2919
.L6079:
	movq	%rcx, -328(%rbp)
	movq	%r12, -336(%rbp)
	movq	%r8, -344(%rbp)
	movq	%r10, -352(%rbp)
	movq	%rsi, -360(%rbp)
	movq	%rdx, -368(%rbp)
	movq	%r13, -376(%rbp)
	movq	%r14, -384(%rbp)
	movq	%rax, -392(%rbp)
	jmp	.L2915
.L6070:
	movq	40(%r11), %rcx
	movq	%rdx, %r10
	jmp	.L3209
.L6031:
	movl	$30, %r8d
	movl	$.LC90, %edx
	movl	$1, %esi
	movq	stderr(%rip), %rdi
	call	__fprintf_chk
	movl	$.LC91, %edi
	movl	$67, %edx
	movq	stderr(%rip), %rcx
	movl	$1, %esi
	call	fwrite
	movl	$1, %edi
	call	exit
.L6111:
	movq	%r15, -224(%rbp)
	movq	%r15, -376(%rbp)
	jmp	.L3103
.L6110:
	movq	%rbx, -384(%rbp)
	movq	-256(%rbp), %r10
	movq	%r12, %r13
	movq	%r9, -392(%rbp)
	movq	-248(%rbp), %rbx
	movq	%r8, -440(%rbp)
	movq	-264(%rbp), %r9
	movq	-272(%rbp), %r8
	movq	%rdi, -400(%rbp)
	movq	%rcx, -408(%rbp)
	movq	%rax, -416(%rbp)
	movq	%rdx, -424(%rbp)
	movq	%rsi, -432(%rbp)
	movq	%rbx, -448(%rbp)
	movq	%r10, -456(%rbp)
	movq	%r9, -464(%rbp)
	movq	%r8, -472(%rbp)
	movq	%r11, -480(%rbp)
	jmp	.L3099
.L6109:
	movq	%rax, -184(%rbp)
	movq	%rax, -288(%rbp)
	vzeroupper
	jmp	.L2569
.L6112:
	movq	-256(%rbp), %r14
	movq	%r14, -120(%rbp)
	movq	%r14, -480(%rbp)
	vzeroupper
	movq	-376(%rbp), %r13
	jmp	.L3099
.L6117:
	movq	%rax, -224(%rbp)
	movq	%rax, -352(%rbp)
	jmp	.L2995
.L6116:
	movq	%r12, -352(%rbp)
	movq	%r12, %r15
	movq	-248(%rbp), %rax
	movq	-256(%rbp), %r12
	movq	%r10, -360(%rbp)
	movq	%r9, -368(%rbp)
	movq	%rdi, -376(%rbp)
	movq	%rcx, -384(%rbp)
	movq	%rdx, -392(%rbp)
	movq	%rsi, -400(%rbp)
	movq	%r8, -408(%rbp)
	movq	%r14, -416(%rbp)
	movq	%rax, -424(%rbp)
	movq	%r12, -432(%rbp)
	movq	%r13, -440(%rbp)
	jmp	.L3017
.L6120:
	movq	%rax, -224(%rbp)
	movq	%rax, -328(%rbp)
	jmp	.L2944
.L6124:
	movq	%rdx, -152(%rbp)
	movq	%rdx, -384(%rbp)
	vzeroupper
	movq	-320(%rbp), %r12
	jmp	.L2891
.L6123:
	movq	%rax, -224(%rbp)
	movq	%rax, %r14
	jmp	.L2895
.L6122:
	movq	%r14, %r15
	movq	%rbx, -320(%rbp)
	movq	%rbx, %r12
	movq	%r9, -328(%rbp)
	movq	%r8, -336(%rbp)
	movq	%rdi, -344(%rbp)
	movq	%rsi, -352(%rbp)
	movq	%rcx, -360(%rbp)
	movq	%rdx, -368(%rbp)
	movq	%r13, -376(%rbp)
	movq	%rax, -384(%rbp)
	jmp	.L2891
.L6119:
	movq	-248(%rbp), %rax
	movq	%r14, -392(%rbp)
	movq	%r15, %r14
	movq	-256(%rbp), %r12
	movq	%r9, -336(%rbp)
	movq	%r8, -344(%rbp)
	movq	%rdi, -352(%rbp)
	movq	%rcx, -360(%rbp)
	movq	%rdx, -368(%rbp)
	movq	%rsi, -376(%rbp)
	movq	%r13, -384(%rbp)
	movq	%rax, -400(%rbp)
	movq	%r12, -408(%rbp)
	jmp	.L2940
.L6121:
	movq	%rdx, -144(%rbp)
	movq	%rdx, -408(%rbp)
	vzeroupper
	movq	-328(%rbp), %r14
	jmp	.L2940
.L6113:
	movq	%rbx, -376(%rbp)
	movq	%r12, %r15
	movq	%r12, %r14
	movq	-248(%rbp), %r13
	movq	-264(%rbp), %rbx
	movq	%r12, -368(%rbp)
	movq	-272(%rbp), %r10
	movq	%r9, -384(%rbp)
	movq	%rdi, -392(%rbp)
	movq	%rcx, -400(%rbp)
	movq	%rax, -408(%rbp)
	movq	%rdx, -416(%rbp)
	movq	%rsi, -424(%rbp)
	movq	%r8, -432(%rbp)
	movq	%r13, -440(%rbp)
	movq	%rbx, -448(%rbp)
	movq	%r10, -456(%rbp)
	movq	%r11, -464(%rbp)
	jmp	.L3044
.L6115:
	movq	%rdx, -128(%rbp)
	movq	%rdx, -464(%rbp)
	vzeroupper
	movq	-368(%rbp), %r14
	jmp	.L3044
.L6114:
	movq	%rax, -224(%rbp)
	movq	%rax, -368(%rbp)
	jmp	.L3048
.L6118:
	movq	%rdx, -136(%rbp)
	movq	%rdx, -440(%rbp)
	vzeroupper
	jmp	.L3017
.L6093:
	movq	%rax, -224(%rbp)
	movq	%rax, -336(%rbp)
	jmp	.L2969
.L6076:
	movq	112(%rsi), %rcx
	movq	%rdx, %r10
	jmp	.L3209
.L6092:
	movq	-248(%rbp), %rdi
	movq	%r13, -336(%rbp)
	movq	%r13, %r15
	movq	%r12, -344(%rbp)
	movq	%r10, -352(%rbp)
	movq	%r9, -360(%rbp)
	movq	%rcx, -368(%rbp)
	movq	%rdx, -376(%rbp)
	movq	%rsi, -384(%rbp)
	movq	%r8, -392(%rbp)
	movq	%r14, -400(%rbp)
	movq	%rdi, -408(%rbp)
	movq	%r11, -416(%rbp)
	jmp	.L2965
.L6091:
	movq	%rax, -224(%rbp)
	movq	%rax, -368(%rbp)
	jmp	.L3075
.L6090:
	movq	%rbx, -376(%rbp)
	movq	-248(%rbp), %r12
	movq	%r10, -384(%rbp)
	movq	-256(%rbp), %rbx
	movq	-264(%rbp), %r10
	movq	%r9, -392(%rbp)
	movq	%rdi, -400(%rbp)
	movq	%rax, -408(%rbp)
	movq	%rdx, -416(%rbp)
	movq	%rsi, -424(%rbp)
	movq	%r8, -432(%rbp)
	movq	%r12, -440(%rbp)
	movq	%rbx, -448(%rbp)
	movq	%r10, -456(%rbp)
	movq	%r11, -464(%rbp)
	jmp	.L6016
.L6075:
	movq	120(%rsi), %rcx
	movq	%rdx, %r10
	jmp	.L3209
.L6074:
	movq	96(%rsi), %rcx
	movq	%rdx, %r10
	jmp	.L3209
.L6052:
	movq	40(%r11), %r10
	jmp	.L6011
.L6044:
	movq	24(%rsi), %rbx
	jmp	.L6010
.L6050:
	movq	(%rsi), %rcx
	jmp	.L6025
.L6048:
	movq	8(%r11), %r8
	jmp	.L2607
.L6069:
	movq	32(%rsi), %rcx
	movq	%rdx, %r10
	jmp	.L3209
.L6068:
	movq	104(%rsi), %rcx
	movq	%rdx, %r10
	jmp	.L3209
.L6056:
	movq	48(%r11), %r14
	jmp	.L6020
.L6042:
	movq	72(%rsi), %r13
	jmp	.L2909
.L6089:
	movq	%r8, -224(%rbp)
	movq	%r8, %r11
	jmp	.L2739
.L6088:
	movq	%rbx, %r15
	movq	%rdi, -256(%rbp)
	movq	%rsi, -264(%rbp)
	movq	%rcx, -272(%rbp)
	movq	%rdx, -280(%rbp)
	movq	%rax, -288(%rbp)
	jmp	.L2735
.L6087:
	movq	%rdi, -224(%rbp)
	movq	%rdi, %rbx
	jmp	.L2781
.L6086:
	movq	%rbx, %r15
	movq	%rsi, -272(%rbp)
	movq	%rcx, -280(%rbp)
	movq	%rdx, -288(%rbp)
	movq	%rax, -296(%rbp)
	movq	%r9, -304(%rbp)
	movq	%r8, -312(%rbp)
	jmp	.L2777
.L6064:
	movq	16(%rsi), %r10
	movq	%rdx, %r11
	jmp	.L2622
.L6063:
	movq	8(%r11), %rdi
	movq	%rdx, %r11
	jmp	.L2593
.L6062:
	movq	(%rsi), %rcx
	movq	%rdx, %r10
	jmp	.L3209
.L6046:
	movq	16(%rsi), %r10
	jmp	.L6011
	.cfi_endproc
.LFE94:
	.size	_Z18access_with_methodPKcPP6recordlili, .-_Z18access_with_methodPKcPP6recordlili
	.section	.text.unlikely
.LCOLDE93:
	.text
.LHOTE93:
	.section	.rodata.str1.1
.LC94:
	.string	"--------- %d ---------\n"
.LC95:
	.string	"%llu clocks\n"
.LC96:
	.string	"%f sec\n"
.LC97:
	.string	"%f bytes/clock\n"
.LC99:
	.string	"%f GB/sec\n"
.LC100:
	.string	"%f clocks per record\n"
	.section	.text.unlikely
.LCOLDB101:
	.text
.LHOTB101:
	.p2align 4,,15
	.globl	_Z6workeriiP6recordPKcllilli
	.type	_Z6workeriiP6recordPKcllilli, @function
_Z6workeriiP6recordPKcllilli:
.LFB99:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%edi, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%r8, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$344, %rsp
	.cfi_def_cfa_offset 400
	movq	%fs:40, %rax
	movq	%rax, 328(%rsp)
	xorl	%eax, %eax
	movq	%r8, %rax
	movq	%rcx, 24(%rsp)
	movslq	%edi, %rcx
	imulq	%r9, %rax
	movl	%esi, 8(%rsp)
	movl	400(%rsp), %r12d
	movl	%r9d, 20(%rsp)
	imulq	%rax, %rcx
	movq	%rax, (%rsp)
	salq	$6, %rcx
	testl	%r9d, %r9d
	jle	.L6143
	leaq	80(%rsp), %rbp
	movq	%r8, %rsi
	movl	%r14d, 32(%rsp)
	leaq	(%rdx,%rcx), %r15
	salq	$6, %rsi
	movq	%rbp, %r14
	leal	-1(%r9), %edx
	movq	%rsi, %rbx
	leaq	8(%rbp,%rdx,8), %r8
	movq	%r8, %rbp
	.p2align 4,,10
	.p2align 3
.L6144:
	testq	%r13, %r13
	jle	.L6142
	leaq	-1(%r13), %r9
	movl	$1, %r10d
	leaq	64(%r15), %r11
	movq	%r10, %rax
	andl	$7, %r9d
	cqto
	idivq	%r13
	salq	$6, %rdx
	addq	%r15, %rdx
	movq	%rdx, (%r15)
	cmpq	$1, %r13
	je	.L6142
	testq	%r9, %r9
	je	.L6175
	cmpq	$1, %r9
	je	.L6176
	cmpq	$2, %r9
	je	.L6177
	cmpq	$3, %r9
	je	.L6178
	cmpq	$4, %r9
	je	.L6179
	cmpq	$5, %r9
	je	.L6180
	cmpq	$6, %r9
	je	.L6181
	movl	$2, %r10d
	movq	%r10, %rax
	cqto
	idivq	%r13
	salq	$6, %rdx
	addq	%r15, %rdx
	movq	%rdx, (%r11)
	leaq	128(%r15), %r11
.L6181:
	addq	$1, %r10
	addq	$64, %r11
	movq	%r10, %rax
	cqto
	idivq	%r13
	salq	$6, %rdx
	addq	%r15, %rdx
	movq	%rdx, -64(%r11)
.L6180:
	addq	$1, %r10
	addq	$64, %r11
	movq	%r10, %rax
	cqto
	idivq	%r13
	salq	$6, %rdx
	addq	%r15, %rdx
	movq	%rdx, -64(%r11)
.L6179:
	addq	$1, %r10
	addq	$64, %r11
	movq	%r10, %rax
	cqto
	idivq	%r13
	salq	$6, %rdx
	addq	%r15, %rdx
	movq	%rdx, -64(%r11)
.L6178:
	addq	$1, %r10
	addq	$64, %r11
	movq	%r10, %rax
	cqto
	idivq	%r13
	salq	$6, %rdx
	addq	%r15, %rdx
	movq	%rdx, -64(%r11)
.L6177:
	addq	$1, %r10
	addq	$64, %r11
	movq	%r10, %rax
	cqto
	idivq	%r13
	salq	$6, %rdx
	addq	%r15, %rdx
	movq	%rdx, -64(%r11)
.L6176:
	addq	$1, %r10
	addq	$64, %r11
	movq	%r10, %rax
	cqto
	idivq	%r13
	salq	$6, %rdx
	addq	%r15, %rdx
	movq	%rdx, -64(%r11)
	cmpq	%r10, %r13
	je	.L6142
.L6175:
	leaq	1(%r10), %rax
	cqto
	idivq	%r13
	leaq	2(%r10), %rax
	salq	$6, %rdx
	addq	%r15, %rdx
	movq	%rdx, (%r11)
	cqto
	idivq	%r13
	leaq	3(%r10), %rax
	salq	$6, %rdx
	addq	%r15, %rdx
	movq	%rdx, 64(%r11)
	cqto
	idivq	%r13
	leaq	4(%r10), %rax
	salq	$6, %rdx
	addq	%r15, %rdx
	movq	%rdx, 128(%r11)
	cqto
	idivq	%r13
	leaq	5(%r10), %rax
	salq	$6, %rdx
	addq	%r15, %rdx
	movq	%rdx, 192(%r11)
	cqto
	idivq	%r13
	leaq	6(%r10), %rax
	salq	$6, %rdx
	addq	%r15, %rdx
	movq	%rdx, 256(%r11)
	cqto
	idivq	%r13
	leaq	7(%r10), %rax
	salq	$6, %rdx
	addq	$8, %r10
	addq	%r15, %rdx
	movq	%rdx, 320(%r11)
	cqto
	idivq	%r13
	salq	$6, %rdx
	movq	%r10, %rax
	addq	%r15, %rdx
	movq	%rdx, 384(%r11)
	cqto
	idivq	%r13
	salq	$6, %rdx
	addq	%r15, %rdx
	addq	$512, %r11
	movq	%rdx, -64(%r11)
	cmpq	%r10, %r13
	jne	.L6175
.L6142:
	testl	%r12d, %r12d
	jne	.L6195
.L6141:
	movq	%r15, %rdi
	movq	%r13, %rsi
	addq	$8, %r14
	call	_Z18check_links_cyclicP6recordl
	movq	%r15, -8(%r14)
	addq	%rbx, %r15
	cmpq	%rbp, %r14
	jne	.L6144
	movl	32(%rsp), %r14d
.L6143:
	cmpq	$0, 416(%rsp)
	jle	.L6136
	movslq	8(%rsp), %rcx
	xorl	%r15d, %r15d
	movq	%r13, 32(%rsp)
	imulq	(%rsp), %rcx
	imulq	408(%rsp), %rcx
	movq	%rcx, 56(%rsp)
	salq	$6, %rcx
	movq	%rcx, 48(%rsp)
	jmp	.L6150
	.p2align 4,,10
	.p2align 3
.L6145:
	call	GOMP_barrier
	leaq	64(%rsp), %rdi
	xorl	%esi, %esi
	call	gettimeofday
	movq	64(%rsp), %rbx
	movq	72(%rsp), %r13
#APP
# 40 "mem.cc" 1
	rdtscp
shlq $32,%rdx
orq %rdx,%rax
movq %rax,%rsi
# 0 "" 2
#NO_APP
	movl	424(%rsp), %r9d
	movq	%rsi, (%rsp)
	leaq	80(%rsp), %rsi
	movq	408(%rsp), %r8
	movl	20(%rsp), %ecx
	movq	32(%rsp), %rdx
	movq	24(%rsp), %rdi
	call	_Z18access_with_methodPKcPP6recordlili
#APP
# 40 "mem.cc" 1
	rdtscp
shlq $32,%rdx
orq %rdx,%rax
movq %rax,%rdi
# 0 "" 2
#NO_APP
	xorl	%esi, %esi
	movq	%rdi, 8(%rsp)
	leaq	64(%rsp), %rdi
	call	gettimeofday
	movq	64(%rsp), %r12
	movq	72(%rsp), %rbp
	call	GOMP_barrier
	testl	%r14d, %r14d
	je	.L6196
	addq	$1, %r15
	cmpq	416(%rsp), %r15
	je	.L6136
.L6150:
	testl	%r14d, %r14d
	jne	.L6145
	movl	%r15d, %edx
	movl	$.LC94, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	jmp	.L6145
	.p2align 4,,10
	.p2align 3
.L6195:
	movq	%r13, %rsi
	movq	%r15, %rdi
	call	_Z23randomize_next_pointersP6recordl
	jmp	.L6141
	.p2align 4,,10
	.p2align 3
.L6196:
	vxorpd	%xmm1, %xmm1, %xmm1
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%eax, %eax
	vxorpd	%xmm7, %xmm7, %xmm7
	vcvtsi2sdq	%r12, %xmm0, %xmm4
	vxorpd	%xmm5, %xmm5, %xmm5
	movl	$.LC95, %esi
	vmovsd	.LC4(%rip), %xmm2
	vcvtsi2sdq	%rbp, %xmm1, %xmm3
	movl	$1, %edi
	vcvtsi2sdq	%rbx, %xmm7, %xmm8
	movq	8(%rsp), %rbx
	vcvtsi2sdq	%r13, %xmm5, %xmm6
	subq	(%rsp), %rbx
	vfmadd231sd	.LC4(%rip), %xmm6, %xmm8
	vfmadd132sd	%xmm3, %xmm4, %xmm2
	vsubsd	%xmm8, %xmm2, %xmm9
	movq	%rbx, %rdx
	vmovsd	%xmm9, 40(%rsp)
	call	__printf_chk
	vmovsd	40(%rsp), %xmm0
	movl	$.LC96, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
	vxorpd	%xmm10, %xmm10, %xmm10
	vcvtsi2sdq	48(%rsp), %xmm10, %xmm11
	testq	%rbx, %rbx
	js	.L6147
	vxorpd	%xmm12, %xmm12, %xmm12
	vcvtsi2sdq	%rbx, %xmm12, %xmm15
.L6148:
	vdivsd	%xmm15, %xmm11, %xmm0
	movl	$.LC97, %esi
	movl	$1, %edi
	vmovsd	%xmm15, 8(%rsp)
	movl	$1, %eax
	vmovsd	%xmm11, (%rsp)
	addq	$1, %r15
	call	__printf_chk
	vmovsd	(%rsp), %xmm1
	movl	$.LC99, %esi
	movl	$1, %edi
	vmulsd	.LC98(%rip), %xmm1, %xmm3
	movl	$1, %eax
	vdivsd	40(%rsp), %xmm3, %xmm0
	call	__printf_chk
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	8(%rsp), %xmm2
	movl	$.LC100, %esi
	movl	$1, %edi
	movl	$1, %eax
	vcvtsi2sdq	56(%rsp), %xmm0, %xmm4
	vdivsd	%xmm4, %xmm2, %xmm0
	call	__printf_chk
	cmpq	416(%rsp), %r15
	jne	.L6150
.L6136:
	movq	328(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L6197
	addq	$344, %rsp
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
	.p2align 4,,10
	.p2align 3
.L6147:
	.cfi_restore_state
	movq	%rbx, %r8
	andl	$1, %ebx
	vxorpd	%xmm13, %xmm13, %xmm13
	shrq	%r8
	orq	%r8, %rbx
	vcvtsi2sdq	%rbx, %xmm13, %xmm14
	vaddsd	%xmm14, %xmm14, %xmm15
	jmp	.L6148
.L6197:
	call	__stack_chk_fail
	.cfi_endproc
.LFE99:
	.size	_Z6workeriiP6recordPKcllilli, .-_Z6workeriiP6recordPKcllilli
	.section	.text.unlikely
.LCOLDE101:
	.text
.LHOTE101:
	.section	.text.unlikely
.LCOLDB102:
	.text
.LHOTB102:
	.p2align 4,,15
	.type	main._omp_fn.0, @function
main._omp_fn.0:
.LFB287:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA287
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	call	omp_get_thread_num
	movl	52(%rbx), %ecx
	movslq	48(%rbx), %rdi
	movq	16(%rbx), %r8
	movq	32(%rbx), %rdx
	pushq	%rcx
	.cfi_def_cfa_offset 24
	movl	40(%rbx), %esi
	pushq	%rdi
	.cfi_def_cfa_offset 32
	movslq	44(%rbx), %r9
	movl	%eax, %edi
	pushq	24(%rbx)
	.cfi_def_cfa_offset 40
	pushq	%r8
	.cfi_def_cfa_offset 48
	movq	(%rbx), %rcx
	movq	8(%rbx), %r8
	call	_Z6workeriiP6recordPKcllilli
	addq	$32, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE287:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA287:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE287-.LLSDACSB287
.LLSDACSB287:
.LLSDACSE287:
	.text
	.size	main._omp_fn.0, .-main._omp_fn.0
	.section	.text.unlikely
.LCOLDE102:
	.text
.LHOTE102:
	.section	.rodata.str1.1
.LC103:
	.string	"method"
.LC104:
	.string	"n_elements"
.LC105:
	.string	"n_chains"
.LC106:
	.string	"n_scans"
.LC107:
	.string	"repeat"
.LC108:
	.string	"shuffle"
.LC109:
	.string	"payload"
	.data
	.align 32
	.type	_ZZ13parse_cmdlineiPKPcP4optsE12long_options, @object
	.size	_ZZ13parse_cmdlineiPKPcP4optsE12long_options, 256
_ZZ13parse_cmdlineiPKPcP4optsE12long_options:
	.quad	.LC103
	.long	1
	.zero	4
	.quad	0
	.long	109
	.zero	4
	.quad	.LC104
	.long	1
	.zero	4
	.quad	0
	.long	110
	.zero	4
	.quad	.LC105
	.long	1
	.zero	4
	.quad	0
	.long	99
	.zero	4
	.quad	.LC106
	.long	1
	.zero	4
	.quad	0
	.long	115
	.zero	4
	.quad	.LC107
	.long	1
	.zero	4
	.quad	0
	.long	114
	.zero	4
	.quad	.LC108
	.long	1
	.zero	4
	.quad	0
	.long	120
	.zero	4
	.quad	.LC109
	.long	1
	.zero	4
	.quad	0
	.long	112
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.section	.rodata
	.align 16
	.type	_ZZ10good_primelE19__PRETTY_FUNCTION__, @object
	.size	_ZZ10good_primelE19__PRETTY_FUNCTION__, 30
_ZZ10good_primelE19__PRETTY_FUNCTION__:
	.string	"long int good_prime(long int)"
	.align 32
	.type	_ZZ23randomize_next_pointersP6recordlE19__PRETTY_FUNCTION__, @object
	.size	_ZZ23randomize_next_pointersP6recordlE19__PRETTY_FUNCTION__, 48
_ZZ23randomize_next_pointersP6recordlE19__PRETTY_FUNCTION__:
	.string	"void randomize_next_pointers(record*, long int)"
	.align 32
	.type	_ZZ18check_links_cyclicP6recordlE19__PRETTY_FUNCTION__, @object
	.size	_ZZ18check_links_cyclicP6recordlE19__PRETTY_FUNCTION__, 43
_ZZ18check_links_cyclicP6recordlE19__PRETTY_FUNCTION__:
	.string	"void check_links_cyclic(record*, long int)"
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC4:
	.long	2696277389
	.long	1051772663
	.align 8
.LC98:
	.long	0
	.long	1041235968
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
