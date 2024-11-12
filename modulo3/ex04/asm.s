.section .text
    .global vec_add_three # void vec_add_three(short* ptr, int num)

vec_add_three:

loop_start:
    cmpl $0, %esi           # Verifica se o contador de elementos chegou a zero
    je end                   # Se chegou a zero, sai do loop

    addw $3, (%rdi)         # Soma 3 ao valor armazenado no endereço (%rdi)
    add $2, %rdi            # Avança o ponteiro para o próximo elemento (2 bytes por short)
    decq %rsi               # Decrementa o contador
    jmp loop_start          # Continua o loop

end:
    ret                      # Retorna da função
