# Lab 3 Pointers, Structs and StructArrays
The objective of this lab is to access a library we created locally called myclibrary. The coding excercises will all be inside the file `TestMyCLibrary.java`

> Note: Please don't be alarmed by the number of files that you see in the directory. Many of these files are there for your reference when working on the lab examples. All coding exercises exist in TestMyCLibrary.java.

The `myclibrary` can be created if you have gcc compiler setup.
After learning about C Pointers, Structs and Array of Structs you will be making calls to the library based on your knowledge so far.
- `myclibrary.h` - The header file containing the functions you will be calling.
  - `display(struct person p)`
  - `displayAll(struct person *ptrArray, int size)`
  - `addNumbers(int a, int b, int *c)`
  - `struct person`
- myclibrary.c - The implementation of the functions above

Assuming you are in the lab 3 directory
Before you begin change directory to lab3 and run the following scripts to clean up:

Linux and MacOS
```shell
bash clean.sh
```

Windows
```shell
clean_windows.cmd
```

Assuming you have your JAVA_HOME and gcc compiler installed, you may run the commands below:

Linux
```shell
bash compile_myclibrary.c_linux.sh
bash jextract_linux.sh
```
After compiling a library file is created named: `libmyclibrary.so`


MacOS
```shell
bash compile_myclibrary.c_macos.sh
bash jextract_macos.sh
```
After compiling a library file is created named: `libmyclibrary.dylib`

Windows
```shell
cd lab3
clean.cmd
compile_myclibrary.c_windows.cmd
bash jextract_windows.cmd
```
After compiling a library file is created named: `myclibrary.dll`

Above, you changed directory to lab3, cleaned up old files, compile and build custom library, and run jextract to generate classes and source code.

## Running the TestMyCLibrary.java

Linux or MacOS
```shell
run_TestMyCLibrary.sh
```
Windows
```shell
run_TestMyCLibrary_windows.cmd
```

The following are the exercises for Lab 3:
## Exercise 1 Call the C function addNumbers()

```
void addNumbers(int a, int b, int *c)
```

**Expected output:** 
```text
    Java 5 + 10 = 15
```      
    
## Exercise 2: Call C function display()

```
void display(struct person p);
```
 
  
Expected output:
```text    
    Name: Dr X
    Age: 230
```

## Exercise 3: Call C function displayAll()

```
void displayAll(struct person *ptrArray, int size);
```
  The objective is to create an array of structs to be passed to displayAll with the size of the array.
  - Expected output:
```text
    Name: Person 0
     Age: 100
    Name: Person 1
     Age: 101
```
