# Windows
set C_INCLUDE_PATH=C:\devtools\MinGW\include

# Generate class files
jextract -d classes -t org.unix -I %C_INCLUDE_PATH% %C_INCLUDE_PATH%\stdio.h

# Generate Java source code
jextract --source -d src -t org.unix -I %C_INCLUDE_PATH% %C_INCLUDE_PATH%/stdio.h
