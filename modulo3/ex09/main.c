#include <stdio.h>
#include "vec_search.h"

int main(void)
{
    int vec[] = {1};
    int num = sizeof(vec)/sizeof(vec[0]);
    int search = 1;

    printf("Result = %p", vec_search(vec, num, search));
    return 0;
}
