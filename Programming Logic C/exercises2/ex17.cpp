#include <stdio.h>

int main (void) {
	int num, quantidade, soma, maior, menor, par, impar;
	float media;
	quantidade = 0;
	soma = 0;
	maior = 0;
	menor != 0;
	par = 0;
	impar = 0;
	printf("Digite um numero: ");
	scanf("%d", &num);
	while (num != 0) {
		quantidade++;
		soma = soma + num;
		media = (float) soma / quantidade;
		if (num > maior) {
			maior = num;
		}
		if (num < menor) {
			menor = num;
		}
		if (num % 2 == 0) {
			par++;
		} else {
			impar++;
		}
		printf("A media eh: %.2f.\n", media);
		printf("A maior numero eh: %d.\n", maior);
		printf("O menor numero eh: %d.\n", menor);
		printf("A quantidade de numeros pares eh: %d.\n", par);
		printf("A quantidade de numeros impares eh: %d.\n", impar);
		printf("Digite um numero: ");
		scanf("%d", &num);
	}
	return 0;
}
