.section .data
    .global op1
    .global op2
    .equ CONST, 20
.section .text
    .global another_sum # long another_sum()
another_sum:
    movq $CONST, %rax
    movslq op1(%rip),%rcx
    movslq op2(%rip),%rdx

    subq %rcx,%rax
    addq $CONST, %rax
    subq %rdx,%rax
    addq $CONST,%rax

    ret
