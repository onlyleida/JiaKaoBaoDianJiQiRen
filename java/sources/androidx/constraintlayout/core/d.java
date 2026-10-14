package androidx.constraintlayout.core;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class d {
    public static boolean r = false;
    public static boolean s = true;
    public static boolean t = true;
    public static boolean u = true;
    public static boolean v = false;
    private static int w = 1000;
    public static e x;
    public static long y;
    public static long z;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f602d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    androidx.constraintlayout.core.b[] f605g;
    final c n;
    private a q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f601a = false;
    int b = 0;
    private HashMap<String, SolverVariable> c = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f603e = 32;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f604f = 32;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f606h = false;
    public boolean i = false;
    private boolean[] j = new boolean[32];
    int k = 1;
    int l = 0;
    private int m = 32;
    private SolverVariable[] o = new SolverVariable[w];
    private int p = 0;

    interface a {
        void a(a aVar);

        SolverVariable b(d dVar, boolean[] zArr);

        void c(SolverVariable solverVariable);

        void clear();

        SolverVariable getKey();

        boolean isEmpty();
    }

    class b extends androidx.constraintlayout.core.b {
        public b(d dVar, c cVar) {
            this.f597e = new i(this, cVar);
        }
    }

    public d() {
        this.f605g = null;
        this.f605g = new androidx.constraintlayout.core.b[32];
        D();
        c cVar = new c();
        this.n = cVar;
        this.f602d = new h(cVar);
        if (v) {
            this.q = new b(this, cVar);
        } else {
            this.q = new androidx.constraintlayout.core.b(cVar);
        }
    }

    private final int C(a aVar, boolean z2) {
        e eVar = x;
        if (eVar != null) {
            eVar.f612h++;
        }
        for (int i = 0; i < this.k; i++) {
            this.j[i] = false;
        }
        boolean z3 = false;
        int i2 = 0;
        while (!z3) {
            e eVar2 = x;
            if (eVar2 != null) {
                eVar2.i++;
            }
            i2++;
            if (i2 >= this.k * 2) {
                return i2;
            }
            if (aVar.getKey() != null) {
                this.j[aVar.getKey().c] = true;
            }
            SolverVariable solverVariableB = aVar.b(this, this.j);
            if (solverVariableB != null) {
                boolean[] zArr = this.j;
                int i3 = solverVariableB.c;
                if (zArr[i3]) {
                    return i2;
                }
                zArr[i3] = true;
            }
            if (solverVariableB != null) {
                float f2 = Float.MAX_VALUE;
                int i4 = -1;
                for (int i5 = 0; i5 < this.l; i5++) {
                    androidx.constraintlayout.core.b bVar = this.f605g[i5];
                    if (bVar.f595a.j != SolverVariable.Type.UNRESTRICTED && !bVar.f598f && bVar.t(solverVariableB)) {
                        float fI = bVar.f597e.i(solverVariableB);
                        if (fI < BitmapDescriptorFactory.HUE_RED) {
                            float f3 = (-bVar.b) / fI;
                            if (f3 < f2) {
                                i4 = i5;
                                f2 = f3;
                            }
                        }
                    }
                }
                if (i4 > -1) {
                    androidx.constraintlayout.core.b bVar2 = this.f605g[i4];
                    bVar2.f595a.f584d = -1;
                    e eVar3 = x;
                    if (eVar3 != null) {
                        eVar3.j++;
                    }
                    bVar2.x(solverVariableB);
                    SolverVariable solverVariable = bVar2.f595a;
                    solverVariable.f584d = i4;
                    solverVariable.k(this, bVar2);
                }
            } else {
                z3 = true;
            }
        }
        return i2;
    }

    private void D() {
        int i = 0;
        if (v) {
            while (i < this.l) {
                androidx.constraintlayout.core.b bVar = this.f605g[i];
                if (bVar != null) {
                    this.n.f599a.release(bVar);
                }
                this.f605g[i] = null;
                i++;
            }
            return;
        }
        while (i < this.l) {
            androidx.constraintlayout.core.b bVar2 = this.f605g[i];
            if (bVar2 != null) {
                this.n.b.release(bVar2);
            }
            this.f605g[i] = null;
            i++;
        }
    }

    private SolverVariable a(SolverVariable.Type type, String str) {
        SolverVariable solverVariableAcquire = this.n.c.acquire();
        if (solverVariableAcquire == null) {
            solverVariableAcquire = new SolverVariable(type, str);
            solverVariableAcquire.h(type, str);
        } else {
            solverVariableAcquire.e();
            solverVariableAcquire.h(type, str);
        }
        int i = this.p;
        int i2 = w;
        if (i >= i2) {
            int i3 = i2 * 2;
            w = i3;
            this.o = (SolverVariable[]) Arrays.copyOf(this.o, i3);
        }
        SolverVariable[] solverVariableArr = this.o;
        int i4 = this.p;
        this.p = i4 + 1;
        solverVariableArr[i4] = solverVariableAcquire;
        return solverVariableAcquire;
    }

    private final void l(androidx.constraintlayout.core.b bVar) {
        int i;
        if (t && bVar.f598f) {
            bVar.f595a.g(this, bVar.b);
        } else {
            androidx.constraintlayout.core.b[] bVarArr = this.f605g;
            int i2 = this.l;
            bVarArr[i2] = bVar;
            SolverVariable solverVariable = bVar.f595a;
            solverVariable.f584d = i2;
            this.l = i2 + 1;
            solverVariable.k(this, bVar);
        }
        if (t && this.f601a) {
            int i3 = 0;
            while (i3 < this.l) {
                if (this.f605g[i3] == null) {
                    System.out.println("WTF");
                }
                androidx.constraintlayout.core.b[] bVarArr2 = this.f605g;
                if (bVarArr2[i3] != null && bVarArr2[i3].f598f) {
                    androidx.constraintlayout.core.b bVar2 = bVarArr2[i3];
                    bVar2.f595a.g(this, bVar2.b);
                    if (v) {
                        this.n.f599a.release(bVar2);
                    } else {
                        this.n.b.release(bVar2);
                    }
                    this.f605g[i3] = null;
                    int i4 = i3 + 1;
                    int i5 = i4;
                    while (true) {
                        i = this.l;
                        if (i4 >= i) {
                            break;
                        }
                        androidx.constraintlayout.core.b[] bVarArr3 = this.f605g;
                        int i6 = i4 - 1;
                        bVarArr3[i6] = bVarArr3[i4];
                        if (bVarArr3[i6].f595a.f584d == i4) {
                            bVarArr3[i6].f595a.f584d = i6;
                        }
                        i5 = i4;
                        i4++;
                    }
                    if (i5 < i) {
                        this.f605g[i5] = null;
                    }
                    this.l = i - 1;
                    i3--;
                }
                i3++;
            }
            this.f601a = false;
        }
    }

    private void n() {
        for (int i = 0; i < this.l; i++) {
            androidx.constraintlayout.core.b bVar = this.f605g[i];
            bVar.f595a.f586f = bVar.b;
        }
    }

    public static androidx.constraintlayout.core.b s(d dVar, SolverVariable solverVariable, SolverVariable solverVariable2, float f2) {
        androidx.constraintlayout.core.b bVarR = dVar.r();
        bVarR.j(solverVariable, solverVariable2, f2);
        return bVarR;
    }

    private int u(a aVar) throws Exception {
        boolean z2;
        int i = 0;
        while (true) {
            if (i >= this.l) {
                z2 = false;
                break;
            }
            androidx.constraintlayout.core.b[] bVarArr = this.f605g;
            if (bVarArr[i].f595a.j != SolverVariable.Type.UNRESTRICTED && bVarArr[i].b < BitmapDescriptorFactory.HUE_RED) {
                z2 = true;
                break;
            }
            i++;
        }
        if (!z2) {
            return 0;
        }
        boolean z3 = false;
        int i2 = 0;
        while (!z3) {
            e eVar = x;
            if (eVar != null) {
                eVar.k++;
            }
            i2++;
            float f2 = Float.MAX_VALUE;
            int i3 = -1;
            int i4 = -1;
            int i5 = 0;
            for (int i6 = 0; i6 < this.l; i6++) {
                androidx.constraintlayout.core.b bVar = this.f605g[i6];
                if (bVar.f595a.j != SolverVariable.Type.UNRESTRICTED && !bVar.f598f && bVar.b < BitmapDescriptorFactory.HUE_RED) {
                    int i7 = 9;
                    if (u) {
                        int currentSize = bVar.f597e.getCurrentSize();
                        int i8 = 0;
                        while (i8 < currentSize) {
                            SolverVariable solverVariableB = bVar.f597e.b(i8);
                            float fI = bVar.f597e.i(solverVariableB);
                            if (fI > BitmapDescriptorFactory.HUE_RED) {
                                int i9 = 0;
                                while (i9 < i7) {
                                    float f3 = solverVariableB.f588h[i9] / fI;
                                    if ((f3 < f2 && i9 == i5) || i9 > i5) {
                                        i4 = solverVariableB.c;
                                        i5 = i9;
                                        i3 = i6;
                                        f2 = f3;
                                    }
                                    i9++;
                                    i7 = 9;
                                }
                            }
                            i8++;
                            i7 = 9;
                        }
                    } else {
                        for (int i10 = 1; i10 < this.k; i10++) {
                            SolverVariable solverVariable = this.n.f600d[i10];
                            float fI2 = bVar.f597e.i(solverVariable);
                            if (fI2 > BitmapDescriptorFactory.HUE_RED) {
                                for (int i11 = 0; i11 < 9; i11++) {
                                    float f4 = solverVariable.f588h[i11] / fI2;
                                    if ((f4 < f2 && i11 == i5) || i11 > i5) {
                                        i4 = i10;
                                        i5 = i11;
                                        i3 = i6;
                                        f2 = f4;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            if (i3 != -1) {
                androidx.constraintlayout.core.b bVar2 = this.f605g[i3];
                bVar2.f595a.f584d = -1;
                e eVar2 = x;
                if (eVar2 != null) {
                    eVar2.j++;
                }
                bVar2.x(this.n.f600d[i4]);
                SolverVariable solverVariable2 = bVar2.f595a;
                solverVariable2.f584d = i3;
                solverVariable2.k(this, bVar2);
            } else {
                z3 = true;
            }
            if (i2 > this.k / 2) {
                z3 = true;
            }
        }
        return i2;
    }

    public static e x() {
        return x;
    }

    private void z() {
        int i = this.f603e * 2;
        this.f603e = i;
        this.f605g = (androidx.constraintlayout.core.b[]) Arrays.copyOf(this.f605g, i);
        c cVar = this.n;
        cVar.f600d = (SolverVariable[]) Arrays.copyOf(cVar.f600d, this.f603e);
        int i2 = this.f603e;
        this.j = new boolean[i2];
        this.f604f = i2;
        this.m = i2;
        e eVar = x;
        if (eVar != null) {
            eVar.f608d++;
            eVar.o = Math.max(eVar.o, i2);
            e eVar2 = x;
            eVar2.x = eVar2.o;
        }
    }

    public void A() throws Exception {
        e eVar = x;
        if (eVar != null) {
            eVar.f609e++;
        }
        if (this.f602d.isEmpty()) {
            n();
            return;
        }
        if (!this.f606h && !this.i) {
            B(this.f602d);
            return;
        }
        e eVar2 = x;
        if (eVar2 != null) {
            eVar2.q++;
        }
        boolean z2 = false;
        int i = 0;
        while (true) {
            if (i >= this.l) {
                z2 = true;
                break;
            } else if (!this.f605g[i].f598f) {
                break;
            } else {
                i++;
            }
        }
        if (!z2) {
            B(this.f602d);
            return;
        }
        e eVar3 = x;
        if (eVar3 != null) {
            eVar3.p++;
        }
        n();
    }

    void B(a aVar) throws Exception {
        e eVar = x;
        if (eVar != null) {
            eVar.t++;
            eVar.u = Math.max(eVar.u, this.k);
            e eVar2 = x;
            eVar2.v = Math.max(eVar2.v, this.l);
        }
        u(aVar);
        C(aVar, false);
        n();
    }

    public void E() {
        c cVar;
        int i = 0;
        while (true) {
            cVar = this.n;
            SolverVariable[] solverVariableArr = cVar.f600d;
            if (i >= solverVariableArr.length) {
                break;
            }
            SolverVariable solverVariable = solverVariableArr[i];
            if (solverVariable != null) {
                solverVariable.e();
            }
            i++;
        }
        cVar.c.a(this.o, this.p);
        this.p = 0;
        Arrays.fill(this.n.f600d, (Object) null);
        HashMap<String, SolverVariable> map = this.c;
        if (map != null) {
            map.clear();
        }
        this.b = 0;
        this.f602d.clear();
        this.k = 1;
        for (int i2 = 0; i2 < this.l; i2++) {
            androidx.constraintlayout.core.b[] bVarArr = this.f605g;
            if (bVarArr[i2] != null) {
                bVarArr[i2].c = false;
            }
        }
        D();
        this.l = 0;
        if (v) {
            this.q = new b(this, this.n);
        } else {
            this.q = new androidx.constraintlayout.core.b(this.n);
        }
    }

    public void b(ConstraintWidget constraintWidget, ConstraintWidget constraintWidget2, float f2, int i) {
        ConstraintAnchor.Type type = ConstraintAnchor.Type.LEFT;
        SolverVariable solverVariableQ = q(constraintWidget.m(type));
        ConstraintAnchor.Type type2 = ConstraintAnchor.Type.TOP;
        SolverVariable solverVariableQ2 = q(constraintWidget.m(type2));
        ConstraintAnchor.Type type3 = ConstraintAnchor.Type.RIGHT;
        SolverVariable solverVariableQ3 = q(constraintWidget.m(type3));
        ConstraintAnchor.Type type4 = ConstraintAnchor.Type.BOTTOM;
        SolverVariable solverVariableQ4 = q(constraintWidget.m(type4));
        SolverVariable solverVariableQ5 = q(constraintWidget2.m(type));
        SolverVariable solverVariableQ6 = q(constraintWidget2.m(type2));
        SolverVariable solverVariableQ7 = q(constraintWidget2.m(type3));
        SolverVariable solverVariableQ8 = q(constraintWidget2.m(type4));
        androidx.constraintlayout.core.b bVarR = r();
        double d2 = f2;
        double d3 = i;
        bVarR.q(solverVariableQ2, solverVariableQ4, solverVariableQ6, solverVariableQ8, (float) (Math.sin(d2) * d3));
        d(bVarR);
        androidx.constraintlayout.core.b bVarR2 = r();
        bVarR2.q(solverVariableQ, solverVariableQ3, solverVariableQ5, solverVariableQ7, (float) (Math.cos(d2) * d3));
        d(bVarR2);
    }

    public void c(SolverVariable solverVariable, SolverVariable solverVariable2, int i, float f2, SolverVariable solverVariable3, SolverVariable solverVariable4, int i2, int i3) {
        androidx.constraintlayout.core.b bVarR = r();
        bVarR.h(solverVariable, solverVariable2, i, f2, solverVariable3, solverVariable4, i2);
        if (i3 != 8) {
            bVarR.d(this, i3);
        }
        d(bVarR);
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0098  */
    public void d(androidx.constraintlayout.core.b bVar) {
        SolverVariable solverVariableV;
        if (bVar == null) {
            return;
        }
        e eVar = x;
        if (eVar != null) {
            eVar.f610f++;
            if (bVar.f598f) {
                eVar.f611g++;
            }
        }
        boolean z2 = true;
        if (this.l + 1 >= this.m || this.k + 1 >= this.f604f) {
            z();
        }
        boolean z3 = false;
        if (!bVar.f598f) {
            bVar.D(this);
            if (bVar.isEmpty()) {
                return;
            }
            bVar.r();
            if (bVar.f(this)) {
                SolverVariable solverVariableP = p();
                bVar.f595a = solverVariableP;
                int i = this.l;
                l(bVar);
                if (this.l == i + 1) {
                    this.q.a(bVar);
                    C(this.q, true);
                    if (solverVariableP.f584d == -1) {
                        if (bVar.f595a == solverVariableP && (solverVariableV = bVar.v(solverVariableP)) != null) {
                            e eVar2 = x;
                            if (eVar2 != null) {
                                eVar2.j++;
                            }
                            bVar.x(solverVariableV);
                        }
                        if (!bVar.f598f) {
                            bVar.f595a.k(this, bVar);
                        }
                        if (v) {
                            this.n.f599a.release(bVar);
                        } else {
                            this.n.b.release(bVar);
                        }
                        this.l--;
                    }
                } else {
                    z2 = false;
                }
            } else {
                z2 = false;
            }
            if (!bVar.s()) {
                return;
            } else {
                z3 = z2;
            }
        }
        if (z3) {
            return;
        }
        l(bVar);
    }

    public androidx.constraintlayout.core.b e(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        if (s && i2 == 8 && solverVariable2.f587g && solverVariable.f584d == -1) {
            solverVariable.g(this, solverVariable2.f586f + i);
            return null;
        }
        androidx.constraintlayout.core.b bVarR = r();
        bVarR.n(solverVariable, solverVariable2, i);
        if (i2 != 8) {
            bVarR.d(this, i2);
        }
        d(bVarR);
        return bVarR;
    }

    public void f(SolverVariable solverVariable, int i) {
        if (s && solverVariable.f584d == -1) {
            float f2 = i;
            solverVariable.g(this, f2);
            for (int i2 = 0; i2 < this.b + 1; i2++) {
                SolverVariable solverVariable2 = this.n.f600d[i2];
                if (solverVariable2 != null && solverVariable2.n && solverVariable2.o == solverVariable.c) {
                    solverVariable2.g(this, solverVariable2.p + f2);
                }
            }
            return;
        }
        int i3 = solverVariable.f584d;
        if (i3 == -1) {
            androidx.constraintlayout.core.b bVarR = r();
            bVarR.i(solverVariable, i);
            d(bVarR);
            return;
        }
        androidx.constraintlayout.core.b bVar = this.f605g[i3];
        if (bVar.f598f) {
            bVar.b = i;
            return;
        }
        if (bVar.f597e.getCurrentSize() == 0) {
            bVar.f598f = true;
            bVar.b = i;
        } else {
            androidx.constraintlayout.core.b bVarR2 = r();
            bVarR2.m(solverVariable, i);
            d(bVarR2);
        }
    }

    public void g(SolverVariable solverVariable, SolverVariable solverVariable2, int i, boolean z2) {
        androidx.constraintlayout.core.b bVarR = r();
        SolverVariable solverVariableT = t();
        solverVariableT.f585e = 0;
        bVarR.o(solverVariable, solverVariable2, solverVariableT, i);
        d(bVarR);
    }

    public void h(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        androidx.constraintlayout.core.b bVarR = r();
        SolverVariable solverVariableT = t();
        solverVariableT.f585e = 0;
        bVarR.o(solverVariable, solverVariable2, solverVariableT, i);
        if (i2 != 8) {
            m(bVarR, (int) (bVarR.f597e.i(solverVariableT) * (-1.0f)), i2);
        }
        d(bVarR);
    }

    public void i(SolverVariable solverVariable, SolverVariable solverVariable2, int i, boolean z2) {
        androidx.constraintlayout.core.b bVarR = r();
        SolverVariable solverVariableT = t();
        solverVariableT.f585e = 0;
        bVarR.p(solverVariable, solverVariable2, solverVariableT, i);
        d(bVarR);
    }

    public void j(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        androidx.constraintlayout.core.b bVarR = r();
        SolverVariable solverVariableT = t();
        solverVariableT.f585e = 0;
        bVarR.p(solverVariable, solverVariable2, solverVariableT, i);
        if (i2 != 8) {
            m(bVarR, (int) (bVarR.f597e.i(solverVariableT) * (-1.0f)), i2);
        }
        d(bVarR);
    }

    public void k(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f2, int i) {
        androidx.constraintlayout.core.b bVarR = r();
        bVarR.k(solverVariable, solverVariable2, solverVariable3, solverVariable4, f2);
        if (i != 8) {
            bVarR.d(this, i);
        }
        d(bVarR);
    }

    void m(androidx.constraintlayout.core.b bVar, int i, int i2) {
        bVar.e(o(i2, null), i);
    }

    public SolverVariable o(int i, String str) {
        e eVar = x;
        if (eVar != null) {
            eVar.l++;
        }
        if (this.k + 1 >= this.f604f) {
            z();
        }
        SolverVariable solverVariableA = a(SolverVariable.Type.ERROR, str);
        int i2 = this.b + 1;
        this.b = i2;
        this.k++;
        solverVariableA.c = i2;
        solverVariableA.f585e = i;
        this.n.f600d[i2] = solverVariableA;
        this.f602d.c(solverVariableA);
        return solverVariableA;
    }

    public SolverVariable p() {
        e eVar = x;
        if (eVar != null) {
            eVar.n++;
        }
        if (this.k + 1 >= this.f604f) {
            z();
        }
        SolverVariable solverVariableA = a(SolverVariable.Type.SLACK, null);
        int i = this.b + 1;
        this.b = i;
        this.k++;
        solverVariableA.c = i;
        this.n.f600d[i] = solverVariableA;
        return solverVariableA;
    }

    public SolverVariable q(Object obj) {
        SolverVariable solverVariableH = null;
        if (obj == null) {
            return null;
        }
        if (this.k + 1 >= this.f604f) {
            z();
        }
        if (obj instanceof ConstraintAnchor) {
            ConstraintAnchor constraintAnchor = (ConstraintAnchor) obj;
            solverVariableH = constraintAnchor.h();
            if (solverVariableH == null) {
                constraintAnchor.r(this.n);
                solverVariableH = constraintAnchor.h();
            }
            int i = solverVariableH.c;
            if (i == -1 || i > this.b || this.n.f600d[i] == null) {
                if (i != -1) {
                    solverVariableH.e();
                }
                int i2 = this.b + 1;
                this.b = i2;
                this.k++;
                solverVariableH.c = i2;
                solverVariableH.j = SolverVariable.Type.UNRESTRICTED;
                this.n.f600d[i2] = solverVariableH;
            }
        }
        return solverVariableH;
    }

    public androidx.constraintlayout.core.b r() {
        androidx.constraintlayout.core.b bVarAcquire;
        if (v) {
            bVarAcquire = this.n.f599a.acquire();
            if (bVarAcquire == null) {
                bVarAcquire = new b(this, this.n);
                z++;
            } else {
                bVarAcquire.y();
            }
        } else {
            bVarAcquire = this.n.b.acquire();
            if (bVarAcquire == null) {
                bVarAcquire = new androidx.constraintlayout.core.b(this.n);
                y++;
            } else {
                bVarAcquire.y();
            }
        }
        SolverVariable.c();
        return bVarAcquire;
    }

    public SolverVariable t() {
        e eVar = x;
        if (eVar != null) {
            eVar.m++;
        }
        if (this.k + 1 >= this.f604f) {
            z();
        }
        SolverVariable solverVariableA = a(SolverVariable.Type.SLACK, null);
        int i = this.b + 1;
        this.b = i;
        this.k++;
        solverVariableA.c = i;
        this.n.f600d[i] = solverVariableA;
        return solverVariableA;
    }

    public void v(e eVar) {
    }

    public c w() {
        return this.n;
    }

    public int y(Object obj) {
        SolverVariable solverVariableH = ((ConstraintAnchor) obj).h();
        if (solverVariableH != null) {
            return (int) (solverVariableH.f586f + 0.5f);
        }
        return 0;
    }
}
