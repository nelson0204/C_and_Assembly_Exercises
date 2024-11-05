#include <stdio.h>
#include "asm.h"

int op1 = 0, op2 = 0, op3 = 0;

int main(void)
{

    long long result = sum3ints();

    printf("Result = %lld", result);

    return 0;
}
