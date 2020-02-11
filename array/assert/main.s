	.file	"main.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"main.c"
.LC1:
	.string	"month<12"
.LC2:
	.string	"aa"
	.text
	.globl	get_month1_checked
	.type	get_month1_checked, @function
get_month1_checked:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	cmp	DWORD PTR -4[rbp], 11
	jle	.L2
	lea	rcx, __PRETTY_FUNCTION__.1972[rip]
	mov	edx, 5
	lea	rsi, .LC0[rip]
	lea	rdi, .LC1[rip]
	call	__assert_fail@PLT
.L2:
	lea	rax, .LC2[rip]
	leave
	ret
	.size	get_month1_checked, .-get_month1_checked
	.section	.rodata
	.align 16
	.type	__PRETTY_FUNCTION__.1972, @object
	.size	__PRETTY_FUNCTION__.1972, 19
__PRETTY_FUNCTION__.1972:
	.string	"get_month1_checked"
	.ident	"GCC: (Debian 8.3.0-6) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
