#include <stdio.h>
#include "asm.h"

char current = 5;
char desired = 55;

int main(void)
{
    short result = needed_time();

    printf("Result = %hd", result);

    return 0;
}
