	.file	"main.c"
	.text
	.p2align 4,,15
	.globl	f
	.type	f, @function
f:
.LFB0:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE0:
	.size	f, .-f
	.p2align 4,,15
	.globl	g
	.type	g, @function
g:
.LFB1:
	.cfi_startproc
	movl	$123, %eax
	ret
	.cfi_endproc
.LFE1:
	.size	g, .-g
	.ident	"GCC: (Debian 8.3.0-6) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
