#include <stdio.h>
#include "asm.h"

int main(void)
{
    char vec1[] = "One u";
    int n = sizeof(vec1)/sizeof(vec1[0]);
    char vec2[n];
    char *vec1Ptr = vec1;
    char *vec2Ptr = vec2;

    str_copy_roman(vec1Ptr,vec2Ptr);

    for (int i = 0; i < n; i++)
	{
		printf("%s ", vec2);
	}
    return 0;
}
