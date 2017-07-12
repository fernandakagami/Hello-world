#include<stdio.h>
#include <math.h>

int main (){
	int num;
	float raiz, quadrado;
	printf("Digite um numero: ");
	scanf("%d", &num);
	quadrado = pow(num,num);
	raiz = sqrt(num);
	printf("O quadrado de %d eh: %.2f\n", num, quadrado);
	printf("A raiz de %d eh: %.2f\n", num, raiz);
	return 0;
}
