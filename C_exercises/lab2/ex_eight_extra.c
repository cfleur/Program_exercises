#include <stdio.h> 
/* Exercise8 (M)
Write a program that asks for your age and current year. Program will then calculate and print your
birthyear.
...
This program takes your age, today's date and prints what year you were born.*/
int main()
{
	int today, birth, age;
	printf("Please enter you age and and today's year.\nAge:");
	scanf("%d", &age);
	printf("Today's year:");
	scanf("%d", &today);
	printf("Has your birthday passed yet (y/n):");
	char cha;
	scanf(" %c", &cha);
	if(cha=='n' || cha=='N')
	{
		birth = today - age - 1;
		printf("You were born in %d.\n", birth);
	}
	else if(cha=='y' || cha=='Y')
	{
	birth = today - age;
	printf("Here is the year you were born: %d.\n", birth);  
	}
	else
	{
		printf ("oops :/ \n");
	}
return 0;
}
