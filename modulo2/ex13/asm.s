.section .data
    .global length1 #is a 64-bit
    .global length2 #is a 64-bit
    .global height #is a 64-bit

.section .text
    .global getArea #Declaration of function as global

getArea:
    movswl length1(%rip), %eax
    movswl length2(%rip), %ecx
    movswl height(%rip), %edx

    addl %ecx, %eax              # Sum %ecx to %eax

    imull %edx                   # Multiply %eax by %edx, result in %eax (with sign extension)

    movl $2, %r8d

    idivl %r8d                   # Divide %eax by %r8d (value = 2)

    # Result of operation stored in edx:eax
    ret
