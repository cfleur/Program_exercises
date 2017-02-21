
#include <stdio.h>
/* Exercise3 (M)
Write a program that calculates area of square (side x side) and prints the result to the screen.
...
This program calculates the area of a square with dimensions 817m x 817m */

int main(void)
{
	printf("The area of a square \n");
	float  length, result;
	length = 817;
	result = (length*length);
	printf("%.2fm x %.2fm = %.2fm^2 \n", length, length, result);  
	return 0;
}	
	
 
