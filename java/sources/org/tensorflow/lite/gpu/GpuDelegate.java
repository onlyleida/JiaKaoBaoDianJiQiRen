package org.tensorflow.lite.gpu;

import java.io.Closeable;
import org.tensorflow.lite.Delegate;
import org.tensorflow.lite.annotations.UsedByReflection;

/* JADX INFO: loaded from: classes6.dex */
@UsedByReflection("TFLiteSupport/model/GpuDelegateProxy")
public class GpuDelegate implements Delegate, Closeable {
    private static final long INVALID_DELEGATE_HANDLE = 0;
    private static final String TFLITE_GPU_LIB = "tensorflowlite_gpu_jni";
    private long delegateHandle;

    public static final class Options {
        public static final int INFERENCE_PREFERENCE_FAST_SINGLE_ANSWER = 0;
        public static final int INFERENCE_PREFERENCE_SUSTAINED_SPEED = 1;
        boolean precisionLossAllowed = true;
        boolean quantizedModelsAllowed = false;
        int inferencePreference = 0;

        public Options setInferencePreference(int i) {
            this.inferencePreference = i;
            return this;
        }

        public Options setPrecisionLossAllowed(boolean z) {
            this.precisionLossAllowed = z;
            return this;
        }

        public Options setQuantizedModelsAllowed(boolean z) {
            this.quantizedModelsAllowed = z;
            return this;
        }
    }

    static {
        System.loadLibrary(TFLITE_GPU_LIB);
    }

    public GpuDelegate(Options options) {
        this.delegateHandle = createDelegate(options.precisionLossAllowed, options.quantizedModelsAllowed, options.inferencePreference);
    }

    private static native long createDelegate(boolean z, boolean z2, int i);

    private static native void deleteDelegate(long j);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        long j = this.delegateHandle;
        if (j != 0) {
            deleteDelegate(j);
            this.delegateHandle = 0L;
        }
    }

    @Override // org.tensorflow.lite.Delegate
    public long getNativeHandle() {
        return this.delegateHandle;
    }

    @UsedByReflection("TFLiteSupport/model/GpuDelegateProxy")
    public GpuDelegate() {
        this(new Options());
    }
}
