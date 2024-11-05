#include <stdio.h>
#include "sum.h"
#include "sub.h"

int num1;
int num2;

int main(void)
{
 int type = 0;

	printf("[1] Sum\n[2] Subtraction\n[3] Multiplication\n[4] Division\n[5] Modulus\n[6] Power 2\n[7] Power 3\nSelect an option:");
    scanf("%d", &type);

	printf("Enter value 1: ");
	scanf("%d", &num1);

	printf("Enter value 2: ");
	scanf("%d", &num2);



    switch(type)
    {
        case 1:
            printf("Sum = %d\n", sum());
            break;
        case 2:
            printf("Subtraction = %d\n", sub());
            break;
        case 3:
            printf("Multiplication = %d\n", multiplication());
            break;
        case 4:
            printf("Division = %d\n", division());
            break;
        case 5:
            printf("Modulus = %d\n", modulus());
            break;
        case 6:
            printf("Powers2 = %d\n", powers2());
            break;
        case 7:
            printf("Powers3 = %d\n", powers3());
            break;
        default:
            printf("Erro");
    }

	return 0;
}
