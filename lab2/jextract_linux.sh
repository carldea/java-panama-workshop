# Linux
export C_INCLUDE=/usr/include

# Generate class files
jextract -d classes \
  -t org.unix \
  -I $C_INCLUDE \
  $C_INCLUDE/stdio.h

# Generate Java source code
jextract --source \
  -d src \
  -t org.unix \
  -I $C_INCLUDE \
  $C_INCLUDE/stdio.h
