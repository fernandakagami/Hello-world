#include <stdio.h>

int main(){
	char nome[20];
	float saldo;
	int numero;
	for(numero = 0; numero < 15; numero++){
		scanf("%s", nome);
		scanf("%f", &saldo);
		if(saldo < 1000){
			printf("O bonus do cliente %s é 10%%: R$ %.2f\n", nome, saldo * 0.10);	
		} else {
			printf("O bonus do cliente %s é 15%%: R$ %.2f\n", nome, saldo * 0.15);
		}
		
	}

	return 0;
}
	

