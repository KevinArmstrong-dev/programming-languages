#include <limits.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

void doubleit(int a);
int* pairwise(int listA[],int listB[], int size);
void apply(void (*fun)(int *),int * a, int n);
int main(){
    int A [5] = {4,6,5,2,1};
    int B [5] = {3,2,2,1,2};
    int * res = pairwise(A,B,5);
    for(int i=0; i < 5; i ++){
        printf("%d", res[i]);
    }

    int * x;
    *x = 4;
    //doubleit(4);
   // printf("digit %d",*x);

}

void apply(void (*fun)(int *),int a[], int n){
    for(int i=0; i < n ; i++){
       fun(&a[i]);
    }
}

int * pairwise(int listA[],int listB[], int size){
    int * newArr = malloc(size*sizeof(int));

    for(int i=0; i< size; i++){
        newArr[i] = (listA[i] - listB[i]);
    }
    free(newArr);
    return newArr;
}

void doubleit(int a){
    int temp = a + a;
     printf("%d \n",temp);
    
}


