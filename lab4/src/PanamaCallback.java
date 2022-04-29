import jdk.incubator.foreign.*;
import org.unix.mylib_h;
import java.lang.invoke.MethodHandle;
import java.lang.invoke.MethodHandles;
import java.lang.invoke.MethodType;
import static jdk.incubator.foreign.ResourceScope.newConfinedScope;
import static jdk.incubator.foreign.SegmentAllocator.implicitAllocator;
import static org.unix.mylib_h.*;

public class PanamaCallback {

    /**
     * C code will call this static method.
     */
    public static void callMePlease() {
        MemorySegment cString = implicitAllocator()
                .allocateUtf8String("[JAVA] Inside callMePlease() method - I'm being called from C.\n");
        printf(cString);
    }

    /**
     * C code will call this static method.
     * @param value C will pass in a number. Your code will double it.
     */
    public static void doubleMe(int value) {
        MemorySegment cString = implicitAllocator()
                .allocateUtf8String("[JAVA] Inside doubleMe() method, %d times 2 = %d.\n".formatted(value, value*2));
        printf(cString);
    }

    /**
     * Main entry point.
     * @param args
     * @throws Throwable
     */
    public static void main(String[] args) throws Throwable {
        try (var scope = newConfinedScope()) {
            // Create a method handle to the Java function as a callback
            MethodHandle onCallMePlease = MethodHandles.lookup()
                    .findStatic(PanamaCallback.class,
                            "callMePlease",
                            MethodType.methodType(void.class));

            // Create a stub as a native symbol to be passed into native function.
            // void (*ptr)()
            NativeSymbol callMePleaseNativeSymbol = CLinker.systemCLinker().upcallStub(
                    onCallMePlease,
                    FunctionDescriptor.ofVoid(),
                    scope);

            // Invoke C function receiving a callback
            // void my_callback_function(void (*ptr)())
            my_callback_function(callMePleaseNativeSymbol);

            // Create a method handle to the Java function as a callback
            MethodHandle onDoubleMe = MethodHandles.lookup()
                    .findStatic(PanamaCallback.class,
                            "doubleMe",
                            MethodType.methodType(void.class, int.class));

            // Create a stub as a native symbol to be passed into native function.
            // void (*ptr)(int)
            NativeSymbol doubleMeNativeSymbol = CLinker.systemCLinker().upcallStub(
                    onDoubleMe,
                    FunctionDescriptor.ofVoid(C_INT),
                    scope);

            // Invoke C function receiving a callback
            // void my_callback_function2(void (*ptr)(int))
            my_callback_function2(doubleMeNativeSymbol);
        }
    }
}
