package cn.mucang.android.core.api.cache.j;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
class b implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final InputStream f2366a;
    private final Charset b;
    private byte[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2367d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f2368e;

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
                return new String(((ByteArrayOutputStream) this).buf, 0, i, b.this.b.name());
            } catch (UnsupportedEncodingException e2) {
                throw new AssertionError(e2);
            }
        }
    }

    public b(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    private void b() throws IOException {
        InputStream inputStream = this.f2366a;
        byte[] bArr = this.c;
        int i = inputStream.read(bArr, 0, bArr.length);
        if (i == -1) {
            throw new EOFException();
        }
        this.f2367d = 0;
        this.f2368e = i;
    }

    public boolean c() {
        return this.f2368e == -1;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this.f2366a) {
            if (this.c != null) {
                this.c = null;
                this.f2366a.close();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x002b  */
    public String d() throws IOException {
        int i;
        byte[] bArr;
        int i2;
        synchronized (this.f2366a) {
            if (this.c == null) {
                throw new IOException("LineReader is closed");
            }
            if (this.f2367d >= this.f2368e) {
                b();
            }
            for (int i3 = this.f2367d; i3 != this.f2368e; i3++) {
                byte[] bArr2 = this.c;
                if (bArr2[i3] == 10) {
                    if (i3 != this.f2367d) {
                        i2 = i3 - 1;
                        if (bArr2[i2] != 13) {
                            i2 = i3;
                        }
                    } else {
                        i2 = i3;
                    }
                    byte[] bArr3 = this.c;
                    int i4 = this.f2367d;
                    String str = new String(bArr3, i4, i2 - i4, this.b.name());
                    this.f2367d = i3 + 1;
                    return str;
                }
            }
            a aVar = new a((this.f2368e - this.f2367d) + 80);
            loop1: while (true) {
                byte[] bArr4 = this.c;
                int i5 = this.f2367d;
                aVar.write(bArr4, i5, this.f2368e - i5);
                this.f2368e = -1;
                b();
                i = this.f2367d;
                while (i != this.f2368e) {
                    bArr = this.c;
                    if (bArr[i] == 10) {
                        break loop1;
                    }
                    i++;
                }
            }
            int i6 = this.f2367d;
            if (i != i6) {
                aVar.write(bArr, i6, i - i6);
            }
            this.f2367d = i + 1;
            return aVar.toString();
        }
    }

    public b(InputStream inputStream, int i, Charset charset) {
        if (inputStream == null || charset == null) {
            throw null;
        }
        if (i < 0) {
            throw new IllegalArgumentException("capacity <= 0");
        }
        if (!charset.equals(c.f2370a)) {
            throw new IllegalArgumentException("Unsupported encoding");
        }
        this.f2366a = inputStream;
        this.b = charset;
        this.c = new byte[i];
    }
}
