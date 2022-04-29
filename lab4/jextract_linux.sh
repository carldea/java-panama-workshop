# Linux
export C_INCLUDE_PATH=/usr/include

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
