#include <stdio.h>
#include "vec_diff.h"
#include "exists.h"

int main(void)
{
    int vec[]= {-1,-2,-1,-3,-4};
    int size = sizeof(vec)/sizeof(vec[0]);

    printf("How much numbers do not have duplicates = %d", vec_diff(vec, size));
    return 0;
}
