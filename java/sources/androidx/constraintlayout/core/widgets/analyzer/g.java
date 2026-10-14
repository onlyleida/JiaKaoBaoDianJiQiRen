package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static b.a f713a = new b.a();
    private static int b = 0;
    private static int c = 0;

    private static boolean a(int i, ConstraintWidget constraintWidget) {
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2;
        ConstraintWidget.DimensionBehaviour dimensionBehaviourY = constraintWidget.y();
        ConstraintWidget.DimensionBehaviour dimensionBehaviourO = constraintWidget.O();
        androidx.constraintlayout.core.widgets.d dVar = constraintWidget.I() != null ? (androidx.constraintlayout.core.widgets.d) constraintWidget.I() : null;
        if (dVar != null) {
            dVar.y();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        if (dVar != null) {
            dVar.O();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.FIXED;
        boolean z = dimensionBehaviourY == dimensionBehaviour5 || constraintWidget.i0() || dimensionBehaviourY == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || (dimensionBehaviourY == (dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) && constraintWidget.s == 0 && constraintWidget.Z == BitmapDescriptorFactory.HUE_RED && constraintWidget.V(0)) || (dimensionBehaviourY == dimensionBehaviour2 && constraintWidget.s == 1 && constraintWidget.Y(0, constraintWidget.R()));
        boolean z2 = dimensionBehaviourO == dimensionBehaviour5 || constraintWidget.j0() || dimensionBehaviourO == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || (dimensionBehaviourO == (dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) && constraintWidget.t == 0 && constraintWidget.Z == BitmapDescriptorFactory.HUE_RED && constraintWidget.V(1)) || (dimensionBehaviourY == dimensionBehaviour && constraintWidget.t == 1 && constraintWidget.Y(1, constraintWidget.v()));
        if (constraintWidget.Z <= BitmapDescriptorFactory.HUE_RED || !(z || z2)) {
            return z && z2;
        }
        return true;
    }

    private static void b(int i, ConstraintWidget constraintWidget, b.InterfaceC0016b interfaceC0016b, boolean z) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        ConstraintAnchor constraintAnchor3;
        ConstraintAnchor constraintAnchor4;
        ConstraintAnchor constraintAnchor5;
        if (constraintWidget.b0()) {
            return;
        }
        b++;
        if (!(constraintWidget instanceof androidx.constraintlayout.core.widgets.d) && constraintWidget.h0()) {
            int i2 = i + 1;
            if (a(i2, constraintWidget)) {
                androidx.constraintlayout.core.widgets.d.J1(i2, constraintWidget, interfaceC0016b, new b.a(), b.a.k);
            }
        }
        ConstraintAnchor constraintAnchorM = constraintWidget.m(ConstraintAnchor.Type.LEFT);
        ConstraintAnchor constraintAnchorM2 = constraintWidget.m(ConstraintAnchor.Type.RIGHT);
        int iD = constraintAnchorM.d();
        int iD2 = constraintAnchorM2.d();
        if (constraintAnchorM.c() != null && constraintAnchorM.m()) {
            Iterator<ConstraintAnchor> it = constraintAnchorM.c().iterator();
            while (it.hasNext()) {
                ConstraintAnchor next = it.next();
                ConstraintWidget constraintWidget2 = next.f674d;
                int i3 = i + 1;
                boolean zA = a(i3, constraintWidget2);
                if (constraintWidget2.h0() && zA) {
                    androidx.constraintlayout.core.widgets.d.J1(i3, constraintWidget2, interfaceC0016b, new b.a(), b.a.k);
                }
                ConstraintWidget.DimensionBehaviour dimensionBehaviourY = constraintWidget2.y();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (dimensionBehaviourY != dimensionBehaviour || zA) {
                    if (!constraintWidget2.h0()) {
                        ConstraintAnchor constraintAnchor6 = constraintWidget2.K;
                        if (next == constraintAnchor6 && constraintWidget2.M.f676f == null) {
                            int iE = constraintAnchor6.e() + iD;
                            constraintWidget2.w0(iE, constraintWidget2.R() + iE);
                            b(i3, constraintWidget2, interfaceC0016b, z);
                        } else {
                            ConstraintAnchor constraintAnchor7 = constraintWidget2.M;
                            if (next == constraintAnchor7 && constraintAnchor6.f676f == null) {
                                int iE2 = iD - constraintAnchor7.e();
                                constraintWidget2.w0(iE2 - constraintWidget2.R(), iE2);
                                b(i3, constraintWidget2, interfaceC0016b, z);
                            } else if (next == constraintAnchor6 && (constraintAnchor3 = constraintAnchor7.f676f) != null && constraintAnchor3.m() && !constraintWidget2.d0()) {
                                d(i3, interfaceC0016b, constraintWidget2, z);
                            }
                        }
                    }
                } else if (constraintWidget2.y() == dimensionBehaviour && constraintWidget2.w >= 0 && constraintWidget2.v >= 0 && (constraintWidget2.Q() == 8 || (constraintWidget2.s == 0 && constraintWidget2.t() == BitmapDescriptorFactory.HUE_RED))) {
                    if (!constraintWidget2.d0() && !constraintWidget2.g0()) {
                        if (((next == constraintWidget2.K && (constraintAnchor5 = constraintWidget2.M.f676f) != null && constraintAnchor5.m()) || (next == constraintWidget2.M && (constraintAnchor4 = constraintWidget2.K.f676f) != null && constraintAnchor4.m())) && !constraintWidget2.d0()) {
                            e(i3, constraintWidget, interfaceC0016b, constraintWidget2, z);
                        }
                    }
                }
            }
        }
        if (constraintWidget instanceof androidx.constraintlayout.core.widgets.e) {
            return;
        }
        if (constraintAnchorM2.c() != null && constraintAnchorM2.m()) {
            Iterator<ConstraintAnchor> it2 = constraintAnchorM2.c().iterator();
            while (it2.hasNext()) {
                ConstraintAnchor next2 = it2.next();
                ConstraintWidget constraintWidget3 = next2.f674d;
                int i4 = i + 1;
                boolean zA2 = a(i4, constraintWidget3);
                if (constraintWidget3.h0() && zA2) {
                    androidx.constraintlayout.core.widgets.d.J1(i4, constraintWidget3, interfaceC0016b, new b.a(), b.a.k);
                }
                boolean z2 = (next2 == constraintWidget3.K && (constraintAnchor2 = constraintWidget3.M.f676f) != null && constraintAnchor2.m()) || (next2 == constraintWidget3.M && (constraintAnchor = constraintWidget3.K.f676f) != null && constraintAnchor.m());
                ConstraintWidget.DimensionBehaviour dimensionBehaviourY2 = constraintWidget3.y();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (dimensionBehaviourY2 != dimensionBehaviour2 || zA2) {
                    if (!constraintWidget3.h0()) {
                        ConstraintAnchor constraintAnchor8 = constraintWidget3.K;
                        if (next2 == constraintAnchor8 && constraintWidget3.M.f676f == null) {
                            int iE3 = constraintAnchor8.e() + iD2;
                            constraintWidget3.w0(iE3, constraintWidget3.R() + iE3);
                            b(i4, constraintWidget3, interfaceC0016b, z);
                        } else {
                            ConstraintAnchor constraintAnchor9 = constraintWidget3.M;
                            if (next2 == constraintAnchor9 && constraintAnchor8.f676f == null) {
                                int iE4 = iD2 - constraintAnchor9.e();
                                constraintWidget3.w0(iE4 - constraintWidget3.R(), iE4);
                                b(i4, constraintWidget3, interfaceC0016b, z);
                            } else if (z2 && !constraintWidget3.d0()) {
                                d(i4, interfaceC0016b, constraintWidget3, z);
                            }
                        }
                    }
                } else if (constraintWidget3.y() == dimensionBehaviour2 && constraintWidget3.w >= 0 && constraintWidget3.v >= 0 && (constraintWidget3.Q() == 8 || (constraintWidget3.s == 0 && constraintWidget3.t() == BitmapDescriptorFactory.HUE_RED))) {
                    if (!constraintWidget3.d0() && !constraintWidget3.g0() && z2 && !constraintWidget3.d0()) {
                        e(i4, constraintWidget, interfaceC0016b, constraintWidget3, z);
                    }
                }
            }
        }
        constraintWidget.l0();
    }

    private static void c(int i, androidx.constraintlayout.core.widgets.a aVar, b.InterfaceC0016b interfaceC0016b, int i2, boolean z) {
        if (aVar.k1()) {
            if (i2 == 0) {
                b(i + 1, aVar, interfaceC0016b, z);
            } else {
                i(i + 1, aVar, interfaceC0016b);
            }
        }
    }

    private static void d(int i, b.InterfaceC0016b interfaceC0016b, ConstraintWidget constraintWidget, boolean z) {
        float fW = constraintWidget.w();
        int iD = constraintWidget.K.f676f.d();
        int iD2 = constraintWidget.M.f676f.d();
        int iE = constraintWidget.K.e() + iD;
        int iE2 = iD2 - constraintWidget.M.e();
        if (iD == iD2) {
            fW = 0.5f;
        } else {
            iD = iE;
            iD2 = iE2;
        }
        int iR = constraintWidget.R();
        int i2 = (iD2 - iD) - iR;
        if (iD > iD2) {
            i2 = (iD - iD2) - iR;
        }
        int i3 = ((int) (i2 > 0 ? (fW * i2) + 0.5f : fW * i2)) + iD;
        int i4 = i3 + iR;
        if (iD > iD2) {
            i4 = i3 - iR;
        }
        constraintWidget.w0(i3, i4);
        b(i + 1, constraintWidget, interfaceC0016b, z);
    }

    private static void e(int i, ConstraintWidget constraintWidget, b.InterfaceC0016b interfaceC0016b, ConstraintWidget constraintWidget2, boolean z) {
        float fW = constraintWidget2.w();
        int iD = constraintWidget2.K.f676f.d() + constraintWidget2.K.e();
        int iD2 = constraintWidget2.M.f676f.d() - constraintWidget2.M.e();
        if (iD2 >= iD) {
            int iR = constraintWidget2.R();
            if (constraintWidget2.Q() != 8) {
                int i2 = constraintWidget2.s;
                if (i2 == 2) {
                    iR = (int) (constraintWidget2.w() * 0.5f * (constraintWidget instanceof androidx.constraintlayout.core.widgets.d ? constraintWidget.R() : constraintWidget.I().R()));
                } else if (i2 == 0) {
                    iR = iD2 - iD;
                }
                iR = Math.max(constraintWidget2.v, iR);
                int i3 = constraintWidget2.w;
                if (i3 > 0) {
                    iR = Math.min(i3, iR);
                }
            }
            int i4 = iD + ((int) ((fW * ((iD2 - iD) - iR)) + 0.5f));
            constraintWidget2.w0(i4, iR + i4);
            b(i + 1, constraintWidget2, interfaceC0016b, z);
        }
    }

    private static void f(int i, b.InterfaceC0016b interfaceC0016b, ConstraintWidget constraintWidget) {
        float fM = constraintWidget.M();
        int iD = constraintWidget.L.f676f.d();
        int iD2 = constraintWidget.N.f676f.d();
        int iE = constraintWidget.L.e() + iD;
        int iE2 = iD2 - constraintWidget.N.e();
        if (iD == iD2) {
            fM = 0.5f;
        } else {
            iD = iE;
            iD2 = iE2;
        }
        int iV = constraintWidget.v();
        int i2 = (iD2 - iD) - iV;
        if (iD > iD2) {
            i2 = (iD - iD2) - iV;
        }
        int i3 = (int) (i2 > 0 ? (fM * i2) + 0.5f : fM * i2);
        int i4 = iD + i3;
        int i5 = i4 + iV;
        if (iD > iD2) {
            i4 = iD - i3;
            i5 = i4 - iV;
        }
        constraintWidget.z0(i4, i5);
        i(i + 1, constraintWidget, interfaceC0016b);
    }

    private static void g(int i, ConstraintWidget constraintWidget, b.InterfaceC0016b interfaceC0016b, ConstraintWidget constraintWidget2) {
        float fM = constraintWidget2.M();
        int iD = constraintWidget2.L.f676f.d() + constraintWidget2.L.e();
        int iD2 = constraintWidget2.N.f676f.d() - constraintWidget2.N.e();
        if (iD2 >= iD) {
            int iV = constraintWidget2.v();
            if (constraintWidget2.Q() != 8) {
                int i2 = constraintWidget2.t;
                if (i2 == 2) {
                    iV = (int) (fM * 0.5f * (constraintWidget instanceof androidx.constraintlayout.core.widgets.d ? constraintWidget.v() : constraintWidget.I().v()));
                } else if (i2 == 0) {
                    iV = iD2 - iD;
                }
                iV = Math.max(constraintWidget2.y, iV);
                int i3 = constraintWidget2.z;
                if (i3 > 0) {
                    iV = Math.min(i3, iV);
                }
            }
            int i4 = iD + ((int) ((fM * ((iD2 - iD) - iV)) + 0.5f));
            constraintWidget2.z0(i4, iV + i4);
            i(i + 1, constraintWidget2, interfaceC0016b);
        }
    }

    public static void h(androidx.constraintlayout.core.widgets.d dVar, b.InterfaceC0016b interfaceC0016b) {
        ConstraintWidget.DimensionBehaviour dimensionBehaviourY = dVar.y();
        ConstraintWidget.DimensionBehaviour dimensionBehaviourO = dVar.O();
        b = 0;
        c = 0;
        dVar.p0();
        ArrayList<ConstraintWidget> arrayListI1 = dVar.i1();
        int size = arrayListI1.size();
        for (int i = 0; i < size; i++) {
            arrayListI1.get(i).p0();
        }
        boolean zG1 = dVar.G1();
        if (dimensionBehaviourY == ConstraintWidget.DimensionBehaviour.FIXED) {
            dVar.w0(0, dVar.R());
        } else {
            dVar.x0(0);
        }
        boolean z = false;
        boolean z2 = false;
        for (int i2 = 0; i2 < size; i2++) {
            ConstraintWidget constraintWidget = arrayListI1.get(i2);
            if (constraintWidget instanceof androidx.constraintlayout.core.widgets.e) {
                androidx.constraintlayout.core.widgets.e eVar = (androidx.constraintlayout.core.widgets.e) constraintWidget;
                if (eVar.j1() == 1) {
                    if (eVar.k1() != -1) {
                        eVar.n1(eVar.k1());
                    } else if (eVar.l1() != -1 && dVar.i0()) {
                        eVar.n1(dVar.R() - eVar.l1());
                    } else if (dVar.i0()) {
                        eVar.n1((int) ((eVar.m1() * dVar.R()) + 0.5f));
                    }
                    z = true;
                }
            } else if ((constraintWidget instanceof androidx.constraintlayout.core.widgets.a) && ((androidx.constraintlayout.core.widgets.a) constraintWidget).o1() == 0) {
                z2 = true;
            }
        }
        if (z) {
            for (int i3 = 0; i3 < size; i3++) {
                ConstraintWidget constraintWidget2 = arrayListI1.get(i3);
                if (constraintWidget2 instanceof androidx.constraintlayout.core.widgets.e) {
                    androidx.constraintlayout.core.widgets.e eVar2 = (androidx.constraintlayout.core.widgets.e) constraintWidget2;
                    if (eVar2.j1() == 1) {
                        b(0, eVar2, interfaceC0016b, zG1);
                    }
                }
            }
        }
        b(0, dVar, interfaceC0016b, zG1);
        if (z2) {
            for (int i4 = 0; i4 < size; i4++) {
                ConstraintWidget constraintWidget3 = arrayListI1.get(i4);
                if (constraintWidget3 instanceof androidx.constraintlayout.core.widgets.a) {
                    androidx.constraintlayout.core.widgets.a aVar = (androidx.constraintlayout.core.widgets.a) constraintWidget3;
                    if (aVar.o1() == 0) {
                        c(0, aVar, interfaceC0016b, 0, zG1);
                    }
                }
            }
        }
        if (dimensionBehaviourO == ConstraintWidget.DimensionBehaviour.FIXED) {
            dVar.z0(0, dVar.v());
        } else {
            dVar.y0(0);
        }
        boolean z3 = false;
        boolean z4 = false;
        for (int i5 = 0; i5 < size; i5++) {
            ConstraintWidget constraintWidget4 = arrayListI1.get(i5);
            if (constraintWidget4 instanceof androidx.constraintlayout.core.widgets.e) {
                androidx.constraintlayout.core.widgets.e eVar3 = (androidx.constraintlayout.core.widgets.e) constraintWidget4;
                if (eVar3.j1() == 0) {
                    if (eVar3.k1() != -1) {
                        eVar3.n1(eVar3.k1());
                    } else if (eVar3.l1() != -1 && dVar.j0()) {
                        eVar3.n1(dVar.v() - eVar3.l1());
                    } else if (dVar.j0()) {
                        eVar3.n1((int) ((eVar3.m1() * dVar.v()) + 0.5f));
                    }
                    z3 = true;
                }
            } else if ((constraintWidget4 instanceof androidx.constraintlayout.core.widgets.a) && ((androidx.constraintlayout.core.widgets.a) constraintWidget4).o1() == 1) {
                z4 = true;
            }
        }
        if (z3) {
            for (int i6 = 0; i6 < size; i6++) {
                ConstraintWidget constraintWidget5 = arrayListI1.get(i6);
                if (constraintWidget5 instanceof androidx.constraintlayout.core.widgets.e) {
                    androidx.constraintlayout.core.widgets.e eVar4 = (androidx.constraintlayout.core.widgets.e) constraintWidget5;
                    if (eVar4.j1() == 0) {
                        i(1, eVar4, interfaceC0016b);
                    }
                }
            }
        }
        i(0, dVar, interfaceC0016b);
        if (z4) {
            for (int i7 = 0; i7 < size; i7++) {
                ConstraintWidget constraintWidget6 = arrayListI1.get(i7);
                if (constraintWidget6 instanceof androidx.constraintlayout.core.widgets.a) {
                    androidx.constraintlayout.core.widgets.a aVar2 = (androidx.constraintlayout.core.widgets.a) constraintWidget6;
                    if (aVar2.o1() == 1) {
                        c(0, aVar2, interfaceC0016b, 1, zG1);
                    }
                }
            }
        }
        for (int i8 = 0; i8 < size; i8++) {
            ConstraintWidget constraintWidget7 = arrayListI1.get(i8);
            if (constraintWidget7.h0() && a(0, constraintWidget7)) {
                androidx.constraintlayout.core.widgets.d.J1(0, constraintWidget7, interfaceC0016b, f713a, b.a.k);
                if (!(constraintWidget7 instanceof androidx.constraintlayout.core.widgets.e)) {
                    b(0, constraintWidget7, interfaceC0016b, zG1);
                    i(0, constraintWidget7, interfaceC0016b);
                } else if (((androidx.constraintlayout.core.widgets.e) constraintWidget7).j1() == 0) {
                    i(0, constraintWidget7, interfaceC0016b);
                } else {
                    b(0, constraintWidget7, interfaceC0016b, zG1);
                }
            }
        }
    }

    private static void i(int i, ConstraintWidget constraintWidget, b.InterfaceC0016b interfaceC0016b) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        ConstraintAnchor constraintAnchor3;
        ConstraintAnchor constraintAnchor4;
        ConstraintAnchor constraintAnchor5;
        if (constraintWidget.k0()) {
            return;
        }
        c++;
        if (!(constraintWidget instanceof androidx.constraintlayout.core.widgets.d) && constraintWidget.h0()) {
            int i2 = i + 1;
            if (a(i2, constraintWidget)) {
                androidx.constraintlayout.core.widgets.d.J1(i2, constraintWidget, interfaceC0016b, new b.a(), b.a.k);
            }
        }
        ConstraintAnchor constraintAnchorM = constraintWidget.m(ConstraintAnchor.Type.TOP);
        ConstraintAnchor constraintAnchorM2 = constraintWidget.m(ConstraintAnchor.Type.BOTTOM);
        int iD = constraintAnchorM.d();
        int iD2 = constraintAnchorM2.d();
        if (constraintAnchorM.c() != null && constraintAnchorM.m()) {
            Iterator<ConstraintAnchor> it = constraintAnchorM.c().iterator();
            while (it.hasNext()) {
                ConstraintAnchor next = it.next();
                ConstraintWidget constraintWidget2 = next.f674d;
                int i3 = i + 1;
                boolean zA = a(i3, constraintWidget2);
                if (constraintWidget2.h0() && zA) {
                    androidx.constraintlayout.core.widgets.d.J1(i3, constraintWidget2, interfaceC0016b, new b.a(), b.a.k);
                }
                ConstraintWidget.DimensionBehaviour dimensionBehaviourO = constraintWidget2.O();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (dimensionBehaviourO != dimensionBehaviour || zA) {
                    if (!constraintWidget2.h0()) {
                        ConstraintAnchor constraintAnchor6 = constraintWidget2.L;
                        if (next == constraintAnchor6 && constraintWidget2.N.f676f == null) {
                            int iE = constraintAnchor6.e() + iD;
                            constraintWidget2.z0(iE, constraintWidget2.v() + iE);
                            i(i3, constraintWidget2, interfaceC0016b);
                        } else {
                            ConstraintAnchor constraintAnchor7 = constraintWidget2.N;
                            if (next == constraintAnchor7 && constraintAnchor7.f676f == null) {
                                int iE2 = iD - constraintAnchor7.e();
                                constraintWidget2.z0(iE2 - constraintWidget2.v(), iE2);
                                i(i3, constraintWidget2, interfaceC0016b);
                            } else if (next == constraintAnchor6 && (constraintAnchor3 = constraintAnchor7.f676f) != null && constraintAnchor3.m()) {
                                f(i3, interfaceC0016b, constraintWidget2);
                            }
                        }
                    }
                } else if (constraintWidget2.O() == dimensionBehaviour && constraintWidget2.z >= 0 && constraintWidget2.y >= 0 && (constraintWidget2.Q() == 8 || (constraintWidget2.t == 0 && constraintWidget2.t() == BitmapDescriptorFactory.HUE_RED))) {
                    if (!constraintWidget2.f0() && !constraintWidget2.g0()) {
                        if (((next == constraintWidget2.L && (constraintAnchor5 = constraintWidget2.N.f676f) != null && constraintAnchor5.m()) || (next == constraintWidget2.N && (constraintAnchor4 = constraintWidget2.L.f676f) != null && constraintAnchor4.m())) && !constraintWidget2.f0()) {
                            g(i3, constraintWidget, interfaceC0016b, constraintWidget2);
                        }
                    }
                }
            }
        }
        if (constraintWidget instanceof androidx.constraintlayout.core.widgets.e) {
            return;
        }
        if (constraintAnchorM2.c() != null && constraintAnchorM2.m()) {
            Iterator<ConstraintAnchor> it2 = constraintAnchorM2.c().iterator();
            while (it2.hasNext()) {
                ConstraintAnchor next2 = it2.next();
                ConstraintWidget constraintWidget3 = next2.f674d;
                int i4 = i + 1;
                boolean zA2 = a(i4, constraintWidget3);
                if (constraintWidget3.h0() && zA2) {
                    androidx.constraintlayout.core.widgets.d.J1(i4, constraintWidget3, interfaceC0016b, new b.a(), b.a.k);
                }
                boolean z = (next2 == constraintWidget3.L && (constraintAnchor2 = constraintWidget3.N.f676f) != null && constraintAnchor2.m()) || (next2 == constraintWidget3.N && (constraintAnchor = constraintWidget3.L.f676f) != null && constraintAnchor.m());
                ConstraintWidget.DimensionBehaviour dimensionBehaviourO2 = constraintWidget3.O();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (dimensionBehaviourO2 != dimensionBehaviour2 || zA2) {
                    if (!constraintWidget3.h0()) {
                        ConstraintAnchor constraintAnchor8 = constraintWidget3.L;
                        if (next2 == constraintAnchor8 && constraintWidget3.N.f676f == null) {
                            int iE3 = constraintAnchor8.e() + iD2;
                            constraintWidget3.z0(iE3, constraintWidget3.v() + iE3);
                            i(i4, constraintWidget3, interfaceC0016b);
                        } else {
                            ConstraintAnchor constraintAnchor9 = constraintWidget3.N;
                            if (next2 == constraintAnchor9 && constraintAnchor8.f676f == null) {
                                int iE4 = iD2 - constraintAnchor9.e();
                                constraintWidget3.z0(iE4 - constraintWidget3.v(), iE4);
                                i(i4, constraintWidget3, interfaceC0016b);
                            } else if (z && !constraintWidget3.f0()) {
                                f(i4, interfaceC0016b, constraintWidget3);
                            }
                        }
                    }
                } else if (constraintWidget3.O() == dimensionBehaviour2 && constraintWidget3.z >= 0 && constraintWidget3.y >= 0 && (constraintWidget3.Q() == 8 || (constraintWidget3.t == 0 && constraintWidget3.t() == BitmapDescriptorFactory.HUE_RED))) {
                    if (!constraintWidget3.f0() && !constraintWidget3.g0() && z && !constraintWidget3.f0()) {
                        g(i4, constraintWidget, interfaceC0016b, constraintWidget3);
                    }
                }
            }
        }
        ConstraintAnchor constraintAnchorM3 = constraintWidget.m(ConstraintAnchor.Type.BASELINE);
        if (constraintAnchorM3.c() != null && constraintAnchorM3.m()) {
            int iD3 = constraintAnchorM3.d();
            for (ConstraintAnchor constraintAnchor10 : constraintAnchorM3.c()) {
                ConstraintWidget constraintWidget4 = constraintAnchor10.f674d;
                int i5 = i + 1;
                boolean zA3 = a(i5, constraintWidget4);
                if (constraintWidget4.h0() && zA3) {
                    androidx.constraintlayout.core.widgets.d.J1(i5, constraintWidget4, interfaceC0016b, new b.a(), b.a.k);
                }
                if (constraintWidget4.O() != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || zA3) {
                    if (!constraintWidget4.h0() && constraintAnchor10 == constraintWidget4.O) {
                        constraintWidget4.v0(constraintAnchor10.e() + iD3);
                        i(i5, constraintWidget4, interfaceC0016b);
                    }
                }
            }
        }
        constraintWidget.m0();
    }
}
