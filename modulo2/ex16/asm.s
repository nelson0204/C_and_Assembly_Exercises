.section .data
    .global num  #is a 64-bit

.section .text
    .global steps #Declaration of function as global

steps:
    movl num(%rip), %ecx
    movl %ecx, %eax
    cltd
    movl $3, %r8d

    idivl %r8d

    addl $6,%eax

    imull %r8d

    addl $12, %eax

    subl %ecx, %eax

    subl $4,%eax

ret
