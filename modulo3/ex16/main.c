#include <stdio.h>
#include "swap.h"

int main(void)
{
    char vec1[]= {1,0,2};
    char vec2[]= {0,3,4};
    int size = sizeof(vec1)/sizeof(vec1[0]);
    swap(vec1,vec2, size);

    printf("VEC 1:\n");
    for (int i = 0; i < size; i++)
	{
		printf("%d ,", vec1[i]);
	}

    printf("\nVEC 2:\n");
    for (int i = 0; i < size; i++)
	{
		printf("%d ,", vec2[i]);
	}
    return 0;
}
