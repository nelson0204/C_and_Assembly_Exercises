#include <stdio.h>
#include "test_even.h"
#include "vec_sum_even.h"

int main(void)
{
    int vec[] = {-1,-1,-1};
    int num = sizeof(vec)/sizeof(vec[0]);

    printf("Sum even = %d", vec_sum_even(vec, num));
    return 0;
}
