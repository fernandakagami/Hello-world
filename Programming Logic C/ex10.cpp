#include <stdio.h>

int main(){
	int n;
	printf("Digite um n�mero:");
	scanf("%d", &n);
	while(n>0){
		printf("%d\n", n);
		n--;
	}
	return(0);
}