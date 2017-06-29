#include<stdio.h>
#include<string.h>

int palindromo(char palavra[]){
	int numeroCaractere = 0;
	while(palavra[numeroCaractere] != '\0'){
		numeroCaractere++;
	}
	char palindromo2[20];
	int p = 0;
	numeroCaractere--;
	while(numeroCaractere != -1){
		palindromo2[p] = palavra[numeroCaractere];
		p++;
		numeroCaractere--;
	}
	p--;
	for(; p > -1; p--){
		if(palindromo2[p] != palavra[p]){
			return 0;
		}
	}	
	return 1;
}

int palindromo2(char palavra[]){
	int ultima = 0;
	while(palavra[ultima] != '\0'){
		ultima++;
	}
	ultima--;
	int posicao;
	for(posicao = 0; posicao < ultima; posicao++){
		if(palavra[posicao] != palavra[ultima]){
			return 0;
		}
		ultima--;	
	}
	return 1;
}

int palindromo3(char palavra[]){
	int ultima = strlen(palavra) - 1;
	int posicao;
	for(posicao = 0; posicao < ultima; posicao++){
		if(palavra[posicao] != palavra[ultima]){
			return 0;
		}
		ultima--;	
	}
	return 1;
}

int main(){
	char palavra[20];
	printf("Escreva uma palavra:");
	scanf("%s", palavra);
	
	if(palindromo3(palavra) == 1){
		printf("A %s e palindromo", palavra);
	} else{
		printf("A %s nao e palindromo", palavra);
	}
}
