.section .text
    .global keep_positives #void keep_positives(int* ptr, int num)

keep_positives:
# -- PROLOGUE --
    pushq %rbp
    movq %rsp, %rbp
# -- /PROLOGUE --
    movl $0, %ecx
loop:
    cmpl %ecx, %esi
    je end

    cmpl $0, (%rdi)
    jl is_negative

    incl %ecx
    addq $4, %rdi

    jmp loop
is_negative:
    movl %ecx, (%rdi)

    incl %ecx
    addq $4, %rdi

    jmp loop

end:
# -- EPILOGUE --
    movq %rbp, %rsp
    popq %rbp
# -- /EPILOGUE --

ret
