#include <stdio.h>
#include "sum_even.h"

int main(){
    int arr[] = {1,2,3,4,5,6,7,8,9,10};
    int *vec = arr;
    int n = 1;
    printf("Sum of %d elements of vector: %d\n", n, sum_even(vec, n));
return 0;
}
