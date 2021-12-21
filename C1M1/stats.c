/******************************************************************************
 * Copyright (C) 2017 by Alex Fosdick - University of Colorado
 *
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
#include "stats.h"

/* Size of the Data Set */
#define SIZE (40)

void main() {

  unsigned char test[SIZE] = { 34, 201, 190, 154,   8, 194,   2,   6,
                              114, 88,   45,  76, 123,  87,  25,  23,
                              200, 122, 150, 90,   92,  87, 177, 244,
                              201,   6,  12,  60,   8,   2,   5,  67,
                                7,  87, 250, 230,  99,   3, 100,  90};

 /* Other Variable Declarations Go Here */
  unsigned char min = 0;
  unsigned char max = 0;
  float mean = 0;
  unsigned char median = 0;

  /* Statistics and Printing Functions Go Here */
  printf("Array before sorting: \n");
  print_array(&test, SIZE);
  median = find_median(&test, SIZE);
  mean = find_mean(&test, SIZE);
  max = find_maximum(&test, SIZE);
  min = find_minimum(&test, SIZE);
  print_statistics(min, max, mean, median);
  sort_array(&test, SIZE);
  printf("Array after sorting: \n");
  print_array(&test, SIZE);

}

/* Add other Implementation File Code Here */

void print_statistics (unsigned char minimum, unsigned char maximum, float mean, unsigned char median){
  printf("The minimum is %d \n", minimum);
  printf("The maximum is %d \n", maximum);
  printf("The mean is %f \n", mean);
  printf("The median is %d \n", median);
}


void print_array (unsigned char *array, unsigned int counter){
  for (int i=0; i<counter; i++){
    printf("%d,", *(array + i));
  }
  printf("\n");
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

