.section .data
    .global length1 #is a 32-bit
    .global length2 #is a 32-bit
    .global height #is a 32-bit

length1:
    .int 0 # Initialize with value
length2:
    .int 0 # Initialize with value
height:
    .int 0 # Initialize with value

.section .text
    .global getArea #Declaration of function as global

getArea:
    movslq length1(%rip), %rax
    movslq length2(%rip), %rcx
    movslq height(%rip), %rdx

    addq %rcx, %rax              # Sum %rcx to %rax

    imulq %rdx                   # Multiply %rax by %rdx, result in %rax (with sign extension)

    movq $2, %r8

    idivq %r8                   # Divide %rax by %r8 (value = 2)

    # Result of operation stored in rdx:rax
    ret
