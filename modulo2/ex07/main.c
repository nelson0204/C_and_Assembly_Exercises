#include <stdio.h>
#include "asm.h"
short s1 = 0, s2 = 1;

int main(void)
{

short result2 = crossSubBytes();

    printf("short = %d:0x%x\n", result2, result2);
    return 0;
}
