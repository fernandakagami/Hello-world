#include <stdio.h>

struct cadastro {
	int codigo;
	char nome[50];
	int nota1;
	int nota2;
	int nota3;
	int nota4;
	float media;
};

int main (){
	int i, busca, encontrou;
	cadastro aluno[3];
			
	for(i = 0; i < 3; i++){
		
		printf("\n Digite o codigo do aluno: ");
		scanf("%d", &aluno[i].codigo);
		printf("\n Digite o nome do aluno: ");
		scanf("%s", aluno[i].nome);
		printf("\n Digite a nota 1 do aluno: ");
		scanf("%d", &aluno[i].nota1);
		printf("\n Digite a nota 2 do aluno: ");
		scanf("%d", &aluno[i].nota2);
		printf("\n Digite a nota 3 do aluno: ");
		scanf("%d", &aluno[i].nota3);
		printf("\n Digite a nota 4 do aluno: ");
		scanf("%d", &aluno[i].nota4);
		aluno[i].media = (aluno[i].nota1 + aluno[i].nota2 + aluno[i].nota3 + aluno[i].nota4) / 4.0;
		printf("\nA media eh %.2f\n", aluno[i].media);
	}
	
	printf("\nInsira o codigo do aluno para acessar seus dados: ");
	scanf("%d", &busca);
	encontrou = 0;
	for(i = 0; i < 3; i++){
		if (busca == aluno[i].codigo) {
			printf("Codigo = %d\n", aluno[i].codigo);
			printf("Nome do aluno = %s\n", aluno[i].nome);
			printf("Nota 1 = %d\n", aluno[i].nota1);
			printf("Nota 2 = %d\n", aluno[i].nota2);
			printf("Nota 3 = %d\n", aluno[i].nota3);
			printf("Nota 4 = %d\n", aluno[i].nota4);
			printf("Media = %.2f\n", aluno[i].media);
			encontrou = 1;
		} 
	}
	if (encontrou == 0){
		printf("Codigo nao entrado.\n");	
	}
	
	for(i = 0; i < 3; i++){
		if(aluno[i].nota1 >= 6 || aluno[i].nota2 >= 6 || aluno[i].nota3 >= 6 || aluno[i].nota4 >= 6){
			printf("O aluno %s tem notas iguais ou maiores do que 6.\n", aluno[i].nome);
		}
	}
	
	for(i = 0; i < 3; i++) {
		if(aluno[i].nota1 < 6 || aluno[i].nota2 < 6 || aluno[i].nota3 < 6 || aluno[i].nota4 < 6){
			printf("O aluno %s tem notas menores do que 6.\n", aluno[i].nome);
		}
	}
	return (0);
}
