import jdk.incubator.foreign.*;
import org.panamaworkshop.person;

import static jdk.incubator.foreign.ResourceScope.newConfinedScope;
import static org.panamaworkshop.myclibrary.*;

/**
 * TestMyCLibrary demonstrates how to access a MyCLibrary.
 *
 * To Run:
 * java --enable-native-access=ALL-UNNAMED --add-modules jdk.incubator.foreign src/TestMyCLibrary.java
 */
public class TestMyCLibrary {
    public static void main(String[] args) {
      try (var scope = newConfinedScope()) {
        System.out.println("\nTesting MyCLibrary native library:");
        var allocator = SegmentAllocator.implicitAllocator();

        // Exercise 1: Call the native C function: void addNumbers(int a, int b, int *c)
        // Expected output: Java 5 + 10 = 15


        // Exercise 2: Call the native C function: void display(struct person p);
        // Expected output:
        // Name: Dr X
        // Age: 230


        // Exercise 3: Call the native C function: void displayAll(struct person *ptrArray, int size);
        // The objective is to create an array of structs to be passed to displayAll with the size of the array.
        // Expected output:
        //     Name: Person 0
        //     Age: 100
        //     Name: Person 1
        //     Age: 101
        int length = 2;
        SequenceLayout sequenceLayout = MemoryLayout.sequenceLayout(2, person.$LAYOUT());
        MemorySegment people = allocator.allocate(sequenceLayout);

        var vhSeq_name = sequenceLayout.varHandle(
                MemoryLayout.PathElement.sequenceElement(),
                MemoryLayout.PathElement.groupElement("name"));

        var vhSeq_age = sequenceLayout.varHandle(
                MemoryLayout.PathElement.sequenceElement(),
                MemoryLayout.PathElement.groupElement("age"));

        for(int i=0; i<length; i++) {
          // Set the name and age for each person in the sequence

        }

        displayAll(people, length);


      }
   }
}

