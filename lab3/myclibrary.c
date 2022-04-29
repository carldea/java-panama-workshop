#include <stdio.h>
#include "myclibrary.h"

void display(struct person p) {
   printf("Name: %s\n", p.name);
   printf(" Age: %d\n", p.age);
}

void displayAll(struct person *ptrArray, int size) {
   for (int i=0; i<size ; i++) {
       printf("Name: %s \n", ptrArray->name);
       printf(" Age: %d \n", ptrArray->age);
       ptrArray++;
   }
}

void addNumbers(int a, int b, int *c) {
   printf("addNumbers() - before a = %d, b = %d, *c = %d \n", a, b, *c);
   *c = a + b;
   printf("addNumbers() -  after a = %d, b = %d, *c = %d \n", a, b, *c);
}

// gcc -o myclibrary_exe myclibrary.c
int main() {
   // add two integers passed by value and a result as a pointer
   int x=5, y=10, result;
   addNumbers(x, y, &result);
   printf("%d + %d = %d \n", x, y, result);

   // display person
   struct person p;
   p.name = "Dr X";
   p.age = 230;
   display(p);

   struct person people[2];
   struct person *ptrArray = NULL;
   ptrArray = people;

   struct person p1;
   struct person p2;

   p1.name = "Person 1";
   p1.age = 100;

   p2.name = "Person 2";
   p2.age = 102;

   people[0] = p1;
   people[1] = p2;

   ptrArray = people;

   displayAll(ptrArray, 2);
}
