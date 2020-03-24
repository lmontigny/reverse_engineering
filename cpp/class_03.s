	.file	"class.cpp"
	.intel_syntax noprefix
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d; %d\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB19:
	.cfi_startproc
	sub	rsp, 8
	.cfi_def_cfa_offset 16
	mov	edx, 999
	mov	esi, 667
	xor	eax, eax
	lea	rdi, .LC0[rip]
	call	printf@PLT
	mov	edx, 6
	mov	esi, 5
	xor	eax, eax
	lea	rdi, .LC0[rip]
	call	printf@PLT
	xor	eax, eax
	add	rsp, 8
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE19:
	.size	main, .-main
	.ident	"GCC: (Debian 8.3.0-6) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
