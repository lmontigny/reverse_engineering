	.file	"main.c"
	.intel_syntax noprefix
	.text
	.globl	calculate_machine_epsilon
	.type	calculate_machine_epsilon, @function
calculate_machine_epsilon:
	push	rbp
	mov	rbp, rsp
	movss	DWORD PTR -20[rbp], xmm0
	movss	xmm0, DWORD PTR -20[rbp]
	movss	DWORD PTR -4[rbp], xmm0
	mov	eax, DWORD PTR -4[rbp]
	add	eax, 1
	mov	DWORD PTR -4[rbp], eax
	movss	xmm0, DWORD PTR -4[rbp]
	subss	xmm0, DWORD PTR -20[rbp]
	pop	rbp
	ret
	.size	calculate_machine_epsilon, .-calculate_machine_epsilon
	.section	.rodata
.LC1:
	.string	"%g\n"
	.text
	.globl	main
	.type	main, @function
main:
	push	rbp
	mov	rbp, rsp
	movss	xmm0, DWORD PTR .LC0[rip]
	call	calculate_machine_epsilon
	cvtss2sd	xmm0, xmm0
	lea	rdi, .LC1[rip]
	mov	eax, 1
	call	printf@PLT
	nop
	pop	rbp
	ret
	.size	main, .-main
	.section	.rodata
	.align 4
.LC0:
	.long	1065353216
	.ident	"GCC: (Debian 8.3.0-6) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
