#-- REGISTOS --
#--  rdi | rsi | rdx | rcx | r8 | r9 | r10 | r11
#--   *     *

.section .text
    .global vec_sum_even # int vec_sum_even(int* ptr, int num)

vec_sum_even:
    #-- PROLOGUE --
        pushq %rbp
        movq %rsp , %rbp
    #-- /PROLOGUE--

    movl $0, %ecx           # Limpa registo %ecx

loop:
    cmpl $0, %esi         # Verifica se é zero
    je end                  # Se for igual a zero jump end

    pushq %rdi              # Guardar argumento 1 na stack
    pushq %rsi              # Guardar argumento 2 na stack
    pushq %rcx              # Guardar valor de rcx na stack


    call test_even          # retorna valor em %eax (1 ou 0)

    popq %rcx               # Substitui valor do registo com o valor da pilha
    popq %rsi               # Substitui valor do registo com o valor da pilha
    popq %rdi               # Substitui valor do registo com o valor da pilha

    cmpl $1, %eax           # Verifica se é 1 (1 = valor par)
    je is_even              # Jump para is_even

    addq $4, %rdi           # Incrementa o ponteiro em 4 bytes para o próximo int
    decq %rsi               # Incrementa o ponteiro para o loop
    jmp loop                # Retorna para o topo loop

is_even:
    addl (%rdi), %ecx       # Somatório de valores pares no registo %ecx

    addq $4, %rdi           # Incrementa o ponteiro em 4 bytes para o próximo int
    decq %rsi               # Incrementa o ponteiro para o loop
    jmp loop                # Retornar para o topo loop

end:

    #-- EPILOGUE --
    movq %rbp , %rsp
    popq %rbp
    #-- /EPILOGUE --
    movl %ecx, %eax         # Move somatório para o registo %eax
    ret
