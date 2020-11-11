
// Header file for input output functions 
#include <stdlib.h>
#include <string.h>

#include <stdio.h> 
#include <limits.h>
#include "selectionsort.h"
#include "sorter.h"
#include "stringreader.h"

void insert_dictionary_orderx(char data[]);
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
	int arr2[] = {9, 2, 5, 4, 12, 7};
	sorter(arr2,6);
	putchar('\n');

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


