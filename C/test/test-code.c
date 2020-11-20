#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <limits.h>

//struct node* insert_dictionary_order(char*, struct node *);
struct person;
struct person {
   int age;
   char name [40];
//    struct age *next;
};

static void swap(struct person *first, struct person *sec); 
void printPerson(struct person *c);
void sortPage(struct person *c, int size);
static struct person* findmax(struct person people[], int size);
static struct person* findmin(struct person people[], int size);

void selectionsort(struct person list[], int size, struct person*(*fun)(struct person list[], int size));

void printPerson(struct person *c){
    // printf("Hello world!!");
    printf("The person is %s ", c->name);
    printf(" Age %d", c->age);
    putchar('\n');
    // printf("%s",person->age);
};


int main(){
    struct person pete = {.age =25, .name= "John legend"};
    struct person john = {.age=30, .name= "Peter Davifidon"};
    struct person fonda = {.age=22, .name= "Fonda Jane"};
    struct person elvila = {.name = "Elvila", .age = 19};
    
    struct person * (*ptr) (struct person *,int size);
    ptr = &findmin;

    struct person people[4] = {pete, john, elvila, fonda};
    selectionsort(people,4,findmin);

    for(int i=0; i< 4; i++){
        printPerson(&people[i]);
    }
    //printf( "Hello %s", pete.name);
    
}


/**
This function takes a list and it's size,
then it computes the lowest element then
it returns a pointer to that element.
**/
static struct person* findmin(struct person people[], int size){
	int i;
	int min = INT_MAX ;
	int pos = 0;
	struct person *res;
	for(i=0 ; i < size ; i++){
		if(min > people[i].age){
			min = people[i].age;
			pos = i;
		}
	}
    res = &people[pos];
	return res; //should modify some funcs
}

/**
This function takes a list and it's size,
then it computes the lowest element then
it returns a pointer to that element.
**/
static struct person* findmax(struct person people[], int size){
	int i;
	int max = INT_MAX ;
	int pos = 0;
	int *res;
	for(i=0 ; i < size ; i++){
		if(max < people[i].age){
			max = people[i].age;
			pos = i;
		}
	}
    //res = &people[pos];
	return &people[pos]; //should modify some funcs
}

void selectionsort(struct person list[], int size, struct person * (*fun) (struct person *,int size)){
    int i,j;
    int * ptr;
    for(i=0; i < size ; i ++){
           struct person *min = fun(&list[i],size);
          // swap(&list[i],fun(&list[i],size));
             struct person temp = list[i];
             list[i] = *min;
            *min = temp;
    }

}

static void swap(struct person *first, struct person *sec) { 
    struct person temp = *first; 
    *first = *sec; 
    *sec = temp; 
} 

