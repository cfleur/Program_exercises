#include <stdio.h>
/* Exercise10 (M)
Write a program that reads a string of characters user inputs and removes all whitespace characters and
prints the string back without the whitespace characters. Use getchar().
...
This program takes alphanumeric input and returns it without white spaces.*/
int main(void)
{
printf("Enter some letters with spaces in between. Then press enter.\nWhen you are done press cntrl + c.\n");
int cha;
while((cha = getchar())!=EOF)
	if(cha=='\n' || cha==' ')
	{
	}
	else
	{
		putchar(cha);
	}
return 0;
}
