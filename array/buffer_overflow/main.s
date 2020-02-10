	.file	"main.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	edx, DWORD PTR -4[rbp]
	mov	DWORD PTR -96[rbp+rax*4], edx
	add	DWORD PTR -4[rbp], 1
.L2:
	cmp	DWORD PTR -4[rbp], 29
	jle	.L3
	mov	eax, 0
	pop	rbp
	ret
	.size	main, .-main
	.ident	"GCC: (Debian 8.3.0-6) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
