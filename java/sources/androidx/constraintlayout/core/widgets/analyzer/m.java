package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes.dex */
public class m extends WidgetRun {
    public DependencyNode k;
    f l;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f717a;

        static {
            int[] iArr = new int[WidgetRun.RunType.values().length];
            f717a = iArr;
            try {
                iArr[WidgetRun.RunType.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f717a[WidgetRun.RunType.END.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f717a[WidgetRun.RunType.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public m(ConstraintWidget constraintWidget) {
        super(constraintWidget);
        DependencyNode dependencyNode = new DependencyNode(this);
        this.k = dependencyNode;
        this.l = null;
        this.f698h.f689e = DependencyNode.Type.TOP;
        this.i.f689e = DependencyNode.Type.BOTTOM;
        dependencyNode.f689e = DependencyNode.Type.BASELINE;
        this.f696f = 1;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, androidx.constraintlayout.core.widgets.analyzer.d
    public void a(d dVar) {
        float f2;
        float fT;
        float fT2;
        int i;
        int i2 = a.f717a[this.j.ordinal()];
        if (i2 == 1) {
            p(dVar);
        } else if (i2 == 2) {
            o(dVar);
        } else if (i2 == 3) {
            ConstraintWidget constraintWidget = this.b;
            n(dVar, constraintWidget.L, constraintWidget.N, 1);
            return;
        }
        f fVar = this.f695e;
        if (fVar.c && !fVar.j && this.f694d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            ConstraintWidget constraintWidget2 = this.b;
            int i3 = constraintWidget2.t;
            if (i3 == 2) {
                ConstraintWidget constraintWidgetI = constraintWidget2.I();
                if (constraintWidgetI != null) {
                    f fVar2 = constraintWidgetI.f682e.f695e;
                    if (fVar2.j) {
                        this.f695e.d((int) ((fVar2.f691g * this.b.A) + 0.5f));
                    }
                }
            } else if (i3 == 3 && constraintWidget2.f681d.f695e.j) {
                int iU = constraintWidget2.u();
                if (iU != -1) {
                    if (iU == 0) {
                        ConstraintWidget constraintWidget3 = this.b;
                        fT2 = constraintWidget3.f681d.f695e.f691g * constraintWidget3.t();
                        i = (int) (fT2 + 0.5f);
                    } else if (iU != 1) {
                        i = 0;
                    } else {
                        ConstraintWidget constraintWidget4 = this.b;
                        f2 = constraintWidget4.f681d.f695e.f691g;
                        fT = constraintWidget4.t();
                    }
                    this.f695e.d(i);
                } else {
                    ConstraintWidget constraintWidget5 = this.b;
                    f2 = constraintWidget5.f681d.f695e.f691g;
                    fT = constraintWidget5.t();
                }
                fT2 = f2 / fT;
                i = (int) (fT2 + 0.5f);
                this.f695e.d(i);
            }
        }
        DependencyNode dependencyNode = this.f698h;
        if (dependencyNode.c) {
            DependencyNode dependencyNode2 = this.i;
            if (dependencyNode2.c) {
                if (dependencyNode.j && dependencyNode2.j && this.f695e.j) {
                    return;
                }
                if (!this.f695e.j && this.f694d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    ConstraintWidget constraintWidget6 = this.b;
                    if (constraintWidget6.s == 0 && !constraintWidget6.f0()) {
                        DependencyNode dependencyNode3 = this.f698h.l.get(0);
                        DependencyNode dependencyNode4 = this.i.l.get(0);
                        int i4 = dependencyNode3.f691g;
                        DependencyNode dependencyNode5 = this.f698h;
                        int i5 = i4 + dependencyNode5.f690f;
                        int i6 = dependencyNode4.f691g + this.i.f690f;
                        dependencyNode5.d(i5);
                        this.i.d(i6);
                        this.f695e.d(i6 - i5);
                        return;
                    }
                }
                if (!this.f695e.j && this.f694d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && this.f693a == 1 && this.f698h.l.size() > 0 && this.i.l.size() > 0) {
                    DependencyNode dependencyNode6 = this.f698h.l.get(0);
                    int i7 = (this.i.l.get(0).f691g + this.i.f690f) - (dependencyNode6.f691g + this.f698h.f690f);
                    f fVar3 = this.f695e;
                    int i8 = fVar3.m;
                    if (i7 < i8) {
                        fVar3.d(i7);
                    } else {
                        fVar3.d(i8);
                    }
                }
                if (this.f695e.j && this.f698h.l.size() > 0 && this.i.l.size() > 0) {
                    DependencyNode dependencyNode7 = this.f698h.l.get(0);
                    DependencyNode dependencyNode8 = this.i.l.get(0);
                    int i9 = dependencyNode7.f691g + this.f698h.f690f;
                    int i10 = dependencyNode8.f691g + this.i.f690f;
                    float fM = this.b.M();
                    if (dependencyNode7 == dependencyNode8) {
                        i9 = dependencyNode7.f691g;
                        i10 = dependencyNode8.f691g;
                        fM = 0.5f;
                    }
                    this.f698h.d((int) (i9 + 0.5f + (((i10 - i9) - this.f695e.f691g) * fM)));
                    this.i.d(this.f698h.f691g + this.f695e.f691g);
                }
            }
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void d() {
        ConstraintWidget constraintWidgetI;
        ConstraintWidget constraintWidgetI2;
        ConstraintWidget constraintWidget = this.b;
        if (constraintWidget.f680a) {
            this.f695e.d(constraintWidget.v());
        }
        if (!this.f695e.j) {
            this.f694d = this.b.O();
            if (this.b.U()) {
                this.l = new androidx.constraintlayout.core.widgets.analyzer.a(this);
            }
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = this.f694d;
            if (dimensionBehaviour != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_PARENT && (constraintWidgetI2 = this.b.I()) != null && constraintWidgetI2.O() == ConstraintWidget.DimensionBehaviour.FIXED) {
                    int iV = (constraintWidgetI2.v() - this.b.L.e()) - this.b.N.e();
                    b(this.f698h, constraintWidgetI2.f682e.f698h, this.b.L.e());
                    b(this.i, constraintWidgetI2.f682e.i, -this.b.N.e());
                    this.f695e.d(iV);
                    return;
                }
                if (this.f694d == ConstraintWidget.DimensionBehaviour.FIXED) {
                    this.f695e.d(this.b.v());
                }
            }
        } else if (this.f694d == ConstraintWidget.DimensionBehaviour.MATCH_PARENT && (constraintWidgetI = this.b.I()) != null && constraintWidgetI.O() == ConstraintWidget.DimensionBehaviour.FIXED) {
            b(this.f698h, constraintWidgetI.f682e.f698h, this.b.L.e());
            b(this.i, constraintWidgetI.f682e.i, -this.b.N.e());
            return;
        }
        f fVar = this.f695e;
        boolean z = fVar.j;
        if (z) {
            ConstraintWidget constraintWidget2 = this.b;
            if (constraintWidget2.f680a) {
                ConstraintAnchor[] constraintAnchorArr = constraintWidget2.S;
                if (constraintAnchorArr[2].f676f != null && constraintAnchorArr[3].f676f != null) {
                    if (constraintWidget2.f0()) {
                        this.f698h.f690f = this.b.S[2].e();
                        this.i.f690f = -this.b.S[3].e();
                    } else {
                        DependencyNode dependencyNodeH = h(this.b.S[2]);
                        if (dependencyNodeH != null) {
                            b(this.f698h, dependencyNodeH, this.b.S[2].e());
                        }
                        DependencyNode dependencyNodeH2 = h(this.b.S[3]);
                        if (dependencyNodeH2 != null) {
                            b(this.i, dependencyNodeH2, -this.b.S[3].e());
                        }
                        this.f698h.b = true;
                        this.i.b = true;
                    }
                    if (this.b.U()) {
                        b(this.k, this.f698h, this.b.n());
                        return;
                    }
                    return;
                }
                if (constraintAnchorArr[2].f676f != null) {
                    DependencyNode dependencyNodeH3 = h(constraintAnchorArr[2]);
                    if (dependencyNodeH3 != null) {
                        b(this.f698h, dependencyNodeH3, this.b.S[2].e());
                        b(this.i, this.f698h, this.f695e.f691g);
                        if (this.b.U()) {
                            b(this.k, this.f698h, this.b.n());
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (constraintAnchorArr[3].f676f != null) {
                    DependencyNode dependencyNodeH4 = h(constraintAnchorArr[3]);
                    if (dependencyNodeH4 != null) {
                        b(this.i, dependencyNodeH4, -this.b.S[3].e());
                        b(this.f698h, this.i, -this.f695e.f691g);
                    }
                    if (this.b.U()) {
                        b(this.k, this.f698h, this.b.n());
                        return;
                    }
                    return;
                }
                if (constraintAnchorArr[4].f676f != null) {
                    DependencyNode dependencyNodeH5 = h(constraintAnchorArr[4]);
                    if (dependencyNodeH5 != null) {
                        b(this.k, dependencyNodeH5, 0);
                        b(this.f698h, this.k, -this.b.n());
                        b(this.i, this.f698h, this.f695e.f691g);
                        return;
                    }
                    return;
                }
                if ((constraintWidget2 instanceof androidx.constraintlayout.core.widgets.f) || constraintWidget2.I() == null || this.b.m(ConstraintAnchor.Type.CENTER).f676f != null) {
                    return;
                }
                b(this.f698h, this.b.I().f682e.f698h, this.b.T());
                b(this.i, this.f698h, this.f695e.f691g);
                if (this.b.U()) {
                    b(this.k, this.f698h, this.b.n());
                    return;
                }
                return;
            }
        }
        if (z || this.f694d != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            fVar.b(this);
        } else {
            ConstraintWidget constraintWidget3 = this.b;
            int i = constraintWidget3.t;
            if (i == 2) {
                ConstraintWidget constraintWidgetI3 = constraintWidget3.I();
                if (constraintWidgetI3 != null) {
                    f fVar2 = constraintWidgetI3.f682e.f695e;
                    this.f695e.l.add(fVar2);
                    fVar2.k.add(this.f695e);
                    f fVar3 = this.f695e;
                    fVar3.b = true;
                    fVar3.k.add(this.f698h);
                    this.f695e.k.add(this.i);
                }
            } else if (i == 3 && !constraintWidget3.f0()) {
                ConstraintWidget constraintWidget4 = this.b;
                if (constraintWidget4.s != 3) {
                    f fVar4 = constraintWidget4.f681d.f695e;
                    this.f695e.l.add(fVar4);
                    fVar4.k.add(this.f695e);
                    f fVar5 = this.f695e;
                    fVar5.b = true;
                    fVar5.k.add(this.f698h);
                    this.f695e.k.add(this.i);
                }
            }
        }
        ConstraintWidget constraintWidget5 = this.b;
        ConstraintAnchor[] constraintAnchorArr2 = constraintWidget5.S;
        if (constraintAnchorArr2[2].f676f != null && constraintAnchorArr2[3].f676f != null) {
            if (constraintWidget5.f0()) {
                this.f698h.f690f = this.b.S[2].e();
                this.i.f690f = -this.b.S[3].e();
            } else {
                DependencyNode dependencyNodeH6 = h(this.b.S[2]);
                DependencyNode dependencyNodeH7 = h(this.b.S[3]);
                if (dependencyNodeH6 != null) {
                    dependencyNodeH6.b(this);
                }
                if (dependencyNodeH7 != null) {
                    dependencyNodeH7.b(this);
                }
                this.j = WidgetRun.RunType.CENTER;
            }
            if (this.b.U()) {
                c(this.k, this.f698h, 1, this.l);
            }
        } else if (constraintAnchorArr2[2].f676f != null) {
            DependencyNode dependencyNodeH8 = h(constraintAnchorArr2[2]);
            if (dependencyNodeH8 != null) {
                b(this.f698h, dependencyNodeH8, this.b.S[2].e());
                c(this.i, this.f698h, 1, this.f695e);
                if (this.b.U()) {
                    c(this.k, this.f698h, 1, this.l);
                }
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = this.f694d;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (dimensionBehaviour2 == dimensionBehaviour3 && this.b.t() > BitmapDescriptorFactory.HUE_RED) {
                    k kVar = this.b.f681d;
                    if (kVar.f694d == dimensionBehaviour3) {
                        kVar.f695e.k.add(this.f695e);
                        this.f695e.l.add(this.b.f681d.f695e);
                        this.f695e.f687a = this;
                    }
                }
            }
        } else if (constraintAnchorArr2[3].f676f != null) {
            DependencyNode dependencyNodeH9 = h(constraintAnchorArr2[3]);
            if (dependencyNodeH9 != null) {
                b(this.i, dependencyNodeH9, -this.b.S[3].e());
                c(this.f698h, this.i, -1, this.f695e);
                if (this.b.U()) {
                    c(this.k, this.f698h, 1, this.l);
                }
            }
        } else if (constraintAnchorArr2[4].f676f != null) {
            DependencyNode dependencyNodeH10 = h(constraintAnchorArr2[4]);
            if (dependencyNodeH10 != null) {
                b(this.k, dependencyNodeH10, 0);
                c(this.f698h, this.k, -1, this.l);
                c(this.i, this.f698h, 1, this.f695e);
            }
        } else if (!(constraintWidget5 instanceof androidx.constraintlayout.core.widgets.f) && constraintWidget5.I() != null) {
            b(this.f698h, this.b.I().f682e.f698h, this.b.T());
            c(this.i, this.f698h, 1, this.f695e);
            if (this.b.U()) {
                c(this.k, this.f698h, 1, this.l);
            }
            ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = this.f694d;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
            if (dimensionBehaviour4 == dimensionBehaviour5 && this.b.t() > BitmapDescriptorFactory.HUE_RED) {
                k kVar2 = this.b.f681d;
                if (kVar2.f694d == dimensionBehaviour5) {
                    kVar2.f695e.k.add(this.f695e);
                    this.f695e.l.add(this.b.f681d.f695e);
                    this.f695e.f687a = this;
                }
            }
        }
        if (this.f695e.l.size() == 0) {
            this.f695e.c = true;
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void e() {
        DependencyNode dependencyNode = this.f698h;
        if (dependencyNode.j) {
            this.b.e1(dependencyNode.f691g);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void f() {
        this.c = null;
        this.f698h.c();
        this.i.c();
        this.k.c();
        this.f695e.c();
        this.f697g = false;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    boolean m() {
        return this.f694d != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || this.b.t == 0;
    }

    void q() {
        this.f697g = false;
        this.f698h.c();
        this.f698h.j = false;
        this.i.c();
        this.i.j = false;
        this.k.c();
        this.k.j = false;
        this.f695e.j = false;
    }

    public String toString() {
        return "VerticalRun " + this.b.r();
    }
}
