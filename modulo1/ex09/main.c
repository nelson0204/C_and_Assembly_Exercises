#include <stdio.h>
#include "get_array_statistics.h"

int main()
{
    int arr[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    int *vec = arr;
    int min, max;
    float avg;
    int n = 7;

    get_array_statistics(vec, n, &min, &max, &avg);

    printf("Min: %d\n", min);
    printf("Max: %d\n", max);
    printf("Avg: %2f\n", avg);
    return 0;
}
