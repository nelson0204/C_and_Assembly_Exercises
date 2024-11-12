#include <stdio.h>
#include "asm.h"

int main(void)
{
    char five[] = "hex";
    char *ptr = five;

    int result = five_count(ptr);

    printf("Result = %d", result);

    return 0;
}
