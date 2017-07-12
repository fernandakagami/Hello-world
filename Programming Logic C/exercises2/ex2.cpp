#include<stdio.h>

int main (void){
	char nome[50];
	int idade, anoDeNascimento;
	float altura;
	printf("Digite o seu nome: ");
	scanf("%s", nome);
	printf("Digite a sua idade: ");
	scanf("%d", &idade);
	printf("Digite a sua altura: ");
	scanf("%f", &altura);
	printf("Digite o ano do seu nascimento: ");
	scanf("%d", &anoDeNascimento);
	
	printf("O seu nome eh: %s \n", nome);
	printf("A sua idade eh: %d \n", idade);
	printf("A sua altura eh: %.2f \n", altura);
	printf("O seu ano de nascimento eh: %d \n", anoDeNascimento);
	return 0;
}
