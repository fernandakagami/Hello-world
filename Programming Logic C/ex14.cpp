#include <stdio.h>

int num, i, soma;
float media;

int main (void){
	for(i = 0; i < 4; i++){
		printf("Insira um numero: ");
		scanf("%d", &num);
		soma += num;
	}
	media = soma / 4.0;
	printf("A media dos 4 numeros eh: %.2f", media);

	return (0);	
} 
