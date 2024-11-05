#include <stdio.h>
#include "asm.h"

long num = 0;

int main(void)
{
    int result = steps();

    printf("Result = %d", result);

    return 0;
}
