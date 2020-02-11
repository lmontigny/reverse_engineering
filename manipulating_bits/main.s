	.file	"main.c"
	.intel_syntax noprefix
	.text
	.globl	f
	.type	f, @function
f:
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -4[rbp], eax
	or	DWORD PTR -4[rbp], 16384
	and	DWORD PTR -4[rbp], -513
	mov	eax, DWORD PTR -4[rbp]
	pop	rbp
	ret
	.size	f, .-f
	.globl	main
	.type	main, @function
main:
	push	rbp
	mov	rbp, rsp
	mov	edi, 305399416
	call	f
	mov	eax, 0
	pop	rbp
	ret
	.size	main, .-main
	.ident	"GCC: (Debian 8.3.0-6) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
