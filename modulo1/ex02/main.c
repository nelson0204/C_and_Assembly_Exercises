#include <stdio.h>

int main(void){
    double doubleVariable = 2.39;
    int intVariable = 10;
    char charVariable = 100;

    double *ptr_float =  &doubleVariable;
    int *ptr_int =  &intVariable;
    char *ptr_char =  &charVariable;

printf("\n***********************************\n\n");
     printf("Size of doubleVariable: %zu bytes\n", sizeof(doubleVariable));
     printf("Value of doubleVariable: %3.f \n", doubleVariable);
     printf("Address of doubleVariable: %p bytes\n", &doubleVariable);
     printf("-------------------------------------\n");
     printf("Size of ptr_float: %zu bytes\n", sizeof(*ptr_float));
     printf("Value of ptr_float: %3.f \n", *ptr_float);
     printf("Address of ptr_float: %p bytes\n", &ptr_float);

     printf("\n***********************************\n\n");
     printf("Size of intVariable: %zu bytes\n", sizeof(intVariable));
     printf("Value of intVariable: %d \n", intVariable);
     printf("Address of intVariable: %p bytes\n", &intVariable);
     printf("-------------------------------------\n");
     printf("Size of ptr_int: %zu bytes\n", sizeof(*ptr_int));
     printf("Value of ptr_int: %d \n", *ptr_int);
     printf("Address of ptr_int: %p bytes\n", &ptr_int);

     printf("\n***********************************\n\n");
     printf("Size of charVariable: %zu bytes\n", sizeof(charVariable));
     printf("Value of charVariable: %d \n", charVariable);
     printf("Address of charVariable: %p bytes\n", &charVariable);
     printf("-------------------------------------\n");
      printf("Size of ptr_char: %zu bytes\n", sizeof(*ptr_char));
     printf("Value of ptr_char: %d \n", *ptr_char);
     printf("Address of ptr_char: %p bytes\n", &ptr_char);



}