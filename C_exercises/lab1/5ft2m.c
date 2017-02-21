#include <stdio.h>
/* Exercise5 (M)
Write a program that converts feet (ft) to meters (m). Give result with precision of 2 numbers after the decimal marker.
...
This program converts 1 foot into 1 meter*/

int main(void)
{
	printf("Convert feet into meters \n");
	float feet, foot2_m, result_m;
	feet = 2;
	foot2_m = 0.3048;
	result_m = (feet*foot2_m);
	printf("%.4fft is %.4fm.\n", feet, result_m);
	return 0;
}	
	
 
