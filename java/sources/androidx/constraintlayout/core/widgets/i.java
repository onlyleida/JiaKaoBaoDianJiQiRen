package androidx.constraintlayout.core.widgets;

import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public class i extends g {
    private boolean w0 = false;

    @Override // androidx.constraintlayout.core.widgets.g, androidx.constraintlayout.core.widgets.f
    public void c(d dVar) {
        k1();
    }

    public void k1() {
        for (int i = 0; i < this.v0; i++) {
            ConstraintWidget constraintWidget = this.u0[i];
            if (constraintWidget != null) {
                constraintWidget.L0(true);
            }
        }
    }

    public boolean l1(HashSet<ConstraintWidget> hashSet) {
        for (int i = 0; i < this.v0; i++) {
            if (hashSet.contains(this.u0[i])) {
                return true;
            }
        }
        return false;
    }

    public boolean m1() {
        return this.w0;
    }
}
