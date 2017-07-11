#include <stdio.h>

int main (void){
	int numero[4], i;
	float media;
	int maior = -1, menor = 10000;
	for(i = 0; i < 4; i++){
		printf("Insira um numero: ");
		scanf("%d", &numero[i]);
		media += numero[i];
		if (numero[i] > maior){
			maior = numero[i];
		}
		if (numero[i] < menor){
			menor = numero[i];
		}
	}
	printf("A media dos 4 numeros eh: %.2f\n", media/4.0);
	printf("O maior numero eh: %d\n", maior);
	printf("O menor numero eh: %d\n", menor);
	
	return (0);	
} 
