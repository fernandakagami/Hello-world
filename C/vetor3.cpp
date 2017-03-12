#include <stdio.h>

int main(){
	float soma = 0;
	int n, i;
	scanf("%d", &n);
	for(i = 1; i <= n; i++){
		soma += 1.0/i;
	} 
	printf("A soma e %f", soma);
	
}

	
