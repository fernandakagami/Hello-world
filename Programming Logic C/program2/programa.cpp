#include <stdio.h>

struct cadastro
{
	int codigo;
	char titulo[50];
	char autor[50];
	char area[30];
	int ano;
	char editora[30];
};

int main (void) {
	int busca, i, j, encontrou, op;
	cadastro livro[20];
	cadastro troca;
	
	do {
		printf("\n1 - Cadastra os livros: \n");
		printf("2 - Imprimir as informações dos livros: \n");
		printf("3 - Pesquisar livros por código: \n");
		printf("4 - Ordenar os livros por ano: \n");
		printf("5 - Sair: \n");
		printf("Insira o numero da operacao que deseja realizar: \n");
		scanf("%d", &op);
		
		switch (op) {
			case 1:
				for (i = 0; i < 20; i++){
					printf("Digite o codigo do livro: ");
					scanf("%d", &livro[i].codigo);
					fflush(stdin);
					printf("Digite o titulo do livro: ");
					gets(livro[i].titulo);
					printf("Digite o autor do livro: ");
					gets(livro[i].autor);
					printf("Digite a area do livro: ");
					gets(livro[i].area);
					printf("Digite o ano do livro: ");
					scanf("%d", &livro[i].ano);
					fflush(stdin);
					printf("Digite a editora do livro: ");
					gets(livro[i].editora);
				}
				break;
			
			case 2: 
				for (i = 0; i < 20; i++){
					printf("%d\n", livro[i].codigo);
					printf("%s\n", livro[i].titulo);
					printf("%s\n", livro[i].autor);
					printf("%s\n", livro[i].area);
					printf("%d\n", livro[i].ano);
					printf("%s\n", livro[i].editora);
				}
				break;		
					
			case 3:
				printf("Digite o codigo do livro: ");
				scanf("%d", &busca);
				encontrou = 0;
				for (i = 0; i < 20; i++){
					if (busca == livro[i].codigo) {
						printf("%d\n", livro[i].codigo);
						printf("%s\n", livro[i].titulo);
						printf("%s\n", livro[i].autor);
						printf("%s\n", livro[i].area);
						printf("%s\n", livro[i].editora);
						encontrou = 1;
					}
				}
				if (encontrou == 0) {
					printf("Valor invalido.");
				}
				break;
				
			case 4:
				for (i = 0; i < 19; i++) {
					for (j = i+1; j < 20; j++) {
						if (livro[i].ano > livro[j].ano) {
							troca = livro[i];
							livro[i] = livro[j];
							livro[j] = troca;
						}
					}
				}
				for (i = 0; i < 20; i++) {
					printf("\n CODIGO: %d, TITULO: %s, ANO: %d", livro[i].codigo, livro[i].titulo, livro[i].ano);
				}
				break;
			
			case 5:
				printf("Programa encerrado");
				break;
				
			default:
				printf("Numero de operacao nao existente.\n");
		}
	} while (op != 5);
	return 0;
}
	
