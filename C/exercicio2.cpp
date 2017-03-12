#include <stdio.h>

int main(){
	int quantidade[5] = {};
	int pessoa, idade;
	for(pessoa = 0; pessoa < 5; pessoa++){
		printf("Insira Idade: ");
		scanf("%d", &idade);
		if(idade <= 15){
			quantidade[0]++;
		} else if(idade > 15 && idade < 31){
			quantidade[1]++;
		} else if(idade > 30 && idade < 46){
			quantidade[2]++;
		} else if(idade > 47 && idade < 61){
			quantidade[3]++;
		} else {
			quantidade[4]++;
		}
	}
	for(pessoa = 0; pessoa < 5; pessoa++){
		printf("Quantidade Faixa %d: %d\n", pessoa + 1, quantidade[pessoa]);
	}
	printf("Quantidade na faixa etária 1: %.1f e quantidade ma faixa etária 5: %.1f", quantidade[0] * 100 /5.0 , quantidade[4] * 100 /5.0);
}	
	

	
