#include <stdio.h>

int verificador (int x) {
	if (x >= 0) {
		printf("O numero eh positivo.\n");
	} else {
		printf("O numero eh negativo.\n");
	}
	return 0;
}

int main (void) {
	int num;
	printf("Digite um numero: ");
	scanf("%d", &num);
	verificador(num);
	return 0;
}
