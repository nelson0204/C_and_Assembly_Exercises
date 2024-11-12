.section .text
    .global decrypt #int decrypt(char* ptr)

decrypt:
    movl $0, %eax
loop_start:
    cmpb $0, (%rdi)
    je end

    cmpb $' ', (%rdi)
    je next_position

    cmpb $'a', (%rdi)
    je next_position

    decq (%rdi)
    incl %eax
incq %rdi

    jmp loop_start

next_position:
    incq %rdi
    jmp loop_start

end:
    ret
