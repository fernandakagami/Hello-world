#include <stdio.h>

int main (void){
	int n1, n2, n3, n4;
	float media;
	int maior, menor;
	printf("Insira um numero: ");
	scanf("%d", &n1);
	printf("Insira um numero: ");
	scanf("%d", &n2);
	printf("Insira um numero: ");
	scanf("%d", &n3);
	printf("Insira um numero: ");
	scanf("%d", &n4);
	media = (float)(n1 + n2 + n3 + n4) / 4;
	printf("A media dos 4 numeros eh: %.2f\n", media);
	maior = n1;
	menor = n1;
	if (n2 > maior) {
		maior = n2;
	} 
	if (n3 > maior) {
		maior = n3;
	} 
	if (n4 > maior) {
		maior = n4;
	}
	printf("O maior numero eh: %d", maior);
	
	if (n2 < menor) {
		menor = n2;
	} 
	if (n3 < menor) {
		menor = n3;
	}
	if (n4 < menor) {
		menor = n4;
	}
	printf("O menor numero eh: %d", menor);
	
	return (0);	
} 
