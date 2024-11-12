#-- REGISTOS --
#--  rdi | rsi | rdx | rcx | r8 | r9 | r10 | r11
#--   *     *     *

.section .text
    .global str_cat #void str_cat(char* ptr1, char* ptr2, char* ptr3)

str_cat:
    #-- PROLOGUE --
     pushq %rbp
     movq %rsp, %rbp
    #-- /PROLOGUE  --

loop1:
    cmpb $0, (%rdi)
    je loop2

    movb (%rdi), %al
    movb %al, (%rdx)

    incq %rdi
    incq %rdx
    jmp loop1

loop2:
    cmpb $0, (%rsi)
    je end

    movb (%rsi), %al
    movb %al, (%rdx)

    incq %rsi
    incq %rdx
    jmp loop2
end:
    #-- EPILOGUE --
        movq %rbp, %rsp
        popq %rbp
    #-- /EPILOGUE --
    movb $0, (%rdx)
    ret
