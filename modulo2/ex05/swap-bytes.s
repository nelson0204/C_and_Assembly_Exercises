.section .data
.s1 :
    .short 0
    .global s1

.section .text
    .global swapBytes # short swapBytes(void)

swapBytes:
    movw s1(%rip), %cx
    movb %cl, %ah
    movb %ch, %al
    ret
