.section .data
    .global op1         # Declara op1 como global
    .global op2         # Declara op2 como global
    .global op3         # Declara op3 como global
    .global op4         # Declara op4 como global

op3:
    .quad 0             # Inicializa op3 como 0
op4:
    .quad 0             # Inicializa op4 como 0
op1:
    .quad 0             # Inicializa op1 como 0 (deve ser um .quad para ser compatível com long)
op2:
    .quad 0             # Inicializa op2 como 0 (deve ser um .quad para ser compatível com long)

.section .text
    .global yet_another_sum # Declara a função yet_another_sum como global

yet_another_sum:
    movq op4(%rip), %rdi      # Carrega op4 em rdi
    movq op3(%rip), %rsi      # Carrega op3 em rsi
    movslq op2(%rip), %rdx    # Carrega op2 (como long) em rdx
    movslq op1(%rip), %rcx    # Carrega op1 (como long) em rcx

    movq %rdi, %rax            # rax = op4
    addq %rsi, %rax            # rax += op3
    subq %rdx, %rax            # rax -= op2
    subq %rdx, %rax            # rax -= op2 (duplicado, talvez um erro lógico)
    addq %rcx, %rax            # rax += op1
    subq %rdi, %rax            # rax -= op4

    ret                         # Retorna
