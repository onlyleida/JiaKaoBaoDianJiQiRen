package com.amap.api.mapcore.util;

/* JADX INFO: loaded from: classes5.dex */
public class z5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f11440a = 37;
    private int b;

    public z5() {
        this.b = 0;
        this.b = 17;
    }

    public int a() {
        return this.b;
    }

    public z5 b(byte b) {
        this.b = (this.b * this.f11440a) + b;
        return this;
    }

    public z5 c(char c) {
        this.b = (this.b * this.f11440a) + c;
        return this;
    }

    public z5 d(double d2) {
        g(Double.doubleToLongBits(d2));
        return this;
    }

    public z5 e(float f2) {
        this.b = (this.b * this.f11440a) + Float.floatToIntBits(f2);
        return this;
    }

    public z5 f(int i) {
        this.b = (this.b * this.f11440a) + i;
        return this;
    }

    public z5 g(long j) {
        this.b = (this.b * this.f11440a) + ((int) (j ^ (j >> 32)));
        return this;
    }

    public z5 h(Object obj) {
        if (obj == null) {
            this.b *= this.f11440a;
        } else if (!obj.getClass().isArray()) {
            this.b = (this.b * this.f11440a) + obj.hashCode();
        } else if (obj instanceof long[]) {
            p((long[]) obj);
        } else if (obj instanceof int[]) {
            o((int[]) obj);
        } else if (obj instanceof short[]) {
            r((short[]) obj);
        } else if (obj instanceof char[]) {
            l((char[]) obj);
        } else if (obj instanceof byte[]) {
            k((byte[]) obj);
        } else if (obj instanceof double[]) {
            m((double[]) obj);
        } else if (obj instanceof float[]) {
            n((float[]) obj);
        } else if (obj instanceof boolean[]) {
            s((boolean[]) obj);
        } else {
            q((Object[]) obj);
        }
        return this;
    }

    public int hashCode() {
        return a();
    }

    public z5 i(short s) {
        this.b = (this.b * this.f11440a) + s;
        return this;
    }

    public z5 j(boolean z) {
        this.b = (this.b * this.f11440a) + (!z ? 1 : 0);
        return this;
    }

    public z5 k(byte[] bArr) {
        if (bArr == null) {
            this.b *= this.f11440a;
        } else {
            for (byte b : bArr) {
                b(b);
            }
        }
        return this;
    }

    public z5 l(char[] cArr) {
        if (cArr == null) {
            this.b *= this.f11440a;
        } else {
            for (char c : cArr) {
                c(c);
            }
        }
        return this;
    }

    public z5 m(double[] dArr) {
        if (dArr == null) {
            this.b *= this.f11440a;
        } else {
            for (double d2 : dArr) {
                d(d2);
            }
        }
        return this;
    }

    public z5 n(float[] fArr) {
        if (fArr == null) {
            this.b *= this.f11440a;
        } else {
            for (float f2 : fArr) {
                e(f2);
            }
        }
        return this;
    }

    public z5 o(int[] iArr) {
        if (iArr == null) {
            this.b *= this.f11440a;
        } else {
            for (int i : iArr) {
                f(i);
            }
        }
        return this;
    }

    public z5 p(long[] jArr) {
        if (jArr == null) {
            this.b *= this.f11440a;
        } else {
            for (long j : jArr) {
                g(j);
            }
        }
        return this;
    }

    public z5 q(Object[] objArr) {
        if (objArr == null) {
            this.b *= this.f11440a;
        } else {
            for (Object obj : objArr) {
                h(obj);
            }
        }
        return this;
    }

    public z5 r(short[] sArr) {
        if (sArr == null) {
            this.b *= this.f11440a;
        } else {
            for (short s : sArr) {
                i(s);
            }
        }
        return this;
    }

    public z5 s(boolean[] zArr) {
        if (zArr == null) {
            this.b *= this.f11440a;
        } else {
            for (boolean z : zArr) {
                j(z);
            }
        }
        return this;
    }
}
