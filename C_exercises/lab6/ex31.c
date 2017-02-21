/* Exercise31 (M)
Write a program that creates a structure, where one can save name and phone number. Program will ask
for the user to input name and phone number (and insert them to the structure) and then prints out the
given name and phone number from the structure.
...
This program creates a structure with the fields name and phone number. It gets user input and then prints out the the values. */

#include<stdio.h>

////////////Make the structure:
struct users 
{
	char firstname[40];
	char lastname[40];
	char phonenumber[15];
};


///////////Main program:
int main()
{
	struct users user1; /* defines data set user1 of the struct type users */

//////////Get input for struct char arrays:	
	printf("Enter first name:\n");
	fgets(user1.firstname, 40, stdin); /* fgets(to where, max length, from where) */ 
	printf("Enter last name:\n");
        fgets(user1.lastname, 40, stdin);
	printf("Enter phone number:\n");
	fgets(user1.phonenumber, 15, stdin);

/////////Print out data from structure:
	printf("User1************\nFirst name: %s\nLast name: %s\nPhone number: %s\n",user1.firstname, user1.lastname, user1.phonenumber);

	return 0;
}	
