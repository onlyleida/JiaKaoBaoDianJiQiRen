package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.SolverVariable;

/* JADX INFO: loaded from: classes.dex */
public class e extends ConstraintWidget {
    protected float u0 = -1.0f;
    protected int v0 = -1;
    protected int w0 = -1;
    private ConstraintAnchor x0 = this.L;
    private int y0 = 0;
    private boolean z0;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f728a;

        static {
            int[] iArr = new int[ConstraintAnchor.Type.values().length];
            f728a = iArr;
            try {
                iArr[ConstraintAnchor.Type.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f728a[ConstraintAnchor.Type.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f728a[ConstraintAnchor.Type.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f728a[ConstraintAnchor.Type.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f728a[ConstraintAnchor.Type.BASELINE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f728a[ConstraintAnchor.Type.CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f728a[ConstraintAnchor.Type.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f728a[ConstraintAnchor.Type.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f728a[ConstraintAnchor.Type.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public e() {
        this.T.clear();
        this.T.add(this.x0);
        int length = this.S.length;
        for (int i = 0; i < length; i++) {
            this.S[i] = this.x0;
        }
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void g(androidx.constraintlayout.core.d dVar, boolean z) {
        d dVar2 = (d) I();
        if (dVar2 == null) {
            return;
        }
        ConstraintAnchor constraintAnchorM = dVar2.m(ConstraintAnchor.Type.LEFT);
        ConstraintAnchor constraintAnchorM2 = dVar2.m(ConstraintAnchor.Type.RIGHT);
        ConstraintWidget constraintWidget = this.W;
        boolean z2 = constraintWidget != null && constraintWidget.V[0] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (this.y0 == 0) {
            constraintAnchorM = dVar2.m(ConstraintAnchor.Type.TOP);
            constraintAnchorM2 = dVar2.m(ConstraintAnchor.Type.BOTTOM);
            ConstraintWidget constraintWidget2 = this.W;
            z2 = constraintWidget2 != null && constraintWidget2.V[1] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        }
        if (this.z0 && this.x0.m()) {
            SolverVariable solverVariableQ = dVar.q(this.x0);
            dVar.f(solverVariableQ, this.x0.d());
            if (this.v0 != -1) {
                if (z2) {
                    dVar.h(dVar.q(constraintAnchorM2), solverVariableQ, 0, 5);
                }
            } else if (this.w0 != -1 && z2) {
                SolverVariable solverVariableQ2 = dVar.q(constraintAnchorM2);
                dVar.h(solverVariableQ, dVar.q(constraintAnchorM), 0, 5);
                dVar.h(solverVariableQ2, solverVariableQ, 0, 5);
            }
            this.z0 = false;
            return;
        }
        if (this.v0 != -1) {
            SolverVariable solverVariableQ3 = dVar.q(this.x0);
            dVar.e(solverVariableQ3, dVar.q(constraintAnchorM), this.v0, 8);
            if (z2) {
                dVar.h(dVar.q(constraintAnchorM2), solverVariableQ3, 0, 5);
                return;
            }
            return;
        }
        if (this.w0 == -1) {
            if (this.u0 != -1.0f) {
                dVar.d(androidx.constraintlayout.core.d.s(dVar, dVar.q(this.x0), dVar.q(constraintAnchorM2), this.u0));
                return;
            }
            return;
        }
        SolverVariable solverVariableQ4 = dVar.q(this.x0);
        SolverVariable solverVariableQ5 = dVar.q(constraintAnchorM2);
        dVar.e(solverVariableQ4, solverVariableQ5, -this.w0, 8);
        if (z2) {
            dVar.h(solverVariableQ4, dVar.q(constraintAnchorM), 0, 5);
            dVar.h(solverVariableQ5, solverVariableQ4, 0, 5);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public boolean h() {
        return true;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void h1(androidx.constraintlayout.core.d dVar, boolean z) {
        if (I() == null) {
            return;
        }
        int iY = dVar.y(this.x0);
        if (this.y0 == 1) {
            d1(iY);
            e1(0);
            C0(I().v());
            b1(0);
            return;
        }
        d1(0);
        e1(iY);
        b1(I().R());
        C0(0);
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public boolean i0() {
        return this.z0;
    }

    public ConstraintAnchor i1() {
        return this.x0;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public boolean j0() {
        return this.z0;
    }

    public int j1() {
        return this.y0;
    }

    public int k1() {
        return this.v0;
    }

    public int l1() {
        return this.w0;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public ConstraintAnchor m(ConstraintAnchor.Type type) {
        int i = a.f728a[type.ordinal()];
        if (i == 1 || i == 2) {
            if (this.y0 == 1) {
                return this.x0;
            }
            return null;
        }
        if ((i == 3 || i == 4) && this.y0 == 0) {
            return this.x0;
        }
        return null;
    }

    public float m1() {
        return this.u0;
    }

    public void n1(int i) {
        this.x0.s(i);
        this.z0 = true;
    }

    public void o1(int i) {
        if (i > -1) {
            this.u0 = -1.0f;
            this.v0 = i;
            this.w0 = -1;
        }
    }

    public void p1(int i) {
        if (i > -1) {
            this.u0 = -1.0f;
            this.v0 = -1;
            this.w0 = i;
        }
    }

    public void q1(float f2) {
        if (f2 > -1.0f) {
            this.u0 = f2;
            this.v0 = -1;
            this.w0 = -1;
        }
    }

    public void r1(int i) {
        if (this.y0 == i) {
            return;
        }
        this.y0 = i;
        this.T.clear();
        if (this.y0 == 1) {
            this.x0 = this.K;
        } else {
            this.x0 = this.L;
        }
        this.T.add(this.x0);
        int length = this.S.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.S[i2] = this.x0;
        }
    }
}
