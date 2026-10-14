package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
class j extends WidgetRun {
    public j(ConstraintWidget constraintWidget) {
        super(constraintWidget);
    }

    private void q(DependencyNode dependencyNode) {
        this.f698h.k.add(dependencyNode);
        dependencyNode.l.add(this.f698h);
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, androidx.constraintlayout.core.widgets.analyzer.d
    public void a(d dVar) {
        androidx.constraintlayout.core.widgets.a aVar = (androidx.constraintlayout.core.widgets.a) this.b;
        int iM1 = aVar.m1();
        Iterator<DependencyNode> it = this.f698h.l.iterator();
        int i = 0;
        int i2 = -1;
        while (it.hasNext()) {
            int i3 = it.next().f691g;
            if (i2 == -1 || i3 < i2) {
                i2 = i3;
            }
            if (i < i3) {
                i = i3;
            }
        }
        if (iM1 == 0 || iM1 == 2) {
            this.f698h.d(i2 + aVar.n1());
        } else {
            this.f698h.d(i + aVar.n1());
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void d() {
        ConstraintWidget constraintWidget = this.b;
        if (constraintWidget instanceof androidx.constraintlayout.core.widgets.a) {
            this.f698h.b = true;
            androidx.constraintlayout.core.widgets.a aVar = (androidx.constraintlayout.core.widgets.a) constraintWidget;
            int iM1 = aVar.m1();
            boolean zL1 = aVar.l1();
            int i = 0;
            if (iM1 == 0) {
                this.f698h.f689e = DependencyNode.Type.LEFT;
                while (i < aVar.v0) {
                    ConstraintWidget constraintWidget2 = aVar.u0[i];
                    if (zL1 || constraintWidget2.Q() != 8) {
                        DependencyNode dependencyNode = constraintWidget2.f681d.f698h;
                        dependencyNode.k.add(this.f698h);
                        this.f698h.l.add(dependencyNode);
                    }
                    i++;
                }
                q(this.b.f681d.f698h);
                q(this.b.f681d.i);
                return;
            }
            if (iM1 == 1) {
                this.f698h.f689e = DependencyNode.Type.RIGHT;
                while (i < aVar.v0) {
                    ConstraintWidget constraintWidget3 = aVar.u0[i];
                    if (zL1 || constraintWidget3.Q() != 8) {
                        DependencyNode dependencyNode2 = constraintWidget3.f681d.i;
                        dependencyNode2.k.add(this.f698h);
                        this.f698h.l.add(dependencyNode2);
                    }
                    i++;
                }
                q(this.b.f681d.f698h);
                q(this.b.f681d.i);
                return;
            }
            if (iM1 == 2) {
                this.f698h.f689e = DependencyNode.Type.TOP;
                while (i < aVar.v0) {
                    ConstraintWidget constraintWidget4 = aVar.u0[i];
                    if (zL1 || constraintWidget4.Q() != 8) {
                        DependencyNode dependencyNode3 = constraintWidget4.f682e.f698h;
                        dependencyNode3.k.add(this.f698h);
                        this.f698h.l.add(dependencyNode3);
                    }
                    i++;
                }
                q(this.b.f682e.f698h);
                q(this.b.f682e.i);
                return;
            }
            if (iM1 != 3) {
                return;
            }
            this.f698h.f689e = DependencyNode.Type.BOTTOM;
            while (i < aVar.v0) {
                ConstraintWidget constraintWidget5 = aVar.u0[i];
                if (zL1 || constraintWidget5.Q() != 8) {
                    DependencyNode dependencyNode4 = constraintWidget5.f682e.i;
                    dependencyNode4.k.add(this.f698h);
                    this.f698h.l.add(dependencyNode4);
                }
                i++;
            }
            q(this.b.f682e.f698h);
            q(this.b.f682e.i);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void e() {
        ConstraintWidget constraintWidget = this.b;
        if (constraintWidget instanceof androidx.constraintlayout.core.widgets.a) {
            int iM1 = ((androidx.constraintlayout.core.widgets.a) constraintWidget).m1();
            if (iM1 == 0 || iM1 == 1) {
                this.b.d1(this.f698h.f691g);
            } else {
                this.b.e1(this.f698h.f691g);
            }
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void f() {
        this.c = null;
        this.f698h.c();
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    boolean m() {
        return false;
    }
}
