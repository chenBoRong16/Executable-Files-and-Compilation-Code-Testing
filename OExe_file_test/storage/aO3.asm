	.file	"a.cpp"
	.text
	.p2align 4
	.def	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0:
.LFB3072:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	movq	240(%rcx,%rax), %rsi
	movq	%rcx, %rbx
	testq	%rsi, %rsi
	je	.L6
	cmpb	$0, 56(%rsi)
	je	.L3
	movsbl	67(%rsi), %edx
.L4:
	movq	%rbx, %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	jmp	_ZNSo5flushEv
.L3:
	movq	%rsi, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rsi), %rax
	movl	$10, %edx
	movq	%rsi, %rcx
	call	*48(%rax)
	movsbl	%al, %edx
	jmp	.L4
.L6:
	call	_ZSt16__throw_bad_castv
	nop
	.seh_endproc
	.p2align 4
	.def	_Z11fibonacciDPi.part.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z11fibonacciDPi.part.0
_Z11fibonacciDPi.part.0:
.LFB3071:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movslq	%ecx, %rsi
	leal	1(%rsi), %edi
	movslq	%edi, %rdi
	salq	$2, %rdi
	movq	%rdi, %rcx
	call	_Znwy
	leaq	-4(%rdi), %r8
	xorl	%edx, %edx
	leaq	4(%rax), %rcx
	movq	%rax, %rbx
	call	memset
	movabsq	$4294967296, %rax
	movq	%rax, (%rbx)
	cmpl	$1, %esi
	jle	.L8
	cmpl	$3, %esi
	jle	.L12
	movl	%esi, %eax
	movl	$1, %ecx
	xorl	%edx, %edx
	shrl	%eax
	leal	1(%rax), %r9d
	movl	$4, %eax
	addq	%r9, %r9
	.p2align 5
	.p2align 4
	.p2align 3
.L10:
	addl	%ecx, %edx
	movq	%rax, %r8
	addl	%edx, %ecx
	movl	%edx, -8(%rbx,%rax,4)
	movl	%ecx, -4(%rbx,%rax,4)
	addq	$2, %rax
	cmpq	%rax, %r9
	jne	.L10
.L9:
	leal	-1(%r8), %eax
	cltq
	salq	$2, %rax
	leaq	(%rbx,%rax), %rcx
	movl	(%rcx), %edx
	addl	-4(%rbx,%rax), %edx
	movl	%edx, 4(%rbx,%rax)
	cmpl	%r8d, %esi
	jle	.L8
	addl	(%rcx), %edx
	movl	%edx, 8(%rbx,%rax)
.L8:
	movl	(%rbx,%rsi,4), %esi
	movq	%rdi, %rdx
	movq	%rbx, %rcx
	call	_ZdlPvy
	movl	%esi, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L12:
	movl	$2, %r8d
	jmp	.L9
	.seh_endproc
	.p2align 4
	.globl	_Z18fibonacciRecursivei
	.def	_Z18fibonacciRecursivei;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z18fibonacciRecursivei
_Z18fibonacciRecursivei:
.LFB2470:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$136, %rsp
	.seh_stackalloc	136
	.seh_endprologue
	movl	%ecx, %edi
	cmpl	$1, %ecx
	jle	.L50
	leal	-1(%rcx), %eax
	movl	%ecx, %ebp
	xorl	%ebx, %ebx
	movl	%eax, %edx
	movl	%eax, %r12d
	andl	$-2, %edx
	subl	%edx, %ebp
	movl	%ebp, %r15d
	movl	%ebx, %ebp
	movl	%ecx, %ebx
	cmpl	%r15d, %ebx
	je	.L58
.L16:
	subl	$2, %ebx
	movl	%r12d, %r13d
	xorl	%esi, %esi
	movl	%ebx, %eax
	movl	%ebx, %edi
	movl	%r12d, %ebx
	movl	%ebp, %r12d
	andl	$-2, %eax
	subl	%eax, %r13d
.L22:
	leal	-1(%rbx), %edx
	movl	%edx, %eax
	cmpl	%r13d, %ebx
	je	.L59
	subl	$2, %ebx
	movl	%eax, %ecx
	movl	%esi, 76(%rsp)
	xorl	%r14d, %r14d
	movl	%ebx, %edx
	movl	%r15d, %esi
	movl	%ebx, %ebp
	movl	%r13d, %r15d
	andl	$-2, %edx
	subl	%edx, %ecx
	movl	%ecx, 96(%rsp)
.L26:
	movl	96(%rsp), %ebx
	leal	-1(%rax), %edx
	movl	%edx, %r8d
	cmpl	%ebx, %eax
	je	.L60
	subl	$2, %eax
	movl	%r8d, %ebx
	movl	%r12d, 80(%rsp)
	xorl	%r13d, %r13d
	movl	%eax, %edx
	movl	%eax, 84(%rsp)
	movl	%ebp, %ecx
	movl	%r13d, %ebp
	andl	$-2, %edx
	movl	%ecx, %r13d
	subl	%edx, %ebx
	movl	%ebx, 100(%rsp)
	movl	%esi, %ebx
	movl	%r14d, %esi
	movl	%r15d, %r14d
.L30:
	movl	100(%rsp), %eax
	leal	-1(%r8), %ecx
	movl	%ecx, %r11d
	cmpl	%eax, %r8d
	je	.L61
	leal	-2(%r8), %ecx
	movl	%ebp, 88(%rsp)
	movl	%r11d, %r15d
	movl	%ebx, %r10d
	movl	%ecx, %eax
	movl	%ecx, 92(%rsp)
	movl	%r13d, %ebx
	xorl	%r12d, %r12d
	andl	$-2, %eax
	movl	%esi, %edx
	movl	%r14d, %r9d
	movl	%edi, %r13d
	subl	%eax, %r15d
.L34:
	leal	-1(%r11), %r8d
	movl	%r8d, %eax
	cmpl	%r15d, %r11d
	je	.L62
	leal	-2(%r11), %esi
	leal	-4(%r11), %ebp
	xorl	%r14d, %r14d
	movl	%edx, %edi
	movl	%esi, %ecx
	andl	$-2, %ecx
	subl	%ecx, %r8d
	movl	%r8d, 52(%rsp)
.L38:
	movl	52(%rsp), %edx
	cmpl	%edx, %eax
	je	.L63
	leal	-2(%rax), %r8d
	leal	-3(%rax), %ecx
	subl	$5, %eax
	movl	%ebp, %r11d
	movl	%r8d, %edx
	movl	%r10d, 36(%rsp)
	movl	%edi, %r10d
	andl	$-2, %edx
	movl	%r9d, 40(%rsp)
	movl	%r8d, %r9d
	movl	%r12d, %r8d
	subl	%edx, %ecx
	movl	%ebp, %edx
	movl	%ebx, 44(%rsp)
	andl	$-2, %edx
	movl	%ecx, 56(%rsp)
	xorl	%ecx, %ecx
	subl	%edx, %eax
	movl	%ecx, %edi
	movl	%eax, 48(%rsp)
	leal	1(%r11), %eax
	cmpl	%r11d, 56(%rsp)
	je	.L64
.L39:
	leal	-2(%r11), %edx
	movl	%r10d, 60(%rsp)
	xorl	%ebx, %ebx
	movl	%r11d, %r12d
	movl	%edx, 68(%rsp)
	movl	%r8d, 64(%rsp)
	movl	%ebx, %r8d
.L46:
	cmpl	$1, %r12d
	je	.L57
	movl	%edx, %ebx
	leal	-2(%rax), %r10d
	subl	$4, %eax
	andl	$-2, %ebx
	movl	%r10d, %ecx
	subl	%ebx, %eax
	xorl	%ebx, %ebx
	movl	%eax, 72(%rsp)
.L48:
	movl	%r10d, 124(%rsp)
	movl	%r9d, 120(%rsp)
	movl	%edx, 116(%rsp)
	movl	%r11d, 112(%rsp)
	movl	%r8d, 108(%rsp)
	movl	%ecx, 104(%rsp)
	call	_Z18fibonacciRecursivei
	movl	104(%rsp), %ecx
	movl	108(%rsp), %r8d
	addl	%eax, %ebx
	movl	112(%rsp), %r11d
	movl	116(%rsp), %edx
	subl	$2, %ecx
	cmpl	%ecx, 72(%rsp)
	movl	120(%rsp), %r9d
	movl	124(%rsp), %r10d
	jne	.L48
	subl	$2, %r12d
	movl	%r10d, %eax
	movl	%edx, %r10d
	subl	$2, %edx
	andl	$-2, %r10d
	movl	%r12d, %ecx
	subl	%r10d, %ecx
	addl	%ebx, %ecx
	addl	%ecx, %r8d
	cmpl	$1, %eax
	jne	.L46
	.p2align 4
	.p2align 3
.L57:
	movl	%r8d, %ebx
	movl	60(%rsp), %r10d
	movl	64(%rsp), %r8d
	leal	1(%rbx), %eax
	addl	%eax, %edi
	movl	68(%rsp), %eax
	cmpl	%eax, 48(%rsp)
	je	.L41
	movl	%eax, %r11d
	leal	1(%r11), %eax
	cmpl	%r11d, 56(%rsp)
	jne	.L39
.L64:
	movl	%edi, %ecx
	movl	%r8d, %r12d
	movl	%r10d, %edi
	movl	%r9d, %r8d
	movl	36(%rsp), %r10d
	movl	44(%rsp), %ebx
	addl	%eax, %ecx
	movl	40(%rsp), %r9d
.L40:
	movl	%r8d, %eax
	addl	%ecx, %r14d
	subl	$2, %ebp
	cmpl	$1, %r8d
	jne	.L38
	movl	%edi, %edx
	leal	1(%r14), %eax
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L63:
	movl	%edi, %edx
	leal	-1(%rax,%r14), %eax
.L36:
	movl	%esi, %r11d
	addl	%eax, %r12d
	cmpl	$1, %esi
	jne	.L34
	movl	88(%rsp), %ebp
	movl	92(%rsp), %ecx
	movl	%r13d, %edi
	movl	%edx, %esi
	movl	%ebx, %r13d
	movl	%r9d, %r14d
	leal	1(%r12), %eax
	movl	%r10d, %ebx
.L32:
	movl	%ecx, %r8d
	addl	%eax, %ebp
	cmpl	$1, %ecx
	jne	.L30
	movl	%r13d, %ecx
	movl	%ebp, %r13d
	movl	%r14d, %r15d
	movl	80(%rsp), %r12d
	movl	%esi, %r14d
	movl	84(%rsp), %eax
	movl	%ebx, %esi
	movl	%ecx, %ebp
	leal	1(%r13), %edx
	jmp	.L28
	.p2align 4,,10
	.p2align 3
.L62:
	movl	%r13d, %edi
	movl	88(%rsp), %ebp
	movl	%ebx, %r13d
	movl	92(%rsp), %ecx
	movl	%edx, %esi
	movl	%r9d, %r14d
	leal	(%r8,%r12), %eax
	movl	%r10d, %ebx
	jmp	.L32
.L61:
	movl	%r14d, %r15d
	movl	80(%rsp), %r12d
	movl	%esi, %r14d
	movl	84(%rsp), %eax
	movl	%ebx, %esi
	movl	%r13d, %ebx
	movl	%ebp, %r13d
	leal	(%rcx,%r13), %edx
	movl	%ebx, %ebp
.L28:
	addl	%edx, %r14d
	cmpl	$1, %eax
	jne	.L26
	movl	%r15d, %r13d
	movl	%ebp, %ebx
	leal	1(%r14), %eax
	movl	%esi, %r15d
	movl	76(%rsp), %esi
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L60:
	movl	%r15d, %r13d
	movl	%esi, %r15d
	movl	76(%rsp), %esi
	movl	%ebp, %ebx
	leal	(%rdx,%r14), %eax
.L24:
	addl	%eax, %esi
	cmpl	$1, %ebx
	jne	.L22
	movl	%r12d, %ebp
	leal	1(%rsi), %eax
	movl	%edi, %ebx
	addl	%eax, %ebp
	cmpl	$1, %ebx
	jne	.L65
.L51:
	leal	1(%rbp), %edi
	jmp	.L50
	.p2align 4,,10
	.p2align 3
.L59:
	movl	%r12d, %ebp
	leal	(%rdx,%rsi), %eax
	movl	%edi, %ebx
	addl	%eax, %ebp
	cmpl	$1, %ebx
	je	.L51
.L65:
	leal	-1(%rbx), %eax
	movl	%eax, %r12d
	cmpl	%r15d, %ebx
	jne	.L16
.L58:
	leal	(%rax,%rbp), %edi
.L50:
	movl	%edi, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L41:
	movl	%edi, %ecx
	movl	%r8d, %r12d
	movl	%r10d, %edi
	movl	%r9d, %r8d
	movl	36(%rsp), %r10d
	movl	44(%rsp), %ebx
	addl	%r11d, %ecx
	movl	40(%rsp), %r9d
	jmp	.L40
	.seh_endproc
	.p2align 4
	.globl	_Z11fibonacciDPi
	.def	_Z11fibonacciDPi;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z11fibonacciDPi
_Z11fibonacciDPi:
.LFB2471:
	.seh_endprologue
	cmpl	$1, %ecx
	jle	.L67
	jmp	_Z11fibonacciDPi.part.0
	.p2align 4,,10
	.p2align 3
.L67:
	movl	%ecx, %eax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "Fibonacci number using recursion (n = \0"
.LC1:
	.ascii "): \0"
	.align 8
.LC2:
	.ascii "Fibonacci number using dynamic programming (n = \0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB2472:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	leaq	.LC1(%rip), %r14
	xorl	%ebp, %ebp
	movl	$39, %edi
	call	__main
	movq	.refptr._ZSt4cout(%rip), %r12
	movl	$38, %r8d
	leaq	.LC0(%rip), %rdx
	movq	%r12, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$40, %edx
	movq	%r12, %rcx
	call	_ZNSolsEi
	movl	$3, %r8d
	movq	%r14, %rdx
	movq	%rax, %rcx
	movq	%rax, %r13
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.L69:
	movl	%edi, %ebx
	xorl	%esi, %esi
.L72:
	leal	-1(%rbx), %ecx
	subl	$2, %ebx
	call	_Z18fibonacciRecursivei
	addl	%eax, %esi
	cmpl	$1, %ebx
	jne	.L72
	subl	$2, %edi
	leal	1(%rbp,%rsi), %ebp
	cmpl	$1, %edi
	jne	.L69
	leal	1(%rbp), %edx
	movq	%r13, %rcx
	call	_ZNSolsEi
	movq	%rax, %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	movl	$48, %r8d
	movq	%r12, %rcx
	leaq	.LC2(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%r12, %rcx
	movl	$40, %edx
	call	_ZNSolsEi
	movl	$3, %r8d
	movq	%r14, %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$40, %ecx
	call	_Z11fibonacciDPi.part.0
	movq	%rbx, %rcx
	movl	%eax, %edx
	call	_ZNSolsEi
	movq	%rax, %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev1, Built by MSYS2 project) 14.2.0"
	.def	_ZNSo3putEc;	.scl	2;	.type	32;	.endef
	.def	_ZNSo5flushEv;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt5ctypeIcE13_M_widen_initEv;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__throw_bad_castv;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEi;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
