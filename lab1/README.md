# Lab 1 Java Panama Hello World
The objective of this lab is use jextract to generate Panama code and successfully execute an existing Java Hello World example.
The following are the exercises for Lab 1:
- **Exercise 1** - Generate classes for stdio.h
- **Exercise 2** - Generate source code for stdio.h
- **Exercise 3** - Execute the existing HelloWorld.java file
- **Exercise 4** - (Optionally) Setup your IDE

C Hello World
The following is C Source code of a Hello World application that is shown as a reference. Your task is to generate binding code to invoke C functions inside Java’s main() function.
```cpp
#include <stdio.h>                
int main() {                      
   printf(“Hello, World! \n”);    
   return 0;                      
}
```
## Exercise 1: Generate classes using jextract against stdio.h

After classes are generated directories should look like the following:

```shell
 |-- classes
 |    |-- org
 |        | unix
```
## Exercise 2: Generate source code using jextract for stdio.h

After source files are generated directories should look like the following:
```shell
 |-- generated
 |    |-- src
 |        |-- org
 |            |-- unix
```
## Exercise 3: Execute the Java file HelloWorld.java
After executing the Java application the following should output should be:
```text
Hello World! Panama style
(Java) Hello World! Panama style
```

## Exercise 4: (Optional) Setup your IDE
Set Java compiler to point to use Panama’s JDK
Compiler JVM options (`--add-modules jdk.incubator.foreign`)

**IntelliJ** src directory **Mark Directory as -> Generated Sources Root**

