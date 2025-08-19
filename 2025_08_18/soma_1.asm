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
    movq %rbx, -16(%rbp)
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    addq %rbx, %rax
    addq $16, %rsp
    popq %rbp
    ret

_start:
	movq $4, A
	movq $5, B
	call somas
    movq %rax, %rdi
    movq $60, %rax
    syscall

rodar com 
as var.s -o var.o
./var