#include <stdio.h>
#include "sum_third_byte.h"

int main(void)
{
    long vec[]= {-1,-1,-1};
    int size = sizeof(vec)/sizeof(vec[0]);

    printf("sum third bytes = %d", sum_third_byte(vec, size));
    return 0;
}
