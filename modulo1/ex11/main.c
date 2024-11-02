#include <stdio.h>
#include "sum_odd.h"

int main(){
    int arr[] = {10,2,3,4,5,6,7,8,9,10};
    int *vec = arr;
    printf("Sum odd elements of vector: %d\n", sum_odd(vec));
return 0;
}
