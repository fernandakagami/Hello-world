#include <stdio.h>
#include <math.h>
# define pi 3.141593 

int main (void){
	float num, area, perimetro;
	printf("Digito o raio do circulo: ");
	scanf("%f", &num);
	area = pi * (pow(num, 2));
	perimetro = 2 * pi * num;
	printf("A area do circulo eh %.2f e o perimetro eh %.2f", area, perimetro);
	return 0;
}


