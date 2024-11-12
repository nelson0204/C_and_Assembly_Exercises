#include <stdio.h>
#include "vec_greater12.h"

int main(void)
{
    int vec[]= {1001,10000,0x10000001};
    int size = sizeof(vec)/sizeof(vec[0]);

    printf("Quantity of elements grater than 12 = %d\n", vec_greater12(vec,size));

    return 0;
}
