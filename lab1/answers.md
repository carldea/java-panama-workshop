# Answers to Lab 1 Java Panama Hello World
The objective is to generate Panama code using the jextract tool.
## Exercise 1 - Generate classes for stdio.h

Generate class files:
Set `C_INCLUDE_PATH` for the appropriate path for your OS
### Linux
```
export C_INCLUDE_PATH=/usr/include
```
### MacOS
```shell
export C_INCLUDE_PATH=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include
```

### Windows
```shell
@echo off
set OLD_PATH=%PATH%
set PATH=C:\devtools\MinGW\bin;%PATH%
set LIBRARY_PATH=C:\devtools\MinGW\lib
set C_INCLUDE_PATH=C:\devtools\MinGW\include
```

### Running jextract against stdio.h 

Linux/MacOS
```shell
jextract -d classes \
  -t org.unix \
  -I $C_INCLUDE_PATH \
  $C_INCLUDE_PATH/stdio.h
```

Windows
```shell
jextract -d classes -t org.unix -I %C_INCLUDE_PATH%  %C_INCLUDE_PATH%\stdio.h
```

## Exercise 2 - Generate source code for stdio.h

Generate Java source code. The generated source goes into the src directory as `src/org/unix`. The `.gitignore` ignores those directories.
### Running jextract against stdio.h 

Linux / MacOS
```shell
jextract -d src \
  --source \
  -t org.unix \
  -I $C_INCLUDE_PATH \
  $C_INCLUDE_PATH/stdio.h
```

Windows
```shell
jextract -d src --source -t org.unix -I %C_INCLUDE_PATH%  %C_INCLUDE_PATH%\stdio.h
```
## Exercise 3 - Execute HelloWorld.java
Linux / MacOS
```shell
java -cp classes \
 --enable-native-access=ALL-UNNAMED \
 --add-modules jdk.incubator.foreign \
 src/HelloWorld.java
```

Windows
```shell
java -cp classes --enable-native-access=ALL-UNNAMED --add-modules jdk.incubator.foreign src/HelloWorld.java
```
