.section .data
    .global num  #is a 16-bit

.section .text
    .global check_num #Declaration of function as global

check_num:
    movl $2, %r8d
    movswl num(%rip), %eax
    cdq

    idivl %r8d
    cmpl $0, %edx
    je even
    jne odd


even:
    movb $1, %al
    cmpl $0, %edx
    jge positive
    jmp end

odd:
    movb $2, %al
    cmpl $0,%edx
    jg positive
jmp end

positive:
    addb $2, %al

end:
    ret
