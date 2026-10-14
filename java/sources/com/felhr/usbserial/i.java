package com.felhr.usbserial;

import java.io.OutputStream;

/* JADX INFO: loaded from: classes5.dex */
public class i extends OutputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f11711a = 0;
    protected final k b;

    public i(k kVar) {
        this.b = kVar;
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        this.b.c(new byte[]{(byte) i}, this.f11711a);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        this.b.c(bArr, this.f11711a);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        if (i < 0) {
            throw new IndexOutOfBoundsException("Offset must be >= 0");
        }
        if (i2 >= 0) {
            if (i + i2 <= bArr.length) {
                if (i == 0 && i2 == bArr.length) {
                    write(bArr);
                    return;
                } else {
                    this.b.d(bArr, i, i2, this.f11711a);
                    return;
                }
            }
            throw new IndexOutOfBoundsException("off + length greater than buffer length");
        }
        throw new IndexOutOfBoundsException("Length must positive");
    }
}
