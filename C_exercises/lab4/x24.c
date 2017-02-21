/* Exercise24 (M)
Fetch file ”exe24.txt” from tuubi. Write a program, that converts the text string in file to readable text.
Characters are normal ASCII characters. (Hint: look for character patters such as newline characters,
exclamations marks, question marks etc.)
*/
#include<stdio.h>

int main() {

	FILE *fp; // defines file pointer. 
	fp = fopen("exe24.txt", "r"); // file path for pointer "fp" to point to.

	char c, p; // defines the the idividual letters that will be read  (as char type). 

	while((c=fgetc(fp)) !=EOF) {
		putchar(c-4);
	}
	fclose(fp); // close file
	return 0;

}

