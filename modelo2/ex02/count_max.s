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

    mov $0, %eax
    cmpl $3, %esi       #verifica se array possui condições de comparação
    jl end

    movq %rsi, %rcx   # move o valor de %rsi para %rcx
    subq $2, %rcx       # subtrai 2 para o numero de elementos

    movq $0, %r10       # index do array

loop:
    pushq %rdi
    pushq %rsi
    pushq %rcx
    pushq %r10
    pushq %rax

    movl 8(%rdi, %r10, 4), %edx
    movl 4(%rdi, %r10, 4), %esi
    movl (%rdi, %r10, 4), %edi

    call max

    movl %eax, %r9d

    popq %rax
    popq %r10
    popq %rcx
    popq %rsi
    popq %rdi

    addl %r9d, %eax            # soma resultado no %eax

    incq %rdi                  # incrementa %rdi para próximo indice
    incq %r10
    cmpq %rcx, %r10            # compara tamanho array
    jl loop

end:
    #-- PROLOGUE --
        movq %rbp, %rsp
        popq %rbp
    #-- /PROLOGUE --

    ret
