echo "Assuming jextract_linux.sh was ran"
# Linux
export sdl_path=/usr/lib/x86_64-linux-gnu

java \
  -Djava.library.path=$sdl_path \
  -cp classes \
  -XstartOnFirstThread \
  --enable-native-access=ALL-UNNAMED \
  --add-modules=jdk.incubator.foreign \
  src/SDLCube.java
