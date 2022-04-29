# Generate class files
# MacOS
export C_INCLUDE_PATH=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include

jextract -d classes \
  -t org.unix \
  -I $C_INCLUDE_PATH \
  -I . \
  -l mylib \
  mylib.h

# Generate Java source code
jextract --source \
  -d src \
  -t org.unix \
  -I $C_INCLUDE_PATH \
  -I . \
  -l mylib \
  mylib.h
