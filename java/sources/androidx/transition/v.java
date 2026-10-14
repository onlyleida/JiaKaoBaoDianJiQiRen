package androidx.transition;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
class v extends a0 implements x {
    v(Context context, ViewGroup viewGroup, View view) {
        super(context, viewGroup, view);
    }

    static v c(ViewGroup viewGroup) {
        return (v) a0.a(viewGroup);
    }

    @Override // androidx.transition.x
    public void add(View view) {
        this.f1811a.b(view);
    }

    @Override // androidx.transition.x
    public void remove(View view) {
        this.f1811a.g(view);
    }
}
