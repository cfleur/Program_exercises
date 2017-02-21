/* Exercise33 (E)
Continue from the previous exercise, but now user can define by index number from which of the structure
name and phone number is printed (1st names and phone numbers are asked for, then program prints list
of index numbers and then user can select which ones to print out).
...
This program creates a structure with the fields name (first and last) and phone number, 
and assigns an index (interger number) to each. It gets these fields from user input and
then the user can choose a index number; the program will prints out the the values for the specified index. */

#include<stdio.h>

////////////Make the structure:
struct usernames 
{
	int index;
	char firstname[40];
	char lastname[40];
	char phonenumber[15];
}reg[5]; /* Names the structure 'usernames' an array called register with 5 cells, each holding unique
				of the fields in usernames. */


///////////Main program:
int main()
{
	int i=0;
//////////Assign index number while getting data set from input by incrementing i:
	for(i=0; i<(sizeof(reg)/sizeof(reg[0])); i++) 
	{	
	
	reg[i].index=i; /* Assign incrementing index number for each data set in the register array. */

//////////Get input for character arrays in usernames:	
	printf("Enter first name:\n");
	fgets(reg[i].firstname, 40, stdin); /* fgets(to where, max length, from where) */ 
	printf("Enter last name:\n");
    fgets(reg[i].lastname, 40, stdin);
	printf("Enter phone number:\n");
	fgets(reg[i].phonenumber, 15, stdin);
	}
	
	int num;
	
////////////////Print choices:
	
	printf("Please choose an registry number:\n");
	for(i=0; i<(sizeof(reg)/sizeof(reg[0])); i++) 
		printf("%d\t", reg[i].index+1); /* +1 to make people-friendly numbers. */

/////////////////Get index number choice from user.
	scanf("%d", &num);

////////////////Print data according to choice.
	i=num-1; /* Convert back from people friendly numbers. */
	printf("**************Reg %d*************\nFirst name: %s\nLast name: %s\nPhone number: %s\n",reg[i].index+1, reg[i].firstname, reg[i].lastname, reg[i].phonenumber);
	
	return 0;
}	