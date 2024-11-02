
#include <stdio.h>
#include "sort_without_reps.h"

int main(void)
{
    short array[] = {10,9,5,4,8,6,7,3,1,2};
    int n = sizeof(array)/sizeof(array[0]);
    short array2[n];
    short *vec = array;
    short *vec2 = array2;

    printf("%d\n",sort_without_reps(vec,n,vec2));

    for (int i = 0; i < 10; i++)
    {
        printf("%d\n",vec2[i]);
    }

    return 0;
}