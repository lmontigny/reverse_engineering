	.file	"main.c"
	.intel_syntax noprefix
	.text
	.p2align 4,,15
	.globl	f
	.type	f, @function
f:
.LFB11:
	.cfi_startproc
	imul	edi, esi
	lea	eax, [rdi+rdx]
	ret
	.cfi_endproc
.LFE11:
	.size	f, .-f
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB12:
	.cfi_startproc
	sub	rsp, 8
	.cfi_def_cfa_offset 16
	mov	esi, 5
	lea	rdi, .LC0[rip]
	xor	eax, eax
	call	printf@PLT
	xor	eax, eax
	add	rsp, 8
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE12:
	.size	main, .-main
	.ident	"GCC: (Debian 8.3.0-6) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
