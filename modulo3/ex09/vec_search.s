#-- REGISTOS --
#--  rdi | rsi | rdx | rcx | r8 | r9 | r10 | r11
#--   *     *     *

.section .text
    .global vec_search #int* vec_search(int* ptr, int num, int x)

vec_search:
   #-- PROLOGUE --
        pushq %rbp
        movq %rsp , %rbp
    #-- /PROLOGUE--

    movl $0, %eax
    movl $0, %ecx

loop:
    cmpl %ecx, %esi
    je end

    cmpl (%rdi), %edx
    je equals

    incl %ecx
    addq $4, %rdi

    jmp loop
equals:
    movq %rdi, %rax

end:
    #-- EPILOGUE --
    movq %rbp , %rsp
    popq %rbp
    #-- /EPILOGUE --
    ret
