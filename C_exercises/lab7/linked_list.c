/* Exercise34 (E)
Write a program that uses linked list for creating a user-defined length of a list of structures in the memory.
Structures in the memory have atleast 2 fields: ID and name. (also you will likely want to use next and
previous memory locations in the list….)
a) After filling in the list, print out the list in order
b) Build the list so, that you can go back and forth in the list one unit at a time
c) Make the list adjustable so that you are able to remove a single or multiple units from the list so
that you can strill scroll though the list after removing the units
*/


#include <stdio.h>
#include <stdlib.h>
#include <string.h>


struct node {
	int id;
	char name[40];
	struct node* next;
	struct node* prev;
}info;



void display(int action);
int insert(int num, char *Name);
void print();
void deletenode(int n);

struct node* root; // Declare root a pointer to the first node




int main() {
	
	int n=0,m=0,Id=0,i=0,action=0;
	char nAme[40];
	char *name_ptr;

	root = NULL; // List is empty


do {
	
	action =1;
	if(action ==1) {
	////////////////////// MENU
	printf("MENU:\nWhat would like to do? Enter:\n");
	printf("1--menu\n2--enter list elements\n3--delete elements of list\n4--go through list\nany other key to exit\n");
	scanf("%d", &action);
}

	if(action == 2) {
	//////////////////// ADD ELEMENTS
	printf("ADD:\nHow many list entries do you want to make?\n");
	printf("List entries are added to the beginning of the list.\n");
	scanf("%d", &n);

	
	for(i=0; i<n; i++) {
		printf("Enter name: ");
		scanf("%s", nAme);
		printf("Enter id number: ");
		scanf("%d", &Id);
		name_ptr = &nAme[0];
		insert(Id, name_ptr);
		print();
	}

	printf("What would like to do? Enter:\n");
	printf("1--menu\n2--enter list elements\n3--delete elements of list\n4--go through list\nany other key to exit\n");
	scanf("%d", &action);
}
	if(action == 3) {
	////////////////// DELETE ELEMENTS
	printf("DELETE:\nHow many elememts would you like to delete?\n");
	scanf("%d", &n);
	for(i=0; i<n; i++) {
		printf("Which list element do you want to delete?\n");
		scanf("%d", &m);
		deletenode(m);
		print();
	}

	printf("What would like to do? Enter:\n");
	printf("1--menu\n2--enter list elements\n3--delete elements of list\n4--go through list\nany other number to exit\n");
	scanf("%d", &action);
}
	if(action ==4) {
		//////////////////////// GO THROUGH LIST
		//printf("GO THROUGH LIST: coming soon\n");
	display(action);
	//printf("What would like to do? Enter:\n");
	//printf("1--menu\n2--enter list elements\n3--delete elements of list\n4--go through list\nany other number to exit\n");
	scanf("%d", &action);
	}
	
	} while (action == 1 || action == 2 || action == 3 || action == 4);
}



int insert(int num, char *Name) {
	struct node* temp = (struct node*)malloc(sizeof(struct node));
	if(temp == NULL) {
		printf("Some malloc problem.\n");
		return 1;
	}
	temp->id = num;
	strcpy(temp->name, Name);

    temp->prev=NULL;
    temp->next=NULL;

    if(root == NULL) {
        root=temp;
        return 0;
    }

    struct node* aux = root;

    while(aux->next != NULL) {
        aux=aux->next;
    }

    aux->next = temp;
    temp->prev = aux;
    //printf("%d\n**\n", aux->next);
}

void print() {

	struct node* temp = root;
	while(temp != NULL) {
		printf("\n\n%d\n%s\n\n", temp->id,temp->name);
		temp = temp->next;
		
	}
	printf("\n");
}

void deletenode(int n) {

	int i;
	// There is a node before the node that user wants to delete.
	// If next node == NULL thats okay
	struct node* temp1 = root; // traverse the list
	if(n == 1) {
		root = temp1->next;
		free(temp1);
		return;
	}

	for(i=0; i<n-2; i++)
		temp1 = temp1->next; // temp1 points to node n-1
		printf("The previous element is \n%d\n%s\n", temp1->id, temp1->name);

	struct node* temp2 = temp1->next; //node n
	printf("This element is \n%d\n%s\n", temp2->id, temp2->name);
	temp1->next = temp2->next; // node n+1
	printf("The next element is \n%d\n%s\n", temp2->id, temp2->name); // this is wrong

	free(temp2); // delete temp 2

}

void printnote(int n) {

	int i;
	struct node* temp1 = root; // traverse the list
	if(n == 1) {
		root = temp1->next;
		printf("The next element is \n%d\n%s\n", temp1->id, temp1->name);
	}

	for(i=0; i<n-2; i++)
		temp1 = temp1->next; // temp1 points to node n-1
		printf("The previous element is \n%d\n%s\n", temp1->id, temp1->name);

	struct node* temp2 = temp1->next; //node n
	printf("This element is \n%d\n%s\n", temp2->id, temp2->name);

}

void display(int action)
{
    struct node *temp;
    temp=root;
    while(temp!=NULL && action !=0 )
    {
    printf("Element is \n%d\n%s\n", temp->id, temp->name);
	printf("For foroward press 1 for backwards press 2 exit press 0 \n");
	scanf("%d", &action);
	if(action==1)
		temp=temp->next;
	else if(action==2)
		temp=temp->prev;
	
    }
}




/*A = NULL;
node* temp = (node*)malloc(sizeof(node));

(*temp).data



free(node);*/