package cn.mucang.android.jiakaoyi.framework.qrcode.zxing;

/* JADX INFO: loaded from: classes2.dex */
final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f3502a;
    private final int[] b;

    g(f fVar, int[] iArr) {
        if (iArr.length == 0) {
            throw new IllegalArgumentException();
        }
        this.f3502a = fVar;
        int length = iArr.length;
        if (length <= 1 || iArr[0] != 0) {
            this.b = iArr;
            return;
        }
        int i = 1;
        while (i < length && iArr[i] == 0) {
            i++;
        }
        if (i == length) {
            this.b = new int[]{0};
            return;
        }
        int[] iArr2 = new int[length - i];
        this.b = iArr2;
        System.arraycopy(iArr, i, iArr2, 0, iArr2.length);
    }

    g a(g gVar) {
        if (!this.f3502a.equals(gVar.f3502a)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        if (f()) {
            return gVar;
        }
        if (gVar.f()) {
            return this;
        }
        int[] iArr = this.b;
        int[] iArr2 = gVar.b;
        if (iArr.length <= iArr2.length) {
            iArr = iArr2;
            iArr2 = iArr;
        }
        int[] iArr3 = new int[iArr.length];
        int length = iArr.length - iArr2.length;
        System.arraycopy(iArr, 0, iArr3, 0, length);
        for (int i = length; i < iArr.length; i++) {
            iArr3[i] = f.a(iArr2[i - length], iArr[i]);
        }
        return new g(this.f3502a, iArr3);
    }

    g[] b(g gVar) {
        if (!this.f3502a.equals(gVar.f3502a)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        if (gVar.f()) {
            throw new IllegalArgumentException("Divide by 0");
        }
        g gVarE = this.f3502a.e();
        int iF = this.f3502a.f(gVar.c(gVar.e()));
        g gVarA = this;
        while (gVarA.e() >= gVar.e() && !gVarA.f()) {
            int iE = gVarA.e() - gVar.e();
            int iH = this.f3502a.h(gVarA.c(gVarA.e()), iF);
            g gVarH = gVar.h(iE, iH);
            gVarE = gVarE.a(this.f3502a.b(iE, iH));
            gVarA = gVarA.a(gVarH);
        }
        return new g[]{gVarE, gVarA};
    }

    int c(int i) {
        int[] iArr = this.b;
        return iArr[(iArr.length - 1) - i];
    }

    int[] d() {
        return this.b;
    }

    int e() {
        return this.b.length - 1;
    }

    boolean f() {
        return this.b[0] == 0;
    }

    g g(g gVar) {
        if (!this.f3502a.equals(gVar.f3502a)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        if (f() || gVar.f()) {
            return this.f3502a.e();
        }
        int[] iArr = this.b;
        int length = iArr.length;
        int[] iArr2 = gVar.b;
        int length2 = iArr2.length;
        int[] iArr3 = new int[(length + length2) - 1];
        for (int i = 0; i < length; i++) {
            int i2 = iArr[i];
            for (int i3 = 0; i3 < length2; i3++) {
                int i4 = i + i3;
                iArr3[i4] = f.a(iArr3[i4], this.f3502a.h(i2, iArr2[i3]));
            }
        }
        return new g(this.f3502a, iArr3);
    }

    g h(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        if (i2 == 0) {
            return this.f3502a.e();
        }
        int length = this.b.length;
        int[] iArr = new int[i + length];
        for (int i3 = 0; i3 < length; i3++) {
            iArr[i3] = this.f3502a.h(this.b[i3], i2);
        }
        return new g(this.f3502a, iArr);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(e() * 8);
        for (int iE = e(); iE >= 0; iE--) {
            int iC = c(iE);
            if (iC != 0) {
                if (iC < 0) {
                    sb.append(" - ");
                    iC = -iC;
                } else if (sb.length() > 0) {
                    sb.append(" + ");
                }
                if (iE == 0 || iC != 1) {
                    int iG = this.f3502a.g(iC);
                    if (iG == 0) {
                        sb.append('1');
                    } else if (iG == 1) {
                        sb.append('a');
                    } else {
                        sb.append("a^");
                        sb.append(iG);
                    }
                }
                if (iE != 0) {
                    if (iE == 1) {
                        sb.append('x');
                    } else {
                        sb.append("x^");
                        sb.append(iE);
                    }
                }
            }
        }
        return sb.toString();
    }
}
