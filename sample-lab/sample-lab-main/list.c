#include "list.h"
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

/*	
Allocate a linked list node with a given key
Allocate a node using malloc(),
initialize the pointers to NULL,
set the key value to the key provided by the argument
 */
struct list_node *allocate_node_with_key(int key)
{
	struct list_node* new_node = (struct list_node*) malloc(sizeof(struct list_node));
	new_node->prev = new_node->next = NULL;
	new_node->key = key;
	return new_node;
}

/*	
Initialize the key values of the head/tail list nodes (I used -1 key values)
Also, link the head and tail to point to each other
 */
void initialize_list_head_tail(struct list_node *head, struct list_node *tail)
{
	head->key = tail->key = -1;
	head->prev = head->next = tail;
	tail->next = tail->prev = head;
	return;
}

/*	
Insert the *new_node* after the *node*
 */
void insert_node_after (struct list_node *node, struct list_node *new_node)
{
	new_node->next = node->next;
	node->next->prev = new_node;
	new_node->prev = node;
	node->next = new_node;
	return;
}

/*	
Remove the *node* from the list
 */
void del_node (struct list_node *node)
{
	node->next->prev = node->prev;
	node->prev->next = node->next;
	return;
}

/*	
Search from the head to the tail (excluding both head and tail,
as they do not hold valid keys), for the node with a given *search_key*
and return the node.
You may assume that the list will only hold nodes with unique key values
(No duplicate keys in the list)
 */
struct list_node *search_list (struct list_node *head, int search_key)
{
	struct list_node *tail = head->prev;
	do {
		head = head->next;
		if(head->key == search_key) return head;
	} while(head != tail);
	return tail;
}

/*	
Count the number of nodes in the list (excluding head and tail), 
and return the counted value
 */
int count_list_length (struct list_node *head)
{
	struct list_node *tail = head->prev;
	int cnt = -1;
	do {
		head = head->next;
		++cnt;
	} while(head != tail);
	return cnt;
}

/*	
Check if the list is empty (only head and tail exist in the list)
Return 1 if empty. Return 0 if list is not empty.
 */
int is_list_empty (struct list_node *head)
{
	return count_list_length(head) == 0;
}

/*	
Loop through the list and print the key values
This function will not be tested, but it will aid you in debugging your list.
You may add calls to the *iterate_print_keys* function in the test.c
at points where you need to debug your list.
But make sure to test your final version with the original test.c code.
 */
void iterate_print_keys (struct list_node *head)
{
	struct list_node *tail = head->prev;
	int cnt = -1;
	do {
		head = head->next;
		printf("%d ", head->key);
	} while(head != tail);
	printf("\n");
	return;
}

/*	
Insert a *new_node* at the sorted position so that the keys of the nodes of the
list (including the key of the *new_node*) is always sorted (increasing order)
 */
int insert_sorted_by_key (struct list_node *head, struct list_node *new_node)
{
	struct list_node *tail = head->prev;
	do {
		head = head->next;
		if(head == tail || head->key > new_node->key) {
			insert_node_after(head->prev, new_node);
			break;
		}
	} while(head != tail);
	return 0;
}
