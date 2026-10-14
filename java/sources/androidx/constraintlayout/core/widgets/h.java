package androidx.constraintlayout.core.widgets;

/* JADX INFO: loaded from: classes.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static boolean[] f729a = new boolean[3];

    static void a(d dVar, androidx.constraintlayout.core.d dVar2, ConstraintWidget constraintWidget) {
        constraintWidget.p = -1;
        constraintWidget.q = -1;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = dVar.V[0];
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (dimensionBehaviour != dimensionBehaviour2 && constraintWidget.V[0] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            int i = constraintWidget.K.f677g;
            int iR = dVar.R() - constraintWidget.M.f677g;
            ConstraintAnchor constraintAnchor = constraintWidget.K;
            constraintAnchor.i = dVar2.q(constraintAnchor);
            ConstraintAnchor constraintAnchor2 = constraintWidget.M;
            constraintAnchor2.i = dVar2.q(constraintAnchor2);
            dVar2.f(constraintWidget.K.i, i);
            dVar2.f(constraintWidget.M.i, iR);
            constraintWidget.p = 2;
            constraintWidget.F0(i, iR);
        }
        if (dVar.V[1] == dimensionBehaviour2 || constraintWidget.V[1] != ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            return;
        }
        int i2 = constraintWidget.L.f677g;
        int iV = dVar.v() - constraintWidget.N.f677g;
        ConstraintAnchor constraintAnchor3 = constraintWidget.L;
        constraintAnchor3.i = dVar2.q(constraintAnchor3);
        ConstraintAnchor constraintAnchor4 = constraintWidget.N;
        constraintAnchor4.i = dVar2.q(constraintAnchor4);
        dVar2.f(constraintWidget.L.i, i2);
        dVar2.f(constraintWidget.N.i, iV);
        if (constraintWidget.d0 > 0 || constraintWidget.Q() == 8) {
            ConstraintAnchor constraintAnchor5 = constraintWidget.O;
            constraintAnchor5.i = dVar2.q(constraintAnchor5);
            dVar2.f(constraintWidget.O.i, constraintWidget.d0 + i2);
        }
        constraintWidget.q = 2;
        constraintWidget.W0(i2, iV);
    }

    public static final boolean b(int i, int i2) {
        return (i & i2) == i2;
    }
}
