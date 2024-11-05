 Create a Makefile for compiling the following files: asm.h, asm.s, and main.c. The compilation
process must keep debug information. Then, run the program in debug mode (with GDB).
/***********************asm.h***********************/
#ifndef ASM_H
#define ASM_H
void sum(void);
#endif
/***********************asm.s***********************/
.section .data
.global op1
.global op2
.global res
.section .text
.global sum # void sum(void)
sum:
movl op1(%rip), %ecx #place op1 in ecx
movl op2(%rip), %eax #place op2 in eax
addl %ecx, %eax #add ecx to eax. Result is in eax
movl %eax, res(%rip) # copy the result to res
ret
1
/***********************main.c***********************/
#include <stdio.h>
#include "asm.h"
int op1=0, op2=0,res=0;
int main(void) {
printf("Valor op1:");
scanf("%d",&op1);
printf("Valor op2:");
scanf("%d",&op2);
sum();
printf("sum = %d:0x%x\n", res,res);
return 0;
}