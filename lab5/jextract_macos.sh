#!/bin/sh -x
rm -rf classes
rm -rf generated/src
rm -rf src/org
rm -rf src/sdl2

# Install the latest library with "brew install sdl2" to get the latest.
# This will install the latest version such as 2.0.22, however when using jextract tool will need the headers from 2.0.18.
#
# To obtain Headers (include files directory for SDL2) and install:
# Go to download https://www.libsdl.org/release/SDL2-2.0.18.dmg
# Double click and drag or copy directory (SDL2.framework) folder
#
# Copy into in <Your home directory>/Library/Frameworks


## Please change environment variables if you are on Linux
# MacOS
export C_INCLUDE_PATH=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include

# Download SDL's previous versions headers (directory) version 2.0.18
export SDL_INCLUDE_PATH=$HOME/Library/Frameworks/SDL2.framework/Headers

# The following gets an error: Invalid Cursor kind value: 602
#export SDL_INCLUDE_PATH=/usr/local/Cellar/sdl2/2.0.22/include/SDL2

jextract --source -d src -t sdl2 \
    -I $C_INCLUDE_PATH \
    -I $SDL_INCLUDE_PATH \
    -l SDL2 \
    --header-class-name LibSDL2 \
    sdlfoo.h

# add to classes (IMPORTANT: Notice namespace ..src/sdl2/..)
javac --add-modules=jdk.incubator.foreign -d classes src/sdl2/*.java

jextract --source -d src -t org.unix \
  -I $C_INCLUDE_PATH \
  foo.h

jextract -d classes -t org.unix \
  -I $C_INCLUDE_PATH \
  foo.h
