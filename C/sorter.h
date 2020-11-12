#include <limits.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int sorter(int * arr, int); 
static int* findmax(int * arr, int);
int* copyarr(int * arr, int);
static void swap(int *first, int *sec); 
static float getAverage(int[] , int);
float getStandardDeviation(int[] , int, float);
int selectionsortMin(int * arr, int, int);


static int* findmax(int list[], int size){
	int i;
	int max = INT_MIN ;
	int pos = 0;
	int *res;
	for(i=0 ; i < size; i++){
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
        int * max = findmax(&desc[i],size - i);
        swap(&desc[i],&*max);
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
    float average = getAverage(list,size);
    printf("The average is : %.2f \n", average);
    printf("The standard deviation is %.2f \n", getStandardDeviation(list,size,average));

    putchar('\n');
    free(asc);
    free(desc);
    return 0;
}

static void swap(int *first, int *sec) { 
    int temp = *first; 
    *first = *sec; 
    *sec = temp; 
} 

static float getAverage(int list[] , int size){

	int i;
	int sum = 0;
	float average = 0.0;

	for (i =0 ; i < size ; i++){
		sum = sum + list[i];
	}

	average = ((float)sum/(float)size);
	return average; //average
}

float getStandardDeviation(int list[] , int size, float average){
   float indiv = 0.0;
   float stdv =0.0;
    for(int i=0; i < size; i++){
        indiv = indiv + (((float)list[i]- average)*((float)list[i]- average));
    }
    float variance = indiv/(float)(size - 1);
    stdv = sqrtf(variance);

    return stdv;
}

int selectionsortMin(int list[], int size, int min){
    int i,j;
    int * ptr;
    int * min_Num;

    if(min != 0){
        printf("Min was not given");
    }
    for(i=0; i < size/2 ; i ++){
        if(min != 0){
           min_Num = findmin(&list[i],size);
            int temp = list[i];
            list[i] = *min_Num;
            *min_Num = temp;
        }else{
         //min is called
        }
      
    }

    return 0 ;

}
