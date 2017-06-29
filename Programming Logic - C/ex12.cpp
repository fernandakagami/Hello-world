#include <stdio.h>

int main(void){
	int n, fatorial=1;
	printf("Digite um numero: ");
	scanf("%d", &n);
	int num = n;
	while (n >= 1){
		fatorial *= n--;	
	}
	printf("O fatorial de %d eh %d.", num, fatorial);
	return(0);
}
