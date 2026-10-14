package org.tensorflow.lite;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.tensorflow.lite.nnapi.NnApiDelegate;

/* JADX INFO: loaded from: classes6.dex */
final class NativeInterpreterWrapper implements AutoCloseable {
    private static final int ERROR_BUFFER_SIZE = 512;
    private final List<Delegate> delegates;
    private long errorHandle;
    private long inferenceDurationNanoseconds;
    private Tensor[] inputTensors;
    private Map<String, Integer> inputsIndexes;
    private long interpreterHandle;
    private boolean isMemoryAllocated;
    private ByteBuffer modelByteBuffer;
    private long modelHandle;
    private Tensor[] outputTensors;
    private Map<String, Integer> outputsIndexes;
    private final List<AutoCloseable> ownedDelegates;

    NativeInterpreterWrapper(String str) {
        this(str, (Interpreter.Options) null);
    }

    private static native long allocateTensors(long j, long j2);

    private static native void allowBufferHandleOutput(long j, boolean z);

    private static native void allowFp16PrecisionForFp32(long j, boolean z);

    private static native void applyDelegate(long j, long j2, long j3);

    private void applyDelegates(Interpreter.Options options) {
        Delegate delegateMaybeCreateFlexDelegate;
        boolean zHasUnresolvedFlexOp = hasUnresolvedFlexOp(this.interpreterHandle);
        if (zHasUnresolvedFlexOp && (delegateMaybeCreateFlexDelegate = maybeCreateFlexDelegate(options.delegates)) != null) {
            this.ownedDelegates.add((AutoCloseable) delegateMaybeCreateFlexDelegate);
            applyDelegate(this.interpreterHandle, this.errorHandle, delegateMaybeCreateFlexDelegate.getNativeHandle());
        }
        try {
            for (Delegate delegate : options.delegates) {
                applyDelegate(this.interpreterHandle, this.errorHandle, delegate.getNativeHandle());
                this.delegates.add(delegate);
            }
            Boolean bool = options.useNNAPI;
            if (bool == null || !bool.booleanValue()) {
                return;
            }
            NnApiDelegate nnApiDelegate = new NnApiDelegate();
            this.ownedDelegates.add(nnApiDelegate);
            applyDelegate(this.interpreterHandle, this.errorHandle, nnApiDelegate.getNativeHandle());
        } catch (IllegalArgumentException e2) {
            if (!(zHasUnresolvedFlexOp && !hasUnresolvedFlexOp(this.interpreterHandle))) {
                throw e2;
            }
            System.err.println("Ignoring failed delegate application: " + e2);
        }
    }

    private static native long createErrorReporter(int i);

    private static native long createInterpreter(long j, long j2, int i);

    private static native long createModel(String str, long j);

    private static native long createModelWithBuffer(ByteBuffer byteBuffer, long j);

    private static native void delete(long j, long j2, long j3);

    private static native int getExecutionPlanLength(long j);

    private static native int getInputCount(long j);

    private static native String[] getInputNames(long j);

    private static native int getInputTensorIndex(long j, int i);

    private static native int getOutputCount(long j);

    private static native int getOutputDataType(long j, int i);

    private static native String[] getOutputNames(long j);

    private static native int getOutputTensorIndex(long j, int i);

    private static native boolean hasUnresolvedFlexOp(long j);

    private void init(long j, long j2, Interpreter.Options options) {
        if (options == null) {
            options = new Interpreter.Options();
        }
        this.errorHandle = j;
        this.modelHandle = j2;
        long jCreateInterpreter = createInterpreter(j2, j, options.numThreads);
        this.interpreterHandle = jCreateInterpreter;
        this.inputTensors = new Tensor[getInputCount(jCreateInterpreter)];
        this.outputTensors = new Tensor[getOutputCount(this.interpreterHandle)];
        Boolean bool = options.allowFp16PrecisionForFp32;
        if (bool != null) {
            allowFp16PrecisionForFp32(this.interpreterHandle, bool.booleanValue());
        }
        Boolean bool2 = options.allowBufferHandleOutput;
        if (bool2 != null) {
            allowBufferHandleOutput(this.interpreterHandle, bool2.booleanValue());
        }
        applyDelegates(options);
        Boolean bool3 = options.useXNNPACK;
        if (bool3 != null) {
            useXNNPACK(this.interpreterHandle, j, bool3.booleanValue(), options.numThreads);
        }
        allocateTensors(this.interpreterHandle, j);
        this.isMemoryAllocated = true;
    }

    private static Delegate maybeCreateFlexDelegate(List<Delegate> list) {
        try {
            Class<?> cls = Class.forName("org.tensorflow.lite.flex.FlexDelegate");
            Iterator<Delegate> it = list.iterator();
            while (it.hasNext()) {
                if (cls.isInstance(it.next())) {
                    return null;
                }
            }
            return (Delegate) cls.getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    private static native void numThreads(long j, int i);

    private static native void resetVariableTensors(long j, long j2);

    private static native boolean resizeInput(long j, long j2, int i, int[] iArr, boolean z);

    private static native void run(long j, long j2);

    private static native void useNNAPI(long j, boolean z);

    private static native void useXNNPACK(long j, long j2, boolean z, int i);

    void allocateTensors() {
        if (this.isMemoryAllocated) {
            return;
        }
        this.isMemoryAllocated = true;
        allocateTensors(this.interpreterHandle, this.errorHandle);
        int i = 0;
        while (true) {
            Tensor[] tensorArr = this.outputTensors;
            if (i >= tensorArr.length) {
                return;
            }
            if (tensorArr[i] != null) {
                tensorArr[i].refreshShape();
            }
            i++;
        }
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        int i = 0;
        while (true) {
            Tensor[] tensorArr = this.inputTensors;
            if (i >= tensorArr.length) {
                break;
            }
            if (tensorArr[i] != null) {
                tensorArr[i].close();
                this.inputTensors[i] = null;
            }
            i++;
        }
        int i2 = 0;
        while (true) {
            Tensor[] tensorArr2 = this.outputTensors;
            if (i2 >= tensorArr2.length) {
                break;
            }
            if (tensorArr2[i2] != null) {
                tensorArr2[i2].close();
                this.outputTensors[i2] = null;
            }
            i2++;
        }
        delete(this.errorHandle, this.modelHandle, this.interpreterHandle);
        this.errorHandle = 0L;
        this.modelHandle = 0L;
        this.interpreterHandle = 0L;
        this.modelByteBuffer = null;
        this.inputsIndexes = null;
        this.outputsIndexes = null;
        this.isMemoryAllocated = false;
        this.delegates.clear();
        Iterator<AutoCloseable> it = this.ownedDelegates.iterator();
        while (it.hasNext()) {
            try {
                it.next().close();
            } catch (Exception e2) {
                System.err.println("Failed to close flex delegate: " + e2);
            }
        }
        this.ownedDelegates.clear();
    }

    int getExecutionPlanLength() {
        return getExecutionPlanLength(this.interpreterHandle);
    }

    int getInputIndex(String str) {
        if (this.inputsIndexes == null) {
            String[] inputNames = getInputNames(this.interpreterHandle);
            this.inputsIndexes = new HashMap();
            if (inputNames != null) {
                for (int i = 0; i < inputNames.length; i++) {
                    this.inputsIndexes.put(inputNames[i], Integer.valueOf(i));
                }
            }
        }
        if (this.inputsIndexes.containsKey(str)) {
            return this.inputsIndexes.get(str).intValue();
        }
        throw new IllegalArgumentException(String.format("Input error: '%s' is not a valid name for any input. Names of inputs and their indexes are %s", str, this.inputsIndexes.toString()));
    }

    Tensor getInputTensor(int i) {
        if (i >= 0) {
            Tensor[] tensorArr = this.inputTensors;
            if (i < tensorArr.length) {
                Tensor tensor = tensorArr[i];
                if (tensor != null) {
                    return tensor;
                }
                long j = this.interpreterHandle;
                Tensor tensorFromIndex = Tensor.fromIndex(j, getInputTensorIndex(j, i));
                tensorArr[i] = tensorFromIndex;
                return tensorFromIndex;
            }
        }
        throw new IllegalArgumentException("Invalid input Tensor index: " + i);
    }

    int getInputTensorCount() {
        return this.inputTensors.length;
    }

    Long getLastNativeInferenceDurationNanoseconds() {
        long j = this.inferenceDurationNanoseconds;
        if (j < 0) {
            return null;
        }
        return Long.valueOf(j);
    }

    int getOutputIndex(String str) {
        if (this.outputsIndexes == null) {
            String[] outputNames = getOutputNames(this.interpreterHandle);
            this.outputsIndexes = new HashMap();
            if (outputNames != null) {
                for (int i = 0; i < outputNames.length; i++) {
                    this.outputsIndexes.put(outputNames[i], Integer.valueOf(i));
                }
            }
        }
        if (this.outputsIndexes.containsKey(str)) {
            return this.outputsIndexes.get(str).intValue();
        }
        throw new IllegalArgumentException(String.format("Input error: '%s' is not a valid name for any output. Names of outputs and their indexes are %s", str, this.outputsIndexes.toString()));
    }

    Tensor getOutputTensor(int i) {
        if (i >= 0) {
            Tensor[] tensorArr = this.outputTensors;
            if (i < tensorArr.length) {
                Tensor tensor = tensorArr[i];
                if (tensor != null) {
                    return tensor;
                }
                long j = this.interpreterHandle;
                Tensor tensorFromIndex = Tensor.fromIndex(j, getOutputTensorIndex(j, i));
                tensorArr[i] = tensorFromIndex;
                return tensorFromIndex;
            }
        }
        throw new IllegalArgumentException("Invalid output Tensor index: " + i);
    }

    int getOutputTensorCount() {
        return this.outputTensors.length;
    }

    void modifyGraphWithDelegate(Delegate delegate) {
        applyDelegate(this.interpreterHandle, this.errorHandle, delegate.getNativeHandle());
        this.delegates.add(delegate);
    }

    void resetVariableTensors() {
        resetVariableTensors(this.interpreterHandle, this.errorHandle);
    }

    void resizeInput(int i, int[] iArr) {
        resizeInput(i, iArr, false);
    }

    void run(Object[] objArr, Map<Integer, Object> map) {
        this.inferenceDurationNanoseconds = -1L;
        if (objArr == null || objArr.length == 0) {
            throw new IllegalArgumentException("Input error: Inputs should not be null or empty.");
        }
        if (map == null || map.isEmpty()) {
            throw new IllegalArgumentException("Input error: Outputs should not be null or empty.");
        }
        int i = 0;
        for (int i2 = 0; i2 < objArr.length; i2++) {
            int[] inputShapeIfDifferent = getInputTensor(i2).getInputShapeIfDifferent(objArr[i2]);
            if (inputShapeIfDifferent != null) {
                resizeInput(i2, inputShapeIfDifferent);
            }
        }
        boolean z = !this.isMemoryAllocated;
        if (z) {
            allocateTensors(this.interpreterHandle, this.errorHandle);
            this.isMemoryAllocated = true;
        }
        for (int i3 = 0; i3 < objArr.length; i3++) {
            getInputTensor(i3).setTo(objArr[i3]);
        }
        long jNanoTime = System.nanoTime();
        run(this.interpreterHandle, this.errorHandle);
        long jNanoTime2 = System.nanoTime() - jNanoTime;
        if (z) {
            while (true) {
                Tensor[] tensorArr = this.outputTensors;
                if (i >= tensorArr.length) {
                    break;
                }
                if (tensorArr[i] != null) {
                    tensorArr[i].refreshShape();
                }
                i++;
            }
        }
        for (Map.Entry<Integer, Object> entry : map.entrySet()) {
            getOutputTensor(entry.getKey().intValue()).copyTo(entry.getValue());
        }
        this.inferenceDurationNanoseconds = jNanoTime2;
    }

    void setNumThreads(int i) {
        numThreads(this.interpreterHandle, i);
    }

    void setUseNNAPI(boolean z) {
        useNNAPI(this.interpreterHandle, z);
    }

    NativeInterpreterWrapper(ByteBuffer byteBuffer) {
        this(byteBuffer, (Interpreter.Options) null);
    }

    void resizeInput(int i, int[] iArr, boolean z) {
        if (resizeInput(this.interpreterHandle, this.errorHandle, i, iArr, z)) {
            this.isMemoryAllocated = false;
            Tensor[] tensorArr = this.inputTensors;
            if (tensorArr[i] != null) {
                tensorArr[i].refreshShape();
            }
        }
    }

    NativeInterpreterWrapper(String str, Interpreter.Options options) {
        this.inferenceDurationNanoseconds = -1L;
        this.isMemoryAllocated = false;
        this.delegates = new ArrayList();
        this.ownedDelegates = new ArrayList();
        TensorFlowLite.init();
        long jCreateErrorReporter = createErrorReporter(512);
        init(jCreateErrorReporter, createModel(str, jCreateErrorReporter), options);
    }

    NativeInterpreterWrapper(ByteBuffer byteBuffer, Interpreter.Options options) {
        this.inferenceDurationNanoseconds = -1L;
        this.isMemoryAllocated = false;
        this.delegates = new ArrayList();
        this.ownedDelegates = new ArrayList();
        TensorFlowLite.init();
        if (byteBuffer != null && ((byteBuffer instanceof MappedByteBuffer) || (byteBuffer.isDirect() && byteBuffer.order() == ByteOrder.nativeOrder()))) {
            this.modelByteBuffer = byteBuffer;
            long jCreateErrorReporter = createErrorReporter(512);
            init(jCreateErrorReporter, createModelWithBuffer(this.modelByteBuffer, jCreateErrorReporter), options);
            return;
        }
        throw new IllegalArgumentException("Model ByteBuffer should be either a MappedByteBuffer of the model file, or a direct ByteBuffer using ByteOrder.nativeOrder() which contains bytes of model content.");
    }
}
