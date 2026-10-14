package org.tensorflow.lite.gpu;

import java.io.Closeable;

/* JADX INFO: loaded from: classes6.dex */
public class CompatibilityList implements Closeable {
    private static final long INVALID_COMPATIBILITY_LIST_HANDLE = 0;
    private static final String TFLITE_GPU_LIB = "tensorflowlite_gpu_jni";
    private long compatibilityListHandle;

    static {
        System.loadLibrary(TFLITE_GPU_LIB);
    }

    public CompatibilityList() {
        this.compatibilityListHandle = 0L;
        this.compatibilityListHandle = createCompatibilityList();
    }

    private static native long createCompatibilityList();

    private static native void deleteCompatibilityList(long j);

    private static native boolean nativeIsDelegateSupportedOnThisDevice(long j);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        long j = this.compatibilityListHandle;
        if (j != 0) {
            deleteCompatibilityList(j);
            this.compatibilityListHandle = 0L;
        }
    }

    public GpuDelegate.Options getBestOptionsForThisDevice() {
        return new GpuDelegate.Options();
    }

    public boolean isDelegateSupportedOnThisDevice() {
        long j = this.compatibilityListHandle;
        if (j != 0) {
            return nativeIsDelegateSupportedOnThisDevice(j);
        }
        throw new IllegalStateException("Trying to query a closed compatibilityList.");
    }
}
