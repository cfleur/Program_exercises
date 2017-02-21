/* Exercise23 (M)
Fetch file ”exe23.txt” from tuubi. Write a program that reads the file contents and tells how many
lowercase letters, uppercase letters, spaces and newline characters are included in the file. Also print how
many characters did not fall in the above categories?
*/
#include<stdio.h>

int main() {

	FILE *fp; // defines file pointer. 
	fp = fopen("exe23.txt", "r"); // file path for pointer "fp" to point to.

	char c; // defines the the idividual letters that will be read  (as char type). 
	int lc=0, uc=0, sp=0, nl=0, x=0; // various index counters for char typesi(lowercase letters, uppercase letters, spaces and newline characteros, and other).

	while((c=fgetc(fp)) !=EOF) {
		if(c >= 97 && c <= 122)
			lc++; // counts lower case letters.
		else if(c >= 65  && c <= 90)
			uc++; // count upper case letters.
		else if(c == 32)
			sp++; // count spaces.
		else if(c == 10)
			nl++; // count new lines. 
		else
			x++; // count anything else.					
	}
	fclose(fp); // close file
	printf("Lowercase letters: %d\nUppercase letters: %d\nSpaces: %d\nNew lines: %d\nOther: %d\n", lc, uc, sp, nl, x);
	return 0;

}

