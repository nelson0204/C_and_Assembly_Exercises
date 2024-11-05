#include <stdio.h>
#include "asm.h"

int A = 2;
int B = 2;
int C = 0;
int D = 2;

int main(void)
{
    int result = compute();

    printf("Result = %d", result);

    return 0;
}
