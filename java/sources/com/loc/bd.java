package com.loc;

import com.google.android.exoplayer2.C;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes4.dex */
public final class bd implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Charset f12554a = Charset.forName(C.ASCII_NAME);
    private final InputStream b;
    private final Charset c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private byte[] f12555d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f12556e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f12557f;

    public bd(InputStream inputStream, Charset charset) {
        this(inputStream, charset, (byte) 0);
    }

    private bd(InputStream inputStream, Charset charset, byte b) {
        if (inputStream == null || charset == null) {
            throw null;
        }
        if (!charset.equals(f12554a)) {
            throw new IllegalArgumentException("Unsupported encoding");
        }
        this.b = inputStream;
        this.c = charset;
        this.f12555d = new byte[8192];
    }

    private void b() throws IOException {
        InputStream inputStream = this.b;
        byte[] bArr = this.f12555d;
        int i = inputStream.read(bArr, 0, bArr.length);
        if (i == -1) {
            throw new EOFException();
        }
        this.f12556e = 0;
        this.f12557f = i;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x002b  */
    public final String a() throws IOException {
        int i;
        byte[] bArr;
        int i2;
        synchronized (this.b) {
            if (this.f12555d == null) {
                throw new IOException("LineReader is closed");
            }
            if (this.f12556e >= this.f12557f) {
                b();
            }
            for (int i3 = this.f12556e; i3 != this.f12557f; i3++) {
                byte[] bArr2 = this.f12555d;
                if (bArr2[i3] == 10) {
                    if (i3 != this.f12556e) {
                        i2 = i3 - 1;
                        if (bArr2[i2] != 13) {
                            i2 = i3;
                        }
                    } else {
                        i2 = i3;
                    }
                    byte[] bArr3 = this.f12555d;
                    int i4 = this.f12556e;
                    String str = new String(bArr3, i4, i2 - i4, this.c.name());
                    this.f12556e = i3 + 1;
                    return str;
                }
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream((this.f12557f - this.f12556e) + 80) { // from class: com.loc.bd.1
                @Override // java.io.ByteArrayOutputStream
                public final String toString() {
                    int i5 = ((ByteArrayOutputStream) this).count;
                    if (i5 > 0 && ((ByteArrayOutputStream) this).buf[i5 - 1] == 13) {
                        i5--;
                    }
                    try {
                        return new String(((ByteArrayOutputStream) this).buf, 0, i5, bd.this.c.name());
                    } catch (UnsupportedEncodingException e2) {
                        throw new AssertionError(e2);
                    }
                }
            };
            loop1: while (true) {
                byte[] bArr4 = this.f12555d;
                int i5 = this.f12556e;
                byteArrayOutputStream.write(bArr4, i5, this.f12557f - i5);
                this.f12557f = -1;
                b();
                i = this.f12556e;
                while (i != this.f12557f) {
                    bArr = this.f12555d;
                    if (bArr[i] == 10) {
                        break loop1;
                    }
                    i++;
                }
            }
            int i6 = this.f12556e;
            if (i != i6) {
                byteArrayOutputStream.write(bArr, i6, i - i6);
            }
            this.f12556e = i + 1;
            return byteArrayOutputStream.toString();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        synchronized (this.b) {
            if (this.f12555d != null) {
                this.f12555d = null;
                this.b.close();
            }
        }
    }
}
