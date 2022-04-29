import jdk.incubator.foreign.*;

import static jdk.incubator.foreign.CLinker.*;
import static jdk.incubator.foreign.ResourceScope.newConfinedScope;
import static jdk.incubator.foreign.SegmentAllocator.implicitAllocator;
import static org.unix.stdio_h.*;

/**
 * Creating primitive values such as a C double.
 */
public class Primitive {
    public static void main(String[] args) {
       try (var scope = newConfinedScope()) {
           // Creating a C double
           var allocator = implicitAllocator();
           var cDouble = allocator.allocate(C_DOUBLE, Math.PI);
           var msgStr = allocator.allocateUtf8String("A slice of %f \n");
           printf (msgStr, cDouble.get(C_DOUBLE, 0));

           // Change the cDouble to Math.PI * 4 [ADD CODE BELOW THIS LINE]

           // Output the string and the new value changed.
           var msgStr2 = allocator.allocateUtf8String("New value is %f \n");
           printf(msgStr2, cDouble.get(C_DOUBLE, 0));
       }
    }
}

