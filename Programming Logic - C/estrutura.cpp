#include <stdio.h>

struct date {
	int day;
	int mouth;
	int year;
};

void printDate(struct date dob[]) {
	int i;
	for(i = 0; i < 4; i++){
		printf("%d/%d/%d\n", dob[i].day, dob[i].mouth, dob[i].year);
	}
}

int main() {
	struct date dob[4];
	
	dob[0].day = 14;
	dob[0].mouth = 11;
	dob[0].year = 2015;
	dob[1].day = 16;
	dob[1].mouth = 10;
	dob[1].year = 2001;
	dob[2].day = 2;
	dob[2].mouth = 8;
	dob[2].year = 1975;
	dob[3].day = 30;
	dob[3].mouth = 1;
	dob[3].year = 1995;
	
	printDate(dob);
}
