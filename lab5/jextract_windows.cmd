@echo off
set OLDPATH=%PATH%

rem Please change environment variables libraries are installed elsewhere
set PATH=C:\MinGW\bin;%PATH%
set LIBRARY_PATH=C:\MinGW\lib
set C_INCLUDE_PATH=C:\MinGW\include

rem Generate SDL source
jextract.exe --source -d src -t sdl2 -I %C_INCLUDE_PATH% -I %SDL_INCLUDE% -l SDL2 --header-class-name LibSDL2 sdlfoo.h

rem Generate SDL classes
jextract.exe -d classes -t sdl2 -I %C_INCLUDE_PATH% -I %SDL_INCLUDE% -l SDL2 --header-class-name LibSDL2 sdlfoo.h

rem Generate Clib source
jextract.exe --source -d src -t org.unix -I %C_INCLUDE_PATH% foo.h

rem Generate Clib classes
jextract.exe -d classes -t org.unix -I %C_INCLUDE_PATH% foo.h

rem Compile example Java program
javac --add-modules=jdk.incubator.foreign -d classes src/*.java
