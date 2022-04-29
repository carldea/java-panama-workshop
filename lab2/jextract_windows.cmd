# Windows
set C_INCLUDE=C:\devtools\MinGW\include

# Generate class files
jextract -d classes -t org.unix -I %C_INCLUDE% %C_INCLUDE%\stdio.h

# Generate Java source code
jextract --source -d src -t org.unix -I %C_INCLUDE% %C_INCLUDE%/stdio.h
