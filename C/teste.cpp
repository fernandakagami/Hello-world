#include <stdio.h>

int pedirNumero() {
	int a;
	printf("Insira um numero: ");
	scanf("%d", &a);
	return a;
}

int sum(int quantidadeNumeros) {
	int total = 0, i;
	for(i = 0; i < quantidadeNumeros; i++) {
		total += pedirNumero();
	}
	return total;
}

void ola() {
	printf("Ola\n");
}

int greatest(int a, int b, int c);

int main() {
	ola();
	int r1;
	r1 = sum(2);
	printf("%d \n", r1);
	r1 = greatest (pedirNumero(), pedirNumero(), pedirNumero());
	printf("The greatest is %d", r1);
}

int greatest(int a, int b, int c){
	if (a>b && a>c) {
		return a;
	} else if (b>c) {
		return b;
	}   
	return c;

}
