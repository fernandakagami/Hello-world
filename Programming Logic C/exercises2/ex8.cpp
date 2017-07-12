#include <stdio.h>

int main (void){
	int dia1, mes1, ano1, dia2, mes2, ano2;
	int data1, data2;
	printf("Insira o dia da primeira data: ");
	scanf("%d", &dia1);
	printf("Insira o mes da primeira data: ");
	scanf("%d", &mes1);
	printf("Insira o ano da primeira data: ");
	scanf("%d", &ano1);
	printf("Insira o dia da segunda data: ");
	scanf("%d", &dia2);
	printf("Insira o mes da segunda data: ");
	scanf("%d", &mes2);
	printf("Insira o ano da segunda data: ");
	scanf("%d", &ano2);
	
	data1 = ((ano1 * 1000) + (mes1 * 100)) + dia1;
	data2 = ((ano2 * 1000) + (mes2 * 100)) + dia2;
	
	if (data1 > data2){
		printf("A data %d/%d/%d eh maior que a data %d/%d/%d.\n", dia1, mes1, ano1, dia2, mes2, ano2);
	} else {
			printf("A data %d/%d/%d eh maior que a data %d/%d/%d.\n", dia2, mes2, ano2, dia1, mes1, ano1);
		}
	return (0);	
} 
