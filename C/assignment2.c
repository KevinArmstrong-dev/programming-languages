
// Header file for input output functions 
#include <stdio.h> 
#include <limits.h>
#include "selectionsort.h"
#include "sorter.h"

int* findmin(int* , int);

int main() 
{ 
	
	int arr[] = {1, 4, 5, 6, -1 };
	int * ptr;
	int i;
	selectionsort(arr, 5,NULL);
	for(i = 0; i < 5; i++) printf("%d ", arr[i]);
	putchar('\n');

	//12
	int arr2[] = {1, 7, 5, 3, 4 };
	sorter(arr2,5);
	putchar('\n');

	// ptr = &arr2[2];
	// printf("Find max: %d ",*findmax(ptr,5));
	return 0; 
} 



