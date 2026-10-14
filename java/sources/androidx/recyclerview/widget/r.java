package androidx.recyclerview.widget;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public abstract class r extends RecyclerView.l {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f1791g = true;

    public abstract boolean A(RecyclerView.c0 c0Var);

    public final void B(RecyclerView.c0 c0Var) {
        J(c0Var);
        h(c0Var);
    }

    public final void C(RecyclerView.c0 c0Var) {
        K(c0Var);
    }

    public final void D(RecyclerView.c0 c0Var, boolean z) {
        L(c0Var, z);
        h(c0Var);
    }

    public final void E(RecyclerView.c0 c0Var, boolean z) {
        M(c0Var, z);
    }

    public final void F(RecyclerView.c0 c0Var) {
        N(c0Var);
        h(c0Var);
    }

    public final void G(RecyclerView.c0 c0Var) {
        O(c0Var);
    }

    public final void H(RecyclerView.c0 c0Var) {
        P(c0Var);
        h(c0Var);
    }

    public final void I(RecyclerView.c0 c0Var) {
        Q(c0Var);
    }

    public void J(RecyclerView.c0 c0Var) {
    }

    public void K(RecyclerView.c0 c0Var) {
    }

    public void L(RecyclerView.c0 c0Var, boolean z) {
    }

    public void M(RecyclerView.c0 c0Var, boolean z) {
    }

    public void N(RecyclerView.c0 c0Var) {
    }

    public void O(RecyclerView.c0 c0Var) {
    }

    public void P(RecyclerView.c0 c0Var) {
    }

    public void Q(RecyclerView.c0 c0Var) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public boolean a(RecyclerView.c0 c0Var, RecyclerView.l.c cVar, RecyclerView.l.c cVar2) {
        int i;
        int i2;
        return (cVar == null || ((i = cVar.f1650a) == (i2 = cVar2.f1650a) && cVar.b == cVar2.b)) ? x(c0Var) : z(c0Var, i, cVar.b, i2, cVar2.b);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public boolean b(RecyclerView.c0 c0Var, RecyclerView.c0 c0Var2, RecyclerView.l.c cVar, RecyclerView.l.c cVar2) {
        int i;
        int i2;
        int i3 = cVar.f1650a;
        int i4 = cVar.b;
        if (c0Var2.shouldIgnore()) {
            int i5 = cVar.f1650a;
            i2 = cVar.b;
            i = i5;
        } else {
            i = cVar2.f1650a;
            i2 = cVar2.b;
        }
        return y(c0Var, c0Var2, i3, i4, i, i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public boolean c(RecyclerView.c0 c0Var, RecyclerView.l.c cVar, RecyclerView.l.c cVar2) {
        int i = cVar.f1650a;
        int i2 = cVar.b;
        View view = c0Var.itemView;
        int left = cVar2 == null ? view.getLeft() : cVar2.f1650a;
        int top = cVar2 == null ? view.getTop() : cVar2.b;
        if (c0Var.isRemoved() || (i == left && i2 == top)) {
            return A(c0Var);
        }
        view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
        return z(c0Var, i, i2, left, top);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public boolean d(RecyclerView.c0 c0Var, RecyclerView.l.c cVar, RecyclerView.l.c cVar2) {
        int i = cVar.f1650a;
        int i2 = cVar2.f1650a;
        if (i != i2 || cVar.b != cVar2.b) {
            return z(c0Var, i, cVar.b, i2, cVar2.b);
        }
        F(c0Var);
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public boolean f(RecyclerView.c0 c0Var) {
        return !this.f1791g || c0Var.isInvalid();
    }

    public abstract boolean x(RecyclerView.c0 c0Var);

    public abstract boolean y(RecyclerView.c0 c0Var, RecyclerView.c0 c0Var2, int i, int i2, int i3, int i4);

    public abstract boolean z(RecyclerView.c0 c0Var, int i, int i2, int i3, int i4);
}
