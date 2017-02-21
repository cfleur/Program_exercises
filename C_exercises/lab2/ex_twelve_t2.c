#include <stdio.h>
/* Exercise12 (E)
Write a program that reads user input and convers user input characters from lowercase to uppercase. Use
getchar().
...
This program takes lowercase letters and returns them as uppercase letters.*/
int main(void)

{

	printf("Enter some lowercase letters. This program will convert them to UPPERCASE.\n");
	int c1=0;
	while((c1 = getchar())!=('\n' ||  EOF ))
	{
		if(c1 >= 97 && c1 <= 122) 
		{
		putchar(c1-32);
		}
		else
		{}
	}
	return 0;

}

/*{
int lower, upper;
while((lower = getchar()) !=EOF)
	{
	upper = toupper(lower);
	putchar(upper);
	}
return 0;
}*/
