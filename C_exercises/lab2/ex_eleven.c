#include <stdio.h>
/* Exercise11 (M)
Write a program that reads user input and tells which of the characters were letters (a-z, A-Z). Use
getchar().
...
This program takes alphanumeric input and returns only the alpha characters.*/
int main(void)
{
printf("Enter some random characters. This preogram will return those which belong to the alphabet. Press cntrl + c whe you are done.\n");
int cha;
while((cha = getchar()) !=EOF)
{
	if(isalpha(cha))
	{
		putchar(cha);
	}
	else
	{
	}
}
return 0;
}
