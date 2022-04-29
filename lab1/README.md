# Lab 1 Java Panama Hello World
The objective of this lab is use jextract to generate Panama code and successfully execute an existing Java Hello World example.
The following are the exercises for Lab 1:
- **Exercise 1** - Generate classes for stdio.h
- **Exercise 2** - Generate source code for stdio.h
- **Exercise 3** - Execute the existing HelloWorld.java file
- **Exercise 4** - (Optionally) Setup your IDE

## C Hello World
The following is C Source code of a Hello World application that is shown as a reference. Your task is to generate binding code so that the Java application can invoke C functions natively similar to the C version of Hello World.
```cpp
#include <stdio.h>                
int main() {                      
   printf(“Hello, World! \n”);    
   return 0;                      
}
```

Before you begin change directory to lab1 and run the following scripts to clean up:
Linux and MacOS
```shell
bash clean.sh
```
Windows
```shell
clean_windows.cmd
```

The following are the parameters when using the `jextract` tool.
- `classes` - Destination of class files
- `src` - Destination of source files  
- `org.unix` - Package namespace 
- `$C_INCLUDE_PATH` - C include directory path
- `$C_INCLUDE_PATH/stdio.h` - The location of the header file

If you are unsure what the `jextract` options are type:
```shell
jextract -h
```

If you get an error your `JAVA_HOME` is probably not setup properly.
Refer to [Setup Develpment Environment Instructions](../installs/README.md)
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
 |-- src
 |   |-- org
 |       |-- unix
```

## Exercise 3: Execute the Java file HelloWorld.java
java -cp classes --enable-native-access=ALL-UNNAMED --add-modules jdk.incubator.foreign src/HelloWorld.java
- `classes` - Classpath
- `ALL-UNNAMED` - enable native access
- `jdk.incubator.foreign` - Module to add
- `src/HelloWorld.java` or `src\HelloWorld.java` - Java application

After executing the Java application the following should output should be:
```text
Hello World! Panama style
(Java) Hello World! Panama style
```

## Exercise 4: (Optional) Setup your IDE
Set Java compiler to point to use Panama’s JDK
Compiler JVM options (`--add-modules jdk.incubator.foreign`)
