# Mac and Linux shell script
java -cp classes \
 --enable-native-access=ALL-UNNAMED \
 --add-modules jdk.incubator.foreign \
 src/Primitive.java
