.section .text
    .global vec_avg # int vec_avg(int* ptr, short num)

vec_avg:
    movl $0, %eax          # Limpa valor do eax
    cmpw $0, %si           # Compara se o valor de si é zero
    je end                 # Igual a zero jump end

    movl (%rdi), %eax      # Move a parte inteira do rdi para eax
    movw %si, %cx          # Move a parte short do si para o cx
    movswl %cx, %edi       # Move para edi o valor de cx, convertendo short em int


    cltd                    # prepara a divisão

    idivl %edi              # divide edi com o valor em eax

end:
    ret                      # Retorna da função
