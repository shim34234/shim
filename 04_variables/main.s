	.file	"main.c"
	.text
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "Hello World %d\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	call	__main
	movl	$4, -4(%rbp)
	movq	.refptr.g_open(%rip), %rax
	movl	$12, (%rax)
	movl	$2, %ecx
	call	foo
	movl	%eax, -8(%rbp)
	addl	$5, -8(%rbp)
	movl	$2, %ecx
	call	foo
	movl	%eax, -8(%rbp)
	movl	$2, %ecx
	call	foo
	movl	%eax, -8(%rbp)
	movl	$2, %ecx
	call	foo
	movl	%eax, -8(%rbp)
	movl	$2, %ecx
	call	foo
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC0(%rip), %rcx
	call	printf
	movl	$0, %eax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	foo;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.g_open, "dr"
	.globl	.refptr.g_open
	.linkonce	discard
.refptr.g_open:
	.quad	g_open
