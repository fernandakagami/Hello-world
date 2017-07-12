#include <stdio.h>
#include <math.h>

int main (void){
	int num;
	printf("Digite um numero: ");
	scanf("%d", &num);
	if (num % 2 == 0) {
		printf("O numero eh par.\n");
		printf("A raiz quadrada de %d eh %.2f.\n", num, sqrt(num));
	} else {
		printf("O numero eh impar.\n");
		printf("O numero %d elevado ao quadrado eh %.2f.\n", num, pow(num,2));
	}
	return 0;
}
