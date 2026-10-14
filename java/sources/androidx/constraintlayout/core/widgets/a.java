package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.SolverVariable;
import org.apache.commons.math3.geometry.VectorFormat;

/* JADX INFO: loaded from: classes.dex */
public class a extends g {
    private int w0 = 0;
    private boolean x0 = true;
    private int y0 = 0;
    boolean z0 = false;

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void g(androidx.constraintlayout.core.d dVar, boolean z) {
        ConstraintAnchor[] constraintAnchorArr;
        boolean z2;
        int i;
        int i2;
        int i3;
        ConstraintAnchor[] constraintAnchorArr2 = this.S;
        constraintAnchorArr2[0] = this.K;
        constraintAnchorArr2[2] = this.L;
        constraintAnchorArr2[1] = this.M;
        constraintAnchorArr2[3] = this.N;
        int i4 = 0;
        while (true) {
            constraintAnchorArr = this.S;
            if (i4 >= constraintAnchorArr.length) {
                break;
            }
            constraintAnchorArr[i4].i = dVar.q(constraintAnchorArr[i4]);
            i4++;
        }
        int i5 = this.w0;
        if (i5 < 0 || i5 >= 4) {
            return;
        }
        ConstraintAnchor constraintAnchor = constraintAnchorArr[i5];
        if (!this.z0) {
            k1();
        }
        if (this.z0) {
            this.z0 = false;
            int i6 = this.w0;
            if (i6 == 0 || i6 == 1) {
                dVar.f(this.K.i, this.b0);
                dVar.f(this.M.i, this.b0);
                return;
            } else {
                if (i6 == 2 || i6 == 3) {
                    dVar.f(this.L.i, this.c0);
                    dVar.f(this.N.i, this.c0);
                    return;
                }
                return;
            }
        }
        int i7 = 0;
        while (true) {
            if (i7 >= this.v0) {
                z2 = false;
                break;
            }
            ConstraintWidget constraintWidget = this.u0[i7];
            if ((this.x0 || constraintWidget.h()) && ((((i2 = this.w0) == 0 || i2 == 1) && constraintWidget.y() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.K.f676f != null && constraintWidget.M.f676f != null) || (((i3 = this.w0) == 2 || i3 == 3) && constraintWidget.O() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.L.f676f != null && constraintWidget.N.f676f != null))) {
                z2 = true;
                break;
            }
            i7++;
        }
        boolean z3 = this.K.k() || this.M.k();
        boolean z4 = this.L.k() || this.N.k();
        int i8 = !z2 && (((i = this.w0) == 0 && z3) || ((i == 2 && z4) || ((i == 1 && z3) || (i == 3 && z4)))) ? 5 : 4;
        for (int i9 = 0; i9 < this.v0; i9++) {
            ConstraintWidget constraintWidget2 = this.u0[i9];
            if (this.x0 || constraintWidget2.h()) {
                SolverVariable solverVariableQ = dVar.q(constraintWidget2.S[this.w0]);
                ConstraintAnchor[] constraintAnchorArr3 = constraintWidget2.S;
                int i10 = this.w0;
                constraintAnchorArr3[i10].i = solverVariableQ;
                int i11 = (constraintAnchorArr3[i10].f676f == null || constraintAnchorArr3[i10].f676f.f674d != this) ? 0 : constraintAnchorArr3[i10].f677g + 0;
                if (i10 == 0 || i10 == 2) {
                    dVar.i(constraintAnchor.i, solverVariableQ, this.y0 - i11, z2);
                } else {
                    dVar.g(constraintAnchor.i, solverVariableQ, this.y0 + i11, z2);
                }
                dVar.e(constraintAnchor.i, solverVariableQ, this.y0 + i11, i8);
            }
        }
        int i12 = this.w0;
        if (i12 == 0) {
            dVar.e(this.M.i, this.K.i, 0, 8);
            dVar.e(this.K.i, this.W.M.i, 0, 4);
            dVar.e(this.K.i, this.W.K.i, 0, 0);
            return;
        }
        if (i12 == 1) {
            dVar.e(this.K.i, this.M.i, 0, 8);
            dVar.e(this.K.i, this.W.K.i, 0, 4);
            dVar.e(this.K.i, this.W.M.i, 0, 0);
        } else if (i12 == 2) {
            dVar.e(this.N.i, this.L.i, 0, 8);
            dVar.e(this.L.i, this.W.N.i, 0, 4);
            dVar.e(this.L.i, this.W.L.i, 0, 0);
        } else if (i12 == 3) {
            dVar.e(this.L.i, this.N.i, 0, 8);
            dVar.e(this.L.i, this.W.L.i, 0, 4);
            dVar.e(this.L.i, this.W.N.i, 0, 0);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public boolean h() {
        return true;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public boolean i0() {
        return this.z0;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public boolean j0() {
        return this.z0;
    }

    public boolean k1() {
        int i;
        int i2;
        int i3;
        int i4 = 0;
        boolean z = true;
        while (true) {
            i = this.v0;
            if (i4 >= i) {
                break;
            }
            ConstraintWidget constraintWidget = this.u0[i4];
            if ((this.x0 || constraintWidget.h()) && ((((i2 = this.w0) == 0 || i2 == 1) && !constraintWidget.i0()) || (((i3 = this.w0) == 2 || i3 == 3) && !constraintWidget.j0()))) {
                z = false;
            }
            i4++;
        }
        if (!z || i <= 0) {
            return false;
        }
        int iMax = 0;
        boolean z2 = false;
        for (int i5 = 0; i5 < this.v0; i5++) {
            ConstraintWidget constraintWidget2 = this.u0[i5];
            if (this.x0 || constraintWidget2.h()) {
                if (!z2) {
                    int i6 = this.w0;
                    if (i6 == 0) {
                        iMax = constraintWidget2.m(ConstraintAnchor.Type.LEFT).d();
                    } else if (i6 == 1) {
                        iMax = constraintWidget2.m(ConstraintAnchor.Type.RIGHT).d();
                    } else if (i6 == 2) {
                        iMax = constraintWidget2.m(ConstraintAnchor.Type.TOP).d();
                    } else if (i6 == 3) {
                        iMax = constraintWidget2.m(ConstraintAnchor.Type.BOTTOM).d();
                    }
                    z2 = true;
                }
                int i7 = this.w0;
                if (i7 == 0) {
                    iMax = Math.min(iMax, constraintWidget2.m(ConstraintAnchor.Type.LEFT).d());
                } else if (i7 == 1) {
                    iMax = Math.max(iMax, constraintWidget2.m(ConstraintAnchor.Type.RIGHT).d());
                } else if (i7 == 2) {
                    iMax = Math.min(iMax, constraintWidget2.m(ConstraintAnchor.Type.TOP).d());
                } else if (i7 == 3) {
                    iMax = Math.max(iMax, constraintWidget2.m(ConstraintAnchor.Type.BOTTOM).d());
                }
            }
        }
        int i8 = iMax + this.y0;
        int i9 = this.w0;
        if (i9 == 0 || i9 == 1) {
            w0(i8, i8);
        } else {
            z0(i8, i8);
        }
        this.z0 = true;
        return true;
    }

    public boolean l1() {
        return this.x0;
    }

    public int m1() {
        return this.w0;
    }

    public int n1() {
        return this.y0;
    }

    public int o1() {
        int i = this.w0;
        if (i == 0 || i == 1) {
            return 0;
        }
        return (i == 2 || i == 3) ? 1 : -1;
    }

    protected void p1() {
        for (int i = 0; i < this.v0; i++) {
            ConstraintWidget constraintWidget = this.u0[i];
            if (this.x0 || constraintWidget.h()) {
                int i2 = this.w0;
                if (i2 == 0 || i2 == 1) {
                    constraintWidget.J0(0, true);
                } else if (i2 == 2 || i2 == 3) {
                    constraintWidget.J0(1, true);
                }
            }
        }
    }

    public void q1(boolean z) {
        this.x0 = z;
    }

    public void r1(int i) {
        this.w0 = i;
    }

    public void s1(int i) {
        this.y0 = i;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public String toString() {
        String str = "[Barrier] " + r() + " {";
        for (int i = 0; i < this.v0; i++) {
            ConstraintWidget constraintWidget = this.u0[i];
            if (i > 0) {
                str = str + ", ";
            }
            str = str + constraintWidget.r();
        }
        return str + VectorFormat.DEFAULT_SUFFIX;
    }
}
