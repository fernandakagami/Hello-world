#include<stdio.h>

int contarLetras(char palavra[]){
	int numeroLetras = 0;
	while(palavra[numeroLetras] != '\0'){
		numeroLetras++;
	}
	return numeroLetras;
}
	
int main(){
	
	char palavra[20];
	printf("Insira uma palavra: ");
	scanf("%s", palavra);
	
	int numeroLetras = contarLetras(palavra);
		
	printf("O numero de letras é %d", numeroLetras);
	
}
