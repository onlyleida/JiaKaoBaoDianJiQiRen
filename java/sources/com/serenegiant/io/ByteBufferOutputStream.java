package com.serenegiant.io;

import java.io.OutputStream;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes6.dex */
public class ByteBufferOutputStream extends OutputStream {
    private final boolean autoEnlarge;
    private ByteBuffer wrappedBuffer;

    public ByteBufferOutputStream(ByteBuffer byteBuffer, boolean z) {
        this.wrappedBuffer = byteBuffer;
        this.autoEnlarge = z;
    }

    private void growTo(int i) {
        int iCapacity = this.wrappedBuffer.capacity() << 1;
        if (iCapacity - i < 0) {
            iCapacity = i;
        }
        if (iCapacity < 0) {
            if (i < 0) {
                throw new OutOfMemoryError();
            }
            iCapacity = Integer.MAX_VALUE;
        }
        ByteBuffer byteBuffer = this.wrappedBuffer;
        if (byteBuffer.isDirect()) {
            this.wrappedBuffer = ByteBuffer.allocateDirect(iCapacity);
        } else {
            this.wrappedBuffer = ByteBuffer.allocate(iCapacity);
        }
        byteBuffer.flip();
        this.wrappedBuffer.put(byteBuffer);
    }

    public void reset() {
        this.wrappedBuffer.rewind();
    }

    public int size() {
        return this.wrappedBuffer.position();
    }

    public ByteBuffer toByteBuffer() {
        ByteBuffer byteBufferDuplicate = this.wrappedBuffer.duplicate();
        byteBufferDuplicate.flip();
        return byteBufferDuplicate.asReadOnlyBuffer();
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        try {
            this.wrappedBuffer.put((byte) i);
        } catch (BufferOverflowException e2) {
            if (!this.autoEnlarge) {
                throw e2;
            }
            growTo(this.wrappedBuffer.capacity() * 2);
            write(i);
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        int iPosition = 0;
        try {
            iPosition = this.wrappedBuffer.position();
            this.wrappedBuffer.put(bArr);
        } catch (BufferOverflowException e2) {
            if (this.autoEnlarge) {
                growTo(Math.max(this.wrappedBuffer.capacity() * 2, iPosition + bArr.length));
                write(bArr);
                return;
            }
            throw e2;
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        int iPosition = 0;
        try {
            iPosition = this.wrappedBuffer.position();
            this.wrappedBuffer.put(bArr, i, i2);
        } catch (BufferOverflowException e2) {
            if (this.autoEnlarge) {
                growTo(Math.max(this.wrappedBuffer.capacity() * 2, iPosition + i2));
                write(bArr, i, i2);
                return;
            }
            throw e2;
        }
    }
}
