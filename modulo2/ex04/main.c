#include <stdio.h>
#include "asm.h"
int op1 = 0, op2 = 0;
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
    int s = yet_another_sum();
    printf("sum = %d:0x%x\n", s, s);
    return 0;
}
