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

    movl $0, %eax       # limpa registo de retorno

    cmpl %esi, %edi     # compara se [a > b]
    jg next             # se [a] for maior do que b vai para a proxima comparação

    jmp end             # se [a] form menor vai diretamente para o final sem alterar o retorno que é 0

next:
    cmpl %edx, %edi    # compara se [a > c]
    jg increment       # se [a] for maior do que c vai para a proxima intrução e incrementa o valor de retorno para 1

    jmp end            # se [a] form menor vai diretamente para o final sem alterar o retorno que é 0

increment:
    incl %eax          # Incrementa 1 em %eax que é o retorno da função


end:
    #-- EPILOGUE --
        movq %rbp, %rsp
        popq %rbp
    #-- /EPILOGUE --

    ret
