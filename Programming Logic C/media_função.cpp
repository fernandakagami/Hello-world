#include <stdio.h>

int pedirNumero(){
	int n;
	printf("Insera um número: ");
	scanf("%d", &n);
	return n;
}

float calcularMedia(int quantidadeNumero){
	int i;
	float total = 0, media;
	for(i = 0; i < quantidadeNumero; i++){
		total += pedirNumero();
	}
	media = total / quantidadeNumero;
	return media;
}

int main(){
	float r;
	r = calcularMedia(3);
	printf("A media é: %f", r);
	return 0;
}


