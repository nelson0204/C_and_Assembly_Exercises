#-- REGISTOS --
#--  rdi | rsi | rdx | rcx | r8 | r9 | r10 | r11
#--   *     *     *

.section .text
    .global max # int max(int a, int b, int c)

max:
    #-- PROLOGUE --
        pushq %rbp
        movq %rsp, %rbp
    #-- /PROLOGUE --

    movl $0, %eax

    cmpl %esi, %edi
    jg next
    jmp end

next:
    cmpl %edx, %edi
    jg increment
    jmp end

increment:
    incl %eax


end:
    #-- EPILOGUE --
        movq %rbp, %rsp
        popq %rbp
    #-- /EPILOGUE --

    ret
