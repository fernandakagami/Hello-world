#include <stdio.h>

int main (void){
	int num;
	printf("Insira um numero: ");
	scanf("%d", &num);
	while (num != 0){
		printf("Insira um numero: ");
		scanf("%d", &num);
	}
	return (0);	
} 
