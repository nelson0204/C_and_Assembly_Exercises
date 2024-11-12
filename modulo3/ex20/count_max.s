.section .text
    .global count_max # int count_max(int* ptr, int num)

count_max:
    #-- PROLOGUE --
    pushq %rbp
    movq %rsp, %rbp
    #-- /PROLOGUE --

    movl $0, %eax       # Inicializa %eax (contador) com 0
    cmpl $3, %esi       # Se num < 3, não podemos fazer as comparações
    jl end              # Retorna rapidamente se num < 3

    movq $0, %rdx       # Inicializa %rdx (índice) com 0
    movq %rsi, %rcx     # %rcx = num (número total de elementos)
    subq $2, %rcx       # Para que o loop termine em num-2, pois vamos comparar i, i+1, i+2
loop:
                                        # Carrega os valores v[i], v[i+1] e v[i+2]
    movl (%rdi, %rdx, 4), %r8d          # Carrega v[i] em %r8d
    movl 4(%rdi, %rdx, 4), %r9d         # Carrega v[i+1] em %r9d
    movl 8(%rdi, %rdx, 4), %r10d        # Carrega v[i+2] em %r10d

    # Verifica se v[i] < v[i+1]
    cmpl %r9d,%r8d                      # v[i] < v[i+1]
    jl second                           # Se v[i] >= v[i+1], pula para o próximo índice

    jmp next

second:
                                        # Verifica se v[i+1] > v[i+2]
    cmpl %r9d,%r10d                     # v[i+1] > v[i+2]
    jl include                          # Se v[i+1] <= v[i+2], pula para o próximo índice

    jmp next

include:
                                        # Se ambas as condições são verdadeiras (v[i] < v[i+1] > v[i+2])
    incl %eax                           # Incrementa o contador (%eax)

    jmp next

next:
    incq %rdx                           # Avança para o próximo índice
    cmpq %rcx, %rdx                     # Verifica se o índice atingiu num-2
    jl loop                             # Se não, continua o loop

end:
    #-- EPILOGUE --
    movq %rbp, %rsp
    popq %rbp
    #-- /EPILOGUE --

    ret
