package androidx.transition;

import android.graphics.Matrix;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class i0 extends h0 {
    i0() {
    }

    @Override // androidx.transition.e0, androidx.transition.j0
    public float c(View view) {
        return view.getTransitionAlpha();
    }

    @Override // androidx.transition.g0, androidx.transition.j0
    public void e(View view, int i, int i2, int i3, int i4) {
        view.setLeftTopRightBottom(i, i2, i3, i4);
    }

    @Override // androidx.transition.e0, androidx.transition.j0
    public void f(View view, float f2) {
        view.setTransitionAlpha(f2);
    }

    @Override // androidx.transition.h0, androidx.transition.j0
    public void g(View view, int i) {
        view.setTransitionVisibility(i);
    }

    @Override // androidx.transition.f0, androidx.transition.j0
    public void h(View view, Matrix matrix) {
        view.transformMatrixToGlobal(matrix);
    }

    @Override // androidx.transition.f0, androidx.transition.j0
    public void i(View view, Matrix matrix) {
        view.transformMatrixToLocal(matrix);
    }
}
