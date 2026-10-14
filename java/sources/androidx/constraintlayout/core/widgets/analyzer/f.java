package androidx.constraintlayout.core.widgets.analyzer;

/* JADX INFO: loaded from: classes.dex */
class f extends DependencyNode {
    public int m;

    public f(WidgetRun widgetRun) {
        super(widgetRun);
        if (widgetRun instanceof k) {
            this.f689e = DependencyNode.Type.HORIZONTAL_DIMENSION;
        } else {
            this.f689e = DependencyNode.Type.VERTICAL_DIMENSION;
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.DependencyNode
    public void d(int i) {
        if (this.j) {
            return;
        }
        this.j = true;
        this.f691g = i;
        for (d dVar : this.k) {
            dVar.a(dVar);
        }
    }
}
