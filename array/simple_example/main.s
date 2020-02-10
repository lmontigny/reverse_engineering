	.file	"main.c"
	.intel_syntax noprefix
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC5:
	.string	"a[%d]=%d\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
	push	r12
	push	rbp
	lea	rbp, .LC5[rip]
	push	rbx
	xor	ebx, ebx
	sub	rsp, 80
	movdqa	xmm0, XMMWORD PTR .LC0[rip]
	mov	r12, rsp
	movaps	XMMWORD PTR [rsp], xmm0
	movdqa	xmm0, XMMWORD PTR .LC1[rip]
	movaps	XMMWORD PTR 16[rsp], xmm0
	movdqa	xmm0, XMMWORD PTR .LC2[rip]
	movaps	XMMWORD PTR 32[rsp], xmm0
	movdqa	xmm0, XMMWORD PTR .LC3[rip]
	movaps	XMMWORD PTR 48[rsp], xmm0
	movdqa	xmm0, XMMWORD PTR .LC4[rip]
	movaps	XMMWORD PTR 64[rsp], xmm0
	.p2align 4,,10
	.p2align 3
.L2:
	mov	edx, DWORD PTR [r12+rbx*4]
	mov	esi, ebx
	mov	rdi, rbp
	xor	eax, eax
	add	rbx, 1
	call	printf@PLT
	cmp	rbx, 20
	jne	.L2
	add	rsp, 80
	xor	eax, eax
	pop	rbx
	pop	rbp
	pop	r12
	ret
	.size	main, .-main
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.long	0
	.long	2
	.long	4
	.long	6
	.align 16
.LC1:
	.long	8
	.long	10
	.long	12
	.long	14
	.align 16
.LC2:
	.long	16
	.long	18
	.long	20
	.long	22
	.align 16
.LC3:
	.long	24
	.long	26
	.long	28
	.long	30
	.align 16
.LC4:
	.long	32
	.long	34
	.long	36
	.long	38
	.ident	"GCC: (Debian 8.3.0-6) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
