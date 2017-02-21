/* Exercise13 (E)
Write a program that prints a menu where you have 4 selections. By selecting option 1 program will ask for
temperature ranges lowest value, highest value and step size. By option 2 program will print user defined
temperature range conversion Celsius <-> Farenheit. By selecting option 3 program will print temperature
range conversion Celsius<->Kelvin. By selecting option 4 program will terminate. Menu needs to be
reprinted after option 1, 2 and 3.
*/
// Not sure if this works...


#include <stdio.h>

int main()
{
//	menu:
	printf("         Type [1] to enter values for conversion calculation.\nTHEN     Type [2] for temperature range conversion Celsius<->Farenheit.\n         Type [3] for temperature range conversion Celsius<->Kelvin.\n         Type anything else to terminate.\n");
	int c;
	c = getchar();
		do//(c = 1)
		{
			int A, lower, upper, step;
			printf("Enter the lowest you want in celsius:\n");
			scanf("%d", &lower);
			printf("Enter the highest value you want in celsius:\n");
			scanf("%d", &upper);
			printf("Enter the step (incriment) size:\n");
			scanf("%d", &step);

			printf("Press [2] for Celsius<->Farenheit.\nPress [3] for Celsius<->Kelvin.\n");
			A = getchar();
				if(A = 2)
				{
						printf("hi2\n");
				}
				else if(A = 3)
				{
						printf("hi3\n");
				}
				else 
				{
//					goto menu;
				}	
		}while(c == 1 || c == 2 || c == 3);
		else if(c == 2 && c == 3)
		{
				printf("Please press [1] to enter values first.\n");
				printf("         Type [1] to enter values for conversion calculation.\nTHEN     Type [2] for temperature range conversion Celsius<->Farenheit.\n         Type [3] for temperature range conversion Celsius<->Kelvin.\n         Type anything else to terminate.\n");
				//goto menu;
				float cel, kel;
				lower = cel;
				kel = cel + 273.15;
				do
				{
					printf("%4.0f°C %4.2fK\n", cel, kel);
					cel = cel + step;
					kel = cel + 273.15;
				}
				while(kel <= upper);*/
	/*	}
		else if(c = 3)
			{
				printf("hi 3");
			}*/
		//else 
		//{}
	
/*		else
		{
			printf("Please press 1 to enter values first");
		}
	}
	//else{}
	//while(c = 1 || c = 2 || c = 3); 
	return 0;
}*/





