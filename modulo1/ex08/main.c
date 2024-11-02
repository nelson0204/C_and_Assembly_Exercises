#include <stdio.h>
#include "sum_integer_bytes.h"

int main()
{
    unsigned int d = 0xAABBCCDD;
    int r = sum_integer_bytes(&d);

    printf(" r: %d\n", r);

    return 0;
}
