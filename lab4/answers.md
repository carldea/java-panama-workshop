# Answers to Lab 4
The goal of this lab is to change code in the native library that invokes Java code.


This example was derived from the article at foojay.io Part 4  https://foojay.io/today/project-panama-for-newbies-part-4

## Exercise 1 Fix the one line bug in native code.
The my_callback_function2() function in C isn't working, it's not invoking your Java code. Look at the implementation file mylib.c.

### The fix!
Add the following code statement in the end of the function of the mylib.c file.
```cpp
(*ptrToFunction)(x);
```

Shown below is the whole function with the answer on the last line.
```cpp
void my_callback_function2(void (*ptrToFunction)(int)) {
   printf("[C] Inside mylib's C function my_callback_function2().\n");
   printf("[C]   Now invoking Java's doubleMe(int) static method.\n");
   int x = 123;
   
   // ADD THE FOLLOWING TO MAKE THIS CALLBACK FUNCTION WORK
   (*ptrToFunction)(x);   //calling the callback function
}
```

Next, recompile
Compile the mylib.c into a dynamic library
```shell
$ bash compile_mylib.c.sh
```
Jextract foo.h
```shell
$ bash jextract_foo.h.sh
```
Compile PanamaCallback.java
```shell
$ bash compile_PanamaCallback.java.sh
```

Run PanamaCallback example
```shell
$ bash run_PanamaCallback.java.sh
```
Output shows the following:

```text
[Java] Callbacks! Panama style
[C] Inside mylib's C function my_callback_function().
[C]   Now invoking Java's callMePlease() static method.
[JAVA] Inside callMePlease() method - I'm being called from C.
[C] Inside mylib's C function my_callback_function2().
[C]   Now invoking Java's doubleMe(int) static method.
[JAVA] Inside doubleMe() method, 123 times 2 = 246.
```