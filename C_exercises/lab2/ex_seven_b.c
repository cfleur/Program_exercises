#include <stdio.h>
/* Exercise7 (M)
Write a program that prints numbers 0 – 9 and their square using:
a) for loop
b) while loop
c) do-while loop

This program prints the numbers from 0 to 9 and thier squares using while loop.*/
int main()
{
	int number, square;
	while (number < 10){
		square = (number*number);
		printf("%d %d\n", number++, square);
		}
	return 0;
}

