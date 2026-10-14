package androidx.constraintlayout.core;

import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class i implements b.a {
    private static float m = 0.001f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f617a = 16;
    private int b = 16;
    int[] c = new int[16];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int[] f618d = new int[16];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int[] f619e = new int[16];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    float[] f620f = new float[16];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int[] f621g = new int[16];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int[] f622h = new int[16];
    int i = 0;
    int j = -1;
    private final b k;
    protected final c l;

    i(b bVar, c cVar) {
        this.k = bVar;
        this.l = cVar;
        clear();
    }

    private void k(SolverVariable solverVariable, int i) {
        int[] iArr;
        int i2 = solverVariable.c % this.b;
        int[] iArr2 = this.c;
        int i3 = iArr2[i2];
        if (i3 == -1) {
            iArr2[i2] = i;
        } else {
            while (true) {
                iArr = this.f618d;
                if (iArr[i3] == -1) {
                    break;
                } else {
                    i3 = iArr[i3];
                }
            }
            iArr[i3] = i;
        }
        this.f618d[i] = -1;
    }

    private void l(int i, SolverVariable solverVariable, float f2) {
        this.f619e[i] = solverVariable.c;
        this.f620f[i] = f2;
        this.f621g[i] = -1;
        this.f622h[i] = -1;
        solverVariable.a(this.k);
        solverVariable.m++;
        this.i++;
    }

    private int m() {
        for (int i = 0; i < this.f617a; i++) {
            if (this.f619e[i] == -1) {
                return i;
            }
        }
        return -1;
    }

    private void n() {
        int i = this.f617a * 2;
        this.f619e = Arrays.copyOf(this.f619e, i);
        this.f620f = Arrays.copyOf(this.f620f, i);
        this.f621g = Arrays.copyOf(this.f621g, i);
        this.f622h = Arrays.copyOf(this.f622h, i);
        this.f618d = Arrays.copyOf(this.f618d, i);
        for (int i2 = this.f617a; i2 < i; i2++) {
            this.f619e[i2] = -1;
            this.f618d[i2] = -1;
        }
        this.f617a = i;
    }

    private void p(int i, SolverVariable solverVariable, float f2) {
        int iM = m();
        l(iM, solverVariable, f2);
        if (i != -1) {
            this.f621g[iM] = i;
            int[] iArr = this.f622h;
            iArr[iM] = iArr[i];
            iArr[i] = iM;
        } else {
            this.f621g[iM] = -1;
            if (this.i > 0) {
                this.f622h[iM] = this.j;
                this.j = iM;
            } else {
                this.f622h[iM] = -1;
            }
        }
        int[] iArr2 = this.f622h;
        if (iArr2[iM] != -1) {
            this.f621g[iArr2[iM]] = iM;
        }
        k(solverVariable, iM);
    }

    private void q(SolverVariable solverVariable) {
        int[] iArr;
        int i = solverVariable.c;
        int i2 = i % this.b;
        int[] iArr2 = this.c;
        int i3 = iArr2[i2];
        if (i3 == -1) {
            return;
        }
        if (this.f619e[i3] == i) {
            int[] iArr3 = this.f618d;
            iArr2[i2] = iArr3[i3];
            iArr3[i3] = -1;
            return;
        }
        while (true) {
            iArr = this.f618d;
            if (iArr[i3] == -1 || this.f619e[iArr[i3]] == i) {
                break;
            } else {
                i3 = iArr[i3];
            }
        }
        int i4 = iArr[i3];
        if (i4 == -1 || this.f619e[i4] != i) {
            return;
        }
        iArr[i3] = iArr[i4];
        iArr[i4] = -1;
    }

    @Override // androidx.constraintlayout.core.b.a
    public boolean a(SolverVariable solverVariable) {
        return o(solverVariable) != -1;
    }

    @Override // androidx.constraintlayout.core.b.a
    public SolverVariable b(int i) {
        int i2 = this.i;
        if (i2 == 0) {
            return null;
        }
        int i3 = this.j;
        for (int i4 = 0; i4 < i2; i4++) {
            if (i4 == i && i3 != -1) {
                return this.l.f600d[this.f619e[i3]];
            }
            i3 = this.f622h[i3];
            if (i3 == -1) {
                break;
            }
        }
        return null;
    }

    @Override // androidx.constraintlayout.core.b.a
    public void c(SolverVariable solverVariable, float f2, boolean z) {
        float f3 = m;
        if (f2 <= (-f3) || f2 >= f3) {
            int iO = o(solverVariable);
            if (iO == -1) {
                g(solverVariable, f2);
                return;
            }
            float[] fArr = this.f620f;
            fArr[iO] = fArr[iO] + f2;
            float f4 = fArr[iO];
            float f5 = m;
            if (f4 <= (-f5) || fArr[iO] >= f5) {
                return;
            }
            fArr[iO] = 0.0f;
            e(solverVariable, z);
        }
    }

    @Override // androidx.constraintlayout.core.b.a
    public void clear() {
        int i = this.i;
        for (int i2 = 0; i2 < i; i2++) {
            SolverVariable solverVariableB = b(i2);
            if (solverVariableB != null) {
                solverVariableB.d(this.k);
            }
        }
        for (int i3 = 0; i3 < this.f617a; i3++) {
            this.f619e[i3] = -1;
            this.f618d[i3] = -1;
        }
        for (int i4 = 0; i4 < this.b; i4++) {
            this.c[i4] = -1;
        }
        this.i = 0;
        this.j = -1;
    }

    @Override // androidx.constraintlayout.core.b.a
    public void d() {
        int i = this.i;
        int i2 = this.j;
        for (int i3 = 0; i3 < i; i3++) {
            float[] fArr = this.f620f;
            fArr[i2] = fArr[i2] * (-1.0f);
            i2 = this.f622h[i2];
            if (i2 == -1) {
                return;
            }
        }
    }

    @Override // androidx.constraintlayout.core.b.a
    public float e(SolverVariable solverVariable, boolean z) {
        int iO = o(solverVariable);
        if (iO == -1) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        q(solverVariable);
        float f2 = this.f620f[iO];
        if (this.j == iO) {
            this.j = this.f622h[iO];
        }
        this.f619e[iO] = -1;
        int[] iArr = this.f621g;
        if (iArr[iO] != -1) {
            int[] iArr2 = this.f622h;
            iArr2[iArr[iO]] = iArr2[iO];
        }
        int[] iArr3 = this.f622h;
        if (iArr3[iO] != -1) {
            iArr[iArr3[iO]] = iArr[iO];
        }
        this.i--;
        solverVariable.m--;
        if (z) {
            solverVariable.d(this.k);
        }
        return f2;
    }

    @Override // androidx.constraintlayout.core.b.a
    public float f(b bVar, boolean z) {
        float fI = i(bVar.f595a);
        e(bVar.f595a, z);
        i iVar = (i) bVar.f597e;
        int currentSize = iVar.getCurrentSize();
        int i = iVar.j;
        int i2 = 0;
        int i3 = 0;
        while (i2 < currentSize) {
            int[] iArr = iVar.f619e;
            if (iArr[i3] != -1) {
                c(this.l.f600d[iArr[i3]], iVar.f620f[i3] * fI, z);
                i2++;
            }
            i3++;
        }
        return fI;
    }

    @Override // androidx.constraintlayout.core.b.a
    public void g(SolverVariable solverVariable, float f2) {
        float f3 = m;
        if (f2 > (-f3) && f2 < f3) {
            e(solverVariable, true);
            return;
        }
        if (this.i == 0) {
            l(0, solverVariable, f2);
            k(solverVariable, 0);
            this.j = 0;
            return;
        }
        int iO = o(solverVariable);
        if (iO != -1) {
            this.f620f[iO] = f2;
            return;
        }
        if (this.i + 1 >= this.f617a) {
            n();
        }
        int i = this.i;
        int i2 = this.j;
        int i3 = -1;
        for (int i4 = 0; i4 < i; i4++) {
            int[] iArr = this.f619e;
            int i5 = iArr[i2];
            int i6 = solverVariable.c;
            if (i5 == i6) {
                this.f620f[i2] = f2;
                return;
            }
            if (iArr[i2] < i6) {
                i3 = i2;
            }
            i2 = this.f622h[i2];
            if (i2 == -1) {
                break;
            }
        }
        p(i3, solverVariable, f2);
    }

    @Override // androidx.constraintlayout.core.b.a
    public int getCurrentSize() {
        return this.i;
    }

    @Override // androidx.constraintlayout.core.b.a
    public float h(int i) {
        int i2 = this.i;
        int i3 = this.j;
        for (int i4 = 0; i4 < i2; i4++) {
            if (i4 == i) {
                return this.f620f[i3];
            }
            i3 = this.f622h[i3];
            if (i3 == -1) {
                return BitmapDescriptorFactory.HUE_RED;
            }
        }
        return BitmapDescriptorFactory.HUE_RED;
    }

    @Override // androidx.constraintlayout.core.b.a
    public float i(SolverVariable solverVariable) {
        int iO = o(solverVariable);
        return iO != -1 ? this.f620f[iO] : BitmapDescriptorFactory.HUE_RED;
    }

    @Override // androidx.constraintlayout.core.b.a
    public void j(float f2) {
        int i = this.i;
        int i2 = this.j;
        for (int i3 = 0; i3 < i; i3++) {
            float[] fArr = this.f620f;
            fArr[i2] = fArr[i2] / f2;
            i2 = this.f622h[i2];
            if (i2 == -1) {
                return;
            }
        }
    }

    public int o(SolverVariable solverVariable) {
        int[] iArr;
        if (this.i != 0 && solverVariable != null) {
            int i = solverVariable.c;
            int i2 = this.c[i % this.b];
            if (i2 == -1) {
                return -1;
            }
            if (this.f619e[i2] == i) {
                return i2;
            }
            while (true) {
                iArr = this.f618d;
                if (iArr[i2] == -1 || this.f619e[iArr[i2]] == i) {
                    break;
                }
                i2 = iArr[i2];
            }
            if (iArr[i2] != -1 && this.f619e[iArr[i2]] == i) {
                return iArr[i2];
            }
        }
        return -1;
    }

    public String toString() {
        String str = hashCode() + " { ";
        int i = this.i;
        for (int i2 = 0; i2 < i; i2++) {
            SolverVariable solverVariableB = b(i2);
            if (solverVariableB != null) {
                String str2 = str + solverVariableB + " = " + h(i2) + " ";
                int iO = o(solverVariableB);
                String str3 = str2 + "[p: ";
                String str4 = (this.f621g[iO] != -1 ? str3 + this.l.f600d[this.f619e[this.f621g[iO]]] : str3 + "none") + ", n: ";
                str = (this.f622h[iO] != -1 ? str4 + this.l.f600d[this.f619e[this.f622h[iO]]] : str4 + "none") + "]";
            }
        }
        return str + " }";
    }
}
