.section .data
    .global A  #is a 32-bit
    .global B  #is a 32-bit
    .global C  #is a 32-bit
    .global D  #is a 32-bit

.section .text
    .global compute #Declaration of function as global

compute:
    movl A(%rip), %r9d
    movl B(%rip), %ecx
    movl C(%rip), %edx
    movl D(%rip), %r10d

    movl %r9d, %eax
    imull %edx              # Multiply C * A

    movl %eax, %r8d         # Save %eax in %r8d

    movl %r9d, %eax
    imull %ecx              # Multiply B * A

    subl %r8d, %eax
    cdq

    cmpl $0, %r10d

    je indivisible
    idivl %r10d
    jmp end

indivisible:
    movl $0, %eax

end:
    ret
