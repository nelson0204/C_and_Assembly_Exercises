.section .data
    .global n  #is a 32-bit
    .equ A, 3
    .equ B, 4

.section .text
    .global sigma #Declaration of function as global

sigma:
    movl n(%rip), %r8d # number of loop
    movl $1, %edi      # i = 1
    xorl %eax, %eax    # Clear eax to accumulate the result
    xorl %ecx, %ecx    # Clear ecx to use as the sum

    cmpl $0, %r8d      # Check if n is 0
    je end             # If n is 0, jump to end

my_loop:
    cmpl %r8d, %edi    # Compare i with n
    jg end_loop        # If i > n, jump to end

    # Calculate A^3
    movl $A, %eax      # Move A into rax (A = 3)
    movl $A, %r10d     # Move A into r10d (A = 3)
    imull %r10d        # r10d x eax (A * A = 3 * 3 = 9)
    imull %r10d        # r10d x eax (A * A = 3 * 9 = 27)

    # Calculate A^3/B
    movl $B, %r11d     # Move B into r11d (B = 4)
    idivl %r11d        # r11d / eax (A / B = 6)

    # Calculate i^2
    movl %edi, %r9d    # Move i into r9d ( i = x)
    imull %r9d, %r9d   # i^2 (i * i)

    # Calculate i^2 * A^3/B
    imull %r9d         # r9d * eax (i^2 * A^3/B)


    addl %eax, %ecx    # Add to the total sum

    incl %edi          # Increment i
    jmp my_loop        # Repear the loop

end_loop:
    movl %ecx, %eax    # Move the sum into eax for return

end:
    ret
