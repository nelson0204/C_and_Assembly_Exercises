#include <stdio.h>
#include "str_cat.h"

int main(void)
{
    char vec1[40] = "0000";
    char vec2[40] = "Zero0000";
    char vec3[40] = "";
    char* ptr1 = vec1;
    char* ptr2 = vec2;
    char* ptr3 = vec3;

    str_cat(ptr1, ptr2, ptr3);

    printf("%s12\n", ptr3);
    return 0;
}
