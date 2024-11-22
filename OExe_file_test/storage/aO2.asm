	.file	"a.cpp"
	.text
	.section	.text$_ZNKSt5ctypeIcE8do_widenEc,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNKSt5ctypeIcE8do_widenEc
	.def	_ZNKSt5ctypeIcE8do_widenEc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt5ctypeIcE8do_widenEc
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1847:
	.seh_endprologue
	movl	%edx, %eax
	ret
	.seh_endproc
	.text
	.p2align 4
	.def	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0:
.LFB3075:
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
	je	.L8
	cmpb	$0, 56(%rsi)
	je	.L5
	movsbl	67(%rsi), %edx
.L6:
	movq	%rbx, %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	jmp	_ZNSo5flushEv
.L5:
	movq	%rsi, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rsi), %rax
	movl	$10, %edx
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L6
	movl	$10, %edx
	movq	%rsi, %rcx
	call	*%rax
	movsbl	%al, %edx
	jmp	.L6
.L8:
	call	_ZSt16__throw_bad_castv
	nop
	.seh_endproc
	.p2align 4
	.def	_Z11fibonacciDPi.part.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z11fibonacciDPi.part.0
_Z11fibonacciDPi.part.0:
.LFB3073:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	leal	1(%rcx), %ebx
	movl	%ecx, %edi
	movslq	%ebx, %rbx
	salq	$2, %rbx
	movq	%rbx, %rcx
	call	_Znwy
	leaq	-4(%rbx), %r8
	xorl	%edx, %edx
	leaq	4(%rax), %rcx
	movq	%rax, %rsi
	call	memset
	movabsq	$4294967296, %rax
	movq	%rax, (%rsi)
	cmpl	$1, %edi
	jle	.L10
	leal	-2(%rdi), %eax
	leaq	8(%rsi), %rdx
	xorl	%ecx, %ecx
	leaq	12(%rsi,%rax,4), %r9
	movl	$1, %eax
	.p2align 5
	.p2align 4
	.p2align 3
.L11:
	movl	%eax, %r8d
	addl	%ecx, %eax
	addq	$4, %rdx
	movl	%eax, -4(%rdx)
	movl	%r8d, %ecx
	cmpq	%rdx, %r9
	jne	.L11
.L10:
	movl	-4(%rsi,%rbx), %edi
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	call	_ZdlPvy
	movl	%edi, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
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
	jle	.L49
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
	je	.L57
.L15:
	subl	$2, %ebx
	movl	%r12d, %r13d
	xorl	%esi, %esi
	movl	%ebx, %eax
	movl	%ebx, %edi
	movl	%r12d, %ebx
	movl	%ebp, %r12d
	andl	$-2, %eax
	subl	%eax, %r13d
.L21:
	leal	-1(%rbx), %edx
	movl	%edx, %eax
	cmpl	%r13d, %ebx
	je	.L58
	subl	$2, %ebx
	movl	%eax, %ecx
	movl	%esi, 76(%rsp)
	xorl	%r14d, %r14d
	movl	%ebx, %edx
	movl	%r13d, %esi
	movl	%ebx, %ebp
	andl	$-2, %edx
	subl	%edx, %ecx
	movl	%ecx, 100(%rsp)
.L25:
	leal	-1(%rax), %edx
	movl	%edx, %r8d
	cmpl	%eax, 100(%rsp)
	je	.L59
	subl	$2, %eax
	movl	%r8d, %ebx
	movl	%r12d, 80(%rsp)
	xorl	%r13d, %r13d
	movl	%eax, %edx
	movl	%eax, 84(%rsp)
	andl	$-2, %edx
	subl	%edx, %ebx
	movl	%ebp, %edx
	movl	%r13d, %ebp
	movl	%ebx, 96(%rsp)
	movl	%edx, %r13d
	movl	%esi, %ebx
	movl	%r14d, %esi
	movl	%r15d, %r14d
.L29:
	leal	-1(%r8), %ecx
	movl	%ecx, %r11d
	cmpl	%r8d, 96(%rsp)
	je	.L60
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
.L33:
	leal	-1(%r11), %r8d
	movl	%r8d, %eax
	cmpl	%r11d, %r15d
	je	.L61
	leal	-2(%r11), %esi
	leal	-4(%r11), %ebp
	xorl	%r14d, %r14d
	movl	%edx, %edi
	movl	%esi, %ecx
	andl	$-2, %ecx
	subl	%ecx, %r8d
.L37:
	cmpl	%eax, %r8d
	je	.L62
	leal	-2(%rax), %edx
	leal	-3(%rax), %r11d
	subl	$5, %eax
	movl	%ebx, 44(%rsp)
	movl	%edx, %ecx
	movl	%r8d, 36(%rsp)
	movl	%r12d, %r8d
	andl	$-2, %ecx
	movl	%r10d, 40(%rsp)
	movl	%edi, %r10d
	subl	%ecx, %r11d
	movl	%ebp, %ecx
	andl	$-2, %ecx
	movl	%r11d, 52(%rsp)
	movl	%ebp, %r11d
	subl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	%eax, 48(%rsp)
	movl	%ecx, %edi
	leal	1(%r11), %eax
	movl	%r9d, %ecx
	movl	%edx, %r9d
	cmpl	%r11d, 52(%rsp)
	je	.L63
.L38:
	leal	-2(%r11), %edx
	movl	%r11d, 64(%rsp)
	xorl	%ebx, %ebx
	movl	%r11d, %r12d
	movl	%edx, 68(%rsp)
	movl	%r10d, 56(%rsp)
	movl	%ebx, %r10d
	movl	%r8d, 60(%rsp)
	movl	%esi, %r8d
	movl	%ecx, %esi
.L45:
	cmpl	$1, %r12d
	je	.L56
	movl	%edx, %ebx
	leal	-2(%rax), %r11d
	subl	$4, %eax
	andl	$-2, %ebx
	movl	%r11d, %ecx
	subl	%ebx, %eax
	xorl	%ebx, %ebx
	movl	%eax, 72(%rsp)
.L47:
	movl	%r9d, 124(%rsp)
	movl	%r8d, 120(%rsp)
	movl	%r11d, 116(%rsp)
	movl	%edx, 112(%rsp)
	movl	%r10d, 108(%rsp)
	movl	%ecx, 104(%rsp)
	call	_Z18fibonacciRecursivei
	movl	104(%rsp), %ecx
	movl	108(%rsp), %r10d
	addl	%eax, %ebx
	movl	112(%rsp), %edx
	movl	116(%rsp), %r11d
	subl	$2, %ecx
	cmpl	%ecx, 72(%rsp)
	movl	120(%rsp), %r8d
	movl	124(%rsp), %r9d
	jne	.L47
	subl	$2, %r12d
	movl	%r11d, %eax
	movl	%edx, %r11d
	subl	$2, %edx
	andl	$-2, %r11d
	movl	%r12d, %ecx
	subl	%r11d, %ecx
	addl	%ebx, %ecx
	addl	%ecx, %r10d
	cmpl	$1, %eax
	jne	.L45
	.p2align 4
	.p2align 3
.L56:
	movl	%r10d, %ebx
	movl	%esi, %ecx
	movl	56(%rsp), %r10d
	movl	%r8d, %esi
	leal	1(%rbx), %eax
	movl	64(%rsp), %r11d
	movl	60(%rsp), %r8d
	addl	%eax, %edi
	movl	68(%rsp), %eax
	cmpl	%eax, 48(%rsp)
	je	.L40
	movl	%eax, %r11d
	leal	1(%r11), %eax
	cmpl	%r11d, 52(%rsp)
	jne	.L38
.L63:
	movl	%r8d, %r12d
	movl	%r9d, %edx
	movl	36(%rsp), %r8d
	movl	%ecx, %r9d
	movl	44(%rsp), %ebx
	movl	%edi, %ecx
	movl	%r10d, %edi
	movl	40(%rsp), %r10d
	addl	%eax, %ecx
.L39:
	movl	%edx, %eax
	addl	%ecx, %r14d
	subl	$2, %ebp
	cmpl	$1, %edx
	jne	.L37
	movl	%edi, %edx
	leal	1(%r14), %eax
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L62:
	movl	%edi, %edx
	leal	-1(%r14,%r8), %eax
.L35:
	movl	%esi, %r11d
	addl	%eax, %r12d
	cmpl	$1, %esi
	jne	.L33
	movl	88(%rsp), %ebp
	movl	92(%rsp), %ecx
	movl	%r13d, %edi
	movl	%edx, %esi
	movl	%ebx, %r13d
	movl	%r9d, %r14d
	leal	1(%r12), %eax
	movl	%r10d, %ebx
.L31:
	movl	%ecx, %r8d
	addl	%eax, %ebp
	cmpl	$1, %ecx
	jne	.L29
	movl	%r13d, %edx
	movl	%ebp, %r13d
	movl	%r14d, %r15d
	movl	80(%rsp), %r12d
	movl	%esi, %r14d
	movl	%edx, %ebp
	movl	84(%rsp), %eax
	movl	%ebx, %esi
	leal	1(%r13), %edx
	jmp	.L27
	.p2align 4,,10
	.p2align 3
.L61:
	movl	%r13d, %edi
	movl	88(%rsp), %ebp
	movl	%ebx, %r13d
	movl	92(%rsp), %ecx
	movl	%edx, %esi
	movl	%r9d, %r14d
	leal	(%r8,%r12), %eax
	movl	%r10d, %ebx
	jmp	.L31
.L60:
	movl	%r13d, %edx
	movl	80(%rsp), %r12d
	movl	%ebp, %r13d
	movl	84(%rsp), %eax
	movl	%r14d, %r15d
	movl	%edx, %ebp
	leal	(%rcx,%r13), %edx
	movl	%esi, %r14d
	movl	%ebx, %esi
.L27:
	addl	%edx, %r14d
	cmpl	$1, %eax
	jne	.L25
	movl	%esi, %r13d
	movl	%ebp, %ebx
	movl	76(%rsp), %esi
	leal	1(%r14), %eax
	jmp	.L23
	.p2align 4,,10
	.p2align 3
.L59:
	movl	%esi, %r13d
	movl	76(%rsp), %esi
	movl	%ebp, %ebx
	leal	(%rdx,%r14), %eax
.L23:
	addl	%eax, %esi
	cmpl	$1, %ebx
	jne	.L21
	movl	%r12d, %ebp
	leal	1(%rsi), %eax
	movl	%edi, %ebx
	addl	%eax, %ebp
	cmpl	$1, %ebx
	jne	.L64
.L50:
	leal	1(%rbp), %edi
	jmp	.L49
	.p2align 4,,10
	.p2align 3
.L58:
	movl	%r12d, %ebp
	leal	(%rdx,%rsi), %eax
	movl	%edi, %ebx
	addl	%eax, %ebp
	cmpl	$1, %ebx
	je	.L50
.L64:
	leal	-1(%rbx), %eax
	movl	%eax, %r12d
	cmpl	%r15d, %ebx
	jne	.L15
.L57:
	leal	(%rax,%rbp), %edi
.L49:
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
.L40:
	movl	%r9d, %edx
	movl	%ecx, %r9d
	movl	%edi, %ecx
	movl	%r8d, %r12d
	movl	%r10d, %edi
	movl	36(%rsp), %r8d
	movl	44(%rsp), %ebx
	addl	%r11d, %ecx
	movl	40(%rsp), %r10d
	jmp	.L39
	.seh_endproc
	.p2align 4
	.globl	_Z11fibonacciDPi
	.def	_Z11fibonacciDPi;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z11fibonacciDPi
_Z11fibonacciDPi:
.LFB2471:
	.seh_endprologue
	cmpl	$1, %ecx
	jle	.L66
	jmp	_Z11fibonacciDPi.part.0
	.p2align 4,,10
	.p2align 3
.L66:
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
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	leaq	.LC1(%rip), %rsi
	call	__main
	movq	.refptr._ZSt4cout(%rip), %rdi
	leaq	.LC0(%rip), %rdx
	movq	%rdi, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$40, %edx
	movq	%rax, %rcx
	call	_ZNSolsEi
	movq	%rsi, %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$40, %ecx
	movq	%rax, %rbx
	call	_Z18fibonacciRecursivei
	movq	%rbx, %rcx
	movl	%eax, %edx
	call	_ZNSolsEi
	movq	%rax, %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	movq	%rdi, %rcx
	leaq	.LC2(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$40, %edx
	movq	%rax, %rcx
	call	_ZNSolsEi
	movq	%rsi, %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$40, %ecx
	movq	%rax, %rbx
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
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEi;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
