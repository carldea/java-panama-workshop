#!/bin/sh -x
rm -rf classes
rm -rf generated/src
rm -rf src/org
rm -rf src/sdl2

## Please change environment variables if libraries are installed else where

# Linux
export C_INCLUDE=/usr/include
export SDL_INCLUDE=/usr/include/SDL2

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
