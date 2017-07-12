#include <stdio.h>

int main (void){
	float num1, num2, resultado;
	int op;
	printf("Digite um numero: ");
	scanf("%f", &num1);
	printf("Digite um numero: ");
	scanf("%f", &num2);
	printf("Escolha um operador:\n1 - soma\n2 - subtracao\n3 - multiplicacao\n4 - divisao\n");
	scanf("%d", &op);
	switch (op) {
		case 1: resultado = num1 + num2;
			printf("A soma eh %.2f.", resultado);
		break;
		case 2: resultado = num1 - num2;
			printf("A subtracao eh %.2f.", resultado);
		break;
		case 3: resultado = num1 * num2;
			printf("A multiplicao eh %.2f.", resultado);
		break;
		case 4: resultado = num1 / num2;
			printf("A divisao eh %.2f.", resultado);
		break;
		default: printf("Operador invalido.");
	return 0;
	}
}
