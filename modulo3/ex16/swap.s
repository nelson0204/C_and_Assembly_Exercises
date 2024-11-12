.section .text
    .global swap

swap:
    pushq %rbp
    movq %rsp, %rbp

loop:
    cmpl $0, %edx
    je end

    movb (%rdi), %cl
    movb (%rsi), %r8b
    movb %cl, (%rsi)
    movb %r8b, (%rdi)

    decq %rdx
    incq %rdi
    incq %rsi

    jmp loop

end:
    movq %rbp, %rsp
    popq %rbp
ret
