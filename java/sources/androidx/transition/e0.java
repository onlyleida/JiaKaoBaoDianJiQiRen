package androidx.transition;

import android.annotation.SuppressLint;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class e0 extends j0 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f1848e = true;

    e0() {
    }

    @Override // androidx.transition.j0
    public void a(View view) {
    }

    @Override // androidx.transition.j0
    @SuppressLint({"NewApi"})
    public float c(View view) {
        if (f1848e) {
            try {
                return view.getTransitionAlpha();
            } catch (NoSuchMethodError unused) {
                f1848e = false;
            }
        }
        return view.getAlpha();
    }

    @Override // androidx.transition.j0
    public void d(View view) {
    }

    @Override // androidx.transition.j0
    @SuppressLint({"NewApi"})
    public void f(View view, float f2) {
        if (f1848e) {
            try {
                view.setTransitionAlpha(f2);
                return;
            } catch (NoSuchMethodError unused) {
                f1848e = false;
            }
        }
        view.setAlpha(f2);
    }
}
