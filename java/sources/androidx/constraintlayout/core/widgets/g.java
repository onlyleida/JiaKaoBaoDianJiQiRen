package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.widgets.analyzer.n;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class g extends ConstraintWidget implements f {
    public ConstraintWidget[] u0 = new ConstraintWidget[4];
    public int v0 = 0;

    @Override // androidx.constraintlayout.core.widgets.f
    public void a(ConstraintWidget constraintWidget) {
        if (constraintWidget == this || constraintWidget == null) {
            return;
        }
        int i = this.v0 + 1;
        ConstraintWidget[] constraintWidgetArr = this.u0;
        if (i > constraintWidgetArr.length) {
            this.u0 = (ConstraintWidget[]) Arrays.copyOf(constraintWidgetArr, constraintWidgetArr.length * 2);
        }
        ConstraintWidget[] constraintWidgetArr2 = this.u0;
        int i2 = this.v0;
        constraintWidgetArr2[i2] = constraintWidget;
        this.v0 = i2 + 1;
    }

    @Override // androidx.constraintlayout.core.widgets.f
    public void b() {
        this.v0 = 0;
        Arrays.fill(this.u0, (Object) null);
    }

    @Override // androidx.constraintlayout.core.widgets.f
    public void c(d dVar) {
    }

    public void i1(ArrayList<n> arrayList, int i, n nVar) {
        for (int i2 = 0; i2 < this.v0; i2++) {
            nVar.a(this.u0[i2]);
        }
        for (int i3 = 0; i3 < this.v0; i3++) {
            androidx.constraintlayout.core.widgets.analyzer.h.a(this.u0[i3], i, arrayList, nVar);
        }
    }

    public int j1(int i) {
        int i2;
        int i3;
        for (int i4 = 0; i4 < this.v0; i4++) {
            ConstraintWidget constraintWidget = this.u0[i4];
            if (i == 0 && (i3 = constraintWidget.r0) != -1) {
                return i3;
            }
            if (i == 1 && (i2 = constraintWidget.s0) != -1) {
                return i2;
            }
        }
        return -1;
    }
}
