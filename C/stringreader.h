
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

struct node;
void insert_dictionary_order(char*);
void print_list();

struct node {
   char data [255];
   int key;
   struct node *next;
};

struct node *head ;
//struct node *current;

void insert_dictionary_order(char data[]){
    struct node *newNode = (struct node*) malloc(sizeof(struct node));
    
    if(newNode == NULL){
        printf("ERROR: Out of Memory");
    }

    stpcpy(newNode->data,data);
    newNode->next = head;

    head = newNode;

    printf("The head data is now: %s" , head->data);
}

void print_list(){
    //Print the whole node
}
