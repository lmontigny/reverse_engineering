	.file	"main.c"
	.intel_syntax noprefix
	.text
	.globl	comp
	.type	comp, @function
comp:
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jne	.L2
	mov	eax, 0
	jmp	.L3
.L2:
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -16[rbp]
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jge	.L4
	mov	eax, -1
	jmp	.L3
.L4:
	mov	eax, 1
.L3:
	pop	rbp
	ret
	.size	comp, .-comp
	.section	.rodata
.LC0:
	.string	"Number = %d\n"
	.text
	.globl	main
	.type	main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 64
	mov	DWORD PTR -52[rbp], edi
	mov	QWORD PTR -64[rbp], rsi
	mov	DWORD PTR -48[rbp], 1892
	mov	DWORD PTR -44[rbp], 45
	mov	DWORD PTR -40[rbp], 200
	mov	DWORD PTR -36[rbp], -98
	mov	DWORD PTR -32[rbp], 4087
	mov	DWORD PTR -28[rbp], 5
	mov	DWORD PTR -24[rbp], -12345
	mov	DWORD PTR -20[rbp], 1087
	mov	DWORD PTR -16[rbp], 88
	mov	DWORD PTR -12[rbp], -100000
	lea	rax, -48[rbp]
	lea	rcx, comp[rip]
	mov	edx, 4
	mov	esi, 10
	mov	rdi, rax
	call	qsort@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L6
.L7:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	eax, DWORD PTR -48[rbp+rax*4]
	mov	esi, eax
	lea	rdi, .LC0[rip]
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
.L6:
	cmp	DWORD PTR -4[rbp], 8
	jle	.L7
	mov	eax, 0
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (Debian 8.3.0-6) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
