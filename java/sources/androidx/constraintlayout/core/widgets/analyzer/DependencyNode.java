package androidx.constraintlayout.core.widgets.analyzer;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class DependencyNode implements d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    WidgetRun f688d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f690f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f691g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public d f687a = null;
    public boolean b = false;
    public boolean c = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Type f689e = Type.UNKNOWN;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f692h = 1;
    f i = null;
    public boolean j = false;
    List<d> k = new ArrayList();
    List<DependencyNode> l = new ArrayList();

    enum Type {
        UNKNOWN,
        HORIZONTAL_DIMENSION,
        VERTICAL_DIMENSION,
        LEFT,
        RIGHT,
        TOP,
        BOTTOM,
        BASELINE
    }

    public DependencyNode(WidgetRun widgetRun) {
        this.f688d = widgetRun;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.d
    public void a(d dVar) {
        Iterator<DependencyNode> it = this.l.iterator();
        while (it.hasNext()) {
            if (!it.next().j) {
                return;
            }
        }
        this.c = true;
        d dVar2 = this.f687a;
        if (dVar2 != null) {
            dVar2.a(this);
        }
        if (this.b) {
            this.f688d.a(this);
            return;
        }
        DependencyNode dependencyNode = null;
        int i = 0;
        for (DependencyNode dependencyNode2 : this.l) {
            if (!(dependencyNode2 instanceof f)) {
                i++;
                dependencyNode = dependencyNode2;
            }
        }
        if (dependencyNode != null && i == 1 && dependencyNode.j) {
            f fVar = this.i;
            if (fVar != null) {
                if (!fVar.j) {
                    return;
                } else {
                    this.f690f = this.f692h * fVar.f691g;
                }
            }
            d(dependencyNode.f691g + this.f690f);
        }
        d dVar3 = this.f687a;
        if (dVar3 != null) {
            dVar3.a(this);
        }
    }

    public void b(d dVar) {
        this.k.add(dVar);
        if (this.j) {
            dVar.a(dVar);
        }
    }

    public void c() {
        this.l.clear();
        this.k.clear();
        this.j = false;
        this.f691g = 0;
        this.c = false;
        this.b = false;
    }

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

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f688d.b.r());
        sb.append(":");
        sb.append(this.f689e);
        sb.append("(");
        sb.append(this.j ? Integer.valueOf(this.f691g) : "unresolved");
        sb.append(") <t=");
        sb.append(this.l.size());
        sb.append(":d=");
        sb.append(this.k.size());
        sb.append(">");
        return sb.toString();
    }
}
