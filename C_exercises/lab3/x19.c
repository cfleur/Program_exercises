/* Exercise19 (E)
Write a program that reads user input numbers to array. After numbers are in array program will sort them
in to the array from smallest to largest.
*/

#include <stdio.h>
#define SIZE 20

int main() {

	int array[SIZE], swap;
	int i=0,c=0;
	int sorted;
	int length=0;
	int step=0;
	

	printf("Please enter a string of numbers:\n");
	while((c = getchar()) !='\n') {
		array[i] = c;
		i++;
		length++;	
	}

	for(step = 0; step < length-1; step++) {  
		for(i = 0; i < length; i++) {
			if(array[i] > array[i+1]) {
				swap = array[i];
				array[i] = array[i+1];
				array[i+1] = swap;
			}
		} 
 	}

	for(i = 0; i < length; i++)
		putchar(array[i]);
	printf("\n"); 
	return 0;
} 
