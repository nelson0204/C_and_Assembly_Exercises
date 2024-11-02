#include <stdio.h>

int main(void){
    int x = 5;
    int *ptr_x = &x;
    float y = *ptr_x + 3;
    int vec[] = {10,20,30,40};
    int *ptr_vec = vec;
    int z = *ptr_vec;
    int h = *(ptr_vec + 3);
    int i;
    int a;

    printf("Value of \nx : %d and Valu of y :%1.f\n", x,y);
    printf("Adresses Hexdecimal \nx: %p\ny: %p\nptrx_: %p\n", &x, &y, &ptr_x);
    printf("Value of ptrx: %p\n", ptr_x);
    printf("Value pointed by ptrx: %d\n", *ptr_x);

    printf("Value of z: %d\n", z);
    printf("Value of h: %d\n", h);
    printf("The addresses (in Hexadecimal) of vec and ptr_vec\n");
        printf("Vec : %p\n", &vec);
        printf("Vec : %p\n", &ptr_vec);

    for (i=0; i<4; i++){
        printf("#############\n");
        printf("Vec(%d) : %d\n",i, vec[i]);
        printf("pointed by ptr_vec : %d\n", ptr_vec[i]);
        printf("Vec hx(%d) : %p\n",i, &vec[i]);
        printf("ptr_vec(%d) : %p\n",i, &ptr_vec[i]);
        printf("#############\n");
    }


    int j;
    for(j = 0; j < 4; j++){
    printf("1: %p %d\t", &vec[j],vec[j]);
    }

    printf("\n");
    for(ptr_vec = vec; ptr_vec < vec + 4; ptr_vec++){
    printf("2: %p, %d\t", ptr_vec,*ptr_vec);
    }

    printf("\n");
    for(ptr_vec = vec + 3; ptr_vec >= vec; ptr_vec--){
    printf("3: %p, %d\t", ptr_vec,*ptr_vec);
    }

    printf("\n=====\n");
    ptr_vec = vec;
    printf("4: %p, %d\n", ptr_vec,*ptr_vec);


    a = *ptr_vec++;

    printf("5: %p, %d, %d\n", ptr_vec,*ptr_vec, a);
    ptr_vec = vec; //10

    a = (*ptr_vec)++;
    printf("6: %p, %d, %d\n", ptr_vec,*ptr_vec, a);
    ptr_vec = vec;//11

    a = *++ptr_vec;
    printf("7: %p, %d, %d\n", ptr_vec,*ptr_vec, a);
    ptr_vec = vec; //11 ?

    a = ++*ptr_vec;
    printf("8: %p, %d, %d\n", ptr_vec,*ptr_vec, a);

    // printf("\n");

    // for(ptr_vec = vec; ptr_vec < vec + 4; ptr_vec++){
    //     printf("9: %p,%d\t", ptr_vec,*ptr_vec);
    // }



    // printf("\n");
    // unsigned int d = 0xAABBCCDD;
    // printf("10: %p, %x\t", &d,d);

    // printf("\n");
    // unsigned char* ptr_d = (unsigned char*)&d;
    // unsigned char* p;

    // for(p = ptr_d; p < ptr_d + sizeof(unsigned int); p++){
    //     printf("11: %p, %x\t", p,(unsigned char)*p);
    // }

}