#include <stdio.h>

int main (void) {
	int num1, num2, num3, num4, num5;
	int maior, menor;
	printf("Digite um numero: ");
	scanf("%d", &num1);
	printf("Digite um numero: ");
	scanf("%d", &num2);
	printf("Digite um numero: ");
	scanf("%d", &num3);
	printf("Digite um numero: ");
	scanf("%d", &num4);
	printf("Digite um numero: ");
	scanf("%d", &num5);
	
	maior = num1;
	if (maior < num2) {
		maior = num2;
	} else if (maior < num3) {
		maior = num3;
	} else if (maior < num4) {
		maior = num4;
	} else if (maior < num5) {
		maior = num5;
	}
	printf("O maior numero eh: %d\n", maior);
	
	menor = num1;
	if (menor > num2) {
		menor = num2;
	} else if (menor > num3) {
		menor = num3;
	} else if (menor > num4) {
		menor = num4;
	} else if (menor > num5) {
		menor = num5;
	}
	printf("O menor numero eh: %d\n", menor);
	return 0;
}
