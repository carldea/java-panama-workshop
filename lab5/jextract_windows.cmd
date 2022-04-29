@echo off
set OLDPATH=%PATH%

## Please change environment variables libraries are installed elsewhere
set path=C:\devtools\MinGW\bin;%PATH%
set LIBRARY_PATH=C:\devtools\MinGW\lib
set C_INCLUDE_PATH=C:\devtools\MinGW\include

export C_INCLUDE=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include
export SDL_INCLUDE=/usr/local/include/SDL2

# Linux
# export C_INCLUDE=/usr/include
# export SDL_INCLUDE=/usr/include/SDL2

jextract --source -d src -t sdl2 \
    -I $C_INCLUDE \
    -I $SDL_INCLUDE \
    -l SDL2 \
    --header-class-name LibSDL2 \
    sdlfoo.h

# add to classes (IMPORTANT: Notice namespace ..src/sdl2/..)
javac --add-modules=jdk.incubator.foreign -d classes generated/src/sdl2/*.java

jextract --source -d src -t org.unix \
  -I $C_INCLUDE \
  foo.h

jextract -d classes -t org.unix \
  -I $C_INCLUDE \
  foo.h
