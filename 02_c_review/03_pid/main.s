	.file	"main.c"
	.text
	.globl	f
	.def	f;	.scl	2;	.type	32;	.endef
	.seh_proc	f
f:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movss	%xmm0, 16(%rbp)
	movss	16(%rbp), %xmm0
	mulss	16(%rbp), %xmm0
	movss	16(%rbp), %xmm2
	movss	.LC0(%rip), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movss	.LC1(%rip), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm0
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC4:
	.ascii "sum is %.1f (t=%.1f ~ %.1f)\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	call	__main
	pxor	%xmm0, %xmm0
	movss	%xmm0, -12(%rbp)
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -16(%rbp)
	movss	-16(%rbp), %xmm0
	subss	-12(%rbp), %xmm0
	movss	.LC3(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	movss	-12(%rbp), %xmm0
	movss	%xmm0, -8(%rbp)
	jmp	.L4
.L5:
	movl	-8(%rbp), %eax
	movd	%eax, %xmm0
	call	f
	movd	%xmm0, %eax
	movl	%eax, -24(%rbp)
	movss	-24(%rbp), %xmm0
	mulss	-20(%rbp), %xmm0
	movss	-4(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	movss	-8(%rbp), %xmm0
	addss	-20(%rbp), %xmm0
	movss	%xmm0, -8(%rbp)
.L4:
	movss	-16(%rbp), %xmm0
	comiss	-8(%rbp), %xmm0
	ja	.L5
	cvtss2sd	-16(%rbp), %xmm2
	cvtss2sd	-12(%rbp), %xmm1
	cvtss2sd	-4(%rbp), %xmm0
	movq	%xmm2, %rax
	movq	%rax, %rdx
	movq	%rdx, %r8
	movq	%rax, %xmm2
	movq	%xmm1, %rax
	movq	%rax, %rdx
	movq	%rdx, %rcx
	movq	%rax, %xmm1
	movq	%xmm0, %rax
	movq	%rax, %rdx
	movq	%r8, %xmm3
	movq	%xmm2, %r9
	movq	%rcx, %xmm2
	movq	%xmm1, %r8
	movq	%rdx, %xmm1
	movq	%rax, %rdx
	leaq	.LC4(%rip), %rcx
	call	printf
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 4
.LC0:
	.long	1112014848
	.align 4
.LC1:
	.long	1082130432
	.align 4
.LC3:
	.long	1120403456
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	printf;	.scl	2;	.type	32;	.endef
