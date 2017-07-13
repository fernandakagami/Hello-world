#include <stdio.h>
#include <stdlib.h>

void lerArquivo();
void pesquisar();
void mediaAlta();
void mediaBaixa();

struct cadAluno{
	int codigo;
	char nome[50];
	float nota[4];
	float media;
} aluno[10];

int main (void) {
	int opcao;
	lerArquivo();
	system("cls");
	
	do {
		printf("1 - Pesquisar dados do aluno pelo codigo. \n2 - Pesquisar nome dos alunos com media iguais ou maiores do que 6. \n3 - Pesquisar nome dos alunos com media abaixo de 6. \n4 - Sair do sistema.\nDigite o numero da opcao:\n");
		scanf("%d", &opcao);
		
		switch (opcao) {
			case 1:
				pesquisar();
				break;
				
			case 2:
				mediaAlta();
				break;
				
			case 3:
				mediaBaixa();
				break;
								
			case 4:
				printf("Obrigado por usar nosso sistema!\n");
				break;
				
			default:
				printf("Opcao invalida");
		}
	} while (opcao != 4);
	return 0;
}

void lerArquivo() {
	int i = 0;
	FILE *arquivo;
	char dadoAluno[] = "alunos.txt";
	arquivo = fopen(dadoAluno,"r");
	if(arquivo == NULL){
		printf("Erro ao abrir ao arquivo.");
	} else {
		while((fscanf(arquivo, "%d %f %f %f %f %[^\n]s", &aluno[i].codigo, &aluno[i].nota[1], &aluno[i].nota[2], &aluno[i].nota[3], &aluno[i].nota[4], aluno[i].nome))!=EOF){
			aluno[i].media = 0;
			for (int j = 0; j < 4; j++){
				aluno[i].media += aluno[i].nota[j] ;
			}
			aluno[i].media /= 4;
			printf("(%d) %s \tMedia = %.2f\n", aluno[i].codigo, aluno[i].nome, aluno[i].media);
			i++;
		}
		fclose(arquivo);
		system("pause");
	}
}

void pesquisar() {
	int achou = -1, i = 0, busca;
	printf("Digite o codigo do aluno: ");
	scanf("%d", &busca);
	while ((achou == -1) & i < 10){
		if ((aluno[i]).codigo == busca){
			achou = 1;
		}
		i++;
	}
	if (achou == -1){
		printf("Codigo nao encontrado.\n");
	} else {
		printf("CODIGO = %d\nNOME = %s\nNOTA 1 = %f\nNOTA 2 = %f\nNOTA 3 = %f\nNOTA 4 = %f\nMEDIA = %f\n", aluno[i].codigo, aluno[i].nome, aluno[i].nota[1], aluno[i].nota[2], aluno[i].nota[3], aluno[i].nota[4], aluno[i].media);
	}
	system("pause");
}

void mediaAlta() {
	int i;
	for (i = 0; i < 10; i++){
		if (aluno[i].media >= 6){
			printf("ALUNOS COM MEDIA ACIMA OU IGUAL A 6:\n");
			printf("CODIGO = %d\nNOME = %s\nNOTA 1 = %f\nNOTA 2 = %f\nNOTA 3 = %f\nNOTA 4 = %f\nMEDIA = %f\n", aluno[i].codigo, aluno[i].nome, aluno[i].nota[1], aluno[i].nota[2], aluno[i].nota[3], aluno[i].nota[4], aluno[i].media);
		}
	}
	system("pause");
}

void mediaBaixa() {
	int i;
	for (i = 0; i < 10; i++){
		if (aluno[i].media < 6){
			printf("ALUNOS COM MEDIA ABAIXO DE 6:\n");
			printf("CODIGO = %d\nNOME = %s\nNOTA 1 = %f\nNOTA 2 = %f\nNOTA 3 = %f\nNOTA 4 = %f\nMEDIA = %f\n", aluno[i].codigo, aluno[i].nome, aluno[i].nota[1], aluno[i].nota[2], aluno[i].nota[3], aluno[i].nota[4], aluno[i].media);
		}
	}
	system("pause");
}

