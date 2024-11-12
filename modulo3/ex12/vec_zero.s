#-- REGISTOS --
#--  rdi | rsi | rdx | rcx | r8 | r9 | r10 | r11
#--   *     *

.section .text
    .global vec_zero #unsigned char vec_zero(int* ptr, int num)

 vec_zero:
    #-- PROLOGUE --
       pushq %rbp
       movq %rsp, %rbp
    #-- /PROLOGUE --

    movb $0, %al
loop:
    cmpl $0, %esi
    je end

    movl $50, %edx
    cmpl %edx, (%rdi)
    jge change_and_count

    addq $4, %rdi
    decq %rsi
    jmp loop

change_and_count:
    movl $0, (%rdi)

    addq $4, %rdi
    decq %rsi
    incb %al

    jmp loop

 end:

    #-- EPILOGUE --
       movq %rbp, %rsp
       popq %rbp
    #-- /EPILOGUE --
    ret
