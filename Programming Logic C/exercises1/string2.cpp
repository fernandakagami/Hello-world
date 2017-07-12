#include<stdio.h>

int main(){
	char palavra1[20];
	char palavra2[20];
	int i;
	printf("Escreve uma palavra: ");
	scanf("%s", palavra1);
	for(i = 0; palavra1[i] != '\0'; i++){
		palavra2[i] = palavra1[i];
	}
	palavra2[i] = '\0';
	printf("%s %s", palavra1, palavra2);
}
