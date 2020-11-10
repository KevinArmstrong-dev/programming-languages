#include <limits.h>
#include <stdio.h>
#include <stdlib.h>

int sorter(int * arr, int); 
int* findmax(int * arr, int);

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
    int i ;
    int y =0;
  //  int* ptr  = list;
    for(i=0; i < size ; i ++){
        int * max = findmax(&list[i],size);
        printf("The max found is: %d \n.",*max);
        desc[i] = *max;
        //y++;
    }

    printf("Sorter print!");
    //print desc
    for(int j = 0; j < size; j++) printf("%d ", list[j]);
    free(asc);
    free(desc);
    return 0;
}