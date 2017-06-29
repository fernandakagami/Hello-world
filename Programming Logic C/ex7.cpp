#include <stdio.h>

int main(void){
	int n;
	printf("Digite um número:");
	scanf("%d", &n);
	do{
		printf("%d\n", ++n);
	}while (n <= 10);
	return(0);
}
