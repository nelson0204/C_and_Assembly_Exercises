
#include <stdio.h>
#include "array_sort.h"

int main(void)
{
    int array[] = {10,9,5,4,8,6,7,3,1,2};
    int *vec = array;
    int n = 10;

    array_sort(vec,n);

    for (int i = 0; i < 10; i++)
    {
        printf("%d\n",vec[i]);
    }

    return 0;
}