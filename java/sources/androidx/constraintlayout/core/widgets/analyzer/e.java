package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private androidx.constraintlayout.core.widgets.d f707a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private androidx.constraintlayout.core.widgets.d f708d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private b.InterfaceC0016b f710f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private b.a f711g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    ArrayList<l> f712h;
    private boolean b = true;
    private boolean c = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ArrayList<WidgetRun> f709e = new ArrayList<>();

    public e(androidx.constraintlayout.core.widgets.d dVar) {
        new ArrayList();
        this.f710f = null;
        this.f711g = new b.a();
        this.f712h = new ArrayList<>();
        this.f707a = dVar;
        this.f708d = dVar;
    }

    private void a(DependencyNode dependencyNode, int i, int i2, DependencyNode dependencyNode2, ArrayList<l> arrayList, l lVar) {
        WidgetRun widgetRun = dependencyNode.f688d;
        if (widgetRun.c == null) {
            androidx.constraintlayout.core.widgets.d dVar = this.f707a;
            if (widgetRun == dVar.f681d || widgetRun == dVar.f682e) {
                return;
            }
            if (lVar == null) {
                lVar = new l(widgetRun, i2);
                arrayList.add(lVar);
            }
            widgetRun.c = lVar;
            lVar.a(widgetRun);
            for (d dVar2 : widgetRun.f698h.k) {
                if (dVar2 instanceof DependencyNode) {
                    a((DependencyNode) dVar2, i, 0, dependencyNode2, arrayList, lVar);
                }
            }
            for (d dVar3 : widgetRun.i.k) {
                if (dVar3 instanceof DependencyNode) {
                    a((DependencyNode) dVar3, i, 1, dependencyNode2, arrayList, lVar);
                }
            }
            if (i == 1 && (widgetRun instanceof m)) {
                for (d dVar4 : ((m) widgetRun).k.k) {
                    if (dVar4 instanceof DependencyNode) {
                        a((DependencyNode) dVar4, i, 2, dependencyNode2, arrayList, lVar);
                    }
                }
            }
            for (DependencyNode dependencyNode3 : widgetRun.f698h.l) {
                if (dependencyNode3 == dependencyNode2) {
                    lVar.f716a = true;
                }
                a(dependencyNode3, i, 0, dependencyNode2, arrayList, lVar);
            }
            for (DependencyNode dependencyNode4 : widgetRun.i.l) {
                if (dependencyNode4 == dependencyNode2) {
                    lVar.f716a = true;
                }
                a(dependencyNode4, i, 1, dependencyNode2, arrayList, lVar);
            }
            if (i == 1 && (widgetRun instanceof m)) {
                Iterator<DependencyNode> it = ((m) widgetRun).k.l.iterator();
                while (it.hasNext()) {
                    a(it.next(), i, 2, dependencyNode2, arrayList, lVar);
                }
            }
        }
    }

    private boolean b(androidx.constraintlayout.core.widgets.d dVar) {
        int iR;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        int iV;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour4;
        for (ConstraintWidget constraintWidget : dVar.u0) {
            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.V;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = dimensionBehaviourArr[0];
            ConstraintWidget.DimensionBehaviour dimensionBehaviour6 = dimensionBehaviourArr[1];
            if (constraintWidget.Q() == 8) {
                constraintWidget.f680a = true;
            } else {
                if (constraintWidget.x < 1.0f && dimensionBehaviour5 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    constraintWidget.s = 2;
                }
                if (constraintWidget.A < 1.0f && dimensionBehaviour6 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    constraintWidget.t = 2;
                }
                if (constraintWidget.t() > BitmapDescriptorFactory.HUE_RED) {
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour7 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                    if (dimensionBehaviour5 == dimensionBehaviour7 && (dimensionBehaviour6 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || dimensionBehaviour6 == ConstraintWidget.DimensionBehaviour.FIXED)) {
                        constraintWidget.s = 3;
                    } else if (dimensionBehaviour6 == dimensionBehaviour7 && (dimensionBehaviour5 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || dimensionBehaviour5 == ConstraintWidget.DimensionBehaviour.FIXED)) {
                        constraintWidget.t = 3;
                    } else if (dimensionBehaviour5 == dimensionBehaviour7 && dimensionBehaviour6 == dimensionBehaviour7) {
                        if (constraintWidget.s == 0) {
                            constraintWidget.s = 3;
                        }
                        if (constraintWidget.t == 0) {
                            constraintWidget.t = 3;
                        }
                    }
                }
                ConstraintWidget.DimensionBehaviour dimensionBehaviour8 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (dimensionBehaviour5 == dimensionBehaviour8 && constraintWidget.s == 1 && (constraintWidget.K.f676f == null || constraintWidget.M.f676f == null)) {
                    dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                }
                ConstraintWidget.DimensionBehaviour dimensionBehaviour9 = dimensionBehaviour5;
                if (dimensionBehaviour6 == dimensionBehaviour8 && constraintWidget.t == 1 && (constraintWidget.L.f676f == null || constraintWidget.N.f676f == null)) {
                    dimensionBehaviour6 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                }
                ConstraintWidget.DimensionBehaviour dimensionBehaviour10 = dimensionBehaviour6;
                k kVar = constraintWidget.f681d;
                kVar.f694d = dimensionBehaviour9;
                int i = constraintWidget.s;
                kVar.f693a = i;
                m mVar = constraintWidget.f682e;
                mVar.f694d = dimensionBehaviour10;
                int i2 = constraintWidget.t;
                mVar.f693a = i2;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour11 = ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
                if ((dimensionBehaviour9 == dimensionBehaviour11 || dimensionBehaviour9 == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviour9 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) && (dimensionBehaviour10 == dimensionBehaviour11 || dimensionBehaviour10 == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviour10 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT)) {
                    int iR2 = constraintWidget.R();
                    if (dimensionBehaviour9 == dimensionBehaviour11) {
                        iR = (dVar.R() - constraintWidget.K.f677g) - constraintWidget.M.f677g;
                        dimensionBehaviour = ConstraintWidget.DimensionBehaviour.FIXED;
                    } else {
                        iR = iR2;
                        dimensionBehaviour = dimensionBehaviour9;
                    }
                    int iV2 = constraintWidget.v();
                    if (dimensionBehaviour10 == dimensionBehaviour11) {
                        iV = (dVar.v() - constraintWidget.L.f677g) - constraintWidget.N.f677g;
                        dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.FIXED;
                    } else {
                        iV = iV2;
                        dimensionBehaviour2 = dimensionBehaviour10;
                    }
                    l(constraintWidget, dimensionBehaviour, iR, dimensionBehaviour2, iV);
                    constraintWidget.f681d.f695e.d(constraintWidget.R());
                    constraintWidget.f682e.f695e.d(constraintWidget.v());
                    constraintWidget.f680a = true;
                } else {
                    if (dimensionBehaviour9 == dimensionBehaviour8 && (dimensionBehaviour10 == (dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || dimensionBehaviour10 == ConstraintWidget.DimensionBehaviour.FIXED)) {
                        if (i == 3) {
                            if (dimensionBehaviour10 == dimensionBehaviour4) {
                                l(constraintWidget, dimensionBehaviour4, 0, dimensionBehaviour4, 0);
                            }
                            int iV3 = constraintWidget.v();
                            int i3 = (int) ((iV3 * constraintWidget.Z) + 0.5f);
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour12 = ConstraintWidget.DimensionBehaviour.FIXED;
                            l(constraintWidget, dimensionBehaviour12, i3, dimensionBehaviour12, iV3);
                            constraintWidget.f681d.f695e.d(constraintWidget.R());
                            constraintWidget.f682e.f695e.d(constraintWidget.v());
                            constraintWidget.f680a = true;
                        } else if (i == 1) {
                            l(constraintWidget, dimensionBehaviour4, 0, dimensionBehaviour10, 0);
                            constraintWidget.f681d.f695e.m = constraintWidget.R();
                        } else if (i == 2) {
                            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr2 = dVar.V;
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour13 = dimensionBehaviourArr2[0];
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour14 = ConstraintWidget.DimensionBehaviour.FIXED;
                            if (dimensionBehaviour13 == dimensionBehaviour14 || dimensionBehaviourArr2[0] == dimensionBehaviour11) {
                                l(constraintWidget, dimensionBehaviour14, (int) ((constraintWidget.x * dVar.R()) + 0.5f), dimensionBehaviour10, constraintWidget.v());
                                constraintWidget.f681d.f695e.d(constraintWidget.R());
                                constraintWidget.f682e.f695e.d(constraintWidget.v());
                                constraintWidget.f680a = true;
                            }
                        } else {
                            ConstraintAnchor[] constraintAnchorArr = constraintWidget.S;
                            if (constraintAnchorArr[0].f676f == null || constraintAnchorArr[1].f676f == null) {
                                l(constraintWidget, dimensionBehaviour4, 0, dimensionBehaviour10, 0);
                                constraintWidget.f681d.f695e.d(constraintWidget.R());
                                constraintWidget.f682e.f695e.d(constraintWidget.v());
                                constraintWidget.f680a = true;
                            }
                        }
                    }
                    if (dimensionBehaviour10 == dimensionBehaviour8 && (dimensionBehaviour9 == (dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || dimensionBehaviour9 == ConstraintWidget.DimensionBehaviour.FIXED)) {
                        if (i2 == 3) {
                            if (dimensionBehaviour9 == dimensionBehaviour3) {
                                l(constraintWidget, dimensionBehaviour3, 0, dimensionBehaviour3, 0);
                            }
                            int iR3 = constraintWidget.R();
                            float f2 = constraintWidget.Z;
                            if (constraintWidget.u() == -1) {
                                f2 = 1.0f / f2;
                            }
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour15 = ConstraintWidget.DimensionBehaviour.FIXED;
                            l(constraintWidget, dimensionBehaviour15, iR3, dimensionBehaviour15, (int) ((iR3 * f2) + 0.5f));
                            constraintWidget.f681d.f695e.d(constraintWidget.R());
                            constraintWidget.f682e.f695e.d(constraintWidget.v());
                            constraintWidget.f680a = true;
                        } else if (i2 == 1) {
                            l(constraintWidget, dimensionBehaviour9, 0, dimensionBehaviour3, 0);
                            constraintWidget.f682e.f695e.m = constraintWidget.v();
                        } else if (i2 == 2) {
                            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr3 = dVar.V;
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour16 = dimensionBehaviourArr3[1];
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour17 = ConstraintWidget.DimensionBehaviour.FIXED;
                            if (dimensionBehaviour16 == dimensionBehaviour17 || dimensionBehaviourArr3[1] == dimensionBehaviour11) {
                                l(constraintWidget, dimensionBehaviour9, constraintWidget.R(), dimensionBehaviour17, (int) ((constraintWidget.A * dVar.v()) + 0.5f));
                                constraintWidget.f681d.f695e.d(constraintWidget.R());
                                constraintWidget.f682e.f695e.d(constraintWidget.v());
                                constraintWidget.f680a = true;
                            }
                        } else {
                            ConstraintAnchor[] constraintAnchorArr2 = constraintWidget.S;
                            if (constraintAnchorArr2[2].f676f == null || constraintAnchorArr2[3].f676f == null) {
                                l(constraintWidget, dimensionBehaviour3, 0, dimensionBehaviour10, 0);
                                constraintWidget.f681d.f695e.d(constraintWidget.R());
                                constraintWidget.f682e.f695e.d(constraintWidget.v());
                                constraintWidget.f680a = true;
                            }
                        }
                    }
                    if (dimensionBehaviour9 == dimensionBehaviour8 && dimensionBehaviour10 == dimensionBehaviour8) {
                        if (i == 1 || i2 == 1) {
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour18 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                            l(constraintWidget, dimensionBehaviour18, 0, dimensionBehaviour18, 0);
                            constraintWidget.f681d.f695e.m = constraintWidget.R();
                            constraintWidget.f682e.f695e.m = constraintWidget.v();
                        } else if (i2 == 2 && i == 2) {
                            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr4 = dVar.V;
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour19 = dimensionBehaviourArr4[0];
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour20 = ConstraintWidget.DimensionBehaviour.FIXED;
                            if (dimensionBehaviour19 == dimensionBehaviour20 && dimensionBehaviourArr4[1] == dimensionBehaviour20) {
                                l(constraintWidget, dimensionBehaviour20, (int) ((constraintWidget.x * dVar.R()) + 0.5f), dimensionBehaviour20, (int) ((constraintWidget.A * dVar.v()) + 0.5f));
                                constraintWidget.f681d.f695e.d(constraintWidget.R());
                                constraintWidget.f682e.f695e.d(constraintWidget.v());
                                constraintWidget.f680a = true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    private int e(androidx.constraintlayout.core.widgets.d dVar, int i) {
        int size = this.f712h.size();
        long jMax = 0;
        for (int i2 = 0; i2 < size; i2++) {
            jMax = Math.max(jMax, this.f712h.get(i2).b(dVar, i));
        }
        return (int) jMax;
    }

    private void i(WidgetRun widgetRun, int i, ArrayList<l> arrayList) {
        for (d dVar : widgetRun.f698h.k) {
            if (dVar instanceof DependencyNode) {
                a((DependencyNode) dVar, i, 0, widgetRun.i, arrayList, null);
            } else if (dVar instanceof WidgetRun) {
                a(((WidgetRun) dVar).f698h, i, 0, widgetRun.i, arrayList, null);
            }
        }
        for (d dVar2 : widgetRun.i.k) {
            if (dVar2 instanceof DependencyNode) {
                a((DependencyNode) dVar2, i, 1, widgetRun.f698h, arrayList, null);
            } else if (dVar2 instanceof WidgetRun) {
                a(((WidgetRun) dVar2).i, i, 1, widgetRun.f698h, arrayList, null);
            }
        }
        if (i == 1) {
            for (d dVar3 : ((m) widgetRun).k.k) {
                if (dVar3 instanceof DependencyNode) {
                    a((DependencyNode) dVar3, i, 2, null, arrayList, null);
                }
            }
        }
    }

    private void l(ConstraintWidget constraintWidget, ConstraintWidget.DimensionBehaviour dimensionBehaviour, int i, ConstraintWidget.DimensionBehaviour dimensionBehaviour2, int i2) {
        b.a aVar = this.f711g;
        aVar.f701a = dimensionBehaviour;
        aVar.b = dimensionBehaviour2;
        aVar.c = i;
        aVar.f702d = i2;
        this.f710f.b(constraintWidget, aVar);
        constraintWidget.b1(this.f711g.f703e);
        constraintWidget.C0(this.f711g.f704f);
        constraintWidget.B0(this.f711g.f706h);
        constraintWidget.r0(this.f711g.f705g);
    }

    public void c() {
        d(this.f709e);
        this.f712h.clear();
        l.f715d = 0;
        i(this.f707a.f681d, 0, this.f712h);
        i(this.f707a.f682e, 1, this.f712h);
        this.b = false;
    }

    public void d(ArrayList<WidgetRun> arrayList) {
        arrayList.clear();
        this.f708d.f681d.f();
        this.f708d.f682e.f();
        arrayList.add(this.f708d.f681d);
        arrayList.add(this.f708d.f682e);
        HashSet hashSet = null;
        for (ConstraintWidget constraintWidget : this.f708d.u0) {
            if (constraintWidget instanceof androidx.constraintlayout.core.widgets.e) {
                arrayList.add(new i(constraintWidget));
            } else {
                if (constraintWidget.d0()) {
                    if (constraintWidget.b == null) {
                        constraintWidget.b = new c(constraintWidget, 0);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(constraintWidget.b);
                } else {
                    arrayList.add(constraintWidget.f681d);
                }
                if (constraintWidget.f0()) {
                    if (constraintWidget.c == null) {
                        constraintWidget.c = new c(constraintWidget, 1);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(constraintWidget.c);
                } else {
                    arrayList.add(constraintWidget.f682e);
                }
                if (constraintWidget instanceof androidx.constraintlayout.core.widgets.g) {
                    arrayList.add(new j(constraintWidget));
                }
            }
        }
        if (hashSet != null) {
            arrayList.addAll(hashSet);
        }
        Iterator<WidgetRun> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().f();
        }
        for (WidgetRun widgetRun : arrayList) {
            if (widgetRun.b != this.f708d) {
                widgetRun.d();
            }
        }
    }

    public boolean f(boolean z) {
        boolean z2;
        boolean z3 = true;
        boolean z4 = z & true;
        if (this.b || this.c) {
            for (ConstraintWidget constraintWidget : this.f707a.u0) {
                constraintWidget.l();
                constraintWidget.f680a = false;
                constraintWidget.f681d.r();
                constraintWidget.f682e.q();
            }
            this.f707a.l();
            androidx.constraintlayout.core.widgets.d dVar = this.f707a;
            dVar.f680a = false;
            dVar.f681d.r();
            this.f707a.f682e.q();
            this.c = false;
        }
        if (b(this.f708d)) {
            return false;
        }
        this.f707a.d1(0);
        this.f707a.e1(0);
        ConstraintWidget.DimensionBehaviour dimensionBehaviourS = this.f707a.s(0);
        ConstraintWidget.DimensionBehaviour dimensionBehaviourS2 = this.f707a.s(1);
        if (this.b) {
            c();
        }
        int iS = this.f707a.S();
        int iT = this.f707a.T();
        this.f707a.f681d.f698h.d(iS);
        this.f707a.f682e.f698h.d(iT);
        m();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (dimensionBehaviourS == dimensionBehaviour || dimensionBehaviourS2 == dimensionBehaviour) {
            if (z4) {
                Iterator<WidgetRun> it = this.f709e.iterator();
                while (it.hasNext()) {
                    if (!it.next().m()) {
                        z4 = false;
                        break;
                    }
                }
            }
            if (z4 && dimensionBehaviourS == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                this.f707a.G0(ConstraintWidget.DimensionBehaviour.FIXED);
                androidx.constraintlayout.core.widgets.d dVar2 = this.f707a;
                dVar2.b1(e(dVar2, 0));
                androidx.constraintlayout.core.widgets.d dVar3 = this.f707a;
                dVar3.f681d.f695e.d(dVar3.R());
            }
            if (z4 && dimensionBehaviourS2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                this.f707a.X0(ConstraintWidget.DimensionBehaviour.FIXED);
                androidx.constraintlayout.core.widgets.d dVar4 = this.f707a;
                dVar4.C0(e(dVar4, 1));
                androidx.constraintlayout.core.widgets.d dVar5 = this.f707a;
                dVar5.f682e.f695e.d(dVar5.v());
            }
        }
        androidx.constraintlayout.core.widgets.d dVar6 = this.f707a;
        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = dVar6.V;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[0];
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.FIXED;
        if (dimensionBehaviour2 == dimensionBehaviour3 || dimensionBehaviourArr[0] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            int iR = dVar6.R() + iS;
            this.f707a.f681d.i.d(iR);
            this.f707a.f681d.f695e.d(iR - iS);
            m();
            androidx.constraintlayout.core.widgets.d dVar7 = this.f707a;
            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr2 = dVar7.V;
            if (dimensionBehaviourArr2[1] == dimensionBehaviour3 || dimensionBehaviourArr2[1] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                int iV = dVar7.v() + iT;
                this.f707a.f682e.i.d(iV);
                this.f707a.f682e.f695e.d(iV - iT);
            }
            m();
            z2 = true;
        } else {
            z2 = false;
        }
        for (WidgetRun widgetRun : this.f709e) {
            if (widgetRun.b != this.f707a || widgetRun.f697g) {
                widgetRun.e();
            }
        }
        for (WidgetRun widgetRun2 : this.f709e) {
            if (z2 || widgetRun2.b != this.f707a) {
                if (!widgetRun2.f698h.j || ((!widgetRun2.i.j && !(widgetRun2 instanceof i)) || (!widgetRun2.f695e.j && !(widgetRun2 instanceof c) && !(widgetRun2 instanceof i)))) {
                    z3 = false;
                    break;
                }
            }
        }
        this.f707a.G0(dimensionBehaviourS);
        this.f707a.X0(dimensionBehaviourS2);
        return z3;
    }

    public boolean g(boolean z) {
        if (this.b) {
            for (ConstraintWidget constraintWidget : this.f707a.u0) {
                constraintWidget.l();
                constraintWidget.f680a = false;
                k kVar = constraintWidget.f681d;
                kVar.f695e.j = false;
                kVar.f697g = false;
                kVar.r();
                m mVar = constraintWidget.f682e;
                mVar.f695e.j = false;
                mVar.f697g = false;
                mVar.q();
            }
            this.f707a.l();
            androidx.constraintlayout.core.widgets.d dVar = this.f707a;
            dVar.f680a = false;
            k kVar2 = dVar.f681d;
            kVar2.f695e.j = false;
            kVar2.f697g = false;
            kVar2.r();
            m mVar2 = this.f707a.f682e;
            mVar2.f695e.j = false;
            mVar2.f697g = false;
            mVar2.q();
            c();
        }
        if (b(this.f708d)) {
            return false;
        }
        this.f707a.d1(0);
        this.f707a.e1(0);
        this.f707a.f681d.f698h.d(0);
        this.f707a.f682e.f698h.d(0);
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00c5  */
    public boolean h(boolean z, int i) {
        boolean z2;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        boolean z3 = true;
        boolean z4 = z & true;
        ConstraintWidget.DimensionBehaviour dimensionBehaviourS = this.f707a.s(0);
        ConstraintWidget.DimensionBehaviour dimensionBehaviourS2 = this.f707a.s(1);
        int iS = this.f707a.S();
        int iT = this.f707a.T();
        if (z4 && (dimensionBehaviourS == (dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || dimensionBehaviourS2 == dimensionBehaviour)) {
            for (WidgetRun widgetRun : this.f709e) {
                if (widgetRun.f696f == i && !widgetRun.m()) {
                    z4 = false;
                    break;
                }
            }
            if (i == 0) {
                if (z4 && dimensionBehaviourS == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    this.f707a.G0(ConstraintWidget.DimensionBehaviour.FIXED);
                    androidx.constraintlayout.core.widgets.d dVar = this.f707a;
                    dVar.b1(e(dVar, 0));
                    androidx.constraintlayout.core.widgets.d dVar2 = this.f707a;
                    dVar2.f681d.f695e.d(dVar2.R());
                }
            } else if (z4 && dimensionBehaviourS2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                this.f707a.X0(ConstraintWidget.DimensionBehaviour.FIXED);
                androidx.constraintlayout.core.widgets.d dVar3 = this.f707a;
                dVar3.C0(e(dVar3, 1));
                androidx.constraintlayout.core.widgets.d dVar4 = this.f707a;
                dVar4.f682e.f695e.d(dVar4.v());
            }
        }
        if (i == 0) {
            androidx.constraintlayout.core.widgets.d dVar5 = this.f707a;
            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = dVar5.V;
            if (dimensionBehaviourArr[0] == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviourArr[0] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                int iR = dVar5.R() + iS;
                this.f707a.f681d.i.d(iR);
                this.f707a.f681d.f695e.d(iR - iS);
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            androidx.constraintlayout.core.widgets.d dVar6 = this.f707a;
            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr2 = dVar6.V;
            if (dimensionBehaviourArr2[1] == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviourArr2[1] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                int iV = dVar6.v() + iT;
                this.f707a.f682e.i.d(iV);
                this.f707a.f682e.f695e.d(iV - iT);
                z2 = true;
            } else {
                z2 = false;
            }
        }
        m();
        for (WidgetRun widgetRun2 : this.f709e) {
            if (widgetRun2.f696f == i && (widgetRun2.b != this.f707a || widgetRun2.f697g)) {
                widgetRun2.e();
            }
        }
        for (WidgetRun widgetRun3 : this.f709e) {
            if (widgetRun3.f696f == i && (z2 || widgetRun3.b != this.f707a)) {
                if (!widgetRun3.f698h.j || !widgetRun3.i.j || (!(widgetRun3 instanceof c) && !widgetRun3.f695e.j)) {
                    z3 = false;
                    break;
                }
            }
        }
        this.f707a.G0(dimensionBehaviourS);
        this.f707a.X0(dimensionBehaviourS2);
        return z3;
    }

    public void j() {
        this.b = true;
    }

    public void k() {
        this.c = true;
    }

    public void m() {
        f fVar;
        for (ConstraintWidget constraintWidget : this.f707a.u0) {
            if (!constraintWidget.f680a) {
                ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.V;
                boolean z = false;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[1];
                int i = constraintWidget.s;
                int i2 = constraintWidget.t;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                boolean z2 = dimensionBehaviour == dimensionBehaviour3 || (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && i == 1);
                if (dimensionBehaviour2 == dimensionBehaviour3 || (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && i2 == 1)) {
                    z = true;
                }
                f fVar2 = constraintWidget.f681d.f695e;
                boolean z3 = fVar2.j;
                f fVar3 = constraintWidget.f682e.f695e;
                boolean z4 = fVar3.j;
                if (z3 && z4) {
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.FIXED;
                    l(constraintWidget, dimensionBehaviour4, fVar2.f691g, dimensionBehaviour4, fVar3.f691g);
                    constraintWidget.f680a = true;
                } else if (z3 && z) {
                    l(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, fVar2.f691g, dimensionBehaviour3, fVar3.f691g);
                    if (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        constraintWidget.f682e.f695e.m = constraintWidget.v();
                    } else {
                        constraintWidget.f682e.f695e.d(constraintWidget.v());
                        constraintWidget.f680a = true;
                    }
                } else if (z4 && z2) {
                    l(constraintWidget, dimensionBehaviour3, fVar2.f691g, ConstraintWidget.DimensionBehaviour.FIXED, fVar3.f691g);
                    if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        constraintWidget.f681d.f695e.m = constraintWidget.R();
                    } else {
                        constraintWidget.f681d.f695e.d(constraintWidget.R());
                        constraintWidget.f680a = true;
                    }
                }
                if (constraintWidget.f680a && (fVar = constraintWidget.f682e.l) != null) {
                    fVar.d(constraintWidget.n());
                }
            }
        }
    }

    public void n(b.InterfaceC0016b interfaceC0016b) {
        this.f710f = interfaceC0016b;
    }
}
