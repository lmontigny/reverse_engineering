	.file	"add.c"
	.intel_syntax noprefix
	.text
	.p2align 4,,15
	.globl	f
	.type	f, @function
f:
	test	edi, edi
	jle	.L2
	lea	r8, 16[rsi]
	lea	r10, 16[rcx]
	cmp	rcx, r8
	lea	eax, -1[rdi]
	setnb	r9b
	cmp	rsi, r10
	setnb	r8b
	or	r9d, r8d
	lea	r8, 16[rdx]
	cmp	rcx, r8
	setnb	r8b
	cmp	rdx, r10
	setnb	r10b
	or	r8d, r10d
	test	r9b, r8b
	je	.L3
	cmp	eax, 2
	jbe	.L3
	mov	r8d, edi
	xor	eax, eax
	shr	r8d, 2
	sal	r8, 4
	.p2align 4,,10
	.p2align 3
.L4:
	movdqu	xmm0, XMMWORD PTR [rsi+rax]
	movdqu	xmm1, XMMWORD PTR [rdx+rax]
	paddd	xmm0, xmm1
	movups	XMMWORD PTR [rcx+rax], xmm0
	add	rax, 16
	cmp	rax, r8
	jne	.L4
	mov	eax, edi
	and	eax, -4
	cmp	edi, eax
	je	.L2
	mov	r8d, eax
	mov	r9d, DWORD PTR [rdx+r8*4]
	add	r9d, DWORD PTR [rsi+r8*4]
	mov	DWORD PTR [rcx+r8*4], r9d
	lea	r8d, 1[rax]
	cmp	edi, r8d
	jle	.L2
	movsx	r8, r8d
	add	eax, 2
	mov	r9d, DWORD PTR [rdx+r8*4]
	add	r9d, DWORD PTR [rsi+r8*4]
	mov	DWORD PTR [rcx+r8*4], r9d
	cmp	edi, eax
	jle	.L2
	cdqe
	mov	edx, DWORD PTR [rdx+rax*4]
	add	edx, DWORD PTR [rsi+rax*4]
	mov	DWORD PTR [rcx+rax*4], edx
.L2:
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
.L3:
	mov	r8d, eax
	xor	eax, eax
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L8:
	mov	rax, rdi
.L6:
	mov	edi, DWORD PTR [rdx+rax*4]
	add	edi, DWORD PTR [rsi+rax*4]
	mov	DWORD PTR [rcx+rax*4], edi
	lea	rdi, 1[rax]
	cmp	rax, r8
	jne	.L8
	xor	eax, eax
	ret
	.size	f, .-f
	.ident	"GCC: (Debian 8.3.0-6) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
