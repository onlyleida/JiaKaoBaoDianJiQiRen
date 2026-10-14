package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList<ConstraintWidget> f700a = new ArrayList<>();
    private a b = new a();
    private androidx.constraintlayout.core.widgets.d c;

    public static class a {
        public static int k = 0;
        public static int l = 1;
        public static int m = 2;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public ConstraintWidget.DimensionBehaviour f701a;
        public ConstraintWidget.DimensionBehaviour b;
        public int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f702d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f703e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f704f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f705g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f706h;
        public boolean i;
        public int j;
    }

    /* JADX INFO: renamed from: androidx.constraintlayout.core.widgets.analyzer.b$b, reason: collision with other inner class name */
    public interface InterfaceC0016b {
        void a();

        void b(ConstraintWidget constraintWidget, a aVar);
    }

    public b(androidx.constraintlayout.core.widgets.d dVar) {
        this.c = dVar;
    }

    private boolean a(InterfaceC0016b interfaceC0016b, ConstraintWidget constraintWidget, int i) {
        this.b.f701a = constraintWidget.y();
        this.b.b = constraintWidget.O();
        this.b.c = constraintWidget.R();
        this.b.f702d = constraintWidget.v();
        a aVar = this.b;
        aVar.i = false;
        aVar.j = i;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = aVar.f701a;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        boolean z = dimensionBehaviour == dimensionBehaviour2;
        boolean z2 = aVar.b == dimensionBehaviour2;
        boolean z3 = z && constraintWidget.Z > BitmapDescriptorFactory.HUE_RED;
        boolean z4 = z2 && constraintWidget.Z > BitmapDescriptorFactory.HUE_RED;
        if (z3 && constraintWidget.u[0] == 4) {
            aVar.f701a = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        if (z4 && constraintWidget.u[1] == 4) {
            aVar.b = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        interfaceC0016b.b(constraintWidget, aVar);
        constraintWidget.b1(this.b.f703e);
        constraintWidget.C0(this.b.f704f);
        constraintWidget.B0(this.b.f706h);
        constraintWidget.r0(this.b.f705g);
        a aVar2 = this.b;
        aVar2.j = a.k;
        return aVar2.i;
    }

    /* JADX WARN: Code duplicated, block: B:56:0x0098 A[PHI: r10
      0x0098: PHI (r10v2 boolean) = (r10v1 boolean), (r10v1 boolean), (r10v1 boolean), (r10v4 boolean), (r10v4 boolean) binds: [B:32:0x0062, B:34:0x0068, B:36:0x006c, B:54:0x0095, B:52:0x008e] A[DONT_GENERATE, DONT_INLINE]] */
    private void b(androidx.constraintlayout.core.widgets.d dVar) {
        boolean z;
        k kVar;
        m mVar;
        int size = dVar.u0.size();
        boolean zK1 = dVar.K1(64);
        InterfaceC0016b interfaceC0016bA1 = dVar.A1();
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = dVar.u0.get(i);
            if (!(constraintWidget instanceof androidx.constraintlayout.core.widgets.e) && !(constraintWidget instanceof androidx.constraintlayout.core.widgets.a) && !constraintWidget.g0() && (!zK1 || (kVar = constraintWidget.f681d) == null || (mVar = constraintWidget.f682e) == null || !kVar.f695e.j || !mVar.f695e.j)) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviourS = constraintWidget.s(0);
                ConstraintWidget.DimensionBehaviour dimensionBehaviourS2 = constraintWidget.s(1);
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                boolean z2 = dimensionBehaviourS == dimensionBehaviour && constraintWidget.s != 1 && dimensionBehaviourS2 == dimensionBehaviour && constraintWidget.t != 1;
                if (!z2 && dVar.K1(1) && !(constraintWidget instanceof androidx.constraintlayout.core.widgets.i)) {
                    if (dimensionBehaviourS == dimensionBehaviour && constraintWidget.s == 0 && dimensionBehaviourS2 != dimensionBehaviour && !constraintWidget.d0()) {
                        z2 = true;
                    }
                    if (dimensionBehaviourS2 == dimensionBehaviour && constraintWidget.t == 0 && dimensionBehaviourS != dimensionBehaviour && !constraintWidget.d0()) {
                        z2 = true;
                    }
                    z = (!(dimensionBehaviourS == dimensionBehaviour || dimensionBehaviourS2 == dimensionBehaviour) || constraintWidget.Z <= BitmapDescriptorFactory.HUE_RED) ? z2 : true;
                }
                if (!z) {
                    a(interfaceC0016bA1, constraintWidget, a.k);
                    androidx.constraintlayout.core.e eVar = dVar.A0;
                    if (eVar != null) {
                        eVar.f607a++;
                    }
                }
            }
        }
        interfaceC0016bA1.a();
    }

    private void c(androidx.constraintlayout.core.widgets.d dVar, String str, int i, int i2, int i3) {
        int iG = dVar.G();
        int iF = dVar.F();
        dVar.R0(0);
        dVar.Q0(0);
        dVar.b1(i2);
        dVar.C0(i3);
        dVar.R0(iG);
        dVar.Q0(iF);
        this.c.O1(i);
        this.c.j1();
    }

    public long d(androidx.constraintlayout.core.widgets.d dVar, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        boolean zY1;
        int i10;
        int i11;
        boolean z;
        int i12;
        InterfaceC0016b interfaceC0016b;
        boolean z2;
        androidx.constraintlayout.core.e eVar;
        InterfaceC0016b interfaceC0016bA1 = dVar.A1();
        int size = dVar.u0.size();
        int iR = dVar.R();
        int iV = dVar.v();
        boolean zB = androidx.constraintlayout.core.widgets.h.b(i, 128);
        boolean z3 = zB || androidx.constraintlayout.core.widgets.h.b(i, 64);
        if (z3) {
            for (int i13 = 0; i13 < size; i13++) {
                ConstraintWidget constraintWidget = dVar.u0.get(i13);
                ConstraintWidget.DimensionBehaviour dimensionBehaviourY = constraintWidget.y();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                boolean z4 = (dimensionBehaviourY == dimensionBehaviour) && (constraintWidget.O() == dimensionBehaviour) && constraintWidget.t() > BitmapDescriptorFactory.HUE_RED;
                if ((constraintWidget.d0() && z4) || ((constraintWidget.f0() && z4) || (constraintWidget instanceof androidx.constraintlayout.core.widgets.i) || constraintWidget.d0() || constraintWidget.f0())) {
                    z3 = false;
                    break;
                }
            }
        }
        if (z3 && (eVar = androidx.constraintlayout.core.d.x) != null) {
            eVar.c++;
        }
        boolean z5 = z3 & ((i4 == 1073741824 && i6 == 1073741824) || zB);
        if (z5) {
            int iMin = Math.min(dVar.E(), i5);
            int iMin2 = Math.min(dVar.D(), i7);
            if (i4 == 1073741824 && dVar.R() != iMin) {
                dVar.b1(iMin);
                dVar.D1();
            }
            if (i6 == 1073741824 && dVar.v() != iMin2) {
                dVar.C0(iMin2);
                dVar.D1();
            }
            if (i4 == 1073741824 && i6 == 1073741824) {
                zY1 = dVar.w1(zB);
                i10 = 2;
            } else {
                boolean zX1 = dVar.x1(zB);
                if (i4 == 1073741824) {
                    zX1 &= dVar.y1(zB, 0);
                    i10 = 1;
                } else {
                    i10 = 0;
                }
                if (i6 == 1073741824) {
                    zY1 = dVar.y1(zB, 1) & zX1;
                    i10++;
                } else {
                    zY1 = zX1;
                }
            }
            if (zY1) {
                dVar.g1(i4 == 1073741824, i6 == 1073741824);
            }
        } else {
            zY1 = false;
            i10 = 0;
        }
        if (zY1 && i10 == 2) {
            return 0L;
        }
        int iB1 = dVar.B1();
        if (size > 0) {
            b(dVar);
        }
        e(dVar);
        int size2 = this.f700a.size();
        if (size > 0) {
            c(dVar, "First pass", 0, iR, iV);
        }
        if (size2 > 0) {
            ConstraintWidget.DimensionBehaviour dimensionBehaviourY2 = dVar.y();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            boolean z6 = dimensionBehaviourY2 == dimensionBehaviour2;
            boolean z7 = dVar.O() == dimensionBehaviour2;
            int iMax = Math.max(dVar.R(), this.c.G());
            int iMax2 = Math.max(dVar.v(), this.c.F());
            int i14 = 0;
            boolean zM1 = false;
            while (i14 < size2) {
                ConstraintWidget constraintWidget2 = this.f700a.get(i14);
                if (constraintWidget2 instanceof androidx.constraintlayout.core.widgets.i) {
                    int iR2 = constraintWidget2.R();
                    int iV2 = constraintWidget2.v();
                    boolean zA = a(interfaceC0016bA1, constraintWidget2, a.l) | zM1;
                    androidx.constraintlayout.core.e eVar2 = dVar.A0;
                    if (eVar2 != null) {
                        eVar2.b++;
                    }
                    int iR3 = constraintWidget2.R();
                    int iV3 = constraintWidget2.v();
                    if (iR3 != iR2) {
                        constraintWidget2.b1(iR3);
                        if (z6 && constraintWidget2.K() > iMax) {
                            iMax = Math.max(iMax, constraintWidget2.K() + constraintWidget2.m(ConstraintAnchor.Type.RIGHT).e());
                        }
                        z2 = true;
                    } else {
                        z2 = zA;
                    }
                    if (iV3 != iV2) {
                        constraintWidget2.C0(iV3);
                        if (z7 && constraintWidget2.p() > iMax2) {
                            iMax2 = Math.max(iMax2, constraintWidget2.p() + constraintWidget2.m(ConstraintAnchor.Type.BOTTOM).e());
                        }
                        z2 = true;
                    }
                    zM1 = z2 | ((androidx.constraintlayout.core.widgets.i) constraintWidget2).m1();
                }
                i14++;
                iB1 = iB1;
                iV = iV;
                iR = iR;
            }
            int i15 = iB1;
            int i16 = iR;
            int i17 = iV;
            int i18 = 0;
            int i19 = 2;
            while (i18 < i19) {
                int i20 = 0;
                while (i20 < size2) {
                    ConstraintWidget constraintWidget3 = this.f700a.get(i20);
                    if (((constraintWidget3 instanceof androidx.constraintlayout.core.widgets.f) && !(constraintWidget3 instanceof androidx.constraintlayout.core.widgets.i)) || (constraintWidget3 instanceof androidx.constraintlayout.core.widgets.e) || constraintWidget3.Q() == 8 || ((z5 && constraintWidget3.f681d.f695e.j && constraintWidget3.f682e.f695e.j) || (constraintWidget3 instanceof androidx.constraintlayout.core.widgets.i))) {
                        z = z5;
                        i12 = size2;
                        interfaceC0016b = interfaceC0016bA1;
                    } else {
                        int iR4 = constraintWidget3.R();
                        int iV4 = constraintWidget3.v();
                        int iN = constraintWidget3.n();
                        int i21 = a.l;
                        z = z5;
                        if (i18 == 1) {
                            i21 = a.m;
                        }
                        boolean zA2 = a(interfaceC0016bA1, constraintWidget3, i21) | zM1;
                        androidx.constraintlayout.core.e eVar3 = dVar.A0;
                        i12 = size2;
                        interfaceC0016b = interfaceC0016bA1;
                        if (eVar3 != null) {
                            eVar3.b++;
                        }
                        int iR5 = constraintWidget3.R();
                        int iV5 = constraintWidget3.v();
                        if (iR5 != iR4) {
                            constraintWidget3.b1(iR5);
                            if (z6 && constraintWidget3.K() > iMax) {
                                iMax = Math.max(iMax, constraintWidget3.K() + constraintWidget3.m(ConstraintAnchor.Type.RIGHT).e());
                            }
                            zA2 = true;
                        }
                        if (iV5 != iV4) {
                            constraintWidget3.C0(iV5);
                            if (z7 && constraintWidget3.p() > iMax2) {
                                iMax2 = Math.max(iMax2, constraintWidget3.p() + constraintWidget3.m(ConstraintAnchor.Type.BOTTOM).e());
                            }
                            zA2 = true;
                        }
                        zM1 = (!constraintWidget3.U() || iN == constraintWidget3.n()) ? zA2 : true;
                    }
                    i20++;
                    interfaceC0016bA1 = interfaceC0016b;
                    z5 = z;
                    size2 = i12;
                }
                boolean z8 = z5;
                int i22 = size2;
                InterfaceC0016b interfaceC0016b2 = interfaceC0016bA1;
                if (!zM1) {
                    break;
                }
                i18++;
                c(dVar, "intermediate pass", i18, i16, i17);
                interfaceC0016bA1 = interfaceC0016b2;
                z5 = z8;
                size2 = i22;
                i19 = 2;
                zM1 = false;
            }
            i11 = i15;
        } else {
            i11 = iB1;
        }
        dVar.N1(i11);
        return 0L;
    }

    public void e(androidx.constraintlayout.core.widgets.d dVar) {
        this.f700a.clear();
        int size = dVar.u0.size();
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = dVar.u0.get(i);
            ConstraintWidget.DimensionBehaviour dimensionBehaviourY = constraintWidget.y();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
            if (dimensionBehaviourY == dimensionBehaviour || constraintWidget.O() == dimensionBehaviour) {
                this.f700a.add(constraintWidget);
            }
        }
        dVar.D1();
    }
}
