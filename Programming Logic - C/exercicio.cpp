#include <stdio.h>

int main(){
	int pessoa, idade, quantidade = 0, quantidade1 = 0, quantidade2 = 0, quantidade3 = 0, quantidade4 = 0, quantidade5 = 0;
	for(pessoa = 0; pessoa < 15; pessoa++){
		printf("Insira Idade: ");
		scanf("%d", &idade);
		if(idade <= 15){
			quantidade1++;
			printf("1º Faixa Etária\n");
		} else if(idade > 15 && idade < 31){
			quantidade2++;
			printf("2º Faixa Etária\n");
		} else if(idade > 30 && idade < 46){
			quantidade3++;
			printf("3º Faixa Etária\n");
		} else if(idade > 47 && idade < 61){
			quantidade4++;
			printf("4º Faixa Etária\n");
		} else {
			quantidade5++;
			printf("5º Faixa Etária\n");
		}
	}
		quantidade = quantidade1 + quantidade2 + quantidade3 + quantidade4 + quantidade5 + 0,0;
	    printf("Quantidade na faixa etária 1: %f e quantidade ma faixa etária 5: %f", quantidade1/15.0, quantidade5/15.0);
	}	
	

	
