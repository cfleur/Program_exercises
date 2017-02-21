/* Exercise22 (M)
Write a program that reads user input one character at a time and writes them to file one character at a
time. Program will terminate on some specific character that will be printed out to the user.
*/
#include<stdio.h>
#include<stdlib.h>
#define MAX 50

int main() {

	FILE *fp; // defines file pointer. 
	fp = fopen("/home1-1/c/catherif/SAMI_PROGRAMMING/week3-4/student_info.txt", "w"); // file path for pointer "fp" to point to.

	char c=0; // defines the the idividual letters that will be input as char type.  NOTE: numbers are treated as characters as well. 
	char array_name[MAX], array_num[MAX]; // arrays to store characters inputed.
	int i=0, j=0, u=0, v=0; // i and j are index counters into arrays, v and u out of arrays.

	// The following 2 while  loops input characters into seperate arrays.
	printf("Enter name, then press enter.  \".\" ends. ");
	
	while((c=getchar()) !=10 && i < MAX) {
		if(c == 46) {
			printf("You entered \"%c\". Goodbye.\n", c);
			exit(0);
		}
		else { 	
			array_name[i]=c;
			i++;
		}
	}
	printf("\nEnter student number, then press enter. \".\" ends. ");
	
	while((c=getchar()) !=10 && u < MAX) {
		if(c == 46) {
			printf("You entered \"%c\". Goodbye.\n", c);
			exit(0);
		}
		else { 	
			array_num[u]=c;
			u++;
		}
	}

	array_name[i+1]='\t'; // assign last space in the array_name as a tab, for seperation.
	array_num[u+1]='\n'; // same as above, but new line.

// The folowing for statements write the characters in arrays to file.

	for(j=0; j <= i+1; j++)
		fputc(array_name[j], fp);
	
	for(v=0; v <= u+1; v++)
		fputc(array_num[v], fp);


	fclose(fp); // close file
//	printf("Termination character: %d\n",array_num[u]);
	return 0;

}

