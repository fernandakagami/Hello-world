#include<stdio.h>

void inverterPalavra(char palavra[], char novaPalavra[]){
	int n = 0;
	int p = 0;
	while(palavra[n] != '\0'){
		n++;
	}
	n--;
	while(n != -1){
		novaPalavra[n] = palavra[p];
		n--;
		p++;		
	}
	novaPalavra[p]	= '\0';
}
	
int main(){
	
	char palavra[20];
	char novaPalavra[20];
	printf("Insira uma palavra: ");
	scanf("%s", palavra);
	
	inverterPalavra(palavra, novaPalavra);
		
	printf("O inverso da palavra é %s", novaPalavra);
	
}
