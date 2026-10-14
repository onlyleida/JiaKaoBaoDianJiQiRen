package cn.mucang.android.jiakaoyi.signal.communicate;

import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f5480a;
    private int b = 0;
    private int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f5481d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private byte[] f5482e;

    public v(boolean z) {
        this.f5480a = z;
        byte[] bArr = new byte[16];
        this.f5482e = bArr;
        this.f5481d = bArr.length;
    }

    private final void a() {
        int i = this.b;
        int i2 = this.f5481d;
        if (i >= i2) {
            byte[] bArr = new byte[i2 * 2];
            System.arraycopy(this.f5482e, 0, bArr, 0, i2);
            this.f5482e = bArr;
            this.f5481d = bArr.length;
        }
    }

    public final byte[] b() {
        return Arrays.copyOfRange(this.f5482e, 0, this.c);
    }

    public final void c(byte b) {
        a();
        byte[] bArr = this.f5482e;
        int i = this.b;
        this.b = i + 1;
        bArr[i] = b;
        this.c++;
    }

    public final void d(byte[] bArr) {
        for (byte b : bArr) {
            c(b);
        }
    }

    public final void e(float f2) {
        f(Float.floatToIntBits(f2));
    }

    public final void f(int i) {
        if (this.f5480a) {
            c((byte) (i & 255));
            c((byte) ((i >>> 8) & 255));
            c((byte) ((i >>> 16) & 255));
            c((byte) ((i >>> 24) & 255));
            return;
        }
        c((byte) ((i >>> 24) & 255));
        c((byte) ((i >>> 16) & 255));
        c((byte) ((i >>> 8) & 255));
        c((byte) (i & 255));
    }

    public final void g(long j) {
        if (this.f5480a) {
            c((byte) (j & 255));
            c((byte) ((j >>> 8) & 255));
            c((byte) ((j >>> 16) & 255));
            c((byte) ((j >>> 24) & 255));
            c((byte) ((j >>> 32) & 255));
            c((byte) ((j >>> 40) & 255));
            c((byte) ((j >>> 48) & 255));
            c((byte) ((j >>> 56) & 255));
            return;
        }
        c((byte) ((j >>> 56) & 255));
        c((byte) ((j >>> 48) & 255));
        c((byte) ((j >>> 40) & 255));
        c((byte) ((j >>> 32) & 255));
        c((byte) ((j >>> 24) & 255));
        c((byte) ((j >>> 16) & 255));
        c((byte) ((j >>> 8) & 255));
        c((byte) (j & 255));
    }

    public final void h(short s) {
        if (this.f5480a) {
            c((byte) (s & 255));
            c((byte) ((s >>> 8) & 255));
        } else {
            c((byte) ((s >>> 8) & 255));
            c((byte) (s & 255));
        }
    }
}
