#include <stdio.h>
#include "asm.h"

short length1 = 0;
short length2 = 0;
short height = 0;

int main(void)
{
    int result = getArea();

    printf("Result = %d", result);

    return 0;
}
