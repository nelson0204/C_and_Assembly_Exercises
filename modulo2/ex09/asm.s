.section .data
    .global A #is a 32-bit
    .global B #is a 8-bit
    .global C #is a 16-bit
    .global D #is a 16-bit

.section .text
    .global sum_and_subtract #Declaration of function as global

sum_and_subtract:
    movslq A(%rip), %rcx
    movswq C(%rip), %rax
    subq %rcx, %rax

    movsbq B(%rip), %rdx
    movswq D(%rip), %r8
    subq %rdx, %r8

    addq %r8, %rax

    ret