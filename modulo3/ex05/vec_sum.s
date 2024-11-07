.section .text
    .global vec_sum # int vec_sum(int* ptr, short num)

vec_sum:
    movl $0, %eax           # limpa o valor de eax para resposta

loop_start:
    cmpw $0, %si             # Verifica se o contador de elementos chegou a zero
    je end                   # Se chegou a zero, sai do loop

    movl (%rdi), %ecx       # Move parte int do rdi para ecx
    addl %ecx, %eax         # soma o valor de ecx com eax
    decq %rsi               # Decrementa o contador
    addq $4, %rdi           # Decrementa o contador
    jmp loop_start          # Continua o loop

end:
    ret                      # Retorna da função
