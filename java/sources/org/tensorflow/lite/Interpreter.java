package org.tensorflow.lite;

import java.io.File;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class Interpreter implements AutoCloseable {
    NativeInterpreterWrapper wrapper;

    public static class Options {
        Boolean allowBufferHandleOutput;
        Boolean allowFp16PrecisionForFp32;
        Boolean useNNAPI;
        Boolean useXNNPACK;
        int numThreads = -1;
        final List<Delegate> delegates = new ArrayList();

        public Options addDelegate(Delegate delegate) {
            this.delegates.add(delegate);
            return this;
        }

        public Options setAllowBufferHandleOutput(boolean z) {
            this.allowBufferHandleOutput = Boolean.valueOf(z);
            return this;
        }

        @Deprecated
        public Options setAllowFp16PrecisionForFp32(boolean z) {
            this.allowFp16PrecisionForFp32 = Boolean.valueOf(z);
            return this;
        }

        public Options setNumThreads(int i) {
            this.numThreads = i;
            return this;
        }

        public Options setUseNNAPI(boolean z) {
            this.useNNAPI = Boolean.valueOf(z);
            return this;
        }

        public Options setUseXNNPACK(boolean z) {
            this.useXNNPACK = Boolean.valueOf(z);
            return this;
        }
    }

    public Interpreter(File file) {
        this(file, (Options) null);
    }

    private void checkNotClosed() {
        if (this.wrapper == null) {
            throw new IllegalStateException("Internal error: The Interpreter has already been closed.");
        }
    }

    public void allocateTensors() {
        checkNotClosed();
        this.wrapper.allocateTensors();
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        NativeInterpreterWrapper nativeInterpreterWrapper = this.wrapper;
        if (nativeInterpreterWrapper != null) {
            nativeInterpreterWrapper.close();
            this.wrapper = null;
        }
    }

    protected void finalize() throws Throwable {
        try {
            close();
        } finally {
            super.finalize();
        }
    }

    int getExecutionPlanLength() {
        checkNotClosed();
        return this.wrapper.getExecutionPlanLength();
    }

    public int getInputIndex(String str) {
        checkNotClosed();
        return this.wrapper.getInputIndex(str);
    }

    public Tensor getInputTensor(int i) {
        checkNotClosed();
        return this.wrapper.getInputTensor(i);
    }

    public int getInputTensorCount() {
        checkNotClosed();
        return this.wrapper.getInputTensorCount();
    }

    public Long getLastNativeInferenceDurationNanoseconds() {
        checkNotClosed();
        return this.wrapper.getLastNativeInferenceDurationNanoseconds();
    }

    public int getOutputIndex(String str) {
        checkNotClosed();
        return this.wrapper.getOutputIndex(str);
    }

    public Tensor getOutputTensor(int i) {
        checkNotClosed();
        return this.wrapper.getOutputTensor(i);
    }

    public int getOutputTensorCount() {
        checkNotClosed();
        return this.wrapper.getOutputTensorCount();
    }

    public void modifyGraphWithDelegate(Delegate delegate) {
        checkNotClosed();
        this.wrapper.modifyGraphWithDelegate(delegate);
    }

    public void resetVariableTensors() {
        checkNotClosed();
        this.wrapper.resetVariableTensors();
    }

    public void resizeInput(int i, int[] iArr) {
        checkNotClosed();
        this.wrapper.resizeInput(i, iArr, false);
    }

    public void run(Object obj, Object obj2) {
        Object[] objArr = {obj};
        HashMap map = new HashMap();
        map.put(0, obj2);
        runForMultipleInputsOutputs(objArr, map);
    }

    public void runForMultipleInputsOutputs(Object[] objArr, Map<Integer, Object> map) {
        checkNotClosed();
        this.wrapper.run(objArr, map);
    }

    @Deprecated
    public void setNumThreads(int i) {
        checkNotClosed();
        this.wrapper.setNumThreads(i);
    }

    @Deprecated
    public void setUseNNAPI(boolean z) {
        checkNotClosed();
        this.wrapper.setUseNNAPI(z);
    }

    @Deprecated
    public Interpreter(File file, int i) {
        this(file, new Options().setNumThreads(i));
    }

    public Interpreter(File file, Options options) {
        this.wrapper = new NativeInterpreterWrapper(file.getAbsolutePath(), options);
    }

    public void resizeInput(int i, int[] iArr, boolean z) {
        checkNotClosed();
        this.wrapper.resizeInput(i, iArr, z);
    }

    public Interpreter(ByteBuffer byteBuffer) {
        this(byteBuffer, (Options) null);
    }

    @Deprecated
    public Interpreter(ByteBuffer byteBuffer, int i) {
        this(byteBuffer, new Options().setNumThreads(i));
    }

    @Deprecated
    public Interpreter(MappedByteBuffer mappedByteBuffer) {
        this(mappedByteBuffer, (Options) null);
    }

    public Interpreter(ByteBuffer byteBuffer, Options options) {
        this.wrapper = new NativeInterpreterWrapper(byteBuffer, options);
    }
}
