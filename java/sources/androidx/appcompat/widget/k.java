package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.appcompat.R;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ImageView f455a;
    private o0 b;
    private o0 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private o0 f456d;

    public k(ImageView imageView) {
        this.f455a = imageView;
    }

    private boolean a(Drawable drawable) {
        if (this.f456d == null) {
            this.f456d = new o0();
        }
        o0 o0Var = this.f456d;
        o0Var.a();
        ColorStateList colorStateListA = androidx.core.widget.e.a(this.f455a);
        if (colorStateListA != null) {
            o0Var.f476d = true;
            o0Var.f475a = colorStateListA;
        }
        PorterDuff.Mode modeB = androidx.core.widget.e.b(this.f455a);
        if (modeB != null) {
            o0Var.c = true;
            o0Var.b = modeB;
        }
        if (!o0Var.f476d && !o0Var.c) {
            return false;
        }
        h.i(drawable, o0Var, this.f455a.getDrawableState());
        return true;
    }

    private boolean j() {
        int i = Build.VERSION.SDK_INT;
        if (i > 21) {
            return this.b != null;
        }
        return i == 21;
    }

    void b() {
        Drawable drawable = this.f455a.getDrawable();
        if (drawable != null) {
            z.b(drawable);
        }
        if (drawable != null) {
            if (j() && a(drawable)) {
                return;
            }
            o0 o0Var = this.c;
            if (o0Var != null) {
                h.i(drawable, o0Var, this.f455a.getDrawableState());
                return;
            }
            o0 o0Var2 = this.b;
            if (o0Var2 != null) {
                h.i(drawable, o0Var2, this.f455a.getDrawableState());
            }
        }
    }

    ColorStateList c() {
        o0 o0Var = this.c;
        if (o0Var != null) {
            return o0Var.f475a;
        }
        return null;
    }

    PorterDuff.Mode d() {
        o0 o0Var = this.c;
        if (o0Var != null) {
            return o0Var.b;
        }
        return null;
    }

    boolean e() {
        return Build.VERSION.SDK_INT < 21 || !(this.f455a.getBackground() instanceof RippleDrawable);
    }

    public void f(AttributeSet attributeSet, int i) {
        int iN;
        Context context = this.f455a.getContext();
        int[] iArr = R.styleable.AppCompatImageView;
        q0 q0VarV = q0.v(context, attributeSet, iArr, i, 0);
        ImageView imageView = this.f455a;
        ViewCompat.saveAttributeDataForStyleable(imageView, imageView.getContext(), iArr, attributeSet, q0VarV.r(), i, 0);
        try {
            Drawable drawable = this.f455a.getDrawable();
            if (drawable == null && (iN = q0VarV.n(R.styleable.AppCompatImageView_srcCompat, -1)) != -1 && (drawable = androidx.appcompat.a.a.a.d(this.f455a.getContext(), iN)) != null) {
                this.f455a.setImageDrawable(drawable);
            }
            if (drawable != null) {
                z.b(drawable);
            }
            int i2 = R.styleable.AppCompatImageView_tint;
            if (q0VarV.s(i2)) {
                androidx.core.widget.e.c(this.f455a, q0VarV.c(i2));
            }
            int i3 = R.styleable.AppCompatImageView_tintMode;
            if (q0VarV.s(i3)) {
                androidx.core.widget.e.d(this.f455a, z.e(q0VarV.k(i3, -1), null));
            }
        } finally {
            q0VarV.w();
        }
    }

    public void g(int i) {
        if (i != 0) {
            Drawable drawableD = androidx.appcompat.a.a.a.d(this.f455a.getContext(), i);
            if (drawableD != null) {
                z.b(drawableD);
            }
            this.f455a.setImageDrawable(drawableD);
        } else {
            this.f455a.setImageDrawable(null);
        }
        b();
    }

    void h(ColorStateList colorStateList) {
        if (this.c == null) {
            this.c = new o0();
        }
        o0 o0Var = this.c;
        o0Var.f475a = colorStateList;
        o0Var.f476d = true;
        b();
    }

    void i(PorterDuff.Mode mode) {
        if (this.c == null) {
            this.c = new o0();
        }
        o0 o0Var = this.c;
        o0Var.b = mode;
        o0Var.c = true;
        b();
    }
}
