#include <stdio.h>
/* Exercise7 (M)
Write a program that prints numbers 0 – 9 and their square using:
a) for loop
b) while loop
c) do-while loop

This program prints the numbers from 0 to 9 and thier squares using for loop.*/
int main()
{
	int number, square;
	int lower, upper, step;
	number = 0;
	square = 0;
	lower = 0;
	upper = 81;
	step = 1;
	number = lower;
	for (number = lower; square < upper; number += step) {
		square = (number*number);
		printf("%d %d\n", number, square);
	
	}
	return 0;
}

