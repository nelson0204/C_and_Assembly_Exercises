.section .data
    .global A #is a 64-bit
    .global B #is a 64-bit

.section .text
    .global isMultiple #Declaration of function as global

isMultiple:
    movq A(%rip), %rax
    cqo                     # Extension of signal to divide
    movq B(%rip), %rcx

    cmpq $0, %rcx           # Compare if divisor is zero
    je isZero               # jump if equal zero

    idivq %rcx              # Divide %rax by %rcx, quotient in %rax, remainder in %rdx
    cmpq $0, %rdx           # Compare remainder %rdx if equal 0 (%rdx == 0)

    je multiple             # jump if equal zero

    movb $0, %al

    jmp end

isZero:
    movb $0, %al
    jmp end

multiple:
    movb $1, %al

end:
    ret
