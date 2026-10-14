package org.tensorflow.lite;

import java.lang.reflect.Array;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.LongBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class Tensor {
    private final DataType dtype;
    private long nativeHandle;
    private final QuantizationParams quantizationParamsCopy;
    private int[] shapeCopy;
    private final int[] shapeSignatureCopy;

    public static class QuantizationParams {
        private final float scale;
        private final int zeroPoint;

        public QuantizationParams(float f2, int i) {
            this.scale = f2;
            this.zeroPoint = i;
        }

        public float getScale() {
            return this.scale;
        }

        public int getZeroPoint() {
            return this.zeroPoint;
        }
    }

    private Tensor(long j) {
        this.nativeHandle = j;
        this.dtype = DataType.fromC(dtype(j));
        this.shapeCopy = shape(j);
        this.shapeSignatureCopy = shapeSignature(j);
        this.quantizationParamsCopy = new QuantizationParams(quantizationScale(j), quantizationZeroPoint(j));
    }

    private ByteBuffer buffer() {
        return buffer(this.nativeHandle).order(ByteOrder.nativeOrder());
    }

    private static native ByteBuffer buffer(long j);

    static int computeNumDimensions(Object obj) {
        if (obj == null || !obj.getClass().isArray()) {
            return 0;
        }
        if (Array.getLength(obj) != 0) {
            return computeNumDimensions(Array.get(obj, 0)) + 1;
        }
        throw new IllegalArgumentException("Array lengths cannot be 0.");
    }

    static int computeNumElements(int[] iArr) {
        int i = 1;
        for (int i2 : iArr) {
            i *= i2;
        }
        return i;
    }

    static int[] computeShapeOf(Object obj) {
        int[] iArr = new int[computeNumDimensions(obj)];
        fillShape(obj, 0, iArr);
        return iArr;
    }

    private static native long create(long j, int i);

    static DataType dataTypeOf(Object obj) {
        if (obj != null) {
            Class<?> componentType = obj.getClass();
            if (componentType.isArray()) {
                while (componentType.isArray()) {
                    componentType = componentType.getComponentType();
                }
                if (Float.TYPE.equals(componentType)) {
                    return DataType.FLOAT32;
                }
                if (Integer.TYPE.equals(componentType)) {
                    return DataType.INT32;
                }
                if (Byte.TYPE.equals(componentType)) {
                    return DataType.UINT8;
                }
                if (Long.TYPE.equals(componentType)) {
                    return DataType.INT64;
                }
                if (String.class.equals(componentType)) {
                    return DataType.STRING;
                }
            } else {
                if (Float.class.equals(componentType) || (obj instanceof FloatBuffer)) {
                    return DataType.FLOAT32;
                }
                if (Integer.class.equals(componentType) || (obj instanceof IntBuffer)) {
                    return DataType.INT32;
                }
                if (Byte.class.equals(componentType)) {
                    return DataType.UINT8;
                }
                if (Long.class.equals(componentType) || (obj instanceof LongBuffer)) {
                    return DataType.INT64;
                }
                if (String.class.equals(componentType)) {
                    return DataType.STRING;
                }
            }
        }
        throw new IllegalArgumentException("DataType error: cannot resolve DataType of " + obj.getClass().getName());
    }

    private static native void delete(long j);

    private static native int dtype(long j);

    static void fillShape(Object obj, int i, int[] iArr) {
        if (iArr == null || i == iArr.length) {
            return;
        }
        int length = Array.getLength(obj);
        if (iArr[i] == 0) {
            iArr[i] = length;
        } else if (iArr[i] != length) {
            throw new IllegalArgumentException(String.format("Mismatched lengths (%d and %d) in dimension %d", Integer.valueOf(iArr[i]), Integer.valueOf(length), Integer.valueOf(i)));
        }
        for (int i2 = 0; i2 < length; i2++) {
            fillShape(Array.get(obj, i2), i + 1, iArr);
        }
    }

    static Tensor fromIndex(long j, int i) {
        return new Tensor(create(j, i));
    }

    private static native boolean hasDelegateBufferHandle(long j);

    private static native int index(long j);

    private static boolean isBuffer(Object obj) {
        return obj instanceof Buffer;
    }

    private static boolean isByteBuffer(Object obj) {
        return obj instanceof ByteBuffer;
    }

    private static native String name(long j);

    private static native int numBytes(long j);

    private static native float quantizationScale(long j);

    private static native int quantizationZeroPoint(long j);

    private static native void readMultiDimensionalArray(long j, Object obj);

    private static native int[] shape(long j);

    private static native int[] shapeSignature(long j);

    private void throwIfDstShapeIsIncompatible(Object obj) {
        if (!isBuffer(obj)) {
            int[] iArrComputeShapeOf = computeShapeOf(obj);
            if (!Arrays.equals(iArrComputeShapeOf, this.shapeCopy)) {
                throw new IllegalArgumentException(String.format("Cannot copy from a TensorFlowLite tensor (%s) with shape %s to a Java object with shape %s.", name(), Arrays.toString(this.shapeCopy), Arrays.toString(iArrComputeShapeOf)));
            }
        } else {
            Buffer buffer = (Buffer) obj;
            int iNumBytes = numBytes();
            int iCapacity = isByteBuffer(obj) ? buffer.capacity() : buffer.capacity() * this.dtype.byteSize();
            if (iNumBytes > iCapacity) {
                throw new IllegalArgumentException(String.format("Cannot copy from a TensorFlowLite tensor (%s) with %d bytes to a Java Buffer with %d bytes.", name(), Integer.valueOf(iNumBytes), Integer.valueOf(iCapacity)));
            }
        }
    }

    private void throwIfSrcShapeIsIncompatible(Object obj) {
        if (!isBuffer(obj)) {
            int[] iArrComputeShapeOf = computeShapeOf(obj);
            if (!Arrays.equals(iArrComputeShapeOf, this.shapeCopy)) {
                throw new IllegalArgumentException(String.format("Cannot copy to a TensorFlowLite tensor (%s) with shape %s from a Java object with shape %s.", name(), Arrays.toString(this.shapeCopy), Arrays.toString(iArrComputeShapeOf)));
            }
        } else {
            Buffer buffer = (Buffer) obj;
            int iNumBytes = numBytes();
            int iCapacity = isByteBuffer(obj) ? buffer.capacity() : buffer.capacity() * this.dtype.byteSize();
            if (iNumBytes != iCapacity) {
                throw new IllegalArgumentException(String.format("Cannot copy to a TensorFlowLite tensor (%s) with %d bytes from a Java Buffer with %d bytes.", name(), Integer.valueOf(iNumBytes), Integer.valueOf(iCapacity)));
            }
        }
    }

    private void throwIfTypeIsIncompatible(Object obj) {
        DataType dataTypeDataTypeOf;
        if (!isByteBuffer(obj) && (dataTypeDataTypeOf = dataTypeOf(obj)) != this.dtype && !dataTypeDataTypeOf.toStringName().equals(this.dtype.toStringName())) {
            throw new IllegalArgumentException(String.format("Cannot convert between a TensorFlowLite tensor with type %s and a Java object of type %s (which is compatible with the TensorFlowLite type %s).", this.dtype, obj.getClass().getName(), dataTypeDataTypeOf));
        }
    }

    private static native void writeDirectBuffer(long j, Buffer buffer);

    private static native void writeMultiDimensionalArray(long j, Object obj);

    private static native void writeScalar(long j, Object obj);

    void close() {
        delete(this.nativeHandle);
        this.nativeHandle = 0L;
    }

    Object copyTo(Object obj) {
        if (obj == null) {
            if (hasDelegateBufferHandle(this.nativeHandle)) {
                return obj;
            }
            throw new IllegalArgumentException("Null outputs are allowed only if the Tensor is bound to a buffer handle.");
        }
        throwIfTypeIsIncompatible(obj);
        throwIfDstShapeIsIncompatible(obj);
        if (isBuffer(obj)) {
            copyTo((Buffer) obj);
        } else {
            readMultiDimensionalArray(this.nativeHandle, obj);
        }
        return obj;
    }

    public DataType dataType() {
        return this.dtype;
    }

    int[] getInputShapeIfDifferent(Object obj) {
        if (obj == null || isBuffer(obj)) {
            return null;
        }
        throwIfTypeIsIncompatible(obj);
        int[] iArrComputeShapeOf = computeShapeOf(obj);
        if (Arrays.equals(this.shapeCopy, iArrComputeShapeOf)) {
            return null;
        }
        return iArrComputeShapeOf;
    }

    public int index() {
        return index(this.nativeHandle);
    }

    public String name() {
        return name(this.nativeHandle);
    }

    public int numBytes() {
        return numBytes(this.nativeHandle);
    }

    public int numDimensions() {
        return this.shapeCopy.length;
    }

    public int numElements() {
        return computeNumElements(this.shapeCopy);
    }

    public QuantizationParams quantizationParams() {
        return this.quantizationParamsCopy;
    }

    void refreshShape() {
        this.shapeCopy = shape(this.nativeHandle);
    }

    void setTo(Object obj) {
        if (obj == null) {
            if (!hasDelegateBufferHandle(this.nativeHandle)) {
                throw new IllegalArgumentException("Null inputs are allowed only if the Tensor is bound to a buffer handle.");
            }
            return;
        }
        throwIfTypeIsIncompatible(obj);
        throwIfSrcShapeIsIncompatible(obj);
        if (isBuffer(obj)) {
            setTo((Buffer) obj);
        } else if (obj.getClass().isArray()) {
            writeMultiDimensionalArray(this.nativeHandle, obj);
        } else {
            writeScalar(this.nativeHandle, obj);
        }
    }

    public int[] shape() {
        return this.shapeCopy;
    }

    public int[] shapeSignature() {
        return this.shapeSignatureCopy;
    }

    private void copyTo(Buffer buffer) {
        if (buffer instanceof ByteBuffer) {
            ((ByteBuffer) buffer).put(buffer());
            return;
        }
        if (buffer instanceof FloatBuffer) {
            ((FloatBuffer) buffer).put(buffer().asFloatBuffer());
            return;
        }
        if (buffer instanceof LongBuffer) {
            ((LongBuffer) buffer).put(buffer().asLongBuffer());
        } else {
            if (buffer instanceof IntBuffer) {
                ((IntBuffer) buffer).put(buffer().asIntBuffer());
                return;
            }
            throw new IllegalArgumentException("Unexpected output buffer type: " + buffer);
        }
    }

    private void setTo(Buffer buffer) {
        if (buffer instanceof ByteBuffer) {
            ByteBuffer byteBuffer = (ByteBuffer) buffer;
            if (byteBuffer.isDirect() && byteBuffer.order() == ByteOrder.nativeOrder()) {
                writeDirectBuffer(this.nativeHandle, buffer);
                return;
            } else {
                buffer().put(byteBuffer);
                return;
            }
        }
        if (buffer instanceof LongBuffer) {
            LongBuffer longBuffer = (LongBuffer) buffer;
            if (longBuffer.isDirect() && longBuffer.order() == ByteOrder.nativeOrder()) {
                writeDirectBuffer(this.nativeHandle, buffer);
                return;
            } else {
                buffer().asLongBuffer().put(longBuffer);
                return;
            }
        }
        if (buffer instanceof FloatBuffer) {
            FloatBuffer floatBuffer = (FloatBuffer) buffer;
            if (floatBuffer.isDirect() && floatBuffer.order() == ByteOrder.nativeOrder()) {
                writeDirectBuffer(this.nativeHandle, buffer);
                return;
            } else {
                buffer().asFloatBuffer().put(floatBuffer);
                return;
            }
        }
        if (buffer instanceof IntBuffer) {
            IntBuffer intBuffer = (IntBuffer) buffer;
            if (intBuffer.isDirect() && intBuffer.order() == ByteOrder.nativeOrder()) {
                writeDirectBuffer(this.nativeHandle, buffer);
                return;
            } else {
                buffer().asIntBuffer().put(intBuffer);
                return;
            }
        }
        throw new IllegalArgumentException("Unexpected input buffer type: " + buffer);
    }
}
