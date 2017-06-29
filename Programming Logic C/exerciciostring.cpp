#include<stdio.h>

int contarNumero(char string[]){
	int numCaracteres = 0;
	while(string[numCaracteres] != '\0'){
		numCaracteres++;
	}
	return numCaracteres;
}

int main(){
	char string[20];
	printf("Escreva uma palavra:");
	scanf("%s", string);
	
	int num = contarNumero(string);
		
	printf("%d", num);
	
	return 0;
}
