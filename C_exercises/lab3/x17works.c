/* Exercise17 (M)
Write a program that reads user input character string to array. After this program will tell how many
characters were lowercase and how many were uppercase characters. Use a function to print out the total
values of characters as passing them to the printing function.
*/

#include <stdio.h>
#include <string.h>
#define SIZE 20

void printfun(int count1, int count2, int count3);
int main() {

	char string[SIZE];
	int i = 0;
	int upper = 0, lower = 0;
	int totvalue;

	printf("Please enter a string:\n");
	fgets(string, SIZE, stdin);
	/*while(i < SIZE && (c = getchar())!=EOF && c!='\n') {
		c = string[i];
		++i;
	}*/
//	i = '\0';
	for(i = 0; i < strlen(string); i++) { 
//	printf("You entered: %s\nIts %d characters long. Thanks.\n", string, i);
//	while(j < i) {
//	printf("Current char: %c,\nASCII: %d,\nCurrent position: %d,\nString: %s\n", string[j],string[j], j, string);
		if(string[i] >= 97 && string[i] <= 124) {	
			++lower;
//			printf("meow1");
		}	
		else if(string[i] > 64 && string[i] < 91) { 
//			 printf("meow2");
			++upper;
		}		
		else {}
//			printf("meow3");
	}
	printfun(lower, upper, i);
	return 0;
}
void printfun(int count1, int count2, int count3) {

	printf("You entered %d lowercase characters, %d uppercase characters, and in total %d characters.\n", count1, count2, count3);
}
 

/*int printvalue(char chararr[], int counter) {
	
	int i;
	int currentval;

	counter = 0;
	for(i = 0; i !='\0'; i++) {
		currentval = chararr[i];
		counter = counter + currentval; 
 	}
	return counter; 

	}*/
