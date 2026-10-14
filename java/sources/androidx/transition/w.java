package androidx.transition;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;

/* JADX INFO: loaded from: classes.dex */
class w implements x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ViewGroupOverlay f1890a;

    w(ViewGroup viewGroup) {
        this.f1890a = viewGroup.getOverlay();
    }

    @Override // androidx.transition.c0
    public void add(Drawable drawable) {
        this.f1890a.add(drawable);
    }

    @Override // androidx.transition.c0
    public void remove(Drawable drawable) {
        this.f1890a.remove(drawable);
    }

    @Override // androidx.transition.x
    public void add(View view) {
        this.f1890a.add(view);
    }

    @Override // androidx.transition.x
    public void remove(View view) {
        this.f1890a.remove(view);
    }
}
