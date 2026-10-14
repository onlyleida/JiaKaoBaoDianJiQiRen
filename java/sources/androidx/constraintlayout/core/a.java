package androidx.constraintlayout.core;

import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class a implements b.a {
    private static float l = 0.001f;
    private final b b;
    protected final c c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f589a = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f590d = 8;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private SolverVariable f591e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int[] f592f = new int[8];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int[] f593g = new int[8];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float[] f594h = new float[8];
    private int i = -1;
    private int j = -1;
    private boolean k = false;

    a(b bVar, c cVar) {
        this.b = bVar;
        this.c = cVar;
    }

    @Override // androidx.constraintlayout.core.b.a
    public boolean a(SolverVariable solverVariable) {
        int i = this.i;
        if (i == -1) {
            return false;
        }
        for (int i2 = 0; i != -1 && i2 < this.f589a; i2++) {
            if (this.f592f[i] == solverVariable.c) {
                return true;
            }
            i = this.f593g[i];
        }
        return false;
    }

    @Override // androidx.constraintlayout.core.b.a
    public SolverVariable b(int i) {
        int i2 = this.i;
        for (int i3 = 0; i2 != -1 && i3 < this.f589a; i3++) {
            if (i3 == i) {
                return this.c.f600d[this.f592f[i2]];
            }
            i2 = this.f593g[i2];
        }
        return null;
    }

    @Override // androidx.constraintlayout.core.b.a
    public void c(SolverVariable solverVariable, float f2, boolean z) {
        float f3 = l;
        if (f2 <= (-f3) || f2 >= f3) {
            int i = this.i;
            if (i == -1) {
                this.i = 0;
                this.f594h[0] = f2;
                this.f592f[0] = solverVariable.c;
                this.f593g[0] = -1;
                solverVariable.m++;
                solverVariable.a(this.b);
                this.f589a++;
                if (this.k) {
                    return;
                }
                int i2 = this.j + 1;
                this.j = i2;
                int[] iArr = this.f592f;
                if (i2 >= iArr.length) {
                    this.k = true;
                    this.j = iArr.length - 1;
                    return;
                }
                return;
            }
            int i3 = -1;
            for (int i4 = 0; i != -1 && i4 < this.f589a; i4++) {
                int[] iArr2 = this.f592f;
                int i5 = iArr2[i];
                int i6 = solverVariable.c;
                if (i5 == i6) {
                    float[] fArr = this.f594h;
                    float f4 = fArr[i] + f2;
                    float f5 = l;
                    if (f4 > (-f5) && f4 < f5) {
                        f4 = BitmapDescriptorFactory.HUE_RED;
                    }
                    fArr[i] = f4;
                    if (f4 == BitmapDescriptorFactory.HUE_RED) {
                        if (i == this.i) {
                            this.i = this.f593g[i];
                        } else {
                            int[] iArr3 = this.f593g;
                            iArr3[i3] = iArr3[i];
                        }
                        if (z) {
                            solverVariable.d(this.b);
                        }
                        if (this.k) {
                            this.j = i;
                        }
                        solverVariable.m--;
                        this.f589a--;
                        return;
                    }
                    return;
                }
                if (iArr2[i] < i6) {
                    i3 = i;
                }
                i = this.f593g[i];
            }
            int length = this.j;
            int i7 = length + 1;
            if (this.k) {
                int[] iArr4 = this.f592f;
                if (iArr4[length] != -1) {
                    length = iArr4.length;
                }
            } else {
                length = i7;
            }
            int[] iArr5 = this.f592f;
            if (length >= iArr5.length && this.f589a < iArr5.length) {
                int i8 = 0;
                while (true) {
                    int[] iArr6 = this.f592f;
                    if (i8 >= iArr6.length) {
                        break;
                    }
                    if (iArr6[i8] == -1) {
                        length = i8;
                        break;
                    }
                    i8++;
                }
            }
            int[] iArr7 = this.f592f;
            if (length >= iArr7.length) {
                length = iArr7.length;
                int i9 = this.f590d * 2;
                this.f590d = i9;
                this.k = false;
                this.j = length - 1;
                this.f594h = Arrays.copyOf(this.f594h, i9);
                this.f592f = Arrays.copyOf(this.f592f, this.f590d);
                this.f593g = Arrays.copyOf(this.f593g, this.f590d);
            }
            this.f592f[length] = solverVariable.c;
            this.f594h[length] = f2;
            if (i3 != -1) {
                int[] iArr8 = this.f593g;
                iArr8[length] = iArr8[i3];
                iArr8[i3] = length;
            } else {
                this.f593g[length] = this.i;
                this.i = length;
            }
            solverVariable.m++;
            solverVariable.a(this.b);
            this.f589a++;
            if (!this.k) {
                this.j++;
            }
            int i10 = this.j;
            int[] iArr9 = this.f592f;
            if (i10 >= iArr9.length) {
                this.k = true;
                this.j = iArr9.length - 1;
            }
        }
    }

    @Override // androidx.constraintlayout.core.b.a
    public final void clear() {
        int i = this.i;
        for (int i2 = 0; i != -1 && i2 < this.f589a; i2++) {
            SolverVariable solverVariable = this.c.f600d[this.f592f[i]];
            if (solverVariable != null) {
                solverVariable.d(this.b);
            }
            i = this.f593g[i];
        }
        this.i = -1;
        this.j = -1;
        this.k = false;
        this.f589a = 0;
    }

    @Override // androidx.constraintlayout.core.b.a
    public void d() {
        int i = this.i;
        for (int i2 = 0; i != -1 && i2 < this.f589a; i2++) {
            float[] fArr = this.f594h;
            fArr[i] = fArr[i] * (-1.0f);
            i = this.f593g[i];
        }
    }

    @Override // androidx.constraintlayout.core.b.a
    public final float e(SolverVariable solverVariable, boolean z) {
        if (this.f591e == solverVariable) {
            this.f591e = null;
        }
        int i = this.i;
        if (i == -1) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        int i2 = 0;
        int i3 = -1;
        while (i != -1 && i2 < this.f589a) {
            if (this.f592f[i] == solverVariable.c) {
                if (i == this.i) {
                    this.i = this.f593g[i];
                } else {
                    int[] iArr = this.f593g;
                    iArr[i3] = iArr[i];
                }
                if (z) {
                    solverVariable.d(this.b);
                }
                solverVariable.m--;
                this.f589a--;
                this.f592f[i] = -1;
                if (this.k) {
                    this.j = i;
                }
                return this.f594h[i];
            }
            i2++;
            i3 = i;
            i = this.f593g[i];
        }
        return BitmapDescriptorFactory.HUE_RED;
    }

    @Override // androidx.constraintlayout.core.b.a
    public float f(b bVar, boolean z) {
        float fI = i(bVar.f595a);
        e(bVar.f595a, z);
        b.a aVar = bVar.f597e;
        int currentSize = aVar.getCurrentSize();
        for (int i = 0; i < currentSize; i++) {
            SolverVariable solverVariableB = aVar.b(i);
            c(solverVariableB, aVar.i(solverVariableB) * fI, z);
        }
        return fI;
    }

    @Override // androidx.constraintlayout.core.b.a
    public final void g(SolverVariable solverVariable, float f2) {
        if (f2 == BitmapDescriptorFactory.HUE_RED) {
            e(solverVariable, true);
            return;
        }
        int i = this.i;
        if (i == -1) {
            this.i = 0;
            this.f594h[0] = f2;
            this.f592f[0] = solverVariable.c;
            this.f593g[0] = -1;
            solverVariable.m++;
            solverVariable.a(this.b);
            this.f589a++;
            if (this.k) {
                return;
            }
            int i2 = this.j + 1;
            this.j = i2;
            int[] iArr = this.f592f;
            if (i2 >= iArr.length) {
                this.k = true;
                this.j = iArr.length - 1;
                return;
            }
            return;
        }
        int i3 = -1;
        for (int i4 = 0; i != -1 && i4 < this.f589a; i4++) {
            int[] iArr2 = this.f592f;
            int i5 = iArr2[i];
            int i6 = solverVariable.c;
            if (i5 == i6) {
                this.f594h[i] = f2;
                return;
            }
            if (iArr2[i] < i6) {
                i3 = i;
            }
            i = this.f593g[i];
        }
        int length = this.j;
        int i7 = length + 1;
        if (this.k) {
            int[] iArr3 = this.f592f;
            if (iArr3[length] != -1) {
                length = iArr3.length;
            }
        } else {
            length = i7;
        }
        int[] iArr4 = this.f592f;
        if (length >= iArr4.length && this.f589a < iArr4.length) {
            int i8 = 0;
            while (true) {
                int[] iArr5 = this.f592f;
                if (i8 >= iArr5.length) {
                    break;
                }
                if (iArr5[i8] == -1) {
                    length = i8;
                    break;
                }
                i8++;
            }
        }
        int[] iArr6 = this.f592f;
        if (length >= iArr6.length) {
            length = iArr6.length;
            int i9 = this.f590d * 2;
            this.f590d = i9;
            this.k = false;
            this.j = length - 1;
            this.f594h = Arrays.copyOf(this.f594h, i9);
            this.f592f = Arrays.copyOf(this.f592f, this.f590d);
            this.f593g = Arrays.copyOf(this.f593g, this.f590d);
        }
        this.f592f[length] = solverVariable.c;
        this.f594h[length] = f2;
        if (i3 != -1) {
            int[] iArr7 = this.f593g;
            iArr7[length] = iArr7[i3];
            iArr7[i3] = length;
        } else {
            this.f593g[length] = this.i;
            this.i = length;
        }
        solverVariable.m++;
        solverVariable.a(this.b);
        int i10 = this.f589a + 1;
        this.f589a = i10;
        if (!this.k) {
            this.j++;
        }
        int[] iArr8 = this.f592f;
        if (i10 >= iArr8.length) {
            this.k = true;
        }
        if (this.j >= iArr8.length) {
            this.k = true;
            this.j = iArr8.length - 1;
        }
    }

    @Override // androidx.constraintlayout.core.b.a
    public int getCurrentSize() {
        return this.f589a;
    }

    @Override // androidx.constraintlayout.core.b.a
    public float h(int i) {
        int i2 = this.i;
        for (int i3 = 0; i2 != -1 && i3 < this.f589a; i3++) {
            if (i3 == i) {
                return this.f594h[i2];
            }
            i2 = this.f593g[i2];
        }
        return BitmapDescriptorFactory.HUE_RED;
    }

    @Override // androidx.constraintlayout.core.b.a
    public final float i(SolverVariable solverVariable) {
        int i = this.i;
        for (int i2 = 0; i != -1 && i2 < this.f589a; i2++) {
            if (this.f592f[i] == solverVariable.c) {
                return this.f594h[i];
            }
            i = this.f593g[i];
        }
        return BitmapDescriptorFactory.HUE_RED;
    }

    @Override // androidx.constraintlayout.core.b.a
    public void j(float f2) {
        int i = this.i;
        for (int i2 = 0; i != -1 && i2 < this.f589a; i2++) {
            float[] fArr = this.f594h;
            fArr[i] = fArr[i] / f2;
            i = this.f593g[i];
        }
    }

    public String toString() {
        int i = this.i;
        String str = "";
        for (int i2 = 0; i != -1 && i2 < this.f589a; i2++) {
            str = ((str + " -> ") + this.f594h[i] + " : ") + this.c.f600d[this.f592f[i]];
            i = this.f593g[i];
        }
        return str;
    }
}
