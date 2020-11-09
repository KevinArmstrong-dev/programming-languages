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

	// int i, j;
	// for(i=0; i < size; i ++){
	// 	int min = i;
	// 	for(j=i+1 ; j < size ; j++){
	// 		if(list[j]< list[min]){
	// 			min = j;
	// 		}
	// 	}

	// 	int temp = list[min];
	// 	list[min] = list[i];
	// 	list[i] = temp;
	// }

    int i,j;

    for(i =0; i < size; i++){
        makesmaller(list,size,i);
    }
}

int makesmaller(int list[], int size, int start){
    int i,j;
    int newsize = (size-start);
    int *temparr =  (int*) malloc(newsize * sizeof(int));

    if(temparr == NULL){
        printf("ERROR: Out of memory. \n");
        return 1;
    }
    j =0;
    for(i=start; i < size -1 ; i++){
        temparr[j] = list[start];
    }
    int* min = findmin(temparr,newsize);
    printf("The min in the helper fuction is %d  \n",*min);
    free(temparr);
    return 0;
}
