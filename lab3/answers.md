# Answers to Lab 3

## Exercise 1: Call the native C function: void addNumbers(int a, int b, int *c)
 Expected output: 
```text
Java 5 + 10 = 15
``` 
```java
var x = 5;
var y = 10;
var result = allocator.allocate(C_INT, 0);
addNumbers(x, y, result);
printf(allocator.allocateUtf8String("  Java %d + %d = %d \n"), x, y, result.get(C_INT, 0));
```

## Exercise 2: Call the native C function: void display(struct person p);

 Expected output:
```text
    Name: Dr X
     Age: 230
```
```java
MemorySegment p = person.allocate(scope);
person.name$set(p, allocator.allocateUtf8String("Dr. X").address());
person.age$set(p, 230);
display(p);
```
## Exercise 3: Call the native C function: void displayAll(struct person *ptrArray, int size);
  The objective is to create an array of structs to be passed to displayAll with the size of the array.

 Expected output:
```text

    Name: Person 0
     Age: 100
    Name: Person 1
     Age: 101
```

Add code to for loop.
```java
  // Set the name and age for each person in the sequence
  vhSeq_name.set(people, i, allocator.allocateUtf8String("Person " + i).address());
  vhSeq_age.set(people, i, 100 + i);
```
