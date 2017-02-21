#include <stdio.h> 
/*Exercise8 (M)
Write a program that asks for your age and current year. Program will then calculate and print your
birthyear.
*/

int main()
{
	int today, birth, age;
	printf("Please enter you age and and today's year.\nAge:");
	scanf("%d", &age);
	printf("Today's year:");
	scanf("%d", &today);
	birth = today - age;
	printf("Here is the calender from the year you were born: %d\n", birth);  
	return 0;
}
