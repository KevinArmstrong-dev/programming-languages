#include <limits.h>
#include <stdio.h>
#include <stdlib.h>

int sorter(int * arr, int); 
int* findmax(int * arr, int);
int* copyarr(int * arr, int);
void swap(int *first, int *sec); 
int getAverage(int[] , int);

int* findmax(int list[], int size){
	int i;
	int max = INT_MIN ;
	int pos = 0;
	int *res;
	for(i=0 ; i < size ; i++){
		if(max < list[i]){
			max = list[i];
			pos = i;
		}
	}
    res = &list[pos];
	return res;
}


int sorter(int list[], int size){
    int * desc = (int*) malloc(size * sizeof(int));
    if(desc == NULL){
        printf("ERROR: Out of memory. \n");
        return 1;
    }

    int * asc = (int*) malloc(size * sizeof(int));

    if(asc == NULL){
        printf("ERROR: Out of memory. \n");
        return 1;
    }

// copy the array
    for(int i=0; i < size ; i ++){
        desc[i] = list[i];
        asc[i] = list[i];
    }

    int i ;
    int y =0;
    for(i=0; i < size ; i ++){
        int * max = findmax(&desc[i],size);
        int temp = desc[i];
        desc[i] = *max;
        *max = temp;
    }

    int minIndex;
    for(i=0; i < size ; i ++){
      minIndex = i;
      for(int j = i+1; j < size; j++){
          if(asc[minIndex]> asc[j]){
              minIndex = j;
          }
      }
      //swap using helper swap function
      swap(&asc[minIndex],&asc[i]);
      
    }

    printf("Sorter print!");
    //print desc
    for(int j = 0; j < size; j++) printf("%d ", desc[j]);
    
    putchar('\n');
    
    printf("Sorter original Ascending!");
    for(int j = 0; j < size; j++) printf("%d ", asc[j]);

    putchar('\n');

    printf("The Maximum Number is: %d \n",desc[0]);
    printf("The Minimum Number is: %d \n",asc[0]);
    printf("The average is : %d \n", getAverage(list,size));
    putchar('\n');
    free(asc);
    free(desc);
    return 0;
}

void swap(int *first, int *sec) { 
    int temp = *first; 
    *first = *sec; 
    *sec = temp; 
} 

int getAverage(int list[] , int size){

	int i;
	int sum = 0;
	int average = 0;

	for (i =0 ; i < size ; i++){
		sum = sum + list[i];
	}
	average = (sum/size);
	return average; //average
}