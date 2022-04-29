set C_INCLUDE_PATH=C:\devtools\MinGW\include

jextract -d classes -t org.panamaworkshop -I %C_INCLUDE_PATH% -I . --include-struct person --header-class-name myclibrary -l myclibrary myclibrary.h

jextract --source -d src -t org.panamaworkshop -I %C_INCLUDE_PATH% -I . -l myclibrary --header-class-name myclibrary myclibrary.h
