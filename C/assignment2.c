
// Header file for input output functions 
#include <stdio.h> 
#include <limits.h>
#include "selectionsort.h"

int* findmin(int* , int);
float getAverage(float[] , int);


int main() 
{ 
	float numbers[5] = {1, 2.5, 9, 11.5, 23.5};
	printf("Array Average : %.1f. \n",getAverage(numbers,5));

	int nums[7] = {12,-100,3,4,512,34,4};
	int * m = findmin(nums,7);
	printf("The Minimum number is : %.d \n", * m);
	printf("Hello cruel world!!");
	putchar('\n');
	//sort
	selectionsort(nums,7);

	for(int i = 0; i < 7; i++){
		printf("%d ",nums[i]);
	}
	putchar('\n');
	return 0; 
} 

float getAverage(float list[] , int size){
	int i;
	float sum = 0.0;
	float average = 0.0;

	for (i =0 ; i < size ; i++){
		sum = sum + list[i];
	}
	average = (sum/size);
	return average; //average
}

