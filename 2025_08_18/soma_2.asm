.section .data
	A: .quad 0
	B: .quad 0

.section .text
.globl _start

soma: 
    pushq %rbp
    movq %rsp, $rbp
    subq $8, %rsp
    movq 16(r%bp), %rax
    movq 24(%rbp), %rbx

_start:
	movq $4, A
	movq $5, B
    pushq A
    pushq B
	
	call soma