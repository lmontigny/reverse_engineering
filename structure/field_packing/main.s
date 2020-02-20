	.file	"main.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"a=%d; b=%d; c=%d; d=%d\n"
	.text
	.globl	f
	.type	f, @function
f:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	rax, rdi
	mov	rcx, rsi
	mov	rdx, rcx
	mov	QWORD PTR -16[rbp], rax
	mov	QWORD PTR -8[rbp], rdx
	mov	esi, DWORD PTR -4[rbp]
	movzx	eax, BYTE PTR -8[rbp]
	movsx	ecx, al
	mov	edx, DWORD PTR -12[rbp]
	movzx	eax, BYTE PTR -16[rbp]
	movsx	eax, al
	mov	r8d, esi
	mov	esi, eax
	lea	rdi, .LC0[rip]
	mov	eax, 0
	call	printf@PLT
	nop
	leave
	ret
	.size	f, .-f
	.globl	main
	.type	main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	BYTE PTR -16[rbp], 1
	mov	DWORD PTR -12[rbp], 2
	mov	BYTE PTR -8[rbp], 3
	mov	DWORD PTR -4[rbp], 4
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rdx
	mov	rsi, rax
	call	f
	mov	eax, 0
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (Debian 8.3.0-6) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
