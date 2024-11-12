#-- REGISTOS --
#--  rdi | rsi | rdx | rcx | r8 | r9 | r10 | r11
#--   *     *

.section .text
    .global array_sort #void array_sort(int* ptr, int num)

array_sort:
    # -- PROLOGUE --
    pushq %rbp
    movq %rsp, %rbp
    # -- /PROLOGUE --
    movq $0,%r10            # Idex  (i)
    movq $1,%rcx            # Idex  (j)
    movl %esi,%edx
    movl %esi, %r9d

loop1:
   cmpl $1, %esi
    je end

    movl (%rdi, %r10, 4), %eax
    jmp loop2

loop2:
    cmpl $1,%edx
    je prepare_loop1

    movl (%rdi, %rcx, 4), %r8d

    cmpl %eax,%r8d
    jg change_position

    decl %edx
    incq %rcx

    jmp loop2

change_position:
    movl %r8d, (%rdi, %r10, 4)
    movl %eax, (%rdi, %rcx, 4)

    jmp prepare_loop1


prepare_loop1:
    decl %esi
    incq %r10
    movl %r9d, %edx
    movq $1, %rcx

    jmp loop1

end:
    #-- EPILOGUE --
    movq %rbp, %rsp
    popq %rbp
    #-- /EPILOGUE --

    ret
