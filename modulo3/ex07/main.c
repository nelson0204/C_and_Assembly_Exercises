#include <stdio.h>
#include "asm.h"
#include "decrypt.h"

int main(void)
{
    char vec[] = " abba ";

    encrypt(vec);
     printf("Encrypt  = %s\n", vec);

    int sum = decrypt(vec);
     printf("Decrypt = %s\n", vec);
     printf("Nº modifications = %d\n", sum);
    return 0;
}
