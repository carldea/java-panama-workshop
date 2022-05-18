# Lab 5 Running Java Panama with SDL2 & OpenGL
This lab is primarily to have fun with a cross platform library that game developers often use SDL2 & OpenGL. There are two examples of rotating 3D objects.

- Cube - A color gradient cube rotating.
- Prism - A 3d Prism object rotating on its base.

Similar to Lab 4 lets build and run the apps before we do the exercise. Here are the following commands to build and run:

## Assumptions
Make sure you have SDL installed and the header files directory setup properly.
Check out the [installs](../installs/README.md) for instructions. e.g. On MacOS(Intel) use the following:
```shell
brew install sdl2
```
**Note:** A known issue is when sdl2 version 2.0.22 is installed the headers directory don't work when using jextract. You'll need to download https://www.libsdl.org/release/SDL2-2.0.18.dmg and install headers from version 2.0.18. Please see: [installs](../installs/README.md)

Linux
```shell
bash jextract_linux.sh
bash run_SDLCube.java_linux.sh
```
MacOS
```shell
bash jextract_macos.sh
bash run_SDLCube.java_macos.sh
```

Windows
```shell
bash jextract_windows.cmd
bash run_SDLCube.java_windows.cmd
```


To exit the application by clicking the close button or press the 'Q' key on the keyboard to quit.


## Exercise 1: In `SDLCube.java` alter vertex code to change the cube shape.
