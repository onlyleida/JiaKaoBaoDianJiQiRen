package androidx.transition;

import android.annotation.SuppressLint;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class g0 extends f0 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static boolean f1851h = true;

    g0() {
    }

    @Override // androidx.transition.j0
    @SuppressLint({"NewApi"})
    public void e(View view, int i, int i2, int i3, int i4) {
        if (f1851h) {
            try {
                view.setLeftTopRightBottom(i, i2, i3, i4);
            } catch (NoSuchMethodError unused) {
                f1851h = false;
            }
        }
    }
}
