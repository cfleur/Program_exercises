/* Exercise18 (E)
Write a program that reads user input character string to array. Program will then convert lowercase
characters to uppercase and uppercase to lowercase.
*/

#include <stdio.h>
#include <string.h>
#define SIZE 20

int main() {

	char string[SIZE];
	int i = 0;
	int j = 0;
	int value;

	printf("Please enter a string:\n");
	fgets(string, SIZE, stdin);

	for(i = 0; i < strlen(string); i++) { 
//	printf("You entered: %s\nIts %d characters long. Thanks.\n", string, i);
//	while(j < i) {
//	printf("Current char: %c,\nASCII: %d,\nCurrent position: %d,\nString: %s\n", string[j],string[j], j, string);
		if(string[i] >= 97 && string[i] <= 124) {	
			value = string[i] - 32;
			string[i] = value;
//			printf("meow1");
		}	
		else if(string[i] > 64 && string[i] < 91) { 
			 value = string[i] + 32;
			 string[i] = value;
//			printf("meow2");
		}		
		else {}
//			printf("meow3");
	}
	printf("%s", string);
	return 0;
}

