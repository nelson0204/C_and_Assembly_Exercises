#include <stdio.h>
#include "asm.h"

int main(void)
{

short result2 = crossSubBytes();

    printf("short = %d:0x%x\n", result2, result2);
    return 0;
}
