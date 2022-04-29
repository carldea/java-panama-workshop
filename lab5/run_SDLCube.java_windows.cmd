echo "Assuming jextract_windows.cmd was ran"
set sdl_path=C:\SDL2\lib

java -Djava.library.path=%sdl_path% -cp classes -XstartOnFirstThread --enable-native-access=ALL-UNNAMED --add-modules=jdk.incubator.foreign src/SDLCube.java
