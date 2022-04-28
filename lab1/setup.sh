
# Java OpenJDK containing Panama is downloaded from https://jdk.java.net/panama
export JAVA_HOME=$HOME/sdks/jdk-19.jdk/Contents/Home

############################################################
# Did you ever want to build the openjdk yourself? 
#  Go to: https://github.com/openjdk/panama-foreign
#
#  After (on my computer) building the binaries reside 
#  in the following directory:
############################################################
# export JAVA_HOME=$HOME/projects/panama-foreign/build/macosx-x86_64-server-release/images/jdk


#  PATH
export PATH=$JAVA_HOME/bin:$PATH
