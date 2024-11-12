#include <stdio.h>
#include "asm.h"

int main(void)
{
    char vec[] = " abba ";
    char *ptr = vec;

    int count  = encrypt(ptr);

printf("result = %d", count);
    return 0;
}
