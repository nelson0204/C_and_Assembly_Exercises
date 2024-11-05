.section .data
    .global num1  #is a 32-bit
    .global num2  #is a 32-bit

.section .text
    .global sum #Declaration of function as global

sum:
    movl num1(%rip), %eax
    movl num2(%rip), %ecx
    addl  %ecx, %eax

ret
