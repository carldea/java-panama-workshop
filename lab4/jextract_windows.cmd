set C_INCLUDE_PATH=C:\devtools\MinGW\include

jextract -d classes -t org.unix -I %C_INCLUDE_PATH% -I . -l mylib foo.h

jextract --source -d src -t org.unix -I %C_INCLUDE_PATH% -I . -l mylib mylib.h
