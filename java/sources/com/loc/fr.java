package com.loc;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public class fr {
    static final Charset c = Charset.forName("UTF-8");
    static final /* synthetic */ boolean p = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ByteBuffer f12928a;
    int b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f12929d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int[] f12930e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f12931f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f12932g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    boolean f12933h;
    int i;
    int[] j;
    int k;
    int l;
    boolean m;
    CharsetEncoder n;
    ByteBuffer o;

    private fr() {
        this.f12929d = 1;
        this.f12930e = null;
        this.f12931f = 0;
        this.f12932g = false;
        this.f12933h = false;
        this.j = new int[16];
        this.k = 0;
        this.l = 0;
        this.m = false;
        this.n = c.newEncoder();
        this.b = 1024;
        this.f12928a = d(1024);
    }

    public fr(ByteBuffer byteBuffer) {
        this.f12929d = 1;
        this.f12930e = null;
        this.f12931f = 0;
        this.f12932g = false;
        this.f12933h = false;
        this.j = new int[16];
        this.k = 0;
        this.l = 0;
        this.m = false;
        this.n = c.newEncoder();
        a(byteBuffer);
    }

    private void a(long j) {
        ByteBuffer byteBuffer = this.f12928a;
        int i = this.b - 8;
        this.b = i;
        byteBuffer.putLong(i, j);
    }

    private void a(short s) {
        ByteBuffer byteBuffer = this.f12928a;
        int i = this.b - 2;
        this.b = i;
        byteBuffer.putShort(i, s);
    }

    private static ByteBuffer b(ByteBuffer byteBuffer) {
        int iCapacity = byteBuffer.capacity();
        if (((-1073741824) & iCapacity) != 0) {
            throw new AssertionError("FlatBuffers: cannot grow buffer beyond 2 gigabytes.");
        }
        int i = iCapacity << 1;
        byteBuffer.position(0);
        ByteBuffer byteBufferD = d(i);
        byteBufferD.position(i - iCapacity);
        byteBufferD.put(byteBuffer);
        return byteBufferD;
    }

    private void b(byte b) {
        ByteBuffer byteBuffer = this.f12928a;
        int i = this.b - 1;
        this.b = i;
        byteBuffer.put(i, b);
    }

    private void b(long j) {
        c(8, 0);
        a(j);
    }

    private void b(short s) {
        c(2, 0);
        a(s);
    }

    private void b(boolean z) {
        ByteBuffer byteBuffer = this.f12928a;
        int i = this.b - 1;
        this.b = i;
        byteBuffer.put(i, z ? (byte) 1 : (byte) 0);
    }

    private int c(ByteBuffer byteBuffer) {
        int iRemaining = byteBuffer.remaining();
        a((byte) 0);
        a(1, iRemaining, 1);
        ByteBuffer byteBuffer2 = this.f12928a;
        int i = this.b - iRemaining;
        this.b = i;
        byteBuffer2.position(i);
        this.f12928a.put(byteBuffer);
        return a();
    }

    private void c(int i, int i2) {
        if (i > this.f12929d) {
            this.f12929d = i;
        }
        int i3 = ((~((this.f12928a.capacity() - this.b) + i2)) + 1) & (i - 1);
        while (this.b < i3 + i + i2) {
            int iCapacity = this.f12928a.capacity();
            ByteBuffer byteBufferB = b(this.f12928a);
            this.f12928a = byteBufferB;
            this.b += byteBufferB.capacity() - iCapacity;
        }
        e(i3);
    }

    private void c(boolean z) {
        c(1, 0);
        b(z);
    }

    private int d() {
        return this.f12928a.capacity() - this.b;
    }

    private static ByteBuffer d(int i) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        return byteBufferAllocate;
    }

    private byte[] d(int i, int i2) {
        e();
        byte[] bArr = new byte[i2];
        this.f12928a.position(i);
        this.f12928a.get(bArr);
        return bArr;
    }

    private void e() {
        if (!this.f12933h) {
            throw new AssertionError("FlatBuffers: you can only access the serialized buffer after it has been finished by FlatBufferBuilder.finish().");
        }
    }

    private void e(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            ByteBuffer byteBuffer = this.f12928a;
            int i3 = this.b - 1;
            this.b = i3;
            byteBuffer.put(i3, (byte) 0);
        }
    }

    private void f() {
        if (this.f12932g) {
            throw new AssertionError("FlatBuffers: object serialization must not be nested.");
        }
    }

    private void f(int i) {
        ByteBuffer byteBuffer = this.f12928a;
        int i2 = this.b - 4;
        this.b = i2;
        byteBuffer.putInt(i2, i);
    }

    private void g(int i) {
        c(4, 0);
        f(i);
    }

    private void h(int i) {
        this.f12930e[i] = d();
    }

    public final int a() {
        if (!this.f12932g) {
            throw new AssertionError("FlatBuffers: endVector called without startVector");
        }
        this.f12932g = false;
        f(this.l);
        return d();
    }

    public int a(CharSequence charSequence) {
        int length = (int) (charSequence.length() * this.n.maxBytesPerChar());
        ByteBuffer byteBuffer = this.o;
        if (byteBuffer == null || byteBuffer.capacity() < length) {
            this.o = ByteBuffer.allocate(Math.max(128, length));
        }
        this.o.clear();
        CoderResult coderResultEncode = this.n.encode(charSequence instanceof CharBuffer ? (CharBuffer) charSequence : CharBuffer.wrap(charSequence), this.o, true);
        if (coderResultEncode.isError()) {
            try {
                coderResultEncode.throwException();
            } catch (CharacterCodingException e2) {
                throw new Error(e2);
            }
        }
        this.o.flip();
        return c(this.o);
    }

    public final fr a(ByteBuffer byteBuffer) {
        this.f12928a = byteBuffer;
        byteBuffer.clear();
        this.f12928a.order(ByteOrder.LITTLE_ENDIAN);
        this.f12929d = 1;
        this.b = this.f12928a.capacity();
        this.f12931f = 0;
        this.f12932g = false;
        this.f12933h = false;
        this.i = 0;
        this.k = 0;
        this.l = 0;
        return this;
    }

    public final void a(byte b) {
        c(1, 0);
        b(b);
    }

    public final void a(int i) {
        c(4, 0);
        if (!p && i > d()) {
            throw new AssertionError();
        }
        f((d() - i) + 4);
    }

    public final void a(int i, byte b) {
        if (this.m || b != 0) {
            a(b);
            h(i);
        }
    }

    public final void a(int i, int i2) {
        if (this.m || i2 != 0) {
            g(i2);
            h(i);
        }
    }

    public final void a(int i, int i2, int i3) {
        f();
        this.l = i2;
        int i4 = i * i2;
        c(4, i4);
        c(i3, i4);
        this.f12932g = true;
    }

    public final void a(int i, long j) {
        if (this.m || j != 0) {
            b(j);
            h(i);
        }
    }

    public final void a(int i, short s) {
        if (this.m || s != 0) {
            b(s);
            h(i);
        }
    }

    public final void a(boolean z) {
        if (this.m || z) {
            c(z);
            h(0);
        }
    }

    public final int b() {
        int i;
        if (this.f12930e == null || !this.f12932g) {
            throw new AssertionError("FlatBuffers: endObject called without startObject");
        }
        g(0);
        int iD = d();
        for (int i2 = this.f12931f - 1; i2 >= 0; i2--) {
            int[] iArr = this.f12930e;
            b((short) (iArr[i2] != 0 ? iD - iArr[i2] : 0));
        }
        b((short) (iD - this.i));
        b((short) ((this.f12931f + 2) * 2));
        int i3 = 0;
        loop1: while (true) {
            if (i3 >= this.k) {
                i = 0;
                break;
            }
            int iCapacity = this.f12928a.capacity() - this.j[i3];
            int i4 = this.b;
            short s = this.f12928a.getShort(iCapacity);
            if (s == this.f12928a.getShort(i4)) {
                int i5 = 2;
                while (true) {
                    if (i5 >= s) {
                        i = this.j[i3];
                        break loop1;
                    }
                    if (this.f12928a.getShort(iCapacity + i5) != this.f12928a.getShort(i4 + i5)) {
                        break;
                    }
                    i5 += 2;
                }
            }
            i3++;
        }
        if (i != 0) {
            int iCapacity2 = this.f12928a.capacity() - iD;
            this.b = iCapacity2;
            this.f12928a.putInt(iCapacity2, i - iD);
        } else {
            int i6 = this.k;
            int[] iArr2 = this.j;
            if (i6 == iArr2.length) {
                this.j = Arrays.copyOf(iArr2, i6 * 2);
            }
            int[] iArr3 = this.j;
            int i7 = this.k;
            this.k = i7 + 1;
            iArr3[i7] = d();
            ByteBuffer byteBuffer = this.f12928a;
            byteBuffer.putInt(byteBuffer.capacity() - iD, d() - iD);
        }
        this.f12932g = false;
        return iD;
    }

    public final void b(int i) {
        f();
        int[] iArr = this.f12930e;
        if (iArr == null || iArr.length < i) {
            this.f12930e = new int[i];
        }
        this.f12931f = i;
        Arrays.fill(this.f12930e, 0, i, 0);
        this.f12932g = true;
        this.i = d();
    }

    public final void b(int i, int i2) {
        if (this.m || i2 != 0) {
            a(i2);
            h(i);
        }
    }

    public final void c(int i) {
        c(this.f12929d, 4);
        a(i);
        this.f12928a.position(this.b);
        this.f12933h = true;
    }

    public final byte[] c() {
        return d(this.b, this.f12928a.capacity() - this.b);
    }
}
