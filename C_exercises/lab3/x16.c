#include <stdio.h>
/* Exercise16 (M)
Write a program that reads user input character string to array. Print the characters as characters and their
ASCII codes.
*/

#include <stdio.h>

int main()
{
	char arr [100];
	int count;
	printf("Please enter some characters:\n");
	scanf("%s", &arr);
	for (count = 0; arr[count] !='\0'; count++)
	{
		printf("ASCII code of %c is %d.\n", arr[count]);
	}
	return 0;
}
  
