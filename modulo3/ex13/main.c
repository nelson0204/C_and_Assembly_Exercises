#include <stdio.h>
#include "keep_positives.h"

int main(void)
{
    int vec[]= {-1,-1,-1};
    int size = sizeof(vec)/sizeof(vec[0]);

    keep_positives(vec,size);
    for (int i = 0; i < size; i++)
	{
		printf("%d ", vec[i]);
	}

    return 0;
}
