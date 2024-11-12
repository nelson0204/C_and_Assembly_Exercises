#include <stdio.h>
#include "asm.h"

int main(void)
{
    short vec[] = {1,0,-1};
    short *ptr = vec;
    int n = sizeof(vec)/sizeof(vec[0]);

    vec_add_three(ptr,n);

    for (int i = 0; i < n; i++)
	{
		printf("%d ", vec[i]);
	}
    return 0;
}
