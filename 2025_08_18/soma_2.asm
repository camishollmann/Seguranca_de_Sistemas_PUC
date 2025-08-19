.section .data
	A: .quad 0
	B: .quad 0

.section .text
.globl _start

soma: 
    pushq %rbp
    movq %rsp, $rbp
    subq $8, %rsp ## P alocar espaço p var local
    movq 16(r%bp), %rax
    movq 24(%rbp), %rbx
    aadq %rbx, %rax
    movq %rax, -8(%rbp)
    addq $8, %rsp
    popq %rbp
    ret

_start:
	movq $4, A
	movq $5, B
    pushq A
    pushq B
	call soma
    addq $16, %rsp
    movq %rax, %rdi
    movq $60, %rax
    syscall