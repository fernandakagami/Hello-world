#include <stdio.h>

int somar (int a, int b) {
	int maior = 0, menor = 0, i, soma = 0;
	maior = a;
	if (maior < b) {
		maior = b;
		menor = a;
	} else {
		maior = a;
		menor = b;
	}
	for (i = menor; i <= maior; i++) {
		soma = soma + i;
	}
	return (soma);
}

int main (void) {
	int n1, n2, resultado;
	printf("Digite um numero: ");
	scanf("%d", &n1);
	printf("Digite um numero: ");
	scanf("%d", &n2);
	resultado = somar(n1, n2);
	printf("A soma eh %d", resultado);
}
