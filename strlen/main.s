	.file	"main.c"
	.intel_syntax noprefix
	.text
	.p2align 4,,15
	.globl	my_strlen
	.type	my_strlen, @function
my_strlen:
	mov	rax, rdi
	.p2align 4,,10
	.p2align 3
.L2:
	add	rax, 1
	cmp	BYTE PTR -1[rax], 0
	jne	.L2
	sub	rax, rdi
	sub	eax, 1
	ret
	.size	my_strlen, .-my_strlen
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"hello!"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
	lea	rdx, .LC0[rip]
	mov	rax, rdx
	.p2align 4,,10
	.p2align 3
.L6:
	add	rax, 1
	cmp	BYTE PTR -1[rax], 0
	jne	.L6
	sub	rax, rdx
	sub	eax, 1
	ret
	.size	main, .-main
	.ident	"GCC: (Debian 8.3.0-6) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
