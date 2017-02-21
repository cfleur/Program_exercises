/* Exercise29 (E)
Write a program that reads user input string using fgets() function. After this, program will ask if the user
wants to save the string to file or does the user want to change the string or quit without saving. If user
wants to change the string this must be made possible by asking for the string again. After this, menu will
be printed again printing the choices available.
...
This program gets a string from user, and gives options to either
change the string, save the srting to file, or quit. */

#include <stdio.h>
#include <string.h>
#define SIZE 50

int main() {

char string[SIZE];
int choice, k=0;
FILE *fp;

///////////////////////////////////////////////////// get string.
    printf("Please enter your text:\n");
    fgets(string, SIZE, stdin); /* fgets(to where, max length, from where) */


///////////////////////////////////////////////////// print menu.
	printf("Do you want to save to file?\nPress [1] to change text.\nPress [8] to write to file.\nPress any other number to quit.\n"); 	

///////////////////////////////////////////////////// get choice.
	scanf("%d", &choice);

///////////////////////////////////////////////////// evaluate choice.


	while( choice == 1 ) /* repeat menu until user is satsified with string. */
	{	
		printf("Please enter your text:\n");
		fgets(string, SIZE, stdin);
		printf("Do you want to save to file?\nPress [1] to change text.\nPress [8] to write to file.\nPress any other number to quit.\n");
		scanf("%d", &choice);     
	}	
		
	if( choice == 8 ) /* write text to file */	
	{
        fp = fopen("/home1-1/c/catherif/SAMI_PROGRAMMING/week5/sometext.txt", "w"); /* full file path */
		for(k=0; k < strlen(string); k++)
            fputc(string[k], fp);
		fclose(fp);
	}
	else {}
        return 0;
}
