#include <stdio.h>

int main(){
	int idade, peso, altura, pessoa, itotal = 0, n = 0, quantidadePeso;
	float soma = 0;
	
	for(pessoa = 0; pessoa < 4; pessoa++){
		printf("Insira idade, peso, altura: ");
		scanf("%d %d %d", &idade, &peso, &altura);
		if(idade > 50){
			itotal++;
		}
		if(idade > 10 && idade < 20){
			soma += altura;
			n++;
		}
		if(peso < 40){
			quantidadePeso++;
		}
	}
	printf("Quantidade de pessoas com idade superior a 50: %d\n", itotal);
	if(n == 0){
		printf("Média das alturas das pessoas com a idade entre 10 e 20 anos: 0\n");
	} else {
		printf("Média das alturas das pessoas com a idade entre 10 e 20 anos: %f\n", soma / n);
	}
	printf("Porcentagem de pessoas com peso inferior a 40 quilos entre as pessoas analisadas: %f\n", quantidadePeso * 100 / 4.0);
	return 0;	
}
	

	
