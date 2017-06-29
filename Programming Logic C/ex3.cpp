#include<stdio.h>

int main(void){
	char nome[64];
	int idade;
	printf("Insira seu nome: ");
	scanf("%s", nome);
	printf("Insira sua idade: ");
	scanf("%d", &idade);
	printf("%s tem %d anos de idade.\n", nome, idade);
	return(0);
}

