#include <stdio.h> 
/* Exercise9 (M)
Write a program that asks user to input his/her age. If the input age is under 18 program prints ”You’re too
young to drive”. If age is 18 or above, but below 65 program will print “You’re old enough to get a drivers
license”. If age is 65 or above, program will print that “You’re likely to be retired”.

This program askes for your age and prints out comments.*/
int main()
{
	int age;
	printf("Please enter you age.\nAge:");
	scanf("%d", &age);
	
	if (age < 18){
		printf("You are too young to drive.\n");
	}

	else if (age < 65){
		printf("You're old enough to get a drivers lisence.\n");
	}

	//else  if (65 < age){
		//printf("You're likely to be retired. :)\n");

	else
	{
		printf("You're likely to be retired. :)\n");
	}

	return 0;
}
