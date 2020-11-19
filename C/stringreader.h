
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

struct node;
struct node* insert_dictionary_order(char*, struct node *);
void print_list(struct node *head);

struct node {
   char data [255];
   struct node *next;
};

//struct node *current;

struct node* insert_dictionary_order(char data[],struct node *head){
    struct node *newNode = (struct node*) malloc(sizeof(struct node));
    if(newNode == NULL){
        printf("ERROR: Out of Memory");
    }

    stpcpy(newNode->data,data);
    newNode->next = head;
    return newNode;
}

void print_list(struct node *head){
   struct node *ptr = head;
   printf("\n[");
	
   //start from the beginning
   while(ptr != NULL) {
      printf("%s ",ptr->data);
      ptr = ptr->next;
   }
	
   printf(" ]");
}
