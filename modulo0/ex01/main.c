#include <stdio.h>

int main(void){

    char charType;
    int intType;
    short shortType;
    unsigned int unsignedType;
    long longType;
    long long longLongType;
    float floatType;
    double doubleType;

    printf("Size of char: %zu bytes\n",sizeof(charType));
    printf("Size of int: %zu bytes\n",sizeof(intType));
    printf("Size of unsigned: %zu bytes\n",sizeof(unsignedType));
    printf("Size of long: %zu bytes\n",sizeof(longType));
    printf("Size of short: %zu bytes\n",sizeof(shortType));
    printf("Size of long long: %zu bytes\n",sizeof(longLongType));
    printf("Size of float: %zu bytes\n",sizeof(floatType));
    printf("Size of double: %zu bytes\n",sizeof(doubleType));

}