package com.mobile.auth.l;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PushbackInputStream;

/* JADX INFO: loaded from: classes5.dex */
public abstract class d {
    protected abstract int a();

    protected int a(InputStream inputStream, byte[] bArr, int i, int i2) throws IOException {
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = inputStream.read();
            if (i4 == -1) {
                if (i3 == 0) {
                    return -1;
                }
                return i3;
            }
            bArr[i3 + i] = (byte) i4;
        }
        return i2;
    }

    public void a(InputStream inputStream, OutputStream outputStream) throws IOException {
        PushbackInputStream pushbackInputStream = new PushbackInputStream(inputStream);
        a(pushbackInputStream, outputStream);
        while (true) {
            try {
                int iC = c(pushbackInputStream, outputStream);
                int iA = 0;
                while (a() + iA < iC) {
                    a(pushbackInputStream, outputStream, a());
                    iA += a();
                }
                a(pushbackInputStream, outputStream, a() + iA == iC ? a() : iC - iA);
                d(pushbackInputStream, outputStream);
            } catch (c unused) {
                b(pushbackInputStream, outputStream);
                return;
            }
        }
    }

    protected void a(PushbackInputStream pushbackInputStream, OutputStream outputStream) throws IOException {
    }

    protected abstract void a(PushbackInputStream pushbackInputStream, OutputStream outputStream, int i) throws IOException;

    public byte[] a(String str) throws IOException {
        byte[] bArr = new byte[str.length()];
        str.getBytes(0, str.length(), bArr, 0);
        InputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        a(byteArrayInputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    protected abstract int b();

    protected void b(PushbackInputStream pushbackInputStream, OutputStream outputStream) throws IOException {
    }

    protected int c(PushbackInputStream pushbackInputStream, OutputStream outputStream) throws IOException {
        return b();
    }

    protected void d(PushbackInputStream pushbackInputStream, OutputStream outputStream) throws IOException {
    }
}
