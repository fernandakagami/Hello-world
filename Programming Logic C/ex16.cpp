#include <stdio.h>

int main (void){
	int dia1, mes1, ano1, dia2, mes2, ano2;
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
	if (ano1 > ano2){
		printf("A data %d/%d/%d eh maior que a data %d/%d/%d.\n", dia1, mes1, ano1, dia2, mes2, ano2);
	} else if (ano2 > ano1){
			printf("A data %d/%d/%d eh maior que a data %d/%d/%d.\n", dia2, mes2, ano2, dia1, mes1, ano1);
		} else {
			if (mes1 > mes2){
				printf("A data %d/%d/%d eh maior que a data %d/%d/%d.\n", dia1, mes1, ano1, dia2, mes2, ano2);
			} else if (mes2 > mes1){
					printf("A data %d/%d/%d eh maior que a data %d/%d/%d.\n", dia2, mes2, ano2, dia1, mes1, ano1);
				} else {
					if (dia1 > dia2){
						printf("A data %d/%d/%d eh maior que a data %d/%d/%d.\n", dia1, mes1, ano1, dia2, mes2, ano2);
					} else if (dia2 > dia1){
						printf("A data %d/%d/%d eh maior que a data %d/%d/%d.\n", dia2, mes2, ano2, dia1, mes1, ano1);
					} else {
						printf("A data %d/%d/%d eh igual a data %d/%d/%d.\n", dia2, mes2, ano2, dia1, mes1, ano1);
					}	
				}
			}
	return (0);	
} 
