#include<stdio.h>

void concatenarStrings(char string1[], int t1, char string2[], int t2, char string3[]){
	int i;
	int h;
	for(i = 0; i < t1; i++){
		string3[i] = string1[i];
	}
	for(h = 0; h < t2; h++){
		string3[t1 + h] = string2[h];
	}
	string3[t1 + t2] = '\0';
}

int main() {
	
	char novaPalavra[20];
	char palavra1[] = {'p', 'a', 'o',' '};
	char palavra2[] = {'m', 'o', 'r', 't', 'a', 'd', 'e', 'l', 'a'};
		
	concatenarStrings(palavra1, 4, palavra2, 9, novaPalavra);
	
	printf("%s", novaPalavra);
	
}


