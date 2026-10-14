package org.tensorflow.lite.nnapi;

import org.tensorflow.lite.Delegate;
import org.tensorflow.lite.TensorFlowLite;

/* JADX INFO: loaded from: classes6.dex */
public class NnApiDelegate implements Delegate, AutoCloseable {
    private static final long INVALID_DELEGATE_HANDLE = 0;
    private long delegateHandle;

    public static final class Options {
        public static final int EXECUTION_PREFERENCE_FAST_SINGLE_ANSWER = 1;
        public static final int EXECUTION_PREFERENCE_LOW_POWER = 0;
        public static final int EXECUTION_PREFERENCE_SUSTAINED_SPEED = 2;
        public static final int EXECUTION_PREFERENCE_UNDEFINED = -1;
        private int executionPreference = -1;
        private String acceleratorName = null;
        private String cacheDir = null;
        private String modelToken = null;
        private Integer maxDelegatedPartitions = null;
        private Boolean useNnapiCpu = null;
        private Boolean allowFp16 = null;

        public Options setAcceleratorName(String str) {
            this.acceleratorName = str;
            return this;
        }

        public Options setAllowFp16(boolean z) {
            this.allowFp16 = Boolean.valueOf(z);
            return this;
        }

        public Options setCacheDir(String str) {
            this.cacheDir = str;
            return this;
        }

        public Options setExecutionPreference(int i) {
            this.executionPreference = i;
            return this;
        }

        public Options setMaxNumberOfDelegatedPartitions(int i) {
            this.maxDelegatedPartitions = Integer.valueOf(i);
            return this;
        }

        public Options setModelToken(String str) {
            this.modelToken = str;
            return this;
        }

        public Options setUseNnapiCpu(boolean z) {
            this.useNnapiCpu = Boolean.valueOf(!z);
            return this;
        }
    }

    public NnApiDelegate(Options options) {
        TensorFlowLite.init();
        this.delegateHandle = createDelegate(options.executionPreference, options.acceleratorName, options.cacheDir, options.modelToken, options.maxDelegatedPartitions != null ? options.maxDelegatedPartitions.intValue() : -1, options.useNnapiCpu != null, (options.useNnapiCpu == null || options.useNnapiCpu.booleanValue()) ? false : true, options.allowFp16 != null ? options.allowFp16.booleanValue() : false);
    }

    private void checkNotClosed() {
        if (this.delegateHandle == 0) {
            throw new IllegalStateException("Should not access delegate after it has been closed.");
        }
    }

    private static native long createDelegate(int i, String str, String str2, String str3, int i2, boolean z, boolean z2, boolean z3);

    private static native void deleteDelegate(long j);

    private static native int getNnapiErrno(long j);

    @Override // java.lang.AutoCloseable
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

    public int getNnapiErrno() {
        checkNotClosed();
        return getNnapiErrno(this.delegateHandle);
    }

    public boolean hasErrors() {
        return getNnapiErrno(this.delegateHandle) != 0;
    }

    public NnApiDelegate() {
        this(new Options());
    }
}
