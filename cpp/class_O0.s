	.file	"class.cpp"
	.intel_syntax noprefix
	.text
	.section	.text._ZN1cC2Ev,"axG",@progbits,_ZN1cC5Ev,comdat
	.align 2
	.weak	_ZN1cC2Ev
	.type	_ZN1cC2Ev, @function
_ZN1cC2Ev:
.LFB1:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR [rax], 667
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR 4[rax], 999
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	_ZN1cC2Ev, .-_ZN1cC2Ev
	.weak	_ZN1cC1Ev
	.set	_ZN1cC1Ev,_ZN1cC2Ev
	.section	.text._ZN1cC2Eii,"axG",@progbits,_ZN1cC5Eii,comdat
	.align 2
	.weak	_ZN1cC2Eii
	.type	_ZN1cC2Eii, @function
_ZN1cC2Eii:
.LFB4:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	DWORD PTR -12[rbp], esi
	mov	DWORD PTR -16[rbp], edx
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR -12[rbp]
	mov	DWORD PTR [rax], edx
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR -16[rbp]
	mov	DWORD PTR 4[rax], edx
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	_ZN1cC2Eii, .-_ZN1cC2Eii
	.weak	_ZN1cC1Eii
	.set	_ZN1cC1Eii,_ZN1cC2Eii
	.section	.rodata
.LC0:
	.string	"%d; %d\n"
	.section	.text._ZN1c4dumpEv,"axG",@progbits,_ZN1c4dumpEv,comdat
	.align 2
	.weak	_ZN1c4dumpEv
	.type	_ZN1c4dumpEv, @function
_ZN1c4dumpEv:
.LFB6:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR 4[rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	eax, DWORD PTR [rax]
	mov	esi, eax
	lea	rdi, .LC0[rip]
	mov	eax, 0
	call	printf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	_ZN1c4dumpEv, .-_ZN1c4dumpEv
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	lea	rax, -8[rbp]
	mov	rdi, rax
	call	_ZN1cC1Ev
	lea	rax, -16[rbp]
	mov	edx, 6
	mov	esi, 5
	mov	rdi, rax
	call	_ZN1cC1Eii
	lea	rax, -8[rbp]
	mov	rdi, rax
	call	_ZN1c4dumpEv
	lea	rax, -16[rbp]
	mov	rdi, rax
	call	_ZN1c4dumpEv
	mov	eax, 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.ident	"GCC: (Debian 8.3.0-6) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
