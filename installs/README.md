# Java’s Project Panama for Newbies
One Day Workshop 
(Setting up Development Environment)

**NOTE:** Project Panama currently supports MacOS (Intel), Linux, Windows. **Project Panama does not support the new Apple M1 chips (Arm64) at this time.**

In the steps below you will be downloading the EA build of the OpenJDK containing the jextract tool. You will also, download additional tools for later lab examples.

**To install required software do the following:**
1. Setup OpenJDK with Panama (jextract)
2. Clone this workshop project from GitHub
3. Install C compiler for your operating system
4. Install 3rd party Libraries

## 1. Setup OpenJDK with Panama
Download the OpenJDK that will contain the jextract tool.

**Step 1:** Download OpenJDK from https://jdk.java.net/panama/ download: Build 19-panama+1-13 (2022/1/18)

**Step 2:** Untar or unzip into a directory

**Linux**
```bash
tar -xvf openjdk-19-panama+1-13_linux-x64_bin.tar.gz
```

**MacOS**
```bash
tar -xvf openjdk-19-panama+1-13_macos-x64_bin.tar.gz
```

**Windows**
```bash
unzip openjdk-19-panama+1-13_windows-x64_bin.zip
```

**Step 3:** Set JAVA_HOME and PATH environment variables

**Linux**
```bash
export JAVA_HOME=<untarred_dir>/jdk-19
export PATH=$JAVA_HOME/bin:$PATH
```

**MacOS**
```bash
export JAVA_HOME=<untarred_dir>/jdk-19.jdk/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH
```

**Windows**
```bash
set JAVA_HOME=<untarred_dir>\jdk-19
set PATH=%JAVA_HOME%\bin;%PATH%
```

Note: To make environment variables permanent you can set these in your `.bashrc`, `.bash_profile` files on Linux or MacOS respectively.

**Step 4:** Verify OpenJDK is installed

Enter the following: 
```
java -version
```

The output should display the version info shown below:
```
openjdk version "19-panama" 2022-09-20
OpenJDK Runtime Environment (build 19-panama+1-13)
OpenJDK 64-Bit Server VM (build 19-panama+1-13, mixed mode, sharing)
```

**Step 5:** Verify the jextract tool exists

Enter the following: 
```
jextract -h
```


The output should display the help menu shown below:

```
Option                         Description                              
------                         -----------                              
-?, -h, --help                 print help                               
-C <String>                    pass through argument for clang          
-I <String>                    specify include files path               
-d <String>                    specify where to place generated files   
--dump-includes <String>       dump included symbols into specified file
--header-class-name <String>   name of the header class                 
--include-function <String>    name of function to include              
--include-macro <String>       name of constant macro to include        
--include-struct <String>      name of struct definition to include     
--include-typedef <String>     name of type definition to include       
--include-union <String>       name of union definition to include      
--include-var <String>         name of global variable to include       
-l <String>                    specify a library                        
--source                       generate java sources                    
-t, --target-package <String>  target package for specified header files
```

## 2. Clone workshop project from GitHub
**Step 1:**  Fork and Clone project from the following: [Java's Panama for Newbies Workshop](https://github.com/carldea/java-panama-workshop)

```
git clone git@github.com:<you_user_name>/java-panama-workshop.git

Or

git clone https://github.com/carldea/java-panama-workshop.git
```

**Step 2:** Optionally modify and source the setup.sh file (On Mac or Linux)
```
vim setup.sh
source setup.sh
```

## 3. Install C compiler for your operating system

**Step 1:** Install C compiler

**MacOS**
Installing a C compiler:
```
xcode-select —install
```
> Password:

**Linux**
```
sudo apt update
sudo apt install build-essential
```

**Windows**

Download Mingw at: https://sourceforge.net/projects/mingw-w64/

**Step 2:** To verify type the following:
```
gcc --version
```


## 4. Install 3rd party libraries

**Step 1:** Download SDL2 library

**MacOS**
Installing Brew:
```
/bin/bash -c “$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)”
```

Installing SDL2 library:
```
brew install sdl2
```
Please read Step 2's section on MacOS. Here you'll be using 2.0.18's headers, after you've installed the latest version from `brew install sdl2` (version 2.0.22).

**Linux**
```
sudo apt install freeglut3-dev libsdl2-dev
```

**Windows**

Download SDL2 from: https://www.libsdl.org/download-2.0.php
After file is downloaded expand and move directory to your root C:\ directory.

Place in C:\ directory. It should look like `C:\SDL2`.

**Step 2:** Note the location of the include and lib directories for later use when specifying the `java.library.path`.

**Linux**

Include directories: C_INCLUDE_PATH and SDL2.
```
/usr/include
/usr/include/SDL2
```

The installed libraries should exist in the following directories:
```shell
/usr/lib
/usr/lib/x86_64-linux-gnu
```

**MacOS**
 
To obtain Headers (include files directory for SDL2) and install:
Go to download https://www.libsdl.org/release/SDL2-2.0.18.dmg
Double click and drag or copy directory (SDL2.framework) folder

Copy the `SDL2.framework` to `/Library/Frameworks`

Or 

**(Preferred way)**
You may alternatively install it in `<Your home directory>/Library/Frameworks` directory.
if your access privileges are not high enough. Validate the `SDL_INCLUDE_PATH` to ensure its pointing to the correct directory folder.

An excerpt: `export SDL_INCLUDE_PATH=$HOME/Library/Frameworks/SDL2.framework/Headers` is located inside the `jextract_macos.sh`.

Note: When using brew to install sdl2 it will install version 2.0.22 with its headers directory located at `/usr/local/Cellar/sdl2/2.0.22/include/SDL2` the jextract tool received an the following error:

```shell
  Invalid Cursor kind value: 602
```

Assuming you've copied the `SDL2.framework` to `<Your home directory>/Library/Frameworks`. Since the `Library` folder is hidden use `Shift` + `Command` + `.` key combination in File Finder to show hidden folders.

Include directories: C_INCLUDE_PATH and SDL_INCLUDE_PATH. 

```
export C_INCLUDE_PATH=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include

export SDL_INCLUDE_PATH=$HOME/Library/Frameworks/SDL2.framework/Headers
```

The actually libraries should exist in the following directory:

```shell
$HOME/Library/Frameworks/SDL2.framework/lib
```



**Windows**
Please verify the following. Some locations are different depending on where things are installed. Any lab assignments with cmd shell scripts modification maybe needed.

Include directories: C_INCLUDE_PATH and SDL_INCLUDE_PATH.
```
C:\MinGW\include

C:\SDL2\include
```

The actually libraries should exist in the following directory:
```shell
C:\MinGW\lib

C:\SDL2\lib
```


# Finished Setting up Dev Environment

You should be READY to go!
