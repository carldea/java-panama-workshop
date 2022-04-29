# Linux
export C_INCLUDE_PATH=/usr/include

jextract -d classes \
 -t org.panamaworkshop \
 -I $C_INCLUDE_PATH \
 -I . \
 --header-class-name myclibrary \
 -l myclibrary \
 myclibrary.h

jextract --source \
 -d src \
 -t org.panamaworkshop \
 -I $C_INCLUDE_PATH \
 -I . \
 -l myclibrary \
 --header-class-name myclibrary \
 myclibrary.h
