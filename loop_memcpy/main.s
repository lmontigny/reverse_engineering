	.file	"main.c"
	.intel_syntax noprefix
	.text
	.section	.text.startup,"ax",@progbits
	.globl	main
	.type	main, @function
main:
	xor	eax, eax
	ret
	.size	main, .-main
	.text
	.globl	my_memcpy
	.type	my_memcpy, @function
my_memcpy:
	xor	eax, eax
.L3:
	cmp	rax, rdx
	je	.L6
	mov	cl, BYTE PTR [rsi+rax]
	mov	BYTE PTR [rdi+rax], cl
	inc	rax
	jmp	.L3
.L6:
	ret
	.size	my_memcpy, .-my_memcpy
	.ident	"GCC: (Debian 8.3.0-6) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
