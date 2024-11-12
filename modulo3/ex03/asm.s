.section .text
    .global str_copy_roman2 # void str_copy_roman2(char* ptr1, char* ptr2)

#== Calle Saved ==#
# rbx r12 r13 r14 r15  #--Temporarios
#
#
# rbp                  #--Frame pointer
# rsp                  #--Stack pointer

#== Registos ==#
##  rdi rsi rdx rcx r8 r9 r10 r11
##   *
#== prologue ==#
#pushq %rbp # salvaguadar na stack o valor de rbp vindo do invocador
#movq %rsp, %rbp # copiar o stack pointer atual para rbp
str_copy_roman2:

loop_start:
    cmpb $0, (%rdi)
    je lastincrement

    cmpb $'u', (%rdi)
    je equallower
    cmpb $'U', (%rdi)
    je equalupper



    # Caso não seja igual a 'u' copia valor diretamente para (%rsi)
    movb (%rdi), %al
    movb %al, (%rsi)
    incq %rdi
    incq %rsi
    jmp loop_start

    jmp end
equallower:
    movb $'v', (%rsi)
    incq %rdi
    incq %rsi
    jmp loop_start

equalupper:
    movb $'V', (%rsi)
    incq %rdi
    incq %rsi
    jmp loop_start

lastincrement:
    movb (%rdi), %al
    movb %al, (%rsi)


end:
#== epilogue ==#
#movq %rbp, %rsp # colocar em rsp o valor que estava no início desta função
#popq %rbp # restaurar em rbp o valor vindo do invocador



ret
