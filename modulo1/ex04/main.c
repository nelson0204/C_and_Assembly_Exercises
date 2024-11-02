#include <stdio.h>
#include "capitalize.h"

int main(){
char word[] = "Nelson Duarte";
char *str = word;

	printf("%s - LowerCase\n", str);
	capitalize(str);
	printf("%s - UpperCase\n", str );

return 0;
}
