package com.amap.api.mapcore.util;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes5.dex */
public class c7 implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final InputStream f10619a;
    private final Charset b;
    private byte[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f10620d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f10621e;

    class a extends ByteArrayOutputStream {
        a(int i) {
            super(i);
        }

        @Override // java.io.ByteArrayOutputStream
        public String toString() {
            int i = ((ByteArrayOutputStream) this).count;
            if (i > 0 && ((ByteArrayOutputStream) this).buf[i - 1] == 13) {
                i--;
            }
            try {
                return new String(((ByteArrayOutputStream) this).buf, 0, i, c7.this.b.name());
            } catch (UnsupportedEncodingException e2) {
                throw new AssertionError(e2);
            }
        }
    }

    public c7(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    private void c() throws IOException {
        InputStream inputStream = this.f10619a;
        byte[] bArr = this.c;
        int i = inputStream.read(bArr, 0, bArr.length);
        if (i == -1) {
            throw new EOFException();
        }
        this.f10620d = 0;
        this.f10621e = i;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x002b  */
    public String a() throws IOException {
        int i;
        byte[] bArr;
        int i2;
        synchronized (this.f10619a) {
            if (this.c == null) {
                throw new IOException("LineReader is closed");
            }
            if (this.f10620d >= this.f10621e) {
                c();
            }
            for (int i3 = this.f10620d; i3 != this.f10621e; i3++) {
                byte[] bArr2 = this.c;
                if (bArr2[i3] == 10) {
                    if (i3 != this.f10620d) {
                        i2 = i3 - 1;
                        if (bArr2[i2] != 13) {
                            i2 = i3;
                        }
                    } else {
                        i2 = i3;
                    }
                    byte[] bArr3 = this.c;
                    int i4 = this.f10620d;
                    String str = new String(bArr3, i4, i2 - i4, this.b.name());
                    this.f10620d = i3 + 1;
                    return str;
                }
            }
            a aVar = new a((this.f10621e - this.f10620d) + 80);
            loop1: while (true) {
                byte[] bArr4 = this.c;
                int i5 = this.f10620d;
                aVar.write(bArr4, i5, this.f10621e - i5);
                this.f10621e = -1;
                c();
                i = this.f10620d;
                while (i != this.f10621e) {
                    bArr = this.c;
                    if (bArr[i] == 10) {
                        break loop1;
                    }
                    i++;
                }
            }
            int i6 = this.f10620d;
            if (i != i6) {
                aVar.write(bArr, i6, i - i6);
            }
            this.f10620d = i + 1;
            return aVar.toString();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this.f10619a) {
            if (this.c != null) {
                this.c = null;
                this.f10619a.close();
            }
        }
    }

    public c7(InputStream inputStream, int i, Charset charset) {
        if (inputStream == null || charset == null) {
            throw null;
        }
        if (i < 0) {
            throw new IllegalArgumentException("capacity <= 0");
        }
        if (!charset.equals(d7.f10684a)) {
            throw new IllegalArgumentException("Unsupported encoding");
        }
        this.f10619a = inputStream;
        this.b = charset;
        this.c = new byte[i];
    }
}
