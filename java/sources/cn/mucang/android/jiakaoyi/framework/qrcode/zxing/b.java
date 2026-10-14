package cn.mucang.android.jiakaoyi.framework.qrcode.zxing;

import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f3490a;
    private final int b;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int[] f3491d;

    public b(int i, int i2) {
        if (i < 1 || i2 < 1) {
            throw new IllegalArgumentException("Both dimensions must be greater than 0");
        }
        this.f3490a = i;
        this.b = i2;
        int i3 = (i + 31) / 32;
        this.c = i3;
        this.f3491d = new int[i3 * i2];
    }

    private String b(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(this.b * (this.f3490a + 1));
        for (int i = 0; i < this.b; i++) {
            for (int i2 = 0; i2 < this.f3490a; i2++) {
                sb.append(d(i2, i) ? str : str2);
            }
            sb.append(str3);
        }
        return sb.toString();
    }

    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public b clone() {
        return new b(this.f3490a, this.b, this.c, (int[]) this.f3491d.clone());
    }

    public boolean d(int i, int i2) {
        return ((this.f3491d[(i2 * this.c) + (i / 32)] >>> (i & 31)) & 1) != 0;
    }

    public void e(int i, int i2, int i3, int i4) {
        if (i2 < 0 || i < 0) {
            throw new IllegalArgumentException("Left and top must be nonnegative");
        }
        if (i4 < 1 || i3 < 1) {
            throw new IllegalArgumentException("Height and width must be at least 1");
        }
        int i5 = i3 + i;
        int i6 = i4 + i2;
        if (i6 > this.b || i5 > this.f3490a) {
            throw new IllegalArgumentException("The region must fit inside the matrix");
        }
        while (i2 < i6) {
            int i7 = this.c * i2;
            for (int i8 = i; i8 < i5; i8++) {
                int[] iArr = this.f3491d;
                int i9 = (i8 / 32) + i7;
                iArr[i9] = iArr[i9] | (1 << (i8 & 31));
            }
            i2++;
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f3490a == bVar.f3490a && this.b == bVar.b && this.c == bVar.c && Arrays.equals(this.f3491d, bVar.f3491d);
    }

    public String f(String str, String str2) {
        return b(str, str2, "\n");
    }

    public int hashCode() {
        int i = this.f3490a;
        return (((((((i * 31) + i) * 31) + this.b) * 31) + this.c) * 31) + Arrays.hashCode(this.f3491d);
    }

    public String toString() {
        return f("X ", "  ");
    }

    private b(int i, int i2, int i3, int[] iArr) {
        this.f3490a = i;
        this.b = i2;
        this.c = i3;
        this.f3491d = iArr;
    }
}
