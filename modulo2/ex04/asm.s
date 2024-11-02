.section .data
    .global op1
    .global op2

    op3 : # variable declaration
	.quad 0
	.global op3

    op4 :
	.quad 0
	.global op4

.section .text
    .global yet_another_sum # long yet_another_sum(void)
yet_another_sum:
    movq op4(%rip), %rdi
    movq op3(%rip), %rsi
    movslq op2(%rip), %rdx
    movslq op1(%rip), %rcx

    movq %rdi, %rax
    addq %rsi, %rax
    subq %rdx, %rax
    subq %rdx, %rax
    addq %rcx, %rax
    subq %rdi, %rax

    ret
