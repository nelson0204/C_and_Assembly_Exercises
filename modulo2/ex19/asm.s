.section .data
    .global current  #is a 8-bit
    .global desired  #is a 8-bit
    .equ DECREASE, 240
    .equ INCREASE, 180

.section .text
    .global needed_time #Declaration of function as global

needed_time:
    movsbw current(%rip), %cx  # Move current into cx
    movsbw desired(%rip), %dx  # Move desired into dx

    cmpw %cx, %dx              # Compare current and desired
    jg increase_degree         # If desired > current go to increase_degree
    jl decrease_degree         # If desired < current go to decrease_degree

    movw $0, %ax               # Set ax to zero to retun
    jmp end                    # Jump to end

increase_degree:
    subw %cx, %dx              # Subtraction desired - current
    imulw $INCREASE, %dx       # INCREASE * dx (180 * result subtraction)
    movw %dx, %ax              # Move value multiplication into ax
    jmp end                    # Jump to end

decrease_degree:
    subw %dx, %cx              # Subtraction current - desired
    imulw $DECREASE, %cx       # DECREASE * cx (240 * result subtraction)
    movw %cx, %ax              # Move value multiplication into ax
    jmp end                    # Jump to end

end:
    ret
