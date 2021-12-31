/******************************************************************************
 * Redistribution, modification or use of this software in source or binary
 * forms is permitted as long as the files maintain this copyright. Users are 
 * permitted to modify this and use it to learn about the field of embedded
 * software. Alex Fosdick and the University of Colorado are not liable for any
 * misuse of this material. 
 *
 *****************************************************************************/
/**
 * @file <Add File Name> 
 * @brief <Add Brief Description Here >
 *
 * <Add Extended Description Here>
 *
 * @author <Add FirsName LastName>
 * @date <Add date >
 *
 */




#include <stdio.h>
#include <stdint.h>
#include "platform.h"
#include "stats.h"


/* Size of the Data Set */
#define SIZE (40)

// void main() {

//   unsigned char test[SIZE] = { 34, 201, 190, 154,   8, 194,   2,   6,
//                               114, 88,   45,  76, 123,  87,  25,  23,
//                               200, 122, 150, 90,   92,  87, 177, 244,
//                               201,   6,  12,  60,   8,   2,   5,  67,
//                                 7,  87, 250, 230,  99,   3, 100,  90,};

//   /* Other Variable Declarations Go Here */
//   /* Statistics and Printing Functions Go Here */

//   // Create Struct
// stat Array;

//   // Initialize Struct
//   Array.numArray = test;
//   Array.arrayLength = SIZE;
//   Array.max = 0;
//   Array.min = 0xFF;
//   Array.mean = 0;
//   Array.median = 0;

//   // Process Data
//   sort_array(Array.numArray, Array.arrayLength);
//   Array.min = find_min(Array.numArray, Array.arrayLength);
//   Array.max = find_max(Array.numArray, Array.arrayLength);
//   Array.mean = find_mean(Array.numArray, Array.arrayLength);
//   Array.median = find_median(Array.numArray, Array.arrayLength);
//   print_array(Array.numArray, Array.arrayLength);
//   print_statistics(Array);
// }

/* Add other Implementation File Code Here */

void print_statistics (unsigned char minimum, unsigned char maximum, float mean, unsigned char median){
  PRINTF("The minimum is %d \n", minimum);
  PRINTF("The maximum is %d \n", maximum);
  PRINTF("The mean is %f \n", mean);
  PRINTF("The median is %d \n", median);
}


void print_array (unsigned char *array, unsigned int counter){
  for (int i=0; i<counter; i++){
    PRINTF("%d,", *(array + i));
  }
  PRINTF("\n");
}

unsigned char find_median (unsigned char *array, unsigned int counter){
  unsigned char median = 0;
  median = *(array + (counter / 2) -1);
  return median;
}
			
float find_mean (unsigned char *array, unsigned int counter)
{
	float mean =0;
	unsigned int sum =0;
	for(int i=0;i<counter;i++)
	{
		sum += array[i]; //or *(arr+i)
	}	
	mean = sum / (float)counter;
	return mean;
}

unsigned char find_maximum (unsigned char *array, unsigned int counter)
{
	unsigned char max =0 ;
	for(int i=0;i<counter;i++)
	{
		if(array[i]>max) max=array[i];
		else {}

	}	
	return max;	
}
unsigned char find_minimum (unsigned char *array, unsigned int counter)
{
	unsigned char min =*array ;
	for(int i=1;i<counter;i++)
	{
		if(array[i]<min) min=array[i];
		else {}

	}	
	return min;		

}
void sort_array (unsigned char *array, unsigned int counter)
{
	unsigned char temp ;	
	for(int j=0 ;j<counter;j++ )
	{
		for(int i=1+j;i<counter;i++)
		{
			if(array[i]<array[j])
				{
					temp = array[j];
					array[j]=array[i];
					array[i]=temp; 
				}
			else {}
	
		}
	}			
}

