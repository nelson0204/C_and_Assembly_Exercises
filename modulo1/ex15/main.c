
#include <stdio.h>
#include "trim_string.h"

int main(void)
{
    char str [] = " the numBERr must be saved ";
    trim_string (str);
    printf("%s\n", str); // "the numBERr must be saved"

    return 0;
}