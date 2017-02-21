/* Exercise30 (E)
Write function app, that takes two * char (s1 and s2) pointers and one int as parameters. (s1 is array size,
meaning the location where the pointer points). s2 is appended to the end of s1. If the result is too long,
overflown characters are truncated.
char s1[40];
char s2[40];
//s1 =”123”, s2=”abc”
app(s1,s2,40); // s1 = ”123abc”
// s1 =”012345678901234567890123456789012345”, s2 = “abcdefghijklmn”;
app(s1, s2, 40); // s1 = “012345678901234567890123456789012345abc”
...
app: this function appends two arrays together and truncates where the 
new unified array excedes a defined length. */

#include<stdio.h>
#include<string.h>
#include <stdlib.h>
#define MAX 50


int main() 
{
	int n;
	char *s1 = malloc(MAX);
	char *s2 = malloc(MAX);
	
	if(s1 == NULL || s2 == NULL) {
		printf("Error.");
		return 1;
	}	

	//////////////////////////Get strings from user.
	printf("Enter first string: ");	
	fgets(s1, MAX, stdin);

	n=7;
	app(s1,s2,n);
	
	free(s1);
	free(s2);
	return 0;
}	



int app(char *s1,char *s2, int size)
{
	int i=0;
	int temp;
	
//	printf("%s\n", s1);


		//while(*s1++ = *temp++)
		//i++;
	temp = *s1;
	*s1 = *s2;
	*s2 = temp;


	printf("%s\n", s1);
	printf("%s\n", s2);
	printf("%d\n", i);
}
/*
int main()
{
	char s1[MAX];
	int size;
	char c;
	int i;
	
	/////////////////////////Get total length of appended array from user.
	printf("please enter the total length for appended array: ");
	scanf("%d", &size);	
	
	//s1 = (char*)malloc(size);
	//if (s1) {
		
	
		//////////////////////////Get strings from user.
		printf("Enter first string: ");
		scanf("%s", s1);
		
		printf("%s",s1);
		
		//app(s1,size);
	//}		
		

	

	//free(s1);

	return 0;
}



/*	int n;
	char array1[MAX], array2[MAX];




//////////////////////////Get strings from user.
	printf("Enter first string: ");
	fgets(array1, MAX, stdin);
	
	printf("enter second string: ");
	fgets(array2, MAX, stdin);
	
/////////////////////////Get total length of appended array from user.
	printf("please enter the total length for appended array");
	scanf("%d", &n);
	
////////////////////////Assign pointers to arrays.	
	s1 = &array1;
	s2  = &array2;
	
/////////////////////////Pass arrays through function.	
	app(*s1,*s2,n)
	
	return 0;
}
 
//////////////////////////Function 'app':

char app(char *s1, char *s2, int n)
{
		char srting1[], string2[], newstring[];
		int i=0;
		
		s1 = &srting1;
		s2 = &string2;

/////////////////////////Count array cells in sring 1:		
		for(i=0; i<; i++)
			string1[i];
		// Now i = length of string1. 
		
		i=n
		s1 = newstring 
////////////////////////		
return *s1	
}
*/
