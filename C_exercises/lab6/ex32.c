/* Exercise32 (M)
Write a program that asks user for five persons name and phone number and saves them to structures.
Every structure has to have index number in them as well, that is assigned automatically. After the names
and phone numbers are given, program will print out all the index numbers, names and phone numbers of
the structures.
...
This program creates a structure with the fields name (first and last) and phone number, 
and assigns an index (interger number) to each. It gets user input and then prints out the the values. */

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

/////////Print out data from structure:
	printf("**************Reg %d*************\nFirst name: %s\nLast name: %s\nPhone number: %s\n",reg[i].index, reg[i].firstname, reg[i].lastname, reg[i].phonenumber);
	}
	
	return 0;
}	
