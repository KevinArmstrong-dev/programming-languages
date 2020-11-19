
// Header file for input output functions 
#include <stdlib.h>
#include <string.h>

#include <stdio.h> 
#include <limits.h>
#include "selectionsort.h"
//#include "sorter.h"
#include "stringreader.h"

void insert_dictionary_orderx(char data[]);
static int * findmin(int* arr, int size);

int main() 
{ 
	

	//9 find min
	// int arr[] = {1, 4, 5, 6, -1 };
	// int * m = findmin(arr,5);
	// printf("%d",*m);
	// putchar('\n');

	// //10 selection sort
	// int * ptr;
	// int i;
	// selectionsort(arr, 5);
	// //printf("selection sort \n");
	// for(i = 0; i < 5; i++) printf("%d ", arr[i]);
	// putchar('\n');

	int arr2[] = {9, 2, 5, 4, 12, 7};

	//11
	selectionsort(arr2,6);

	//12
	// sorter(arr2,6);
	// putchar('\n');

	//13
	struct node *head = NULL;
	head = malloc(sizeof(struct node));
	head->next = NULL;

	FILE * fp;
	fp = fopen("sample.txt", "r");
	if (fp==NULL) { 
		printf("Could not open out.txt\n");
		return 1;
	}
	int bufferLength = 255;
	char buffer[bufferLength];


 	while(fgets(buffer, bufferLength, fp)) {
		if(strcmp(buffer,".\n") == 0 ){
			break;
		}
		head = insert_dictionary_order(buffer,head);
	}
	print_list(head);
	putchar('\n');
	fclose(fp);
	return 0; 
} 


