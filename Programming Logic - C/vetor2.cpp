#include <stdio.h>

int main(){
	int a[100] = {};
	int posicao, maior;
	
	for(posicao = 0; posicao < 5; posicao++){
		scanf("%d", &a[posicao]);
	}
	maior = a[0];
	
	for(posicao = 1; posicao < 5; posicao++){
		if(a[posicao] > maior)	{
			maior = a[posicao];
		}
	}
	printf("O maior valor e %d", maior);
	return 0;
}
