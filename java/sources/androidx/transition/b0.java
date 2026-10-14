package androidx.transition;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewOverlay;

/* JADX INFO: loaded from: classes.dex */
class b0 implements c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ViewOverlay f1815a;

    b0(View view) {
        this.f1815a = view.getOverlay();
    }

    @Override // androidx.transition.c0
    public void add(Drawable drawable) {
        this.f1815a.add(drawable);
    }

    @Override // androidx.transition.c0
    public void remove(Drawable drawable) {
        this.f1815a.remove(drawable);
    }
}
