#-- REGISTOS --
#--  rdi | rsi | rdx | rcx | r8 | r9 | r10 | r11
#--   *     *


.section .text
    .global vec_diff #int vec_diff(int* ptr, int num)

vec_diff:
    #-- PROLOGUE --
    pushq %rbp
    movq %rsp, %rbp
    #-- /PROLOGUE --
    movl $0, %eax
    movq %rdi, %r8
    movq %rsi, %r9

loop:
    cmpl $0, %esi
    je end

    pushq %rdi
    pushq %rsi
    pushq %rax
    pushq %r8
    pushq %r9

    movl (%rdi), %edx
    movq %r8, %rdi
    movq %r9, %rsi

    call exists

    movl %eax, %ecx

    popq %r9
    popq %r8
    popq %rax
    popq %rsi
    popq %rdi

    cmpl $0, %ecx
    je count

    decq %rsi
    addq $4, %rdi

    jmp loop

count:
    incl %eax
    decq %rsi
    addq $4, %rdi

    jmp loop

end:
    #-- EPILOGUE --
    movq %rbp, %rsp
    popq %rbp
    #-- /EPILOGUE --

ret
