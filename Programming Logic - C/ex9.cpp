#include <stdio.h>

int main(void){
	int i, num;
	printf("Digite um n�mero:");
	scanf("%d", &num);
	for(i = 1; i <= num; i++){
		printf("%d - %d = %d\n", i, num-i, num-(num-i));
	}
	return(0);
}
