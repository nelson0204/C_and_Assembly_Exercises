.section .data
    .global op1 #is a 16-bit
    .global op2 #is a 16-bit

.section .text
    .global verify_flags #Declaration of function as global

verify_flags:
    movw op1(%rip), %cx
    movw op2(%rip), %dx

    addw %cx, %dx

    jo overflow_detected
    jc overflow_detected

    movb $0, %al
    jmp end

overflow_detected:
    movb $1, %al

carry_detected:
    movb $1, %al

end:
    ret
