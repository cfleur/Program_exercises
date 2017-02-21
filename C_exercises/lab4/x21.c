/* Exercise21 (M)
Write a function that does as the exercise 20, but the file printing is done by calling a function for the
printing (function needs to be self written). Meaning that in main you call function ”ownFunction” that
does the printing to the file.
*/
#include<stdio.h>
#define MAX 50

void printto(char c, FILE *pointer);
int main() {

	FILE *fp; // defines file pointer. 
	fp = fopen("/home1-1/c/catherif/SAMI_PROGRAMMING/week3-4/student_info.txt", "w"); // file path for pointer "fp" to point to.

	char c=0; // defines the the idividual letters that will be input as char type.  NOTE: numbers are treated as characters as well. 
	char array_name[MAX], array_num[MAX]; // arrays to store characters inputed.
	int i=0, j=0, u=0, v=0; // i and j are index counters into arrays, v and u out of arrays.

	// The following 2 while  loops input characters into seperate arrays, and the input cannot be a newline char, at which point the loop terminates.
	printf("Enter name, then press enter: ");
	
	while((c=getchar()) !=10 && i < MAX) {
		array_name[i]=c;
		i++;
	}
	printf("\nEnter student number, then press enter: ");
	
	while((c=getchar()) !=10 && u < MAX) {
		array_num[u]=c;
		u++;
	}

	array_name[i+1]='\t'; // assign last space in the array_name as a tab, for seperation.
	array_num[u+1]='\n'; // same as above, but new line.

// The folowing for statements write the characters in arrays to file.

	for(j=0; j <= i+1; j++) // only takes characters that were written into the array.
		printto(array_name[j], fp);
	
	for(v=0; v <= u+1; v++)
		printto(array_num[v], fp);


	fclose(fp); // close file
	return 0;
}

// This is a function to print to a file.
void printto(char c, FILE *pointer) {
	
//	FILE *pointer;
//	pointer = fopen("filepath","a");
	fputc(c, pointer);
//	fclose(pointer); 
}




