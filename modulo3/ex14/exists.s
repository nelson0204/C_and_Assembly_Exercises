#-- REGISTOS --
#--  rdi | rsi | rdx | rcx | r8 | r9 | r10 | r11
#--   *     *     *

.section .text
    .global exists #int exists(int* ptr, int num, int x)

exists:
    # -- PROLOGUE --
        pushq %rbp
        movq %rsp, %rbp
    # -- /PROLOGUE --
    movl $0, %r8d
    movl $0, %eax
loop:
    cmpl $0, %esi
    je end

    cmpl %edx,(%rdi)
    je equal

    decq %rsi
    addq $4, %rdi

    jmp loop

equal:
        cmpl $1, %r8d
        je duplicated

        incl %r8d
        decq %rsi
        addq $4, %rdi

        jmp loop

duplicated:
    movl $1, %eax

end:
    # -- EPILOGUE --
        movq %rbp, %rsp
        popq %rbp
    # -- /EPILOGUE --

    ret
