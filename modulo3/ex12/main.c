#include <stdio.h>
#include "vec_zero.h"

int main(void)
{
    int vec[]= {0xff0000,10000,20000};
    int size = sizeof(vec)/sizeof(vec[0]);

    printf("Quantity of elements grater and equal than 50 = %d\n", vec_zero(vec,size));

    return 0;
}
