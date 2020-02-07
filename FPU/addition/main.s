	.file	"main.c"
	.intel_syntax noprefix
	.text
	.p2align 4,,15
	.globl	f
	.type	f, @function
f:
	mulsd	xmm1, QWORD PTR .LC1[rip]
	divsd	xmm0, QWORD PTR .LC0[rip]
	addsd	xmm0, xmm1
	ret
	.size	f, .-f
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"%f\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
	sub	rsp, 8
	lea	rdi, .LC3[rip]
	mov	eax, 1
	movsd	xmm0, QWORD PTR .LC2[rip]
	call	printf@PLT
	xor	eax, eax
	add	rsp, 8
	ret
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	1374389535
	.long	1074339512
	.align 8
.LC1:
	.long	1717986918
	.long	1074816614
	.align 8
.LC2:
	.long	3823341587
	.long	1076667634
	.ident	"GCC: (Debian 8.3.0-6) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
