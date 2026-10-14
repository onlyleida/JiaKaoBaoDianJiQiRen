package androidx.transition;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class f0 extends e0 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f1849f = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f1850g = true;

    f0() {
    }

    @Override // androidx.transition.j0
    @SuppressLint({"NewApi"})
    public void h(View view, Matrix matrix) {
        if (f1849f) {
            try {
                view.transformMatrixToGlobal(matrix);
            } catch (NoSuchMethodError unused) {
                f1849f = false;
            }
        }
    }

    @Override // androidx.transition.j0
    @SuppressLint({"NewApi"})
    public void i(View view, Matrix matrix) {
        if (f1850g) {
            try {
                view.transformMatrixToLocal(matrix);
            } catch (NoSuchMethodError unused) {
                f1850g = false;
            }
        }
    }
}
