/* Exercise28 (M)
Write a program that asks user to input two strings and saves them to a file. After reading the 1st string
program must tell how long the given string was and ask for the next. The second sting length must match
to the 1st. After the strings are given program will compare the strings and tell which characters were the
same and print these characters as well as their indexes in the array.
*/

#include <stdio.h>
#include <string.h>
#define SIZE 20

int main() {

	FILE *fp; /* fp = file pointer */
	fp = fopen("/home1-1/c/catherif/SAMI_PROGRAMMING/week5/array.txt", "w"); /* full file path */
 
	char string1[SIZE], string2[SIZE];
	int i=0, j=0; /* indexes to input to arrays */
	int k=0, l=0; /* indexes to write arrays to files */
	int m=0; /* index for checking array cell matches */


///////////////////////////////////////////////////// write input to arrays
	printf("Please enter a string:\n");
	fgets(string1, SIZE, stdin);
	for(i = 0; i < strlen(string1); i++)
		;

	printf("You entered %d characters. Enter another %d characters\n", i-1); /* -1 so that enter is not counted as a character */	
	fgets(string2, SIZE, stdin);
	for(j = 0; j < strlen(string2); j++)
		;

	printf("You entered %d characters.\n",j-1);


///////////////////////////////////////////////////// see if string length match
	while(i != j) {
		//////////////////////////////////// while index counters don't match, keep asking, until they do
		printf("Your string lengths didn't match.\n");
		printf("Please enter a string:\n");
		fgets(string1, SIZE, stdin);
		for(i = 0; i < strlen(string1); i++)
			;
		
		printf("You entered %d characters. Enter another %d characters\n", i-1);
		fgets(string2, SIZE, stdin);
		for(j = 0; j < strlen(string2); j++)
			;
		
		printf("You entered %d characters.\n",j-1);
	}


/////////////////////////////////////////////////// checking part
	if(i == j) {	
		for(m = 0; m <  strlen(string1)-1; m++) {
			if(string1[m] == string2[m])
				printf("Character %c, matches character %c, at location %d.\n", string1[m], string2[m], m);
			}	
		}
		else
			printf("No characters matched."); 


//////////////////////////////////////////////////// write arrays to file
	for(k=0; k <= i+1; k++)
		fputc(string1[k], fp);
	
	for(l=0; l <= j+1; l++)
		fputc(string2[l], fp);
	
//	while((c=fgetc(fp)) !=EOF) {}


	fclose(fp); // close file
	return 0;
}

