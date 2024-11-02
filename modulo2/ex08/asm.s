.section .data
    .global s1             # Declara op1 como global
    .global s2             # Declara op2 como global

s1:
    .short 0           # Inicializa op3 como 0
s2:
    .short 1
.section .text
    .global crossSubBytes    # Declara a função crossSubBytes como global

crossSubBytes:
    movw s1(%rip), %cx      # Carrega op1 em CX
    movw s2(%rip), %dx      # Carrega op2 em DX

    movb %cl, %al
    subb %dh,%al
    movb %ch, %ah
    subb %dl, %ah

    ret
