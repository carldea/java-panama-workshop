# Lab 4 Callbacks

The goal of this lab is fix a one line bug in the native code that needs to invoke a Java method.

This example is derived from the article at foojay.io Part 4  https://foojay.io/today/project-panama-for-newbies-part-4

To begin let's build and compile the native library and Java code.  

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
```

So something is wrong! It's missing the output statement from inside the doubleMe() Java method. It should be the following:

```text
[Java] Callbacks! Panama style
[C] Inside mylib's C function my_callback_function().
[C]   Now invoking Java's callMePlease() static method.
[JAVA] Inside callMePlease() method - I'm being called from C.
[C] Inside mylib's C function my_callback_function2().
[C]   Now invoking Java's doubleMe(int) static method.
[JAVA] Inside doubleMe() method, 123 times 2 = 246.
```
Notice the last output statement is missing:
```text
[JAVA] Inside doubleMe() method, 123 times 2 = 246.
```

## Exercise 1 Fix the bug.
The my_callback_function2() in C isn't working, it's not invoking your Java code. Look at the implementation file mylib.c.
 The expected output should look like this:

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