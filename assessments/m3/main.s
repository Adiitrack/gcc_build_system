	.file	"main.c"
	.local	g1
	.comm	g1,4,4
	.globl	g2
	.section	.rodata
	.align 4
	.type	g2, @object
	.size	g2, 4
g2:
	.long	45
	.globl	g3
	.data
	.type	g3, @object
	.size	g3, 1
g3:
	.byte	12
	.globl	g4
	.bss
	.type	g4, @object
	.size	g4, 1
g4:
	.zero	1
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movl	$12, -28(%rbp)
	movl	$45, %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %eax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L2
	movl	$-1, %eax
	jmp	.L3
.L2:
	movl	$0, %ebx
	jmp	.L4
.L5:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	func
	movl	%eax, g1(%rip)
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
.L4:
	movl	$45, %eax
	cmpl	%eax, %ebx
	jl	.L5
	movl	$0, %eax
.L3:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.12) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
