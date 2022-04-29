# Lab 3 Pointers, Structs and StructArrays
The objective of this lab is to access a library we created locally called myclibrary.

The `myclibrary` can be created if you have gcc compiler setup.
After learning about C Pointers, Structs and Array of Structs you will be making calls to the library based on you knowledge so far.
- `myclibrary.h` - The header file containing the functions you will be calling.
  - `display(struct person p)`
  - `displayAll(struct person *ptrArray, int size)`
  - `addNumbers(int a, int b, int *c)`
  - `struct person`
- myclibrary.c - The implementation of the functions above

Assuming you have your JAVA_HOME, you may run the commands below:
```shell
cd lab3
bash clean.sh
bash compile_myclibrary.c.sh
bash jextract_myclibrary.h.sh
```
Above, you changed directory to lab3, cleaned up old files, compile and build custom library, and run jextract to generate classes and source code.


The following are the exercises for Lab 3:
- **Exercise 1:** Call the native C function: `void addNumbers(int a, int b, int *c)`
    - Expected output: 
```text
    Java 5 + 10 = 15
```      
    
- **Exercise 2:** Call the native C function: void display(struct person p);
  - Expected output:
```text    
    Name: Dr X
    Age: 230
```
- **Exercise 3:** Call the native C function: void displayAll(struct person *ptrArray, int size);
  The objective is to create an array of structs to be passed to displayAll with the size of the array.
  - Expected output:
```text
    Name: Person 0
     Age: 100
    Name: Person 1
     Age: 101
```
