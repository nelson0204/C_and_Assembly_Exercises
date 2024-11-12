#-- REGISTOS --
#--  rdi | rsi | rdx | rcx | r8 | r9 | r10 | r11
#--   *     *     *
#-- (a) index [vi]
#-- (b) index [vi+1]
#-- (c) index [vi+2]
.section .text
    .global max #int max(int a, int b, int c)

max:
    #-- PROLOGUE --
        pushq %rbp
        movq %rsp, %rbp
    #-- /PROLOGUE --

    movl $0, %eax       # limpa retorno função

    cmpl %esi, %edi     # compara se [vi < vi+1]
    jl second              # se [vi] menor ou igual a [vi+1] jump end

    jmp end

second:
    cmpl %edx, %esi     # compara se [vi+1 > vi+2]
    jg increment             # compara se [vi+1] menor ou igual a [vi+2] jump end

    jmp end

increment:
    incl %eax

end:
    #-- EPILOGUE --
        movq %rbp, %rsp
        popq %rbp
    #-- /EPILOGUE --

    ret
