export C_INCLUDE=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include

# Linux
# export C_INCLUDE=/usr/include

# MacOS
jextract -d classes \
 -t org.panamaworkshop \
 -I $C_INCLUDE \
 -I . \
 --include-struct person \
 --header-class-name myclibrary \
 -l myclibrary \
 myclibrary.h

jextract --source \
 -d generated/src \
 -t org.panamaworkshop \
 -I $C_INCLUDE \
 -I . \
 -l myclibrary \
 --header-class-name myclibrary \
 myclibrary.h

#jextract --source \
# -d generated/src \
# -t org.panamaworkshop \
# -I /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include \
# -I . \
# -l myclibrary \
# --include-struct person \
# --header-class-name myclibrary \
# myclibrary.h
