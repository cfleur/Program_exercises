#include <stdio.h>
/* Exercise6 (E)
Write a program that calculated volume of a ball in meters (use approximate value for pi). After this the program will tell how many liters of water can be fit inside the ball and how many US gallons of water this is. Tell the value with maximum accuracy that you can achieve (don’t get crazy here).
...
This program tells how many liters and US gallons fit inside a ball*/

int main(void)
{
	printf("How many liters and US gallons will fit into the ball? \n");
	float rad, dia, vol, m3_2L, L_2gal;
	rad = 2;
	dia = (rad*2);
	vol = (4/3*3.14*rad*rad*rad);
	m3_2L = (vol/1000);
	L_2gal = (m3_2L*0.264172);
	printf("A ball with diameter %.2fm will hold approximately  %.2f L or %.2f US gallons.\n", dia, m3_2L, L_2gal);
	return 0;
}	
	
 
