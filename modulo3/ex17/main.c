#include <stdio.h>
#include "array_sort.h"

int main(void)
{
    int vec[]= {1,1,1,1,2};
    int size = sizeof(vec)/sizeof(vec[0]);
    array_sort(vec, size);

    for (int i = 0; i < size; i++)
	{
		printf("%d ,", vec[i]);
	}
    return 0;
}
