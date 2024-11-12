#-- REGISTOS --
#--  rdi | rsi | rdx | rcx | r8 | r9 | r10 | r11
#--   *     *

.section .text
    .global count_max #int count_max(int* ptr, int num)

count_max:
    #-- PROLOGUE --
        pushq %rbp
        movq %rsp, %rbp
    #-- /PROLOGUE --

    mov $0, %eax                       # Limpa valor de retorno da função
    cmpl $3, %esi                      # Verifica se array possui condições de comparação
    jl end                             # Se o numero de elementos do array for menor do que 3 jump pro end

    movq %rsi, %rcx                    # Move o valor de %rsi para %rcx
    subq $2, %rcx                      # Subtrai 2 para o numero de elementos

    movq $0, %r10                      # Index do array

loop:
    pushq %rdi                         # Guarda valor do registo na stack
    pushq %rsi                         # Guarda valor do registo na stack
    pushq %rcx                         # Guarda valor do registo na stack
    pushq %r10                         # Guarda valor do registo na stack
    pushq %rax                         # Guarda valor do registo na stack

    movl 8(%rdi, %r10, 4), %edx        # Obtem o valor do inteiro no Index + 2
    movl 4(%rdi, %r10, 4), %esi        # Obtem o valor do inteiro no Index + 1
    movl (%rdi, %r10, 4), %edi         # Obtem o valor do inteiro no Index

    call max                           # Chama a função

    movl %eax, %r9d                    # Move o retorno da função para %r9d

    popq %rax                          # Repõe o valor do registo que estava guardado na stack
    popq %r10                          # Repõe o valor do registo que estava guardado na stack
    popq %rcx                          # Repõe o valor do registo que estava guardado na stack
    popq %rsi                          # Repõe o valor do registo que estava guardado na stack
    popq %rdi                          # Repõe o valor do registo que estava guardado na stack

    addl %r9d, %eax                    # Soma resultado no %eax

    incq %rdi                          # Incrementa %rdi para próximo indice
    incq %r10                          # Incrementa 1 em %r10 (i)
    cmpq %rcx, %r10                    # Compara tamanho array
    jl loop                            # Se o numero do (i) for menor do que o de rcx volta para o loop, caso contrário continua código abaixo

end:
    #-- PROLOGUE --
        movq %rbp, %rsp
        popq %rbp
    #-- /PROLOGUE --

    ret
