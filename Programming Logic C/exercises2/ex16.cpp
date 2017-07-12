#include <stdio.h>

int main (void) {
	int num, par = 0, impar = 0;
	printf("Digite um numero: ");
	scanf("%d", &num);
	while (num != 0) {
		if (num % 2 == 0) {
			par++;
		} else {
			impar++;
		}
		printf("A quantidade de numeros pares foram %d\n", par);
		printf("A quantidade de numeros impares foram %d\n", impar);
		printf("Digite um numero: ");
		scanf("%d", &num);
	} 
	return 0;
}
