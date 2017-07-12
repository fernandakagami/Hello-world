#include <stdio.h>

int main (void) {
	int num;
	printf("Digite um numero: ");
	scanf("%d", &num);
	if((num % 3 == 0) && (num % 7 == 0)) {
		printf("O numero eh divisivel por 3 e 7.");
	} else {
		printf("O numero nao eh divisivel por 3 e 7.");
	}
	return 0;
}
