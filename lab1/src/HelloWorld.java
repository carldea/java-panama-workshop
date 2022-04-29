import jdk.incubator.foreign.*;

import static jdk.incubator.foreign.ResourceScope.newConfinedScope;
import static jdk.incubator.foreign.SegmentAllocator.implicitAllocator;
import static org.unix.stdio_h.*;

/**
 * Panama Hello World calling C functions.
 */
public class HelloWorld {
    public static void main(String[] args) {
       try (var scope = newConfinedScope()) {
           // MemorySegment C's printf using a C string
           MemorySegment cString = implicitAllocator().allocateUtf8String("Hello World! Panama style\n");

           // int printf(const char *format, ...);  a variadic function
           printf(cString);
           fflush(NULL());

           // converting a C string (MemorySegment) into a Java String
           String jString = cString.getUtf8String(0);
           System.out.println("(Java) " + jString);
           // Hello World! Panama style
       }
    }
}

