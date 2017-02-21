#include <stdio.h>
/* Exercise15 (M)
Write a program that has two functions: smaller and larger. Pass two int parameters to both functions.
Smaller function will return the smaller value of the given two values and the larger will return the larger
value. Print both values in the main program after the function call.
*/

// This program takes two input values into two different functions, one which returns the lower value and the other returns the higher value. 

int smaller(int a, int b);
int larger(int c, int d);
int main()
{
	int yksi; 
	int kaksi; //hi, low;
	printf("Enter a number:\n");
	scanf("%d", &yksi);
	printf("Now enter another number:\n");
	scanf("%d", &kaksi);
	/*hi = show_hi(yksi, kaksi);
	low = show_low(yksi,kaksi);*/
	printf("The lower number is %d.\n", smaller(yksi,kaksi));
	printf("The higher number is %d.\n", larger(yksi,kaksi));
	return 0;
}
int smaller(int a, int b)
{	
	int smaller;
	if(a > b)
	{
		smaller = b;
	
	}else{
		smaller =a;}	
	return smaller;
}
int larger(int c, int d)
{
	int larger;
	if(c > d)
	{
		larger = c;
	}else{
		larger = d;}
	return larger;	
}

