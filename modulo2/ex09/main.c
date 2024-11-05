#include <stdio.h>
#include "asm.h"

int A = 0;
char B = 0;
short C = 0, D = 0;
int main(void)
{

    long result = sum_and_subtract();

    printf("Result = %ld", result);

    return 0;
}
