#include <stdio.h>
#include "asm.h"

int n = 2;

int main(void)
{
    int result = sigma();

    printf("Result = %d", result);

    return 0;
}
