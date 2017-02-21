/* Exercise27 (M)
Write a program, that reads user input string to an array using fgets() function. After this, program will print
string length and the string itself.
*/

#include <stdio.h>
#include <string.h>
#define SIZE 20

int main() {

	char string1[SIZE], string2[SIZE];
	int i=0, j=0; /* indexes to input to arrays */

	///////////////////////////////////////////////////// write input to arrays
	printf("Please enter a string:\n");
	fgets(string1, SIZE, stdin);
	for(i = 0; i < strlen(string1); i++)
		;

	//////////////////////////////////////////////////// print array length ( -1 prints only CHARACTERS inputed ) and array itself
	printf("You entered %d characters. Here they are: %s", i-1, string1); /* note that enter key is pressed when entering the string, so new line character is not needed */


	return 0;
}


