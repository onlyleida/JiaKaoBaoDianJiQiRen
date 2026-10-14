package androidx.constraintlayout.core.widgets;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class j extends ConstraintWidget {
    public ArrayList<ConstraintWidget> u0 = new ArrayList<>();

    public void a(ConstraintWidget constraintWidget) {
        this.u0.add(constraintWidget);
        if (constraintWidget.I() != null) {
            ((j) constraintWidget.I()).k1(constraintWidget);
        }
        constraintWidget.T0(this);
    }

    public ArrayList<ConstraintWidget> i1() {
        return this.u0;
    }

    public void j1() {
        ArrayList<ConstraintWidget> arrayList = this.u0;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = this.u0.get(i);
            if (constraintWidget instanceof j) {
                ((j) constraintWidget).j1();
            }
        }
    }

    public void k1(ConstraintWidget constraintWidget) {
        this.u0.remove(constraintWidget);
        constraintWidget.o0();
    }

    public void l1() {
        this.u0.clear();
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void o0() {
        this.u0.clear();
        super.o0();
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void q0(androidx.constraintlayout.core.c cVar) {
        super.q0(cVar);
        int size = this.u0.size();
        for (int i = 0; i < size; i++) {
            this.u0.get(i).q0(cVar);
        }
    }
}
