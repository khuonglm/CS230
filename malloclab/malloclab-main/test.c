#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <malloc.h>

int main() {
    char** head = malloc(8);
    *((unsigned int *)(head +4)) = 10;
    printf("%d", *(unsigned int*)(head + 4));
}