#include <stdio.h>

int main(){
	char a[100] = {'H', 'e', 'l', 'l', 'o'};
	int posicao;
	for(posicao = 0; posicao < 5; posicao++){
		printf("%c", a[posicao]);
		//scanf("%d", &a[posicao]);
	}
	return 0;
}
