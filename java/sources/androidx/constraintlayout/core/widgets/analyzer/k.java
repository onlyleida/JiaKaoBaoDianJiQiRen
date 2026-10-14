package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;

/* JADX INFO: loaded from: classes.dex */
public class k extends WidgetRun {
    private static int[] k = new int[2];

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f714a;

        static {
            int[] iArr = new int[WidgetRun.RunType.values().length];
            f714a = iArr;
            try {
                iArr[WidgetRun.RunType.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f714a[WidgetRun.RunType.END.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f714a[WidgetRun.RunType.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public k(ConstraintWidget constraintWidget) {
        super(constraintWidget);
        this.f698h.f689e = DependencyNode.Type.LEFT;
        this.i.f689e = DependencyNode.Type.RIGHT;
        this.f696f = 0;
    }

    private void q(int[] iArr, int i, int i2, int i3, int i4, float f2, int i5) {
        int i6 = i2 - i;
        int i7 = i4 - i3;
        if (i5 != -1) {
            if (i5 == 0) {
                iArr[0] = (int) ((i7 * f2) + 0.5f);
                iArr[1] = i7;
                return;
            } else {
                if (i5 != 1) {
                    return;
                }
                iArr[0] = i6;
                iArr[1] = (int) ((i6 * f2) + 0.5f);
                return;
            }
        }
        int i8 = (int) ((i7 * f2) + 0.5f);
        int i9 = (int) ((i6 / f2) + 0.5f);
        if (i8 <= i6 && i7 <= i7) {
            iArr[0] = i8;
            iArr[1] = i7;
        } else {
            if (i6 > i6 || i9 > i7) {
                return;
            }
            iArr[0] = i6;
            iArr[1] = i9;
        }
    }

    /* JADX WARN: Code duplicated, block: B:125:0x02e2  */
    /* JADX WARN: Code duplicated, block: B:127:0x02f1  */
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, androidx.constraintlayout.core.widgets.analyzer.d
    public void a(d dVar) {
        int iG;
        int i;
        int iG2;
        float f2;
        float fT;
        float fT2;
        int i2;
        int i3 = a.f714a[this.j.ordinal()];
        if (i3 == 1) {
            p(dVar);
        } else if (i3 == 2) {
            o(dVar);
        } else if (i3 == 3) {
            ConstraintWidget constraintWidget = this.b;
            n(dVar, constraintWidget.K, constraintWidget.M, 0);
            return;
        }
        if (!this.f695e.j && this.f694d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            ConstraintWidget constraintWidget2 = this.b;
            int i4 = constraintWidget2.s;
            if (i4 == 2) {
                ConstraintWidget constraintWidgetI = constraintWidget2.I();
                if (constraintWidgetI != null) {
                    f fVar = constraintWidgetI.f681d.f695e;
                    if (fVar.j) {
                        this.f695e.d((int) ((fVar.f691g * this.b.x) + 0.5f));
                    }
                }
            } else if (i4 == 3) {
                int i5 = constraintWidget2.t;
                if (i5 == 0 || i5 == 3) {
                    m mVar = constraintWidget2.f682e;
                    DependencyNode dependencyNode = mVar.f698h;
                    DependencyNode dependencyNode2 = mVar.i;
                    boolean z = constraintWidget2.K.f676f != null;
                    boolean z2 = constraintWidget2.L.f676f != null;
                    boolean z3 = constraintWidget2.M.f676f != null;
                    boolean z4 = constraintWidget2.N.f676f != null;
                    int iU = constraintWidget2.u();
                    if (z && z2 && z3 && z4) {
                        float fT3 = this.b.t();
                        if (dependencyNode.j && dependencyNode2.j) {
                            DependencyNode dependencyNode3 = this.f698h;
                            if (dependencyNode3.c && this.i.c) {
                                q(k, dependencyNode3.l.get(0).f691g + this.f698h.f690f, this.i.l.get(0).f691g - this.i.f690f, dependencyNode.f691g + dependencyNode.f690f, dependencyNode2.f691g - dependencyNode2.f690f, fT3, iU);
                                this.f695e.d(k[0]);
                                this.b.f682e.f695e.d(k[1]);
                                return;
                            }
                            return;
                        }
                        DependencyNode dependencyNode4 = this.f698h;
                        if (dependencyNode4.j) {
                            DependencyNode dependencyNode5 = this.i;
                            if (dependencyNode5.j) {
                                if (!dependencyNode.c || !dependencyNode2.c) {
                                    return;
                                }
                                q(k, dependencyNode4.f691g + dependencyNode4.f690f, dependencyNode5.f691g - dependencyNode5.f690f, dependencyNode.l.get(0).f691g + dependencyNode.f690f, dependencyNode2.l.get(0).f691g - dependencyNode2.f690f, fT3, iU);
                                this.f695e.d(k[0]);
                                this.b.f682e.f695e.d(k[1]);
                            }
                        }
                        DependencyNode dependencyNode6 = this.f698h;
                        if (!dependencyNode6.c || !this.i.c || !dependencyNode.c || !dependencyNode2.c) {
                            return;
                        }
                        q(k, dependencyNode6.l.get(0).f691g + this.f698h.f690f, this.i.l.get(0).f691g - this.i.f690f, dependencyNode.l.get(0).f691g + dependencyNode.f690f, dependencyNode2.l.get(0).f691g - dependencyNode2.f690f, fT3, iU);
                        this.f695e.d(k[0]);
                        this.b.f682e.f695e.d(k[1]);
                    } else if (z && z3) {
                        if (!this.f698h.c || !this.i.c) {
                            return;
                        }
                        float fT4 = this.b.t();
                        int i6 = this.f698h.l.get(0).f691g + this.f698h.f690f;
                        int i7 = this.i.l.get(0).f691g - this.i.f690f;
                        if (iU == -1 || iU == 0) {
                            int iG3 = g(i7 - i6, 0);
                            int i8 = (int) ((iG3 * fT4) + 0.5f);
                            int iG4 = g(i8, 1);
                            if (i8 != iG4) {
                                iG3 = (int) ((iG4 / fT4) + 0.5f);
                            }
                            this.f695e.d(iG3);
                            this.b.f682e.f695e.d(iG4);
                        } else if (iU == 1) {
                            int iG5 = g(i7 - i6, 0);
                            int i9 = (int) ((iG5 / fT4) + 0.5f);
                            int iG6 = g(i9, 1);
                            if (i9 != iG6) {
                                iG5 = (int) ((iG6 * fT4) + 0.5f);
                            }
                            this.f695e.d(iG5);
                            this.b.f682e.f695e.d(iG6);
                        }
                    } else if (z2 && z4) {
                        if (!dependencyNode.c || !dependencyNode2.c) {
                            return;
                        }
                        float fT5 = this.b.t();
                        int i10 = dependencyNode.l.get(0).f691g + dependencyNode.f690f;
                        int i11 = dependencyNode2.l.get(0).f691g - dependencyNode2.f690f;
                        if (iU == -1) {
                            iG = g(i11 - i10, 1);
                            i = (int) ((iG / fT5) + 0.5f);
                            iG2 = g(i, 0);
                            if (i != iG2) {
                                iG = (int) ((iG2 * fT5) + 0.5f);
                            }
                            this.f695e.d(iG2);
                            this.b.f682e.f695e.d(iG);
                        } else if (iU == 0) {
                            int iG7 = g(i11 - i10, 1);
                            int i12 = (int) ((iG7 * fT5) + 0.5f);
                            int iG8 = g(i12, 0);
                            if (i12 != iG8) {
                                iG7 = (int) ((iG8 / fT5) + 0.5f);
                            }
                            this.f695e.d(iG8);
                            this.b.f682e.f695e.d(iG7);
                        } else if (iU == 1) {
                            iG = g(i11 - i10, 1);
                            i = (int) ((iG / fT5) + 0.5f);
                            iG2 = g(i, 0);
                            if (i != iG2) {
                                iG = (int) ((iG2 * fT5) + 0.5f);
                            }
                            this.f695e.d(iG2);
                            this.b.f682e.f695e.d(iG);
                        }
                    }
                } else {
                    int iU2 = constraintWidget2.u();
                    if (iU2 != -1) {
                        if (iU2 == 0) {
                            ConstraintWidget constraintWidget3 = this.b;
                            fT2 = constraintWidget3.f682e.f695e.f691g / constraintWidget3.t();
                            i2 = (int) (fT2 + 0.5f);
                        } else if (iU2 != 1) {
                            i2 = 0;
                        } else {
                            ConstraintWidget constraintWidget4 = this.b;
                            f2 = constraintWidget4.f682e.f695e.f691g;
                            fT = constraintWidget4.t();
                        }
                        this.f695e.d(i2);
                    } else {
                        ConstraintWidget constraintWidget5 = this.b;
                        f2 = constraintWidget5.f682e.f695e.f691g;
                        fT = constraintWidget5.t();
                    }
                    fT2 = f2 * fT;
                    i2 = (int) (fT2 + 0.5f);
                    this.f695e.d(i2);
                }
            }
        }
        DependencyNode dependencyNode7 = this.f698h;
        if (dependencyNode7.c) {
            DependencyNode dependencyNode8 = this.i;
            if (dependencyNode8.c) {
                if (dependencyNode7.j && dependencyNode8.j && this.f695e.j) {
                    return;
                }
                if (!this.f695e.j && this.f694d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    ConstraintWidget constraintWidget6 = this.b;
                    if (constraintWidget6.s == 0 && !constraintWidget6.d0()) {
                        DependencyNode dependencyNode9 = this.f698h.l.get(0);
                        DependencyNode dependencyNode10 = this.i.l.get(0);
                        int i13 = dependencyNode9.f691g;
                        DependencyNode dependencyNode11 = this.f698h;
                        int i14 = i13 + dependencyNode11.f690f;
                        int i15 = dependencyNode10.f691g + this.i.f690f;
                        dependencyNode11.d(i14);
                        this.i.d(i15);
                        this.f695e.d(i15 - i14);
                        return;
                    }
                }
                if (!this.f695e.j && this.f694d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && this.f693a == 1 && this.f698h.l.size() > 0 && this.i.l.size() > 0) {
                    int iMin = Math.min((this.i.l.get(0).f691g + this.i.f690f) - (this.f698h.l.get(0).f691g + this.f698h.f690f), this.f695e.m);
                    ConstraintWidget constraintWidget7 = this.b;
                    int i16 = constraintWidget7.w;
                    int iMax = Math.max(constraintWidget7.v, iMin);
                    if (i16 > 0) {
                        iMax = Math.min(i16, iMax);
                    }
                    this.f695e.d(iMax);
                }
                if (this.f695e.j) {
                    DependencyNode dependencyNode12 = this.f698h.l.get(0);
                    DependencyNode dependencyNode13 = this.i.l.get(0);
                    int i17 = dependencyNode12.f691g + this.f698h.f690f;
                    int i18 = dependencyNode13.f691g + this.i.f690f;
                    float fW = this.b.w();
                    if (dependencyNode12 == dependencyNode13) {
                        i17 = dependencyNode12.f691g;
                        i18 = dependencyNode13.f691g;
                        fW = 0.5f;
                    }
                    this.f698h.d((int) (i17 + 0.5f + (((i18 - i17) - this.f695e.f691g) * fW)));
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
            this.f695e.d(constraintWidget.R());
        }
        if (this.f695e.j) {
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = this.f694d;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
            if (dimensionBehaviour == dimensionBehaviour2 && (constraintWidgetI = this.b.I()) != null && (constraintWidgetI.y() == ConstraintWidget.DimensionBehaviour.FIXED || constraintWidgetI.y() == dimensionBehaviour2)) {
                b(this.f698h, constraintWidgetI.f681d.f698h, this.b.K.e());
                b(this.i, constraintWidgetI.f681d.i, -this.b.M.e());
                return;
            }
        } else {
            ConstraintWidget.DimensionBehaviour dimensionBehaviourY = this.b.y();
            this.f694d = dimensionBehaviourY;
            if (dimensionBehaviourY != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
                if (dimensionBehaviourY == dimensionBehaviour3 && (constraintWidgetI2 = this.b.I()) != null && (constraintWidgetI2.y() == ConstraintWidget.DimensionBehaviour.FIXED || constraintWidgetI2.y() == dimensionBehaviour3)) {
                    int iR = (constraintWidgetI2.R() - this.b.K.e()) - this.b.M.e();
                    b(this.f698h, constraintWidgetI2.f681d.f698h, this.b.K.e());
                    b(this.i, constraintWidgetI2.f681d.i, -this.b.M.e());
                    this.f695e.d(iR);
                    return;
                }
                if (this.f694d == ConstraintWidget.DimensionBehaviour.FIXED) {
                    this.f695e.d(this.b.R());
                }
            }
        }
        f fVar = this.f695e;
        if (fVar.j) {
            ConstraintWidget constraintWidget2 = this.b;
            if (constraintWidget2.f680a) {
                ConstraintAnchor[] constraintAnchorArr = constraintWidget2.S;
                if (constraintAnchorArr[0].f676f != null && constraintAnchorArr[1].f676f != null) {
                    if (constraintWidget2.d0()) {
                        this.f698h.f690f = this.b.S[0].e();
                        this.i.f690f = -this.b.S[1].e();
                        return;
                    }
                    DependencyNode dependencyNodeH = h(this.b.S[0]);
                    if (dependencyNodeH != null) {
                        b(this.f698h, dependencyNodeH, this.b.S[0].e());
                    }
                    DependencyNode dependencyNodeH2 = h(this.b.S[1]);
                    if (dependencyNodeH2 != null) {
                        b(this.i, dependencyNodeH2, -this.b.S[1].e());
                    }
                    this.f698h.b = true;
                    this.i.b = true;
                    return;
                }
                if (constraintAnchorArr[0].f676f != null) {
                    DependencyNode dependencyNodeH3 = h(constraintAnchorArr[0]);
                    if (dependencyNodeH3 != null) {
                        b(this.f698h, dependencyNodeH3, this.b.S[0].e());
                        b(this.i, this.f698h, this.f695e.f691g);
                        return;
                    }
                    return;
                }
                if (constraintAnchorArr[1].f676f != null) {
                    DependencyNode dependencyNodeH4 = h(constraintAnchorArr[1]);
                    if (dependencyNodeH4 != null) {
                        b(this.i, dependencyNodeH4, -this.b.S[1].e());
                        b(this.f698h, this.i, -this.f695e.f691g);
                        return;
                    }
                    return;
                }
                if ((constraintWidget2 instanceof androidx.constraintlayout.core.widgets.f) || constraintWidget2.I() == null || this.b.m(ConstraintAnchor.Type.CENTER).f676f != null) {
                    return;
                }
                b(this.f698h, this.b.I().f681d.f698h, this.b.S());
                b(this.i, this.f698h, this.f695e.f691g);
                return;
            }
        }
        if (this.f694d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            ConstraintWidget constraintWidget3 = this.b;
            int i = constraintWidget3.s;
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
            } else if (i == 3) {
                if (constraintWidget3.t == 3) {
                    this.f698h.f687a = this;
                    this.i.f687a = this;
                    m mVar = constraintWidget3.f682e;
                    mVar.f698h.f687a = this;
                    mVar.i.f687a = this;
                    fVar.f687a = this;
                    if (constraintWidget3.f0()) {
                        this.f695e.l.add(this.b.f682e.f695e);
                        this.b.f682e.f695e.k.add(this.f695e);
                        m mVar2 = this.b.f682e;
                        mVar2.f695e.f687a = this;
                        this.f695e.l.add(mVar2.f698h);
                        this.f695e.l.add(this.b.f682e.i);
                        this.b.f682e.f698h.k.add(this.f695e);
                        this.b.f682e.i.k.add(this.f695e);
                    } else if (this.b.d0()) {
                        this.b.f682e.f695e.l.add(this.f695e);
                        this.f695e.k.add(this.b.f682e.f695e);
                    } else {
                        this.b.f682e.f695e.l.add(this.f695e);
                    }
                } else {
                    f fVar4 = constraintWidget3.f682e.f695e;
                    fVar.l.add(fVar4);
                    fVar4.k.add(this.f695e);
                    this.b.f682e.f698h.k.add(this.f695e);
                    this.b.f682e.i.k.add(this.f695e);
                    f fVar5 = this.f695e;
                    fVar5.b = true;
                    fVar5.k.add(this.f698h);
                    this.f695e.k.add(this.i);
                    this.f698h.l.add(this.f695e);
                    this.i.l.add(this.f695e);
                }
            }
        }
        ConstraintWidget constraintWidget4 = this.b;
        ConstraintAnchor[] constraintAnchorArr2 = constraintWidget4.S;
        if (constraintAnchorArr2[0].f676f != null && constraintAnchorArr2[1].f676f != null) {
            if (constraintWidget4.d0()) {
                this.f698h.f690f = this.b.S[0].e();
                this.i.f690f = -this.b.S[1].e();
                return;
            }
            DependencyNode dependencyNodeH5 = h(this.b.S[0]);
            DependencyNode dependencyNodeH6 = h(this.b.S[1]);
            if (dependencyNodeH5 != null) {
                dependencyNodeH5.b(this);
            }
            if (dependencyNodeH6 != null) {
                dependencyNodeH6.b(this);
            }
            this.j = WidgetRun.RunType.CENTER;
            return;
        }
        if (constraintAnchorArr2[0].f676f != null) {
            DependencyNode dependencyNodeH7 = h(constraintAnchorArr2[0]);
            if (dependencyNodeH7 != null) {
                b(this.f698h, dependencyNodeH7, this.b.S[0].e());
                c(this.i, this.f698h, 1, this.f695e);
                return;
            }
            return;
        }
        if (constraintAnchorArr2[1].f676f != null) {
            DependencyNode dependencyNodeH8 = h(constraintAnchorArr2[1]);
            if (dependencyNodeH8 != null) {
                b(this.i, dependencyNodeH8, -this.b.S[1].e());
                c(this.f698h, this.i, -1, this.f695e);
                return;
            }
            return;
        }
        if ((constraintWidget4 instanceof androidx.constraintlayout.core.widgets.f) || constraintWidget4.I() == null) {
            return;
        }
        b(this.f698h, this.b.I().f681d.f698h, this.b.S());
        c(this.i, this.f698h, 1, this.f695e);
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void e() {
        DependencyNode dependencyNode = this.f698h;
        if (dependencyNode.j) {
            this.b.d1(dependencyNode.f691g);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void f() {
        this.c = null;
        this.f698h.c();
        this.i.c();
        this.f695e.c();
        this.f697g = false;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    boolean m() {
        return this.f694d != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || this.b.s == 0;
    }

    void r() {
        this.f697g = false;
        this.f698h.c();
        this.f698h.j = false;
        this.i.c();
        this.i.j = false;
        this.f695e.j = false;
    }

    public String toString() {
        return "HorizontalRun " + this.b.r();
    }
}
