#include <stdio.h>
#include "asm.h"
#include "swap-bytes.h"

// int op1 = 0, op2 = 0;
short s1 = 0;
int main(void)
{
    printf("Valor op1:");
    scanf("%d", &op1);
    printf("Valor op2:");
    scanf("%d", &op2);
    printf("Valor op3:");
    scanf("%ld", &op3);
    printf("Valor op4:");
    scanf("%ld", &op4);
    printf("Valor s1:");
    scanf("%hd", &s1);

    int result1 = yet_another_sum();

    short result2 = swapBytes();

    printf("sum = %d:0x%x\n", result1, result1);
    printf("short = %d:0x%x\n", result2, result2);
    return 0;
}
