#-- REGISTOS --
#--  rdi | rsi | rdx | rcx | r8 | r9 | r10 | r11
#--   *     *     *

.section .text
    .global sort_without_reps #int sort_without_reps(short* ptrsrc, short* ptrdest, int num)


sort_without_reps:
    # -- PROLOGUE --
        pushq %rbp
        movq %rsp, %rbp
    # -- /PROLOGUE --

    movq $0, %r8         # index (i)
    movl $0, %eax        # counter return function
    movl $0, %r10d
loop:
    cmpl $0, %edx
    je end

    movw (%rdi), %cx

    jmp loop2

loop2:
    cmpl $0, %r10d
    je add_element

    movw (%rsi, %r8, 2), %r9w

    cmpw %cx, %r9w
    jg change_position
    je prepare_loop1

    decl %r10d
    incq %r8

    jmp loop2

prepare_loop1:
    decl %edx
    addq $2, %rdi
    movq $0, %r8
    movl %eax, %r10d

    jmp loop

change_position:
    movw %cx, (%rsi, %r8, 2)
    movw %r9w, %cx

    decl %r10d
    incq %r8

    jmp loop2


add_element:
    movslq %eax, %r11

    movw %cx, (%rsi, %r11, 2)

    incl %eax
    movl %eax, %r10d
    movq $0, %r8

    decl %edx
    addq $2, %rdi

    jmp loop

end:
    # -- EPILOGUE --
        movq %rbp, %rsp
        popq %rbp
    # -- /EPILOGUE --
ret
