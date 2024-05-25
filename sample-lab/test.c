#include "list.c"

void setup_head_tail(struct list_node **head, struct list_node **tail) {
  *head = allocate_node_with_key(0);
  *tail = allocate_node_with_key(0);
  initialize_list_head_tail(*head, *tail);
}

int AllocateHeadTailTest(void) {
  struct list_node *head, *tail;

  setup_head_tail(&head, &tail);

  int score = 0;

  // Empty Check
  if (head->next == tail) score++;
  if (tail->prev == head) score++;

  // Doubly linked list invariant
  if (head->prev == tail) score++;
  if (tail->next == head) score++;

  printf("AllocateHeadTail Test Score : %d / 4\n", score);
  return score == 4;
}

int IsInitiallyEmptyTest(void) {
  struct list_node *head, *tail;

  setup_head_tail(&head, &tail);

  int score = 0;
  if (is_list_empty(head) == 1) score++;

  printf("IsInitiallyEmpty Test Score : %d / 1\n", score);
  return score == 1;
}

int InsertNodeAfterTest(void) {
  struct list_node *head, *tail;

  setup_head_tail(&head, &tail);

  struct list_node *new_node;
  struct list_node *insertion_point = head;

  int score = 0;
  int total_score = 0;
  for (int i = 0; i < 10; i++) {
    total_score++;

    new_node = allocate_node_with_key(i + 1);
    insert_node_after(insertion_point, new_node);

    if (insertion_point->next == new_node) score++;
    insertion_point = insertion_point->next;
  }

  struct list_node *node = head->next;
  int idx = 1;
  // Check forward
  //
  while (node != tail) {
    total_score++;
    if (idx == node->key) score++;
    idx++;
    node = node->next;
  }

  // Check backward
  idx = 10;
  node = tail->prev;
  while (node != head) {
    total_score++;
    if (idx == node->key) score++;
    idx--;
    node = node->prev;
  }

  // Doubly linked list invariant
  if (head->prev == tail) score++;
  total_score++;
  if (tail->next == head) score++;
  total_score++;

  printf("InsertNodeAfter Test Score : %d / %d\n", score, total_score);
  return score == total_score;
}

int InsertFrontTest(void) {
  struct list_node *head, *tail;

  setup_head_tail(&head, &tail);

  struct list_node *new_node;
  struct list_node *insertion_point = head;

  int score = 0, total_score = 0;
  for (int i = 0; i < 10; i++) {
    new_node = allocate_node_with_key(i + 1);
    insert_node_after(insertion_point, new_node);

    total_score++;
    if (insertion_point->next == new_node) score++;
  }

  struct list_node *node = head->next;
  int idx = 10;
  // Check forward
  while (node != tail) {
    total_score++;
    if (idx == node->key) score++;
    idx--;
    node = node->next;
  }

  // Check backward
  idx = 1;
  node = tail->prev;
  while (node != head) {
    total_score++;
    if (idx == node->key) score++;
    idx++;
    node = node->prev;
  }

  // Doubly linked list invariant
  if (head->prev == tail) score++;
  total_score++;
  if (tail->next == head) score++;
  total_score++;

  printf("InsertFront Test Score : %d / %d\n", score, total_score);
  return score == total_score;
}

int InsertThenSearch(void) {
  struct list_node *head, *tail;

  setup_head_tail(&head, &tail);

  struct list_node *new_node;
  struct list_node *insertion_point = head;

  int score = 0, total_score = 0;

  for (int i = 0; i < 10; i++) {
    new_node = allocate_node_with_key(i + 1);
    insert_node_after(insertion_point, new_node);

    total_score++;
    if (insertion_point->next == new_node) score++;
    insertion_point = insertion_point->next;
  }

  struct list_node *node = NULL;

  // Check Search functionality
  for (int i = 0; i < 10; i++) {
    node = search_list(head, i + 1);

    total_score += 2;
    if (node != NULL) score++;
    if (node->key == i + 1) score++;
  }

  // Doubly linked list invariant

  total_score += 2;
  if (head->prev == tail) score++;
  if (tail->next == head) score++;

  printf("InsertThenSearch Test Score : %d / %d\n", score, total_score);
  return score == total_score;
}

int InsertThenSearchDelete(void) {
  struct list_node *head, *tail;

  setup_head_tail(&head, &tail);

  struct list_node *new_node;
  struct list_node *insertion_point = head;

  int score = 0, total_score = 0;

  for (int i = 0; i < 10; i++) {
    new_node = allocate_node_with_key(i + 1);
    insert_node_after(insertion_point, new_node);

    total_score++;
    if (insertion_point->next == new_node) score++;
    insertion_point = insertion_point->next;
  }

  struct list_node *node = NULL;

  // Check Search functionality
  for (int i = 10; i > 0; i--) {
    node = search_list(head, i);

    total_score += 2;
    if (node != NULL) score++;
    if (node->key == i) score++;
    del_node(node);
  }

  // Doubly linked list invariant
  total_score += 2;
  if (head->prev == tail) score++;
  if (tail->next == head) score++;

  printf("InsertThenSearchDelete Test Score : %d / %d\n", score, total_score);
  return score == total_score;
}

int InsertDeleteAndCount(void) {
  struct list_node *head, *tail;

  setup_head_tail(&head, &tail);

  struct list_node *new_node;
  struct list_node *insertion_point = head;

  int score = 0, total_score = 0;
  for (int i = 0; i < 10; i++) {
    new_node = allocate_node_with_key(i + 1);
    insert_node_after(insertion_point, new_node);

    total_score++;
    if (insertion_point->next == new_node) score++;
    insertion_point = insertion_point->next;
  }

  total_score++;
  if (count_list_length(head) == 10) score++;

  struct list_node *node = NULL;

  // Check Search functionality
  for (int i = 10; i > 0; i--) {
    node = search_list(head, i);

    total_score += 3;
    if (node != NULL) score++;
    if (node->key == i) score++;

    del_node(node);

    if (count_list_length(head) == i - 1) score++;
  }

  total_score += 4;
  if (count_list_length(head) == 0) score++;
  if (is_list_empty(head) == 1) score++;
  if (head->prev == tail) score++;
  if (tail->next == head) score++;

  printf("InsertDeleteAndCount Test Score : %d / %d\n", score, total_score);
  return score == total_score;
}

int InsertRandomSortedCheckSorted(void) {
  int random_vals[] = {17, 20, 8,  3,  11, 2, 5,  14, 7,  9,
                       13, 1,  16, 15, 4,  6, 10, 12, 19, 18};
  int num_random_vals = 20;
  int sum_of_inserted = 0;

  struct list_node *head, *tail;

  setup_head_tail(&head, &tail);

  int score = 0, total_score = 0;

  for (int i = 0; i < num_random_vals; i++) {
    struct list_node *new_node = allocate_node_with_key(random_vals[i]);
    insert_sorted_by_key(head, new_node);
    sum_of_inserted += new_node->key;
  }

  total_score++;
  if (count_list_length(head) == 20) score++;

  struct list_node *node = head->next;
  int prev_key = head->key;
  int sum_inserted_keys = 0;

  while (node != tail) {
    total_score++;
    if (prev_key < node->key) score++;

    sum_inserted_keys += node->key;

    prev_key = node->key;
    node = node->next;
  }

  total_score += 3;
  if (sum_of_inserted == sum_inserted_keys) score++;
  if (head->prev == tail) score++;
  if (tail->next == head) score++;

  printf("InsertRandomSortedCheckSorted Test Score : %d / %d\n", score,
         total_score);
  return score == total_score;
}

int TestAll(void) {
  printf("\nTesting All\n\n");

  int cnt = 0;
  cnt += AllocateHeadTailTest();
  cnt += IsInitiallyEmptyTest();
  cnt += InsertNodeAfterTest();
  cnt += InsertFrontTest();
  cnt += InsertThenSearch();
  cnt += InsertThenSearchDelete();
  cnt += InsertDeleteAndCount();
  cnt += InsertRandomSortedCheckSorted();
  printf("\n%d / %d Testcases passed\n", cnt, 8);

  printf("\n");
  return (cnt == 8) ? 0 : 1;
}

int main(int argc, char **argv) { return TestAll(); }
