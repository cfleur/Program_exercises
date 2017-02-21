
#include <stdio.h>
/*Exercise4 (M)
Write a program that calculated are of two squares (A and B). After this the program will tell how many squares B can fit in square A. Print the result of the calculations to the screen.
...
This program calculates how many of square A can fit into square B */

int main(void)
{
	printf("How many squares A into square B?\n");
	float  lengthA, lengthB, resultA, resultB, AintoB;
	lengthA = 5;
	lengthB = 8;
	resultA = (lengthA*lengthA);
	resultB = (lengthB*lengthB);
	AintoB = (resultB/resultA);
	printf("%.1f x %.1f = %.1f\n", lengthA, lengthA, resultA); 
	printf("%.1f x %.1f = %.1f\n", lengthB, lengthB, resultB);
	printf("There are %.1f As that can fit into B.\n", AintoB); 
	return 0;
}	
	
 
