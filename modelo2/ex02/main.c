#include <stdio.h>
#include "count_max.h"
#include "max.h"

int main()
{
    int vec[] = {-1,0,-1};
   int size = sizeof(vec)/sizeof(vec[0]);

   int r = count_max(vec, size);

   printf("%d\n", r);

   return 0;
}