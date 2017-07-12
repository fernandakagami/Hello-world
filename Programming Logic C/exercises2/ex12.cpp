#include <stdio.h>

int main (void) {
	int n, i;
	char frase[30];
	printf("Digite uma frase: ");
	gets(frase);
	printf("Digite o numero de vez que deseja imprimi-la: ");
	scanf("%d", &n);
	for (i = 1; i <= n; i++) {
		printf("%s\n", frase);
	}
	return 0;
}
