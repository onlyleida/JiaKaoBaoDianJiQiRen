package cn.mucang.android.jiakaoyi.framework.qrcode.zxing;

import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes2.dex */
public final class f {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final f f3496g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final f f3497h;
    public static final f i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int[] f3498a;
    private final int[] b;
    private final g c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f3499d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f3500e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f3501f;

    static {
        new f(4201, 4096, 1);
        new f(1033, 1024, 1);
        f3496g = new f(67, 64, 1);
        new f(19, 16, 1);
        f3497h = new f(285, 256, 0);
        i = new f(Videoio.CAP_PROP_PVAPI_FRAMESTARTTRIGGERMODE, 256, 1);
    }

    public f(int i2, int i3, int i4) {
        this.f3500e = i2;
        this.f3499d = i3;
        this.f3501f = i4;
        this.f3498a = new int[i3];
        this.b = new int[i3];
        int i5 = 1;
        for (int i6 = 0; i6 < i3; i6++) {
            this.f3498a[i6] = i5;
            i5 *= 2;
            if (i5 >= i3) {
                i5 = (i5 ^ i2) & (i3 - 1);
            }
        }
        for (int i7 = 0; i7 < i3 - 1; i7++) {
            this.b[this.f3498a[i7]] = i7;
        }
        this.c = new g(this, new int[]{0});
        new g(this, new int[]{1});
    }

    static int a(int i2, int i3) {
        return i2 ^ i3;
    }

    g b(int i2, int i3) {
        if (i2 < 0) {
            throw new IllegalArgumentException();
        }
        if (i3 == 0) {
            return this.c;
        }
        int[] iArr = new int[i2 + 1];
        iArr[0] = i3;
        return new g(this, iArr);
    }

    int c(int i2) {
        return this.f3498a[i2];
    }

    public int d() {
        return this.f3501f;
    }

    g e() {
        return this.c;
    }

    int f(int i2) {
        if (i2 != 0) {
            return this.f3498a[(this.f3499d - this.b[i2]) - 1];
        }
        throw new ArithmeticException();
    }

    int g(int i2) {
        if (i2 != 0) {
            return this.b[i2];
        }
        throw new IllegalArgumentException();
    }

    int h(int i2, int i3) {
        if (i2 == 0 || i3 == 0) {
            return 0;
        }
        int[] iArr = this.f3498a;
        int[] iArr2 = this.b;
        return iArr[(iArr2[i2] + iArr2[i3]) % (this.f3499d - 1)];
    }

    public String toString() {
        return "GF(0x" + Integer.toHexString(this.f3500e) + ',' + this.f3499d + ')';
    }
}
