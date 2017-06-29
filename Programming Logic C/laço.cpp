#include <stdio.h>

void imprimirLinha(int numero, int multiplicador){
	printf("%d x %d = %d\n", numero, multiplicador, numero * multiplicador);
}

void imprimirTabuada(int multiplicador){
	for(multiplicador = 0; multiplicador <= 10; multiplicador++){
		imprimirLinha(numero, multiplicador);
	}
}

int main(){
	int numero, multiplicador;
	
	
	
	for(numero = 1; numero <= 10; numero++){
		for(multiplicador = 0; multiplicador <= 10; multiplicador++){
			imprimirLinha(numero, multiplicador);
		} 
	}

	return 0;
}
	

