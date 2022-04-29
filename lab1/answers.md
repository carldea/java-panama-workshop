# Answers to Lab 1
## Exercise 1 - Generate classes for stdio.h

### Linux
Generate class files
```shell
jextract -d classes \
  -t org.unix \
  -I /usr/include \
  /usr/include/stdio.h
```

### MacOS
Generate class files
```shell
jextract -d classes \
  -t org.unix \
  -I /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include \
  /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdio.h
```

### Windows
Generate class files
```shell
jextract -d classes \
  -t org.unix \
  -I (TBD) \
  (TBD)\stdio.h
```

## Exercise 2 - Generate source code for stdio.h

### Linux
Generate Java source code
```shell
jextract --source \
  -d generated/src \
  -t org.unix \
  -I /usr/include \
  /usr/include/stdio.h
```

### MacOS
Generate Java source code
```shell
jextract --source \
  -d generated/src \
  -t org.unix \
  -I /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include \
  /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdio.h
```

### Windows
Generate Java source code
```shell
jextract --source \
  -d generated/src \
  -t org.unix \
  -I (TBD) \
  (TBD)\stdio.h
```

## Exercise 3 - Execute the existing HelloWorld.java file
```shell
java -cp classes \
 --enable-native-access=ALL-UNNAMED \
 --add-modules jdk.incubator.foreign \
 src/HelloWorld.java
```