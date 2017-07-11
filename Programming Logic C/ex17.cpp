#include <stdio.h>

void incremento (int *x, int *y){
	*x = *x + 1;
	*y = *y + 1;
}

int main (void){
	int num1, num2;
	printf("Insira um numero: ");
	scanf("%d", &num1);
	printf("Insira um numero: ");
	scanf("%d", &num2);
	incremento(&num1, &num2);
	printf("%d\n%d\n", num1, num2); 
	return (0);	
} 
