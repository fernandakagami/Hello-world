#include<stdio.h>

int main(void) {
	int anoNascimento;
	printf("Digite o ano do seu nascimento: ");
	scanf("%d", &anoNascimento);
	if (anoNascimento % 2 == 0){
		printf("Você nasceu num ano PAR. \n");
	}else{
		printf("Você nasceu num ano IMPAR. \n");
	}
	return (0);    
}
