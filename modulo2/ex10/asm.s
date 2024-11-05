.section .data
    .global op1 #is a 32-bit
    .global op2 #is a 32-bit
    .global op3 #is a 32-bit

.section .text
    .global sum3ints #Declaration of function as global

sum3ints:
    movslq op1(%rip), %rax
    movslq op2(%rip), %rcx
    movslq op3(%rip), %rdx

    addq %rcx, %rax
    addq %rdx, %rax

    ret
