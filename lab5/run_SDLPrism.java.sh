echo "Assuming jextract_sdlfoo.h.sh was ran"
# MacOS
export sdl_path=/usr/local/lib
# Linux
# export sdl_path=/usr/local/lib

java \
  -Djava.library.path=$sdl_path \
  -cp .:classes \
  -XstartOnFirstThread \
  --enable-native-access=ALL-UNNAMED \
  --add-modules=jdk.incubator.foreign \
  src/SDLPrism.java
