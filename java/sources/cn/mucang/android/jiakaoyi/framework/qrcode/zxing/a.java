package cn.mucang.android.jiakaoyi.framework.qrcode.zxing;

import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int[] f3489a;
    private int b;

    public a() {
        this.b = 0;
        this.f3489a = new int[1];
    }

    private void f(int i) {
        if (i > this.f3489a.length * 32) {
            int[] iArrJ = j(i);
            int[] iArr = this.f3489a;
            System.arraycopy(iArr, 0, iArrJ, 0, iArr.length);
            this.f3489a = iArrJ;
        }
    }

    private static int[] j(int i) {
        return new int[(i + 31) / 32];
    }

    public void b(boolean z) {
        f(this.b + 1);
        if (z) {
            int[] iArr = this.f3489a;
            int i = this.b;
            int i2 = i / 32;
            iArr[i2] = (1 << (i & 31)) | iArr[i2];
        }
        this.b++;
    }

    public void c(a aVar) {
        int i = aVar.b;
        f(this.b + i);
        for (int i2 = 0; i2 < i; i2++) {
            b(aVar.g(i2));
        }
    }

    public void d(int i, int i2) {
        if (i2 < 0 || i2 > 32) {
            throw new IllegalArgumentException("Num bits must be between 0 and 32");
        }
        f(this.b + i2);
        while (i2 > 0) {
            boolean z = true;
            if (((i >> (i2 - 1)) & 1) != 1) {
                z = false;
            }
            b(z);
            i2--;
        }
    }

    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public a clone() {
        return new a((int[]) this.f3489a.clone(), this.b);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.b == aVar.b && Arrays.equals(this.f3489a, aVar.f3489a);
    }

    public boolean g(int i) {
        return ((1 << (i & 31)) & this.f3489a[i / 32]) != 0;
    }

    public int h() {
        return this.b;
    }

    public int hashCode() {
        return (this.b * 31) + Arrays.hashCode(this.f3489a);
    }

    public int i() {
        return (this.b + 7) / 8;
    }

    public void k(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = 0;
            for (int i6 = 0; i6 < 8; i6++) {
                if (g(i)) {
                    i5 |= 1 << (7 - i6);
                }
                i++;
            }
            bArr[i2 + i4] = (byte) i5;
        }
    }

    public void l(a aVar) {
        if (this.b != aVar.b) {
            throw new IllegalArgumentException("Sizes don't match");
        }
        int i = 0;
        while (true) {
            int[] iArr = this.f3489a;
            if (i >= iArr.length) {
                return;
            }
            iArr[i] = iArr[i] ^ aVar.f3489a[i];
            i++;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(this.b);
        for (int i = 0; i < this.b; i++) {
            if ((i & 7) == 0) {
                sb.append(' ');
            }
            sb.append(g(i) ? 'X' : '.');
        }
        return sb.toString();
    }

    a(int[] iArr, int i) {
        this.f3489a = iArr;
        this.b = i;
    }
}
