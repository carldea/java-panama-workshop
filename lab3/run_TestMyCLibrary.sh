java -cp classes \
 -Djava.library.path=. \
 --enable-native-access=ALL-UNNAMED \
 --add-modules jdk.incubator.foreign \
 src/TestMyCLibrary.java
