#include <stdio.h>
#include "where_is.h"

int main()
{
    char word[] = "Nelson Duarte";
    char *str = word;
    char c = 'D';

    printf("%p\n", where_is(str, c));
    return 0;
}
