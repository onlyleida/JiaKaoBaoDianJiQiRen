package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.R;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes.dex */
class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f403a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private o0 f404d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private o0 f405e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private o0 f406f;
    private int c = -1;
    private final h b = h.b();

    d(View view) {
        this.f403a = view;
    }

    private boolean a(Drawable drawable) {
        if (this.f406f == null) {
            this.f406f = new o0();
        }
        o0 o0Var = this.f406f;
        o0Var.a();
        ColorStateList backgroundTintList = ViewCompat.getBackgroundTintList(this.f403a);
        if (backgroundTintList != null) {
            o0Var.f476d = true;
            o0Var.f475a = backgroundTintList;
        }
        PorterDuff.Mode backgroundTintMode = ViewCompat.getBackgroundTintMode(this.f403a);
        if (backgroundTintMode != null) {
            o0Var.c = true;
            o0Var.b = backgroundTintMode;
        }
        if (!o0Var.f476d && !o0Var.c) {
            return false;
        }
        h.i(drawable, o0Var, this.f403a.getDrawableState());
        return true;
    }

    private boolean k() {
        int i = Build.VERSION.SDK_INT;
        if (i > 21) {
            return this.f404d != null;
        }
        return i == 21;
    }

    void b() {
        Drawable background = this.f403a.getBackground();
        if (background != null) {
            if (k() && a(background)) {
                return;
            }
            o0 o0Var = this.f405e;
            if (o0Var != null) {
                h.i(background, o0Var, this.f403a.getDrawableState());
                return;
            }
            o0 o0Var2 = this.f404d;
            if (o0Var2 != null) {
                h.i(background, o0Var2, this.f403a.getDrawableState());
            }
        }
    }

    ColorStateList c() {
        o0 o0Var = this.f405e;
        if (o0Var != null) {
            return o0Var.f475a;
        }
        return null;
    }

    PorterDuff.Mode d() {
        o0 o0Var = this.f405e;
        if (o0Var != null) {
            return o0Var.b;
        }
        return null;
    }

    void e(AttributeSet attributeSet, int i) {
        Context context = this.f403a.getContext();
        int[] iArr = R.styleable.ViewBackgroundHelper;
        q0 q0VarV = q0.v(context, attributeSet, iArr, i, 0);
        View view = this.f403a;
        ViewCompat.saveAttributeDataForStyleable(view, view.getContext(), iArr, attributeSet, q0VarV.r(), i, 0);
        try {
            int i2 = R.styleable.ViewBackgroundHelper_android_background;
            if (q0VarV.s(i2)) {
                this.c = q0VarV.n(i2, -1);
                ColorStateList colorStateListF = this.b.f(this.f403a.getContext(), this.c);
                if (colorStateListF != null) {
                    h(colorStateListF);
                }
            }
            int i3 = R.styleable.ViewBackgroundHelper_backgroundTint;
            if (q0VarV.s(i3)) {
                ViewCompat.setBackgroundTintList(this.f403a, q0VarV.c(i3));
            }
            int i4 = R.styleable.ViewBackgroundHelper_backgroundTintMode;
            if (q0VarV.s(i4)) {
                ViewCompat.setBackgroundTintMode(this.f403a, z.e(q0VarV.k(i4, -1), null));
            }
        } finally {
            q0VarV.w();
        }
    }

    void f(Drawable drawable) {
        this.c = -1;
        h(null);
        b();
    }

    void g(int i) {
        this.c = i;
        h hVar = this.b;
        h(hVar != null ? hVar.f(this.f403a.getContext(), i) : null);
        b();
    }

    void h(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.f404d == null) {
                this.f404d = new o0();
            }
            o0 o0Var = this.f404d;
            o0Var.f475a = colorStateList;
            o0Var.f476d = true;
        } else {
            this.f404d = null;
        }
        b();
    }

    void i(ColorStateList colorStateList) {
        if (this.f405e == null) {
            this.f405e = new o0();
        }
        o0 o0Var = this.f405e;
        o0Var.f475a = colorStateList;
        o0Var.f476d = true;
        b();
    }

    void j(PorterDuff.Mode mode) {
        if (this.f405e == null) {
            this.f405e = new o0();
        }
        o0 o0Var = this.f405e;
        o0Var.b = mode;
        o0Var.c = true;
        b();
    }
}
