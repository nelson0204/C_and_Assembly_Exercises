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

    movl $0, %eax       # Limpa retorno função

    cmpl %esi, %edi     # Compara se [vi < vi+1]
    jl second           # Se [vi] menor ou igual a [vi+1] jump end

    jmp end             # Jump para o end e nao incrementa valor em %eax

second:
    cmpl %edx, %esi     # Compara se [vi+1 > vi+2]
    jg increment        # Compara se [vi+1] menor ou igual a [vi+2] jump end

    jmp end             # Jump para o end e nao incrementa valor em %eax

increment:
    incl %eax

end:
    #-- EPILOGUE --
        movq %rbp, %rsp
        popq %rbp
    #-- /EPILOGUE --

    ret
