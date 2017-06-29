#include<stdio.h>

void concatenarStrings(char string1[], char string2[], char string3[]){
	int index = 0;
	while(string1[index] != '\0'){
		string3[index] = string1[index];
		index++;
	}
	int index2 = 0;
	while(string2[index2] != '\0'){
		string3[index] = string2[index2];
		index++;
		index2++;
	}
	string3[index] = '\0';
}	

int main() {
	
	char novaPalavra[20];
	char palavra1[] = "mortadela ";
	char palavra2[] = "queijo";
		
	concatenarStrings(palavra1, palavra2, novaPalavra);
	
	printf("%s", novaPalavra);
	
}


