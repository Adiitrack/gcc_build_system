	.file	"misc.c"
	.globl	g5
	.data
	.align 32
	.type	g5, @object
	.size	g5, 40
g5:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	9
	.section	.rodata
.LC0:
	.string	"Hello World!\n"
	.text
	.globl	func
	.type	func, @function
func:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$0, -12(%rbp)
	movq	$.LC0, -8(%rbp)
	movl	f2.1836(%rip), %eax
	addl	$1, %eax
	movl	%eax, f2.1836(%rip)
	movl	f2.1836(%rip), %eax
	cltq
	salq	$2, %rax
	leaq	g5(%rax), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, (%rdx)
	movl	$0, -12(%rbp)
	jmp	.L2
.L3:
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movl	-12(%rbp), %eax
	movl	%edx, g5(,%rax,4)
	movl	f2.1836(%rip), %eax
	addl	$1, %eax
	movl	%eax, f2.1836(%rip)
	addl	$1, -12(%rbp)
.L2:
	cmpl	$5, -12(%rbp)
	jbe	.L3
	movl	f2.1836(%rip), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func, .-func
	.local	f2.1836
	.comm	f2.1836,4,4
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.12) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
