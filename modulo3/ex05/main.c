#include <stdio.h>
#include "vec_sum.h"
#include "vec_avg.h"

int main(void)
{
    int vec[] = {10,10,10,10,10};
    int *ptr = vec;
    short n = sizeof(vec)/sizeof(vec[0]);

    int sum = vec_sum(ptr, n);
    int *sumptr = &sum;
    int avg = vec_avg(sumptr, n);

    printf("vec_sum = %d\n",sum);
    printf("vec_avg = %d\n",avg);

    return 0;
}
