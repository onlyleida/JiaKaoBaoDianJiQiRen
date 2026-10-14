package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintWidget;

/* JADX INFO: loaded from: classes.dex */
class i extends WidgetRun {
    public i(ConstraintWidget constraintWidget) {
        super(constraintWidget);
        constraintWidget.f681d.f();
        constraintWidget.f682e.f();
        this.f696f = ((androidx.constraintlayout.core.widgets.e) constraintWidget).j1();
    }

    private void q(DependencyNode dependencyNode) {
        this.f698h.k.add(dependencyNode);
        dependencyNode.l.add(this.f698h);
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, androidx.constraintlayout.core.widgets.analyzer.d
    public void a(d dVar) {
        DependencyNode dependencyNode = this.f698h;
        if (dependencyNode.c && !dependencyNode.j) {
            this.f698h.d((int) ((dependencyNode.l.get(0).f691g * ((androidx.constraintlayout.core.widgets.e) this.b).m1()) + 0.5f));
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void d() {
        androidx.constraintlayout.core.widgets.e eVar = (androidx.constraintlayout.core.widgets.e) this.b;
        int iK1 = eVar.k1();
        int iL1 = eVar.l1();
        eVar.m1();
        if (eVar.j1() == 1) {
            if (iK1 != -1) {
                this.f698h.l.add(this.b.W.f681d.f698h);
                this.b.W.f681d.f698h.k.add(this.f698h);
                this.f698h.f690f = iK1;
            } else if (iL1 != -1) {
                this.f698h.l.add(this.b.W.f681d.i);
                this.b.W.f681d.i.k.add(this.f698h);
                this.f698h.f690f = -iL1;
            } else {
                DependencyNode dependencyNode = this.f698h;
                dependencyNode.b = true;
                dependencyNode.l.add(this.b.W.f681d.i);
                this.b.W.f681d.i.k.add(this.f698h);
            }
            q(this.b.f681d.f698h);
            q(this.b.f681d.i);
            return;
        }
        if (iK1 != -1) {
            this.f698h.l.add(this.b.W.f682e.f698h);
            this.b.W.f682e.f698h.k.add(this.f698h);
            this.f698h.f690f = iK1;
        } else if (iL1 != -1) {
            this.f698h.l.add(this.b.W.f682e.i);
            this.b.W.f682e.i.k.add(this.f698h);
            this.f698h.f690f = -iL1;
        } else {
            DependencyNode dependencyNode2 = this.f698h;
            dependencyNode2.b = true;
            dependencyNode2.l.add(this.b.W.f682e.i);
            this.b.W.f682e.i.k.add(this.f698h);
        }
        q(this.b.f682e.f698h);
        q(this.b.f682e.i);
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void e() {
        if (((androidx.constraintlayout.core.widgets.e) this.b).j1() == 1) {
            this.b.d1(this.f698h.f691g);
        } else {
            this.b.e1(this.f698h.f691g);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void f() {
        this.f698h.c();
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    boolean m() {
        return false;
    }
}
