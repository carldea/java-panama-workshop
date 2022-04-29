## Lab 2 Primitives and Arrays
The objective of this lab is learn about MemorySegments with C primitives and arrays manipulated off of the Java heap.

**Note:** Reminder to change directory into lab2:
`cd lab2`

Before doing the exercises run `jextract` against the stdio.h file the following:
```
bash jextract_stdio.h.sh
```

The following are the exercises for Lab 2:
- Exercise 1 - Changing values in C primitives
- Exercise 2 - Change values in C arrays

## Exercise 1 - Changing values in C primitives
The objective is to add code to change tthe value inside the MemorySegment to the a new value and outputting a string.

First lets run the Java file Primitive.java with the following:
```shell
java -cp classes \
--enable-native-access=ALL-UNNAMED \
--add-modules jdk.incubator.foreign \
src/Primitive.java
```

The output shows:
```text
A slice of 3.141593
```
In the code the variable (`MemorySegment`)  
```java
var cDouble = allocator.allocate(C_DOUBLE, Math.PI);
```
Change value to `Math.PI * 4`

Expected output:
```text
A slice of 3.141593
New value is 12.566371
```
## Exercise 2 - Changing values in C arrays

The objective is to add code to change the update the value inside the C array (MemorySegment) to the a new value and outputting the contents.

First lets run the Java file Primitive.java with the following:
```shell
java -cp classes \
--enable-native-access=ALL-UNNAMED \
--add-modules jdk.incubator.foreign \
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

Expected output:
```text
An array of data
2.000000  4.000000  6.000000  8.000000
2.000000  2.000000  2.000000  2.000000
6.000000  8.000000  10.000000  12.000000
10.000000  12.000000  14.000000  16.000000 
```