#include <stdio.h>
#include "asm.h"

long A = 0;
long B = 0;

int main(void)
{
    char result = isMultiple();

    printf("Result = %c", result);

    return 0;
}
