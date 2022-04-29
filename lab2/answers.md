
# Answers to Lab 2 Primitives and Arrays
Assumes you ran jextract before compiling and running code.
If not do the following:
## Linux
```shell
bash jextract_linux.sh
```
## MacOS
```shell
bash jextract_macos.sh
```
## Windows
```shell
jextract_windows.cmd
```


## Running Primitive.java


## Exercise 1 - Changing values in C primitives
Open the `Primitive.java` file.
```java
// Change the cDouble to Math.PI * 4
double currentValue = cDouble.get(C_DOUBLE, 0);
cDouble.set(C_DOUBLE, 0, currentValue * 4);
```

**Expected output:**
```text
A slice of 3.141593
New value is 12.566371
```

## Exercise 2 - Changing values in C arrays
Open the `PrimitiveArray.java` file.
```java
// double each value in C array
for (long i = 0; i < 16; i++) {
   cDoubleArray.setAtIndex(C_DOUBLE, i, cDoubleArray.getAtIndex(C_DOUBLE, i ) * 2);
}
```

