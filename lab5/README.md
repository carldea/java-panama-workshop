# Lab 5 Running Java Panama with SDL2 & OpenGL
This lab is primarily to have fun with a cross platform library that game developers often use SDL2 & OpenGL. There are two examples of rotating 3D objects.

- Cube - A color gradient cube rotating.
- Prism - A 3d Prism object rotating on its base.

First generate Panama code before running the example Java apps with the following:
```shell
bash jextract_sdlfoo.h.sh
```
Now, run the example:
```shell
bash run_SDLCube.java.sh
```
or
```shell
bash run_SDLPrism.java.sh
```
To run it manually do the following:
```shell
# MacOS java.library.path
export sdl_path=/usr/local/lib
java \
  -Djava.library.path=$sdl_path \
  -cp classes \
  -XstartOnFirstThread \
  --enable-native-access=ALL-UNNAMED \
  --add-modules=jdk.incubator.foreign \
  src/SDLCube.java
```

To exit the application by clicking the close button or press the 'Q' key on the keyboard to quit.


## Exercise 1: In `SDLCube.java` alter vertex code to change the cube shape.
