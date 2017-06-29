#include <stdio.h>

int main(void) {
    int a = 10;
    int b = 5;
    a-= b++ * a++;
    printf ("a = %d \t b = %d\n", a, b);
    return (0);    
}
