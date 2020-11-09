// Header file for input output functions 
#include <stdio.h> 
#include <stdlib.h>
#include <limits.h>
int* findmin(int* , int);
float getAverage(float[] , int);
int* findmin(int * arr, int);
int makesmaller(int * arr, int ,int );
void selectionsort(int * arr, int); 

/**
This function takes a list and it's size,
then it computes the lowest element then
it returns a pointer to that element.
**/
int* findmin(int list[], int size){
	int i;
	int min = INT_MAX ;
	int pos = 0;
	int *res;
	for(i=0 ; i < size ; i++){
		if(min > list[i]){
			min = list[i];
			pos = i;
		}
	}
    res = &list[pos];
	return res;
}

void selectionsort(int list[], int size){
    int i,j;
    int * ptr;
    for(i=0; i < size/2 ; i ++){
        int * min = findmin(&list[i],size);
        int temp = list[i];
        list[i] = *min;
        *min = temp;
    }

}
