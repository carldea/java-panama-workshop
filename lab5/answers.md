# Answers to Lab 5

## Exercise 1: In `SDLCube.java` alter vertex code to change the cube shape.
The code currently looks like the following lines 61-71 in SDLCube.java
```java
// Vertices of the 3D cube
static float[] cube = {
          0.5f,  0.5f, -0.5f,
          0.5f, -0.5f, -0.5f,
          -0.5f, -0.5f, -0.5f,
          -0.5f,  0.5f, -0.5f,
          -0.5f,  0.5f,  0.5f,
          0.5f,  0.5f,  0.5f,
          0.5f, -0.5f,  0.5f,
          -0.5f, -0.5f,  0.5f
  };
```

Change it to look like this:
```java
// Vertices of the 3D cube
static float[] cube = {
          0.9f,  0.5f, -0.5f,
          0.5f, -0.5f, -0.5f,
          -0.5f, -0.5f, -0.5f,
          -0.5f,  0.5f, -0.5f,
          -0.5f,  0.5f,  0.5f,
          0.5f,  0.5f,  0.5f,
          0.5f, -0.5f,  0.5f,
          -0.5f, -0.5f,  0.9f
  };
```