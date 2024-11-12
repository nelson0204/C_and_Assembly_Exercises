#include <stdio.h>
#include "asm.h"

char current = 0;
char desired = 10;

int main(void)
{
    int result = needed_time();

    printf("Result = %hd", result);

    return 0;
}
