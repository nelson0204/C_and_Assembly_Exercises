#include <stdio.h>
#include "copy-vec.h"

int main(){
    int arr1[] = {1,2,3,4,5,6,7,8,9,10};
    int arr2[10] = {};
    int *vec1 = arr1;
    int *vec2 = arr2;
    int size = sizeof(arr1)/sizeof(arr1[0]);

    copy_vec(vec1, 5, vec2);

		printf("\n========ARRAY 1=========\n");
	for (int i = 0; i < size; i++)
	{
		printf("%d\n", arr1[i]);
	}
		printf("\n========ARRAY 2=========\n");

	for (int j = 0; j < size; j++)
	{
		printf("%d\n", arr2[j]);
	}

return 0;
}
