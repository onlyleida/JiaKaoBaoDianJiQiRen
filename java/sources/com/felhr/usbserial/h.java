package com.felhr.usbserial;

import com.google.common.primitives.UnsignedBytes;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes5.dex */
public class h extends InputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f11707a = 0;
    private int b = 16384;
    private final byte[] c = new byte[16384];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f11708d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f11709e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected final k f11710f;

    public h(k kVar) {
        this.f11710f = kVar;
    }

    private int a() {
        int i;
        int i2 = this.f11709e;
        if (i2 <= 0 || (i = this.f11708d) >= i2) {
            this.f11708d = 0;
            this.f11709e = -1;
            return -1;
        }
        byte[] bArr = this.c;
        this.f11708d = i + 1;
        return bArr[i] & UnsignedBytes.MAX_VALUE;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        int i = this.f11709e;
        if (i > 0) {
            return i - this.f11708d;
        }
        return 0;
    }

    @Override // java.io.InputStream
    public int read() {
        int iA = a();
        if (iA >= 0) {
            return iA;
        }
        int iB = this.f11710f.b(this.c, this.f11707a);
        if (iB < 0) {
            return -1;
        }
        this.f11709e = iB;
        byte[] bArr = this.c;
        int i = this.f11708d;
        this.f11708d = i + 1;
        return bArr[i] & UnsignedBytes.MAX_VALUE;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        return this.f11710f.b(bArr, this.f11707a);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        if (i < 0) {
            throw new IndexOutOfBoundsException("Offset must be >= 0");
        }
        if (i2 >= 0) {
            if (i2 <= bArr.length - i) {
                if (i == 0 && i2 == bArr.length) {
                    return read(bArr);
                }
                return this.f11710f.a(bArr, i, i2, this.f11707a);
            }
            throw new IndexOutOfBoundsException("Length greater than b.length - off");
        }
        throw new IndexOutOfBoundsException("Length must positive");
    }
}
