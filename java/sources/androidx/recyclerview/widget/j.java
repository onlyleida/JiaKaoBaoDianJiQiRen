package androidx.recyclerview.widget;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class j {
    int b;
    int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f1781d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f1782e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    boolean f1785h;
    boolean i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f1780a = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f1783f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f1784g = 0;

    j() {
    }

    boolean a(RecyclerView.z zVar) {
        int i = this.c;
        return i >= 0 && i < zVar.b();
    }

    View b(RecyclerView.v vVar) {
        View viewO = vVar.o(this.c);
        this.c += this.f1781d;
        return viewO;
    }

    public String toString() {
        return "LayoutState{mAvailable=" + this.b + ", mCurrentPosition=" + this.c + ", mItemDirection=" + this.f1781d + ", mLayoutDirection=" + this.f1782e + ", mStartLine=" + this.f1783f + ", mEndLine=" + this.f1784g + '}';
    }
}
