#include <stdio.h>

void imprimirLinha(int numero, int multiplicador){
	printf("%d x %d = %d\n", numero, multiplicador, numero * multiplicador);
}

void imprimirTabuada(int numero){
	int multiplicador;
	for(multiplicador = 0; multiplicador <= 10; multiplicador++){
		imprimirLinha(numero, multiplicador);
	}
}

int main(){
	int numero;
	for(numero = 1; numero <= 10; numero++){
		imprimirTabuada(numero);
	}

	return 0;
}
	

