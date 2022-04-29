## Lab 2 Primitives and Arrays
The objective of this lab is learn about `MemorySegments` with C primitives and arrays. The values in memory can be manipulated off of the Java heap.


Before you begin change directory to lab2 and run the following scripts to clean up:

Linux and MacOS
```shell
bash clean.sh
```

Windows
```shell
clean_windows.cmd
```

**Note:** Reminder to change directory into lab2:
`cd lab2`

Before doing the exercises run `jextract` against the stdio.h file the following:

Linux
```
bash jextract_linux.sh
```

MacOS
```shell
bash jextract_macos.sh
```
Windows
```
jextract_windows.cmd
```

The following are the exercises for Lab 2:
- Exercise 1 - Changing values in C primitives
- Exercise 2 - Change values in C arrays

## Exercise 1 - Changing values in C primitives
The objective is to add code to change the value inside a MemorySegment to the a new value and outputting a string.

First lets run the Java file Primitive.java with the following:

Linux/MacOS
```shell
java -cp classes \
--enable-native-access=ALL-UNNAMED \
--add-modules jdk.incubator.foreign \
src/Primitive.java
```
Windows
```shell
java -cp classes --enable-native-access=ALL-UNNAMED --add-modules jdk.incubator.foreign \
src/Primitive.java
```

The output shows:
```text
A slice of 3.141593 
New value is 3.141593 
```

Open the file Primitive.java and look at the line that appears like the following:
```shell
// Change the cDouble to Math.PI * 4 [ADD CODE BELOW THIS LINE]
```

In the code the variable cDouble of type`MemorySegment`  

```java
var cDouble = allocator.allocate(C_DOUBLE, Math.PI);
```

Change value to `Math.PI * 4` contents in `cDouble` 

**Expected output:**
```text
A slice of 3.141593
New value is 12.566371
```
## Exercise 2 - Changing values in C arrays

The objective is to add code to update the value inside the C array (MemorySegment) to the a new value and outputting the contents.

Open the file PrimitiveArray.java and locate the line as follows:
```shell
// double each value in C array [ADD CODE BELOW THIS LINE]
```
This is where you need to create a for loop to set the values into the C array of doubles (MemorySegment).
```java
for (long i = 0; i < 16; i++) {
        // cDoubleArray...
}
```


First lets run the Java file `Primitive.java` to see the current output with the following:

Linux/MacOS
```shell
java -cp classes \
--enable-native-access=ALL-UNNAMED \
--add-modules jdk.incubator.foreign \
src/PrimitiveArray.java
```

Windows
```shell
java -cp classes --enable-native-access=ALL-UNNAMED --add-modules jdk.incubator.foreign \
src/PrimitiveArray.java
```

The output shows:
```text
An array of data
1.000000  2.000000  3.000000  4.000000
1.000000  1.000000  1.000000  1.000000
3.000000  4.000000  5.000000  6.000000
5.000000  6.000000  7.000000  8.000000
```

In the code the variable (MemorySegment)  
```java
MemorySegment cDoubleArray = ...
```

Add code to iterate through the C array and set the value to (multiply by two).

**Expected output:**
```text
An array of data
2.000000  4.000000  6.000000  8.000000
2.000000  2.000000  2.000000  2.000000
6.000000  8.000000  10.000000  12.000000
10.000000  12.000000  14.000000  16.000000 
```