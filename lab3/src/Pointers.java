import jdk.incubator.foreign.*;

import static jdk.incubator.foreign.ResourceScope.newConfinedScope;
import static org.panamaworkshop.myclibrary.C_INT;


/**
 * Panama Pointers demonstrates how to access variables by reference as opposed to by value.
 *
 * To Run:
 * java --enable-native-access=ALL-UNNAMED --add-modules jdk.incubator.foreign src/Pointers.java
 */
public class Pointers {
    public static void main(String[] args) {
      try (var scope = newConfinedScope()) {
        System.out.println("\nCreating Pointers:");
        var allocator = SegmentAllocator.implicitAllocator();

        // int x = 5;
        var x = allocator.allocate(C_INT, 5);

        // int *ptr;
        MemoryAddress address = x.address();             // obtain address

        // ptr = &x;
        MemoryAddress ptr = address;
        //MemorySegment ptrVal = MemorySegment.ofAddress(ptr, 8, scope);
        // Output value: x = 5 and ptr's value = 5
        System.out.printf("           x = %d    address = %x %n", x.get(C_INT, 0), x.address().toRawLongValue());
        System.out.printf(" ptr's value = %d    address = %x %n", ptr.get(C_INT, 0), ptr.address().toRawLongValue());
//        System.out.printf(" ptr's value = %d    address = %x %n", ptrVal.get(C_INT, 0), ptrVal.address().toRawLongValue());

         // Change x = 10;
        x.set(C_INT, 0, 10);
        System.out.printf(" Changing x's value to: %d %n", x.get(C_INT, 0));

        // Output after change
        System.out.printf("           x = %d    address = %x %n", x.get(C_INT, 0), x.address().toRawLongValue());
        System.out.printf(" ptr's value = %d    address = %x %n", ptr.get(C_INT, 0), ptr.address().toRawLongValue());
      }
   }
}

