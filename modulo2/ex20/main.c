#include <stdio.h>
#include "asm.h"

short num = -1;

int main(void)
{
    char result = check_num();

    printf("Result = %hd", result);

    return 0;
}
