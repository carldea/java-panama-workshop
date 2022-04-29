# Lab 4 Callbacks

The goal of this lab is fix a one line bug in the native code that needs to invoke a Java method.

This example is derived from the article at foojay.io Part 4  https://foojay.io/today/project-panama-for-newbies-part-4

Let's familiarize the steps before we go fix the bug.

To begin let's build and compile the native library and Java code. This is the following steps:

- clean - Cleanup build artifacts
- compile C - mylib.c
- jextract - mylib.h
- compile Java - PanamaCallback.java 
- run - PanamaCallback.class

Linux:
```shell
bash clean.sh
bash compile_mylib.c_linux.sh
bash jextract_linux.sh
bash compile_PanamaCallback.java.sh
bash run_PanamaCallback.java.sh

```

MacOS
```shell
bash clean.sh
bash compile_mylib.c_macos.sh
bash jextract_macos.sh
bash compile_PanamaCallback.java.sh
bash run_PanamaCallback.java.sh

```

Windows
```shell
clean_windows.cmd
compile_mylib.c_windows.cmd
jextract_windows.cmd
compile_PanamaCallback.java_windows.cmd
run_PanamaCallback.java_windows.cmd

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

So, the Java code below doubleMe() output isn't begin displayed. The bug is inside the native library in the function callback named `my_callback_function2()`. This function is in the file `mylib.c`.

```java
    public static void doubleMe(int value) {
        MemorySegment cString = implicitAllocator()
                .allocateUtf8String("[JAVA] Inside doubleMe() method, %d times 2 = %d.\n".formatted(value, value*2));
        printf(cString);
    }
```


**Expected Output**

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
The my_callback_function2() in C isn't working, it's not invoking your Java code (static method). Look at the implementation the file `mylib.c`.
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

Expected output appended:
```text
[JAVA] Inside doubleMe() method, 123 times 2 = 246.
```