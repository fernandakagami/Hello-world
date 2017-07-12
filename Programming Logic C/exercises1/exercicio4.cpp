#include <stdio.h>

int main(){
	int idade, peso, altura, pessoa, itotal = 0, soma = 0, n = 0, quantidadePeso;
	
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
	printf("Média das alturas das pessoas com a idade entre 10 e 20 anos: %d\n", soma / n);
	printf("Porcentagem de pessoas com peso inferior a 40 quilos entre as pessoas analisadas: %d\n", quantidadePeso);
	return 0;	
}
	

	
