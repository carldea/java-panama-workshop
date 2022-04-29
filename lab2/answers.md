
# Answers to Lab 2

## Exercise 1 - Changing values in C primitives
```java
// Change the cDouble to Math.PI * 4
double currentValue = cDouble.get(C_DOUBLE, 0);
cDouble.set(C_DOUBLE, 0, currentValue * 4);
// Output the string and the new value changed.
var msgStr2 = allocator.allocateUtf8String("New value is %f \n");
printf(msgStr2, cDouble.get(C_DOUBLE, 0));
```

Expected output:
```text
A slice of 3.141593
New value is 12.566371
```

## Exercise 2 - Changing values in C arrays
```java
// double each value in C array
for (long i = 0; i < 16; i++) {
   cDoubleArray.setAtIndex(C_DOUBLE, i, cDoubleArray.getAtIndex(C_DOUBLE, i ) * 2);
}
```
