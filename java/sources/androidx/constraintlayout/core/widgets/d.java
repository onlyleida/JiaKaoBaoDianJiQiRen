package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.SolverVariable;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class d extends j {
    public androidx.constraintlayout.core.e A0;
    int C0;
    int D0;
    private int x0;
    androidx.constraintlayout.core.widgets.analyzer.b v0 = new androidx.constraintlayout.core.widgets.analyzer.b(this);
    public androidx.constraintlayout.core.widgets.analyzer.e w0 = new androidx.constraintlayout.core.widgets.analyzer.e(this);
    protected androidx.constraintlayout.core.widgets.analyzer.b.InterfaceC0016b y0 = null;
    private boolean z0 = false;
    protected androidx.constraintlayout.core.d B0 = new androidx.constraintlayout.core.d();
    public int E0 = 0;
    public int F0 = 0;
    c[] G0 = new c[4];
    c[] H0 = new c[4];
    private int I0 = 257;
    private boolean J0 = false;
    private boolean K0 = false;
    private WeakReference<ConstraintAnchor> L0 = null;
    private WeakReference<ConstraintAnchor> M0 = null;
    private WeakReference<ConstraintAnchor> N0 = null;
    private WeakReference<ConstraintAnchor> O0 = null;
    HashSet<ConstraintWidget> P0 = new HashSet<>();
    public androidx.constraintlayout.core.widgets.analyzer.b.a Q0 = new androidx.constraintlayout.core.widgets.analyzer.b.a();

    public static boolean J1(int i, ConstraintWidget constraintWidget, androidx.constraintlayout.core.widgets.analyzer.b.InterfaceC0016b interfaceC0016b, androidx.constraintlayout.core.widgets.analyzer.b.a aVar, int i2) {
        int i3;
        int i4;
        if (interfaceC0016b == null) {
            return false;
        }
        if (constraintWidget.Q() == 8 || (constraintWidget instanceof e) || (constraintWidget instanceof a)) {
            aVar.f703e = 0;
            aVar.f704f = 0;
            return false;
        }
        aVar.f701a = constraintWidget.y();
        aVar.b = constraintWidget.O();
        aVar.c = constraintWidget.R();
        aVar.f702d = constraintWidget.v();
        aVar.i = false;
        aVar.j = i2;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = aVar.f701a;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        boolean z = dimensionBehaviour == dimensionBehaviour2;
        boolean z2 = aVar.b == dimensionBehaviour2;
        boolean z3 = z && constraintWidget.Z > BitmapDescriptorFactory.HUE_RED;
        boolean z4 = z2 && constraintWidget.Z > BitmapDescriptorFactory.HUE_RED;
        if (z && constraintWidget.V(0) && constraintWidget.s == 0 && !z3) {
            aVar.f701a = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            if (z2 && constraintWidget.t == 0) {
                aVar.f701a = ConstraintWidget.DimensionBehaviour.FIXED;
            }
            z = false;
        }
        if (z2 && constraintWidget.V(1) && constraintWidget.t == 0 && !z4) {
            aVar.b = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            if (z && constraintWidget.s == 0) {
                aVar.b = ConstraintWidget.DimensionBehaviour.FIXED;
            }
            z2 = false;
        }
        if (constraintWidget.i0()) {
            aVar.f701a = ConstraintWidget.DimensionBehaviour.FIXED;
            z = false;
        }
        if (constraintWidget.j0()) {
            aVar.b = ConstraintWidget.DimensionBehaviour.FIXED;
            z2 = false;
        }
        if (z3) {
            if (constraintWidget.u[0] == 4) {
                aVar.f701a = ConstraintWidget.DimensionBehaviour.FIXED;
            } else if (!z2) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = aVar.b;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.FIXED;
                if (dimensionBehaviour3 == dimensionBehaviour4) {
                    i4 = aVar.f702d;
                } else {
                    aVar.f701a = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    interfaceC0016b.b(constraintWidget, aVar);
                    i4 = aVar.f704f;
                }
                aVar.f701a = dimensionBehaviour4;
                aVar.c = (int) (constraintWidget.t() * i4);
            }
        }
        if (z4) {
            if (constraintWidget.u[1] == 4) {
                aVar.b = ConstraintWidget.DimensionBehaviour.FIXED;
            } else if (!z) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = aVar.f701a;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour6 = ConstraintWidget.DimensionBehaviour.FIXED;
                if (dimensionBehaviour5 == dimensionBehaviour6) {
                    i3 = aVar.c;
                } else {
                    aVar.b = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    interfaceC0016b.b(constraintWidget, aVar);
                    i3 = aVar.f703e;
                }
                aVar.b = dimensionBehaviour6;
                if (constraintWidget.u() == -1) {
                    aVar.f702d = (int) (i3 / constraintWidget.t());
                } else {
                    aVar.f702d = (int) (constraintWidget.t() * i3);
                }
            }
        }
        interfaceC0016b.b(constraintWidget, aVar);
        constraintWidget.b1(aVar.f703e);
        constraintWidget.C0(aVar.f704f);
        constraintWidget.B0(aVar.f706h);
        constraintWidget.r0(aVar.f705g);
        aVar.j = androidx.constraintlayout.core.widgets.analyzer.b.a.k;
        return aVar.i;
    }

    private void L1() {
        this.E0 = 0;
        this.F0 = 0;
    }

    private void o1(ConstraintWidget constraintWidget) {
        int i = this.E0 + 1;
        c[] cVarArr = this.H0;
        if (i >= cVarArr.length) {
            this.H0 = (c[]) Arrays.copyOf(cVarArr, cVarArr.length * 2);
        }
        this.H0[this.E0] = new c(constraintWidget, 0, G1());
        this.E0++;
    }

    private void r1(ConstraintAnchor constraintAnchor, SolverVariable solverVariable) {
        this.B0.h(solverVariable, this.B0.q(constraintAnchor), 0, 5);
    }

    private void s1(ConstraintAnchor constraintAnchor, SolverVariable solverVariable) {
        this.B0.h(this.B0.q(constraintAnchor), solverVariable, 0, 5);
    }

    private void t1(ConstraintWidget constraintWidget) {
        int i = this.F0 + 1;
        c[] cVarArr = this.G0;
        if (i >= cVarArr.length) {
            this.G0 = (c[]) Arrays.copyOf(cVarArr, cVarArr.length * 2);
        }
        this.G0[this.F0] = new c(constraintWidget, 1, G1());
        this.F0++;
    }

    public androidx.constraintlayout.core.widgets.analyzer.b.InterfaceC0016b A1() {
        return this.y0;
    }

    public int B1() {
        return this.I0;
    }

    public androidx.constraintlayout.core.d C1() {
        return this.B0;
    }

    public void D1() {
        this.w0.j();
    }

    public void E1() {
        this.w0.k();
    }

    public boolean F1() {
        return this.K0;
    }

    public boolean G1() {
        return this.z0;
    }

    public boolean H1() {
        return this.J0;
    }

    public long I1(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        this.C0 = i8;
        this.D0 = i9;
        return this.v0.d(this, i, i8, i9, i2, i3, i4, i5, i6, i7);
    }

    public boolean K1(int i) {
        return (this.I0 & i) == i;
    }

    public void M1(androidx.constraintlayout.core.widgets.analyzer.b.InterfaceC0016b interfaceC0016b) {
        this.y0 = interfaceC0016b;
        this.w0.n(interfaceC0016b);
    }

    public void N1(int i) {
        this.I0 = i;
        androidx.constraintlayout.core.d.r = K1(512);
    }

    public void O1(int i) {
        this.x0 = i;
    }

    public void P1(boolean z) {
        this.z0 = z;
    }

    public boolean Q1(androidx.constraintlayout.core.d dVar, boolean[] zArr) {
        zArr[2] = false;
        boolean zK1 = K1(64);
        h1(dVar, zK1);
        int size = this.u0.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = this.u0.get(i);
            constraintWidget.h1(dVar, zK1);
            if (constraintWidget.X()) {
                z = true;
            }
        }
        return z;
    }

    public void R1() {
        this.v0.e(this);
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void g1(boolean z, boolean z2) {
        super.g1(z, z2);
        int size = this.u0.size();
        for (int i = 0; i < size; i++) {
            this.u0.get(i).g1(z, z2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:155:0x0314 A[PHI: r2 r16
      0x0314: PHI (r2v14 boolean) = (r2v13 boolean), (r2v18 boolean), (r2v18 boolean), (r2v18 boolean) binds: [B:142:0x02d5, B:150:0x02fa, B:151:0x02fc, B:153:0x0302] A[DONT_GENERATE, DONT_INLINE]
      0x0314: PHI (r16v4 boolean) = (r16v3 boolean), (r16v5 boolean), (r16v5 boolean), (r16v5 boolean) binds: [B:142:0x02d5, B:150:0x02fa, B:151:0x02fc, B:153:0x0302] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v6 */
    @Override // androidx.constraintlayout.core.widgets.j
    public void j1() {
        int i;
        int i2;
        boolean z;
        boolean zQ1;
        boolean z2;
        ?? r6;
        boolean z3;
        boolean z4;
        int i3;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        this.b0 = 0;
        this.c0 = 0;
        this.J0 = false;
        this.K0 = false;
        int size = this.u0.size();
        int iMax = Math.max(0, R());
        int iMax2 = Math.max(0, v());
        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = this.V;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[1];
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = dimensionBehaviourArr[0];
        androidx.constraintlayout.core.e eVar = this.A0;
        if (eVar != null) {
            eVar.z++;
        }
        if (this.x0 == 0 && h.b(this.I0, 1)) {
            androidx.constraintlayout.core.widgets.analyzer.g.h(this, A1());
            for (int i4 = 0; i4 < size; i4++) {
                ConstraintWidget constraintWidget = this.u0.get(i4);
                if (constraintWidget.h0() && !(constraintWidget instanceof e) && !(constraintWidget instanceof a) && !(constraintWidget instanceof i) && !constraintWidget.g0()) {
                    ConstraintWidget.DimensionBehaviour dimensionBehaviourS = constraintWidget.s(0);
                    ConstraintWidget.DimensionBehaviour dimensionBehaviourS2 = constraintWidget.s(1);
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                    if (!(dimensionBehaviourS == dimensionBehaviour4 && constraintWidget.s != 1 && dimensionBehaviourS2 == dimensionBehaviour4 && constraintWidget.t != 1)) {
                        J1(0, constraintWidget, this.y0, new androidx.constraintlayout.core.widgets.analyzer.b.a(), androidx.constraintlayout.core.widgets.analyzer.b.a.k);
                    }
                }
            }
        }
        if (size <= 2 || !((dimensionBehaviour3 == (dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || dimensionBehaviour2 == dimensionBehaviour) && h.b(this.I0, 1024) && androidx.constraintlayout.core.widgets.analyzer.h.c(this, A1()))) {
            i = iMax2;
            i2 = iMax;
            z = false;
        } else {
            if (dimensionBehaviour3 == dimensionBehaviour) {
                if (iMax >= R() || iMax <= 0) {
                    iMax = R();
                } else {
                    b1(iMax);
                    this.J0 = true;
                }
            }
            if (dimensionBehaviour2 == dimensionBehaviour) {
                if (iMax2 >= v() || iMax2 <= 0) {
                    iMax2 = v();
                } else {
                    C0(iMax2);
                    this.K0 = true;
                }
            }
            i = iMax2;
            i2 = iMax;
            z = true;
        }
        boolean z5 = K1(64) || K1(128);
        androidx.constraintlayout.core.d dVar = this.B0;
        dVar.f606h = false;
        dVar.i = false;
        if (this.I0 != 0 && z5) {
            dVar.i = true;
        }
        ArrayList<ConstraintWidget> arrayList = this.u0;
        ConstraintWidget.DimensionBehaviour dimensionBehaviourY = y();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        boolean z6 = dimensionBehaviourY == dimensionBehaviour5 || O() == dimensionBehaviour5;
        L1();
        for (int i5 = 0; i5 < size; i5++) {
            ConstraintWidget constraintWidget2 = this.u0.get(i5);
            if (constraintWidget2 instanceof j) {
                ((j) constraintWidget2).j1();
            }
        }
        boolean zK1 = K1(64);
        boolean z7 = z;
        int i6 = 0;
        boolean zN1 = true;
        while (zN1) {
            int i7 = i6 + 1;
            try {
                this.B0.E();
                L1();
                k(this.B0);
                for (int i8 = 0; i8 < size; i8++) {
                    this.u0.get(i8).k(this.B0);
                }
                zN1 = n1(this.B0);
                WeakReference<ConstraintAnchor> weakReference = this.L0;
                if (weakReference != null && weakReference.get() != null) {
                    s1(this.L0.get(), this.B0.q(this.L));
                    this.L0 = null;
                }
                WeakReference<ConstraintAnchor> weakReference2 = this.N0;
                if (weakReference2 != null && weakReference2.get() != null) {
                    r1(this.N0.get(), this.B0.q(this.N));
                    this.N0 = null;
                }
                WeakReference<ConstraintAnchor> weakReference3 = this.M0;
                if (weakReference3 != null && weakReference3.get() != null) {
                    s1(this.M0.get(), this.B0.q(this.K));
                    this.M0 = null;
                }
                WeakReference<ConstraintAnchor> weakReference4 = this.O0;
                if (weakReference4 != null && weakReference4.get() != null) {
                    r1(this.O0.get(), this.B0.q(this.M));
                    this.O0 = null;
                }
                if (zN1) {
                    this.B0.A();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                System.out.println("EXCEPTION : " + e2);
            }
            if (zN1) {
                zQ1 = Q1(this.B0, h.f729a);
            } else {
                h1(this.B0, zK1);
                for (int i9 = 0; i9 < size; i9++) {
                    this.u0.get(i9).h1(this.B0, zK1);
                }
                zQ1 = false;
            }
            if (z6 && i7 < 8 && h.f729a[2]) {
                int i10 = 0;
                int iMax3 = 0;
                int iMax4 = 0;
                while (i10 < size) {
                    ConstraintWidget constraintWidget3 = this.u0.get(i10);
                    iMax4 = Math.max(iMax4, constraintWidget3.b0 + constraintWidget3.R());
                    iMax3 = Math.max(iMax3, constraintWidget3.c0 + constraintWidget3.v());
                    i10++;
                    zQ1 = zQ1;
                }
                z2 = zQ1;
                int iMax5 = Math.max(this.e0, iMax4);
                int iMax6 = Math.max(this.f0, iMax3);
                ConstraintWidget.DimensionBehaviour dimensionBehaviour6 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                if (dimensionBehaviour3 == dimensionBehaviour6 && R() < iMax5) {
                    b1(iMax5);
                    this.V[0] = dimensionBehaviour6;
                    z7 = true;
                    z2 = true;
                }
                if (dimensionBehaviour2 == dimensionBehaviour6 && v() < iMax6) {
                    C0(iMax6);
                    this.V[1] = dimensionBehaviour6;
                    z7 = true;
                    z2 = true;
                }
            } else {
                z2 = zQ1;
            }
            int iMax7 = Math.max(this.e0, R());
            if (iMax7 > R()) {
                b1(iMax7);
                this.V[0] = ConstraintWidget.DimensionBehaviour.FIXED;
                z7 = true;
                z2 = true;
            }
            int iMax8 = Math.max(this.f0, v());
            if (iMax8 > v()) {
                C0(iMax8);
                r6 = 1;
                this.V[1] = ConstraintWidget.DimensionBehaviour.FIXED;
                z3 = true;
                z2 = true;
            } else {
                r6 = 1;
                z3 = z7;
            }
            if (z3) {
                z7 = z3;
                z4 = z2;
                i3 = 8;
            } else {
                ConstraintWidget.DimensionBehaviour dimensionBehaviour7 = this.V[0];
                ConstraintWidget.DimensionBehaviour dimensionBehaviour8 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                if (dimensionBehaviour7 == dimensionBehaviour8 && i2 > 0 && R() > i2) {
                    this.J0 = r6;
                    this.V[0] = ConstraintWidget.DimensionBehaviour.FIXED;
                    b1(i2);
                    z3 = true;
                    z2 = true;
                }
                if (this.V[r6] != dimensionBehaviour8 || i <= 0 || v() <= i) {
                    z7 = z3;
                    z4 = z2;
                    i3 = 8;
                } else {
                    this.K0 = r6;
                    this.V[r6] = ConstraintWidget.DimensionBehaviour.FIXED;
                    C0(i);
                    i3 = 8;
                    z4 = true;
                    z7 = true;
                }
            }
            zN1 = i7 > i3 ? false : z4;
            i6 = i7;
        }
        this.u0 = arrayList;
        if (z7) {
            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr2 = this.V;
            dimensionBehaviourArr2[0] = dimensionBehaviour3;
            dimensionBehaviourArr2[1] = dimensionBehaviour2;
        }
        q0(this.B0.w());
    }

    void m1(ConstraintWidget constraintWidget, int i) {
        if (i == 0) {
            o1(constraintWidget);
        } else if (i == 1) {
            t1(constraintWidget);
        }
    }

    public boolean n1(androidx.constraintlayout.core.d dVar) {
        boolean zK1 = K1(64);
        g(dVar, zK1);
        int size = this.u0.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = this.u0.get(i);
            constraintWidget.J0(0, false);
            constraintWidget.J0(1, false);
            if (constraintWidget instanceof a) {
                z = true;
            }
        }
        if (z) {
            for (int i2 = 0; i2 < size; i2++) {
                ConstraintWidget constraintWidget2 = this.u0.get(i2);
                if (constraintWidget2 instanceof a) {
                    ((a) constraintWidget2).p1();
                }
            }
        }
        this.P0.clear();
        for (int i3 = 0; i3 < size; i3++) {
            ConstraintWidget constraintWidget3 = this.u0.get(i3);
            if (constraintWidget3.f()) {
                if (constraintWidget3 instanceof i) {
                    this.P0.add(constraintWidget3);
                } else {
                    constraintWidget3.g(dVar, zK1);
                }
            }
        }
        while (this.P0.size() > 0) {
            int size2 = this.P0.size();
            Iterator<ConstraintWidget> it = this.P0.iterator();
            while (it.hasNext()) {
                i iVar = (i) it.next();
                if (iVar.l1(this.P0)) {
                    iVar.g(dVar, zK1);
                    this.P0.remove(iVar);
                    break;
                }
            }
            if (size2 == this.P0.size()) {
                Iterator<ConstraintWidget> it2 = this.P0.iterator();
                while (it2.hasNext()) {
                    it2.next().g(dVar, zK1);
                }
                this.P0.clear();
            }
        }
        if (androidx.constraintlayout.core.d.r) {
            HashSet<ConstraintWidget> hashSet = new HashSet<>();
            for (int i4 = 0; i4 < size; i4++) {
                ConstraintWidget constraintWidget4 = this.u0.get(i4);
                if (!constraintWidget4.f()) {
                    hashSet.add(constraintWidget4);
                }
            }
            e(this, dVar, hashSet, y() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT ? 0 : 1, false);
            for (ConstraintWidget constraintWidget5 : hashSet) {
                h.a(this, dVar, constraintWidget5);
                constraintWidget5.g(dVar, zK1);
            }
        } else {
            for (int i5 = 0; i5 < size; i5++) {
                ConstraintWidget constraintWidget6 = this.u0.get(i5);
                if (constraintWidget6 instanceof d) {
                    ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget6.V;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[1];
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    if (dimensionBehaviour == dimensionBehaviour3) {
                        constraintWidget6.G0(ConstraintWidget.DimensionBehaviour.FIXED);
                    }
                    if (dimensionBehaviour2 == dimensionBehaviour3) {
                        constraintWidget6.X0(ConstraintWidget.DimensionBehaviour.FIXED);
                    }
                    constraintWidget6.g(dVar, zK1);
                    if (dimensionBehaviour == dimensionBehaviour3) {
                        constraintWidget6.G0(dimensionBehaviour);
                    }
                    if (dimensionBehaviour2 == dimensionBehaviour3) {
                        constraintWidget6.X0(dimensionBehaviour2);
                    }
                } else {
                    h.a(this, dVar, constraintWidget6);
                    if (!constraintWidget6.f()) {
                        constraintWidget6.g(dVar, zK1);
                    }
                }
            }
        }
        if (this.E0 > 0) {
            b.b(this, dVar, null, 0);
        }
        if (this.F0 > 0) {
            b.b(this, dVar, null, 1);
        }
        return true;
    }

    @Override // androidx.constraintlayout.core.widgets.j, androidx.constraintlayout.core.widgets.ConstraintWidget
    public void o0() {
        this.B0.E();
        this.C0 = 0;
        this.D0 = 0;
        super.o0();
    }

    public void p1(ConstraintAnchor constraintAnchor) {
        WeakReference<ConstraintAnchor> weakReference = this.O0;
        if (weakReference == null || weakReference.get() == null || constraintAnchor.d() > this.O0.get().d()) {
            this.O0 = new WeakReference<>(constraintAnchor);
        }
    }

    public void q1(ConstraintAnchor constraintAnchor) {
        WeakReference<ConstraintAnchor> weakReference = this.M0;
        if (weakReference == null || weakReference.get() == null || constraintAnchor.d() > this.M0.get().d()) {
            this.M0 = new WeakReference<>(constraintAnchor);
        }
    }

    void u1(ConstraintAnchor constraintAnchor) {
        WeakReference<ConstraintAnchor> weakReference = this.N0;
        if (weakReference == null || weakReference.get() == null || constraintAnchor.d() > this.N0.get().d()) {
            this.N0 = new WeakReference<>(constraintAnchor);
        }
    }

    void v1(ConstraintAnchor constraintAnchor) {
        WeakReference<ConstraintAnchor> weakReference = this.L0;
        if (weakReference == null || weakReference.get() == null || constraintAnchor.d() > this.L0.get().d()) {
            this.L0 = new WeakReference<>(constraintAnchor);
        }
    }

    public boolean w1(boolean z) {
        return this.w0.f(z);
    }

    public boolean x1(boolean z) {
        return this.w0.g(z);
    }

    public boolean y1(boolean z, int i) {
        return this.w0.h(z, i);
    }

    public void z1(androidx.constraintlayout.core.e eVar) {
        this.B0.v(eVar);
    }
}
