#include <stdio.h>
#include "sort_without_reps.h"

int main(void)
{
    short vec1[]= {10,0,1};
    int size = sizeof(vec1)/sizeof(vec1[0]);
    short vec2[size];

    printf("Number of items in second vec = %d\n", sort_without_reps(vec1,vec2,size));

    for (int i = 0; i < size; i++)
	{
		printf("%d ,", vec2[i]);
	}
    return 0;
}
