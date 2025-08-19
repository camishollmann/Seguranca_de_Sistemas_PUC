.section .data
	A: .quad 0
	B: .quad 0
	
.section .text
.globl _start

soma:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
    movq A, %rax
    movq %rax, -8(%rbp)
    movq

_start:
	movq $4, A
	movq $5, B
	call soma