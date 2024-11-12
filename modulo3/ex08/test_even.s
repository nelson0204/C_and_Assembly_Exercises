#-- REGISTOS --
#--  rdi | rsi | rdx | rcx | r8 | r9 | r10 | r11
#--   *

.section .text
    .global test_even # int test_even(int num)

test_even:
    #-- PROLOGUE --
        pushq %rbp
        movq %rsp , %rbp
    #-- /PROLOGUE--

    movq %rdi, %rax
    cqto

    movl $2, %r8d
    idivl %r8d

    cmp $0, %edx
    jne is_odd

    movl $1, %eax
    jmp end

is_odd:
    movl $0, %eax
    jmp end

end:
    #-- EPILOGUE --
        movq %rbp , %rsp
        popq %rbp
    #-- /EPILOGUE --

    ret
