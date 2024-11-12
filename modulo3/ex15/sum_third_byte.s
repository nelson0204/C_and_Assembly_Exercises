.section .text
 .global sum_third_byte #int sum_third_byte(long* ptr, int num)

sum_third_byte:
    #-- PROLOGUE --
        pushq %rbp
        movq %rsp, %rbp
    #-- /PROLOGUE --
    movl $0, %eax
loop:
    cmpl $0, %esi
    je end

    movq %rdi, %rcx
    movsbl 2(%rcx), %edx

    addl %edx, %eax

    decq %rsi
    addq $8, %rdi

    jmp loop

end:
    #-- EPILOGUE --
        movq %rbp, %rsp
        popq %rbp
    #-- /EPILOGUE --

ret
