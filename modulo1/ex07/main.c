#include <stdio.h>
#include "capitalize2.h"

int main()
{
    char word[] = "Nelson Duarte";
    char *str = word;

    printf("%s - LowerCase\n", str);
    capitalize2(str);
    printf("%s - UpperCase\n", str);
    return 0;
}
