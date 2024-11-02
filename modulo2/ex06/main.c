#include <stdio.h>
#include "asm.h"
/**
. Create a new program to manipulate short values. Implement, in Assembly, the function short
exchangeBytes(). This function manipulates the bytes of two 16-bit variables, op1 and op2. The
most significant byte of op2 becomes the new least significant byte. Also, the new most significant
byte should be twice the value of the previous least significant byte of op1. The function should
return the new short value. */

//manipular showrt
//exchangeBytes
short op1 = 1, op2 = 1;

int main(void)
{
     short result2 = exchangeBytes();

    printf("short = %d:0x%x\n", result2, result2);
    return 0;
}
