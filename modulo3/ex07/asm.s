.section .text
    .global encrypt # int encrypt(char* ptr)

encrypt:
    movl $0 , %eax              # Limpa registo %eax
loop_start:
    cmpb $0, (%rdi)             # Compara se é igual a zer
    je end                      # Se igual a zero jump para end

    cmpb $' ', (%rdi)           # Verifica se é espaço
    je equal_space_letter       # Se igual a espaço jump para equal_space_letter

    cmpb $'a', (%rdi)           # Verifica se é igual a letra 'a'
    je equal_space_letter       # Se igual a letra 'a' jump para equal_space_letter

    addb $1, (%rdi)             # Soma 1 ao valor armazenado no endereço (%rdi)
    addl $1, %eax               # Soma +1 ao valor do registo que esta em %eax
    incq %rdi                   # Incremento para a proxima posição de %rdi

    jmp loop_start

equal_space_letter:
    incq %rdi                   # Incremento para a proxima posição de %rdi
    jmp loop_start
end:
    ret                         # Retorna da função
