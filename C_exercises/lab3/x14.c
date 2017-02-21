#include <stdio.h>
//Exercise14 (M)
//Write a program that passes two int type numbers to a function as parameters and returns their sum.

//This program passes two int type numbers into a function and  returns their sum.

//int sum(int x1, int x2);

int main()
{
	int yksi, kaksi, kaikki;
	printf("Enter a number:\n");
	scanf("%d",&yksi);
	printf("Now enter another number:\n");
	scanf("%d", &kaksi);
	kaikki = sum(yksi,kaksi);
	printf("These numbers together is: %d.\n", kaikki);
	return 0;
}

int sum(int x1, int x2)
{
	int sum;
	sum = x1 + x2;
	return sum;
}


