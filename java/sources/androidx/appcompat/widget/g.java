package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.CompoundButton;
import androidx.appcompat.R;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes.dex */
class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CompoundButton f420a;
    private ColorStateList b = null;
    private PorterDuff.Mode c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f421d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f422e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f423f;

    g(CompoundButton compoundButton) {
        this.f420a = compoundButton;
    }

    void a() {
        Drawable drawableA = androidx.core.widget.c.a(this.f420a);
        if (drawableA != null) {
            if (this.f421d || this.f422e) {
                Drawable drawableMutate = androidx.core.graphics.drawable.a.r(drawableA).mutate();
                if (this.f421d) {
                    androidx.core.graphics.drawable.a.o(drawableMutate, this.b);
                }
                if (this.f422e) {
                    androidx.core.graphics.drawable.a.p(drawableMutate, this.c);
                }
                if (drawableMutate.isStateful()) {
                    drawableMutate.setState(this.f420a.getDrawableState());
                }
                this.f420a.setButtonDrawable(drawableMutate);
            }
        }
    }

    int b(int i) {
        Drawable drawableA;
        return (Build.VERSION.SDK_INT >= 17 || (drawableA = androidx.core.widget.c.a(this.f420a)) == null) ? i : i + drawableA.getIntrinsicWidth();
    }

    ColorStateList c() {
        return this.b;
    }

    PorterDuff.Mode d() {
        return this.c;
    }

    void e(AttributeSet attributeSet, int i) {
        boolean z;
        int iN;
        int iN2;
        Context context = this.f420a.getContext();
        int[] iArr = R.styleable.CompoundButton;
        q0 q0VarV = q0.v(context, attributeSet, iArr, i, 0);
        CompoundButton compoundButton = this.f420a;
        ViewCompat.saveAttributeDataForStyleable(compoundButton, compoundButton.getContext(), iArr, attributeSet, q0VarV.r(), i, 0);
        try {
            int i2 = R.styleable.CompoundButton_buttonCompat;
            if (!q0VarV.s(i2) || (iN2 = q0VarV.n(i2, 0)) == 0) {
                z = false;
            } else {
                try {
                    CompoundButton compoundButton2 = this.f420a;
                    compoundButton2.setButtonDrawable(androidx.appcompat.a.a.a.d(compoundButton2.getContext(), iN2));
                    z = true;
                } catch (Resources.NotFoundException unused) {
                    z = false;
                }
            }
            if (!z) {
                int i3 = R.styleable.CompoundButton_android_button;
                if (q0VarV.s(i3) && (iN = q0VarV.n(i3, 0)) != 0) {
                    CompoundButton compoundButton3 = this.f420a;
                    compoundButton3.setButtonDrawable(androidx.appcompat.a.a.a.d(compoundButton3.getContext(), iN));
                }
            }
            int i4 = R.styleable.CompoundButton_buttonTint;
            if (q0VarV.s(i4)) {
                androidx.core.widget.c.c(this.f420a, q0VarV.c(i4));
            }
            int i5 = R.styleable.CompoundButton_buttonTintMode;
            if (q0VarV.s(i5)) {
                androidx.core.widget.c.d(this.f420a, z.e(q0VarV.k(i5, -1), null));
            }
        } finally {
            q0VarV.w();
        }
    }

    void f() {
        if (this.f423f) {
            this.f423f = false;
        } else {
            this.f423f = true;
            a();
        }
    }

    void g(ColorStateList colorStateList) {
        this.b = colorStateList;
        this.f421d = true;
        a();
    }

    void h(PorterDuff.Mode mode) {
        this.c = mode;
        this.f422e = true;
        a();
    }
}
