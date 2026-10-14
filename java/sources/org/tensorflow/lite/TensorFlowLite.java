package org.tensorflow.lite;

/* JADX INFO: loaded from: classes6.dex */
public final class TensorFlowLite {
    private static final String LIBNAME = "tensorflowlite_jni";
    private static final Throwable LOAD_LIBRARY_EXCEPTION;
    private static volatile boolean isInit = false;

    static {
        try {
            System.loadLibrary(LIBNAME);
            e = null;
        } catch (UnsatisfiedLinkError e2) {
            e = e2;
        }
        LOAD_LIBRARY_EXCEPTION = e;
    }

    private TensorFlowLite() {
    }

    public static void init() {
        if (isInit) {
            return;
        }
        try {
            nativeRuntimeVersion();
            isInit = true;
        } catch (UnsatisfiedLinkError e2) {
            e = e2;
            Throwable th = LOAD_LIBRARY_EXCEPTION;
            if (th != null) {
                e = th;
            }
            throw new UnsatisfiedLinkError("Failed to load native TensorFlow Lite methods. Check that the correct native libraries are present, and, if using a custom native library, have been properly loaded via System.loadLibrary():\n  " + e);
        }
    }

    public static native String nativeRuntimeVersion();

    public static native String nativeSchemaVersion();

    public static String runtimeVersion() {
        init();
        return nativeRuntimeVersion();
    }

    public static String schemaVersion() {
        init();
        return nativeSchemaVersion();
    }

    @Deprecated
    public static String version() {
        return schemaVersion();
    }
}
