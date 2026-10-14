package androidx.transition;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f1891a = true;

    static x a(ViewGroup viewGroup) {
        return Build.VERSION.SDK_INT >= 18 ? new w(viewGroup) : v.c(viewGroup);
    }

    @SuppressLint({"NewApi"})
    private static void b(ViewGroup viewGroup, boolean z) {
        if (f1891a) {
            try {
                viewGroup.suppressLayout(z);
            } catch (NoSuchMethodError unused) {
                f1891a = false;
            }
        }
    }

    static void c(ViewGroup viewGroup, boolean z) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            viewGroup.suppressLayout(z);
        } else if (i >= 18) {
            b(viewGroup, z);
        } else {
            z.b(viewGroup, z);
        }
    }
}
