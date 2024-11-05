#include <stdio.h>
#include "asm.h"

short op1 = 0, op2 = 0;

int main(void)
{
    char result = verify_flags();

    printf("Result = %c", result);

    return 0;
}
