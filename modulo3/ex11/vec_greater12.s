#-- REGISTOS --
#--  rdi | rsi | rdx | rcx | r8 | r9 | r10 | r11
#--   *     *

.section .text
    .global vec_greater12 #int vec_greater12(int* ptr, int num)

vec_greater12:
    #-- PROLOGUE --
        pushq %rbp
        movq %rsp, %rbp
    #-- /PROLOGUE --

    movl $0, %eax
loop:
    cmpl $0, %esi
    je end

    movl $12, %edx
    cmpl %edx, (%rdi)
    jg count

    decq %rsi
    addq $4, %rdi
    jmp loop

count:
    incl %eax
    decq %rsi
    addq $4, %rdi

    jmp loop

end:
    #-- EPILOGUE --
        movq %rbp, %rsp
        popq %rbp
    #-- /EPILOGUE --

    ret
