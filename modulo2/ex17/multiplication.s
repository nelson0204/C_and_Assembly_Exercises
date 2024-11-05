.section .data
    .global num1  #is a 32-bit
    .global num2  #is a 32-bit

.section .text
    .global multiplication #Declaration of function as global

sub:
    movl num1(%rip), %eax
    movl num2(%rip), %ecx
    imull  %ecx, %eax

ret
