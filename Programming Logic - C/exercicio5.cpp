#include<stdio.h>

int main(){
	char pagamento;
	int pessoas, valor = 0, vista = 0, prazo = 0, valorVista = 0, valorPrazo = 0;
	int primeiraParcela[15];
	for(pessoas = 0; pessoas < 4; pessoas++){
		printf("Insira a forma de pagamento e o valor: ");
		scanf("%c %d", &pagamento, &valor);
		fflush(stdin);
		if(pagamento == 'V' || pagamento == 'v'){
			vista++;
			valorVista += valor;
		} else if(pagamento == 'P' || pagamento == 'p'){
			prazo++;
			valorPrazo += valor;
			primeiraParcela[pessoas] = valor / 3;
			printf("O valor da primeira parcela: %d\n", primeiraParcela[pessoas]);
		} else {
			printf("Erro. Insira V para pagamento à vista e P para pagamento a prazo\n");
		}
	}
	printf("O valor total das compras a vista: %d\n", valorVista);
	printf("O valor total das compras a prazo: %d\n", valorPrazo);
	printf("O valor total das compras efetuadas: %d\n", valorVista + valorPrazo);
}
