
#include <stdio.h>
#include "count_words.h"

int main(void)
{
    char str[] = " the numBERr must be saved";
    int x = count_words(str);
    printf("%d\n", x); // 5

    return 0;
}