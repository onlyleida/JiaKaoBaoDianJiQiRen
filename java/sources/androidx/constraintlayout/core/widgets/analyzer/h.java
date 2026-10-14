package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class h {
    public static n a(ConstraintWidget constraintWidget, int i, ArrayList<n> arrayList, n nVar) {
        int iJ1;
        int i2 = i == 0 ? constraintWidget.r0 : constraintWidget.s0;
        if (i2 != -1 && (nVar == null || i2 != nVar.b)) {
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                n nVar2 = arrayList.get(i3);
                if (nVar2.c() == i2) {
                    if (nVar != null) {
                        nVar.g(i, nVar2);
                        arrayList.remove(nVar);
                    }
                    nVar = nVar2;
                    break;
                }
            }
        } else if (i2 != -1) {
            return nVar;
        }
        if (nVar == null) {
            if ((constraintWidget instanceof androidx.constraintlayout.core.widgets.g) && (iJ1 = ((androidx.constraintlayout.core.widgets.g) constraintWidget).j1(i)) != -1) {
                for (int i4 = 0; i4 < arrayList.size(); i4++) {
                    n nVar3 = arrayList.get(i4);
                    if (nVar3.c() == iJ1) {
                        nVar = nVar3;
                        break;
                    }
                }
            }
            if (nVar == null) {
                nVar = new n(i);
            }
            arrayList.add(nVar);
        }
        if (nVar.a(constraintWidget)) {
            if (constraintWidget instanceof androidx.constraintlayout.core.widgets.e) {
                androidx.constraintlayout.core.widgets.e eVar = (androidx.constraintlayout.core.widgets.e) constraintWidget;
                eVar.i1().b(eVar.j1() == 0 ? 1 : 0, arrayList, nVar);
            }
            if (i == 0) {
                constraintWidget.r0 = nVar.c();
                constraintWidget.K.b(i, arrayList, nVar);
                constraintWidget.M.b(i, arrayList, nVar);
            } else {
                constraintWidget.s0 = nVar.c();
                constraintWidget.L.b(i, arrayList, nVar);
                constraintWidget.O.b(i, arrayList, nVar);
                constraintWidget.N.b(i, arrayList, nVar);
            }
            constraintWidget.R.b(i, arrayList, nVar);
        }
        return nVar;
    }

    private static n b(ArrayList<n> arrayList, int i) {
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            n nVar = arrayList.get(i2);
            if (i == nVar.b) {
                return nVar;
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:176:0x034f  */
    public static boolean c(androidx.constraintlayout.core.widgets.d dVar, b.InterfaceC0016b interfaceC0016b) {
        n nVar;
        n nVar2;
        ArrayList<ConstraintWidget> arrayListI1 = dVar.i1();
        int size = arrayListI1.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            ConstraintWidget constraintWidget = arrayListI1.get(i2);
            if (!d(dVar.y(), dVar.O(), constraintWidget.y(), constraintWidget.O())) {
                return false;
            }
        }
        androidx.constraintlayout.core.e eVar = dVar.A0;
        if (eVar != null) {
            eVar.A++;
        }
        int i3 = 0;
        ArrayList arrayList = null;
        ArrayList<androidx.constraintlayout.core.widgets.g> arrayList2 = null;
        ArrayList arrayList3 = null;
        ArrayList<androidx.constraintlayout.core.widgets.g> arrayList4 = null;
        ArrayList arrayList5 = null;
        ArrayList arrayList6 = null;
        while (i3 < size) {
            ConstraintWidget constraintWidget2 = arrayListI1.get(i3);
            if (!d(dVar.y(), dVar.O(), constraintWidget2.y(), constraintWidget2.O())) {
                androidx.constraintlayout.core.widgets.d.J1(i, constraintWidget2, interfaceC0016b, dVar.Q0, b.a.k);
            }
            boolean z = constraintWidget2 instanceof androidx.constraintlayout.core.widgets.e;
            if (z) {
                androidx.constraintlayout.core.widgets.e eVar2 = (androidx.constraintlayout.core.widgets.e) constraintWidget2;
                if (eVar2.j1() == 0) {
                    if (arrayList3 == null) {
                        arrayList3 = new ArrayList();
                    }
                    arrayList3.add(eVar2);
                }
                if (eVar2.j1() == 1) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(eVar2);
                }
            }
            if (constraintWidget2 instanceof androidx.constraintlayout.core.widgets.g) {
                if (constraintWidget2 instanceof androidx.constraintlayout.core.widgets.a) {
                    androidx.constraintlayout.core.widgets.a aVar = (androidx.constraintlayout.core.widgets.a) constraintWidget2;
                    if (aVar.o1() == 0) {
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                        }
                        arrayList2.add(aVar);
                    }
                    if (aVar.o1() == 1) {
                        if (arrayList4 == null) {
                            arrayList4 = new ArrayList();
                        }
                        arrayList4.add(aVar);
                    }
                } else {
                    androidx.constraintlayout.core.widgets.g gVar = (androidx.constraintlayout.core.widgets.g) constraintWidget2;
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList();
                    }
                    arrayList2.add(gVar);
                    if (arrayList4 == null) {
                        arrayList4 = new ArrayList();
                    }
                    arrayList4.add(gVar);
                }
            }
            if (constraintWidget2.K.f676f == null && constraintWidget2.M.f676f == null && !z && !(constraintWidget2 instanceof androidx.constraintlayout.core.widgets.a)) {
                if (arrayList5 == null) {
                    arrayList5 = new ArrayList();
                }
                arrayList5.add(constraintWidget2);
            }
            if (constraintWidget2.L.f676f == null && constraintWidget2.N.f676f == null && constraintWidget2.O.f676f == null && !z && !(constraintWidget2 instanceof androidx.constraintlayout.core.widgets.a)) {
                if (arrayList6 == null) {
                    arrayList6 = new ArrayList();
                }
                arrayList6.add(constraintWidget2);
            }
            i3++;
            i = 0;
        }
        ArrayList<n> arrayList7 = new ArrayList<>();
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                a((androidx.constraintlayout.core.widgets.e) it.next(), 0, arrayList7, null);
            }
        }
        int i4 = 0;
        n nVar3 = null;
        if (arrayList2 != null) {
            for (androidx.constraintlayout.core.widgets.g gVar2 : arrayList2) {
                n nVarA = a(gVar2, i4, arrayList7, nVar3);
                gVar2.i1(arrayList7, i4, nVarA);
                nVarA.b(arrayList7);
                i4 = 0;
                nVar3 = null;
            }
        }
        ConstraintAnchor constraintAnchorM = dVar.m(ConstraintAnchor.Type.LEFT);
        if (constraintAnchorM.c() != null) {
            Iterator<ConstraintAnchor> it2 = constraintAnchorM.c().iterator();
            while (it2.hasNext()) {
                a(it2.next().f674d, 0, arrayList7, null);
            }
        }
        ConstraintAnchor constraintAnchorM2 = dVar.m(ConstraintAnchor.Type.RIGHT);
        if (constraintAnchorM2.c() != null) {
            Iterator<ConstraintAnchor> it3 = constraintAnchorM2.c().iterator();
            while (it3.hasNext()) {
                a(it3.next().f674d, 0, arrayList7, null);
            }
        }
        ConstraintAnchor constraintAnchorM3 = dVar.m(ConstraintAnchor.Type.CENTER);
        if (constraintAnchorM3.c() != null) {
            Iterator<ConstraintAnchor> it4 = constraintAnchorM3.c().iterator();
            while (it4.hasNext()) {
                a(it4.next().f674d, 0, arrayList7, null);
            }
        }
        n nVar4 = null;
        if (arrayList5 != null) {
            Iterator it5 = arrayList5.iterator();
            while (it5.hasNext()) {
                a((ConstraintWidget) it5.next(), 0, arrayList7, null);
            }
        }
        if (arrayList3 != null) {
            Iterator it6 = arrayList3.iterator();
            while (it6.hasNext()) {
                a((androidx.constraintlayout.core.widgets.e) it6.next(), 1, arrayList7, null);
            }
        }
        int i5 = 1;
        if (arrayList4 != null) {
            for (androidx.constraintlayout.core.widgets.g gVar3 : arrayList4) {
                n nVarA2 = a(gVar3, i5, arrayList7, nVar4);
                gVar3.i1(arrayList7, i5, nVarA2);
                nVarA2.b(arrayList7);
                i5 = 1;
                nVar4 = null;
            }
        }
        ConstraintAnchor constraintAnchorM4 = dVar.m(ConstraintAnchor.Type.TOP);
        if (constraintAnchorM4.c() != null) {
            Iterator<ConstraintAnchor> it7 = constraintAnchorM4.c().iterator();
            while (it7.hasNext()) {
                a(it7.next().f674d, 1, arrayList7, null);
            }
        }
        ConstraintAnchor constraintAnchorM5 = dVar.m(ConstraintAnchor.Type.BASELINE);
        if (constraintAnchorM5.c() != null) {
            Iterator<ConstraintAnchor> it8 = constraintAnchorM5.c().iterator();
            while (it8.hasNext()) {
                a(it8.next().f674d, 1, arrayList7, null);
            }
        }
        ConstraintAnchor constraintAnchorM6 = dVar.m(ConstraintAnchor.Type.BOTTOM);
        if (constraintAnchorM6.c() != null) {
            Iterator<ConstraintAnchor> it9 = constraintAnchorM6.c().iterator();
            while (it9.hasNext()) {
                a(it9.next().f674d, 1, arrayList7, null);
            }
        }
        ConstraintAnchor constraintAnchorM7 = dVar.m(ConstraintAnchor.Type.CENTER);
        if (constraintAnchorM7.c() != null) {
            Iterator<ConstraintAnchor> it10 = constraintAnchorM7.c().iterator();
            while (it10.hasNext()) {
                a(it10.next().f674d, 1, arrayList7, null);
            }
        }
        if (arrayList6 != null) {
            Iterator it11 = arrayList6.iterator();
            while (it11.hasNext()) {
                a((ConstraintWidget) it11.next(), 1, arrayList7, null);
            }
        }
        for (int i6 = 0; i6 < size; i6++) {
            ConstraintWidget constraintWidget3 = arrayListI1.get(i6);
            if (constraintWidget3.n0()) {
                n nVarB = b(arrayList7, constraintWidget3.r0);
                n nVarB2 = b(arrayList7, constraintWidget3.s0);
                if (nVarB != null && nVarB2 != null) {
                    nVarB.g(0, nVarB2);
                    nVarB2.i(2);
                    arrayList7.remove(nVarB);
                }
            }
        }
        if (arrayList7.size() <= 1) {
            return false;
        }
        if (dVar.y() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
            nVar = null;
            int i7 = 0;
            for (n nVar5 : arrayList7) {
                if (nVar5.d() != 1) {
                    nVar5.h(false);
                    int iF = nVar5.f(dVar.C1(), 0);
                    if (iF > i7) {
                        nVar = nVar5;
                        i7 = iF;
                    }
                }
            }
            if (nVar != null) {
                dVar.G0(ConstraintWidget.DimensionBehaviour.FIXED);
                dVar.b1(i7);
                nVar.h(true);
            } else {
                nVar = null;
            }
        } else {
            nVar = null;
        }
        if (dVar.O() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
            n nVar6 = null;
            int i8 = 0;
            for (n nVar7 : arrayList7) {
                if (nVar7.d() != 0) {
                    nVar7.h(false);
                    int iF2 = nVar7.f(dVar.C1(), 1);
                    if (iF2 > i8) {
                        nVar6 = nVar7;
                        i8 = iF2;
                    }
                }
            }
            if (nVar6 != null) {
                dVar.X0(ConstraintWidget.DimensionBehaviour.FIXED);
                dVar.C0(i8);
                nVar6.h(true);
                nVar2 = nVar6;
            }
            return nVar == null || nVar2 != null;
        }
        nVar2 = null;
        if (nVar == null) {
        }
    }

    public static boolean d(ConstraintWidget.DimensionBehaviour dimensionBehaviour, ConstraintWidget.DimensionBehaviour dimensionBehaviour2, ConstraintWidget.DimensionBehaviour dimensionBehaviour3, ConstraintWidget.DimensionBehaviour dimensionBehaviour4) {
        ConstraintWidget.DimensionBehaviour dimensionBehaviour5;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour6;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour7 = ConstraintWidget.DimensionBehaviour.FIXED;
        return (dimensionBehaviour3 == dimensionBehaviour7 || dimensionBehaviour3 == (dimensionBehaviour6 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || (dimensionBehaviour3 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT && dimensionBehaviour != dimensionBehaviour6)) || (dimensionBehaviour4 == dimensionBehaviour7 || dimensionBehaviour4 == (dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || (dimensionBehaviour4 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT && dimensionBehaviour2 != dimensionBehaviour5));
    }
}
