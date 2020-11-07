
// Header file for input output functions 
#include <stdio.h> 
#include <limits.h>
int* findmin(int* , int);
float getAverage(float[] , int);
int getMin(int[], int);

int main() 
{ 
	float numbers[5] = {1, 2.5, 9, 11.5, 23.5};
	printf("Array Average : %.1f. \n",getAverage(numbers,5));

	int nums[7] = {2,100,3,4,512,34,4};
	printf("The Minimum number is : %.d \n", getMin(nums,7));
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
	return average;
}
int getMin(int list[], int size){
	int i;
	int min = INT_MAX ;
	for(i=0 ; i < size ; i++){
		if(min > list[i]){
			min = list[i];
		}
	}

	return min;
}

