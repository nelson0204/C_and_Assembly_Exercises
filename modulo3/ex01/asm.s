.section .text
    .global five_count # int five_count(char* ptr)

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
five_count:
    movl $0, %eax

loop_start:
    cmpb $0, (%rdi)
    je end

    cmpb $'5', (%rdi)
    jne not_count

    incl %eax

not_count:
    incq %rdi
    jmp loop_start



end:
#== epilogue ==#
#movq %rbp, %rsp # colocar em rsp o valor que estava no início desta função
#popq %rbp # restaurar em rbp o valor vindo do invocador



ret
