# Generate class files
# MacOS
export C_INCLUDE=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include

# Linux
# export C_INCLUDE=/usr/include

jextract -d classes \
  -t org.unix \
  -I $C_INCLUDE \
  -I . \
  -l mylib \
  foo.h

# Generate Java source code
jextract --source \
  -d generated/src \
  -t org.unix \
  -I $C_INCLUDE \
  -I . \
  -l mylib \
  foo.h
