package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;

/* JADX INFO: loaded from: classes.dex */
public abstract class WidgetRun implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f693a;
    ConstraintWidget b;
    l c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected ConstraintWidget.DimensionBehaviour f694d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    f f695e = new f(this);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f696f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f697g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public DependencyNode f698h = new DependencyNode(this);
    public DependencyNode i = new DependencyNode(this);
    protected RunType j = RunType.NONE;

    enum RunType {
        NONE,
        START,
        END,
        CENTER
    }

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f699a;

        static {
            int[] iArr = new int[ConstraintAnchor.Type.values().length];
            f699a = iArr;
            try {
                iArr[ConstraintAnchor.Type.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f699a[ConstraintAnchor.Type.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f699a[ConstraintAnchor.Type.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f699a[ConstraintAnchor.Type.BASELINE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f699a[ConstraintAnchor.Type.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public WidgetRun(ConstraintWidget constraintWidget) {
        this.b = constraintWidget;
    }

    private void l(int i, int i2) {
        int i3 = this.f693a;
        if (i3 == 0) {
            this.f695e.d(g(i2, i));
            return;
        }
        if (i3 == 1) {
            this.f695e.d(Math.min(g(this.f695e.m, i), i2));
            return;
        }
        if (i3 == 2) {
            ConstraintWidget constraintWidgetI = this.b.I();
            if (constraintWidgetI != null) {
                f fVar = (i == 0 ? constraintWidgetI.f681d : constraintWidgetI.f682e).f695e;
                if (fVar.j) {
                    ConstraintWidget constraintWidget = this.b;
                    this.f695e.d(g((int) ((fVar.f691g * (i == 0 ? constraintWidget.x : constraintWidget.A)) + 0.5f), i));
                    return;
                }
                return;
            }
            return;
        }
        if (i3 != 3) {
            return;
        }
        ConstraintWidget constraintWidget2 = this.b;
        WidgetRun widgetRun = constraintWidget2.f681d;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = widgetRun.f694d;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        if (dimensionBehaviour == dimensionBehaviour2 && widgetRun.f693a == 3) {
            m mVar = constraintWidget2.f682e;
            if (mVar.f694d == dimensionBehaviour2 && mVar.f693a == 3) {
                return;
            }
        }
        if (i == 0) {
            widgetRun = constraintWidget2.f682e;
        }
        if (widgetRun.f695e.j) {
            float fT = constraintWidget2.t();
            this.f695e.d(i == 1 ? (int) ((widgetRun.f695e.f691g / fT) + 0.5f) : (int) ((fT * widgetRun.f695e.f691g) + 0.5f));
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.d
    public void a(d dVar) {
    }

    protected final void b(DependencyNode dependencyNode, DependencyNode dependencyNode2, int i) {
        dependencyNode.l.add(dependencyNode2);
        dependencyNode.f690f = i;
        dependencyNode2.k.add(dependencyNode);
    }

    protected final void c(DependencyNode dependencyNode, DependencyNode dependencyNode2, int i, f fVar) {
        dependencyNode.l.add(dependencyNode2);
        dependencyNode.l.add(this.f695e);
        dependencyNode.f692h = i;
        dependencyNode.i = fVar;
        dependencyNode2.k.add(dependencyNode);
        fVar.k.add(dependencyNode);
    }

    abstract void d();

    abstract void e();

    abstract void f();

    protected final int g(int i, int i2) {
        int iMax;
        if (i2 == 0) {
            ConstraintWidget constraintWidget = this.b;
            int i3 = constraintWidget.w;
            iMax = Math.max(constraintWidget.v, i);
            if (i3 > 0) {
                iMax = Math.min(i3, i);
            }
            if (iMax == i) {
                return i;
            }
        } else {
            ConstraintWidget constraintWidget2 = this.b;
            int i4 = constraintWidget2.z;
            iMax = Math.max(constraintWidget2.y, i);
            if (i4 > 0) {
                iMax = Math.min(i4, i);
            }
            if (iMax == i) {
                return i;
            }
        }
        return iMax;
    }

    protected final DependencyNode h(ConstraintAnchor constraintAnchor) {
        ConstraintAnchor constraintAnchor2 = constraintAnchor.f676f;
        if (constraintAnchor2 == null) {
            return null;
        }
        ConstraintWidget constraintWidget = constraintAnchor2.f674d;
        int i = a.f699a[constraintAnchor2.f675e.ordinal()];
        if (i == 1) {
            return constraintWidget.f681d.f698h;
        }
        if (i == 2) {
            return constraintWidget.f681d.i;
        }
        if (i == 3) {
            return constraintWidget.f682e.f698h;
        }
        if (i == 4) {
            return constraintWidget.f682e.k;
        }
        if (i != 5) {
            return null;
        }
        return constraintWidget.f682e.i;
    }

    protected final DependencyNode i(ConstraintAnchor constraintAnchor, int i) {
        ConstraintAnchor constraintAnchor2 = constraintAnchor.f676f;
        if (constraintAnchor2 == null) {
            return null;
        }
        ConstraintWidget constraintWidget = constraintAnchor2.f674d;
        WidgetRun widgetRun = i == 0 ? constraintWidget.f681d : constraintWidget.f682e;
        int i2 = a.f699a[constraintAnchor2.f675e.ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 5) {
                        return null;
                    }
                }
            }
            return widgetRun.i;
        }
        return widgetRun.f698h;
    }

    public long j() {
        f fVar = this.f695e;
        if (fVar.j) {
            return fVar.f691g;
        }
        return 0L;
    }

    public boolean k() {
        return this.f697g;
    }

    abstract boolean m();

    protected void n(d dVar, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i) {
        DependencyNode dependencyNodeH = h(constraintAnchor);
        DependencyNode dependencyNodeH2 = h(constraintAnchor2);
        if (dependencyNodeH.j && dependencyNodeH2.j) {
            int iE = dependencyNodeH.f691g + constraintAnchor.e();
            int iE2 = dependencyNodeH2.f691g - constraintAnchor2.e();
            int i2 = iE2 - iE;
            if (!this.f695e.j && this.f694d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                l(i, i2);
            }
            f fVar = this.f695e;
            if (fVar.j) {
                if (fVar.f691g == i2) {
                    this.f698h.d(iE);
                    this.i.d(iE2);
                    return;
                }
                ConstraintWidget constraintWidget = this.b;
                float fW = i == 0 ? constraintWidget.w() : constraintWidget.M();
                if (dependencyNodeH == dependencyNodeH2) {
                    iE = dependencyNodeH.f691g;
                    iE2 = dependencyNodeH2.f691g;
                    fW = 0.5f;
                }
                this.f698h.d((int) (iE + 0.5f + (((iE2 - iE) - this.f695e.f691g) * fW)));
                this.i.d(this.f698h.f691g + this.f695e.f691g);
            }
        }
    }

    protected void o(d dVar) {
    }

    protected void p(d dVar) {
    }
}
