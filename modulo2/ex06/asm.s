.section .data
    .global op1             # Declara op1 como global
    .global op2             # Declara op2 como global


.section .text
    .global exchangeBytes    # Declara a função exchangeBytes como global

exchangeBytes:
    movw op1(%rip), %cx      # Carrega op1 em CX
    movw op2(%rip), %dx      # Carrega op2 em DX

   movb %dh, %al
   addb %cl, %cl
   movb  %cl, %ah
    ret
