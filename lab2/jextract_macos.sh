# MacOS
export C_INCLUDE_PATH=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include

# Generate class files
jextract -d classes \
  -t org.unix \
  -I $C_INCLUDE_PATH \
  $C_INCLUDE_PATH/stdio.h

# Generate Java source code
jextract --source \
  -d src \
  -t org.unix \
  -I $C_INCLUDE_PATH \
  $C_INCLUDE_PATH/stdio.h
