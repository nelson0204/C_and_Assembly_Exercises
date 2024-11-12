#include <stdio.h>
#include "count_max.h"

int main(void)
{
    int vec[]= {1,2,3,4,5};
    int size = sizeof(vec)/sizeof(vec[0]);

    printf("Number of items satisfy condition = %d\n", count_max(vec,size));

    return 0;
}
