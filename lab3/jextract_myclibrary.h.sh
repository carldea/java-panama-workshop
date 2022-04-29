#jextract -d classes \
# -t org.unix \
# -I /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include \
# /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdio.h
#jextract --source \
# -d generated/src \
# -t org.unix \
# -I /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include \
# /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdio.h

# MacOS
jextract -d classes \
 -t org.panamaworkshop \
 -I /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include \
 -I . \
 --include-struct person \
 --header-class-name myclibrary \
 -l myclibrary \
 myclibrary.h

jextract --source \
 -d generated/src \
 -t org.panamaworkshop \
 -I /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include \
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
