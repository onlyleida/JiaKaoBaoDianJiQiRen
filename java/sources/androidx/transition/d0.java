package androidx.transition;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Build;
import android.util.Property;
import android.view.View;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes.dex */
class d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final j0 f1839a;
    static final Property<View, Float> b;

    static class a extends Property<View, Float> {
        a(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(View view) {
            return Float.valueOf(d0.c(view));
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, Float f2) {
            d0.g(view, f2.floatValue());
        }
    }

    static class b extends Property<View, Rect> {
        b(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Rect get(View view) {
            return ViewCompat.getClipBounds(view);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, Rect rect) {
            ViewCompat.setClipBounds(view, rect);
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            f1839a = new i0();
        } else if (i >= 23) {
            f1839a = new h0();
        } else if (i >= 22) {
            f1839a = new g0();
        } else if (i >= 21) {
            f1839a = new f0();
        } else if (i >= 19) {
            f1839a = new e0();
        } else {
            f1839a = new j0();
        }
        b = new a(Float.class, "translationAlpha");
        new b(Rect.class, "clipBounds");
    }

    static void a(View view) {
        f1839a.a(view);
    }

    static c0 b(View view) {
        return Build.VERSION.SDK_INT >= 18 ? new b0(view) : a0.a(view);
    }

    static float c(View view) {
        return f1839a.c(view);
    }

    static n0 d(View view) {
        return Build.VERSION.SDK_INT >= 18 ? new m0(view) : new l0(view.getWindowToken());
    }

    static void e(View view) {
        f1839a.d(view);
    }

    static void f(View view, int i, int i2, int i3, int i4) {
        f1839a.e(view, i, i2, i3, i4);
    }

    static void g(View view, float f2) {
        f1839a.f(view, f2);
    }

    static void h(View view, int i) {
        f1839a.g(view, i);
    }

    static void i(View view, Matrix matrix) {
        f1839a.h(view, matrix);
    }

    static void j(View view, Matrix matrix) {
        f1839a.i(view, matrix);
    }
}
