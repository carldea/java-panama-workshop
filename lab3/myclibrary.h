#include <stdio.h>
#include <stdlib.h>
#include <string.h>
struct person {
  int age;
  char *name;
};

void display(struct person p);

void displayAll(struct person *ptrArray, int size);

void addNumbers(int a, int b, int *c);

