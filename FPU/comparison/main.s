	.file	"main.c"
	.intel_syntax noprefix
	.text
	.globl	d_max
	.type	d_max, @function
d_max:
	push	rbp
	mov	rbp, rsp
	movsd	QWORD PTR -8[rbp], xmm0
	movsd	QWORD PTR -16[rbp], xmm1
	movsd	xmm0, QWORD PTR -8[rbp]
	comisd	xmm0, QWORD PTR -16[rbp]
	jbe	.L6
	movsd	xmm0, QWORD PTR -8[rbp]
	jmp	.L4
.L6:
	movsd	xmm0, QWORD PTR -16[rbp]
.L4:
	pop	rbp
	ret
	.size	d_max, .-d_max
	.section	.rodata
.LC2:
	.string	"%f\n"
	.text
	.globl	main
	.type	main, @function
main:
	push	rbp
	mov	rbp, rsp
	movsd	xmm1, QWORD PTR .LC0[rip]
	movsd	xmm0, QWORD PTR .LC1[rip]
	call	d_max
	lea	rdi, .LC2[rip]
	mov	eax, 1
	call	printf@PLT
	movsd	xmm1, QWORD PTR .LC3[rip]
	movsd	xmm0, QWORD PTR .LC4[rip]
	call	d_max
	lea	rdi, .LC2[rip]
	mov	eax, 1
	call	printf@PLT
	mov	eax, 0
	pop	rbp
	ret
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	858993459
	.long	1074475827
	.align 8
.LC1:
	.long	858993459
	.long	1072902963
	.align 8
.LC3:
	.long	0
	.long	-1072693248
	.align 8
.LC4:
	.long	1717986918
	.long	1075209830
	.ident	"GCC: (Debian 8.3.0-6) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
