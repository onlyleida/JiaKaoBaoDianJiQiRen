package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.LocaleList;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import androidx.appcompat.R;
import androidx.core.view.ViewCompat;
import androidx.core.view.inputmethod.EditorInfoCompat;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.lang.ref.WeakReference;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TextView f503a;
    private o0 b;
    private o0 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private o0 f504d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private o0 f505e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private o0 f506f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private o0 f507g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private o0 f508h;
    private final v i;
    private int j = 0;
    private int k = -1;
    private Typeface l;
    private boolean m;

    class a extends androidx.core.a.f.f.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f509a;
        final /* synthetic */ int b;
        final /* synthetic */ WeakReference c;

        a(int i, int i2, WeakReference weakReference) {
            this.f509a = i;
            this.b = i2;
            this.c = weakReference;
        }

        @Override // androidx.core.a.f.f.c
        public void onFontRetrievalFailed(int i) {
        }

        @Override // androidx.core.a.f.f.c
        public void onFontRetrieved(Typeface typeface) {
            int i;
            if (Build.VERSION.SDK_INT >= 28 && (i = this.f509a) != -1) {
                typeface = Typeface.create(typeface, i, (this.b & 2) != 0);
            }
            u.this.n(this.c, typeface);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ TextView f511a;
        final /* synthetic */ Typeface b;
        final /* synthetic */ int c;

        b(u uVar, TextView textView, Typeface typeface, int i) {
            this.f511a = textView;
            this.b = typeface;
            this.c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f511a.setTypeface(this.b, this.c);
        }
    }

    u(TextView textView) {
        this.f503a = textView;
        this.i = new v(textView);
    }

    private void B(int i, float f2) {
        this.i.y(i, f2);
    }

    private void C(Context context, q0 q0Var) {
        String strO;
        int i = Build.VERSION.SDK_INT;
        this.j = q0Var.k(R.styleable.TextAppearance_android_textStyle, this.j);
        if (i >= 28) {
            int iK = q0Var.k(R.styleable.TextAppearance_android_textFontWeight, -1);
            this.k = iK;
            if (iK != -1) {
                this.j = (this.j & 2) | 0;
            }
        }
        int i2 = R.styleable.TextAppearance_android_fontFamily;
        if (!q0Var.s(i2) && !q0Var.s(R.styleable.TextAppearance_fontFamily)) {
            int i3 = R.styleable.TextAppearance_android_typeface;
            if (q0Var.s(i3)) {
                this.m = false;
                int iK2 = q0Var.k(i3, 1);
                if (iK2 == 1) {
                    this.l = Typeface.SANS_SERIF;
                    return;
                } else if (iK2 == 2) {
                    this.l = Typeface.SERIF;
                    return;
                } else {
                    if (iK2 != 3) {
                        return;
                    }
                    this.l = Typeface.MONOSPACE;
                    return;
                }
            }
            return;
        }
        this.l = null;
        int i4 = R.styleable.TextAppearance_fontFamily;
        if (q0Var.s(i4)) {
            i2 = i4;
        }
        int i5 = this.k;
        int i6 = this.j;
        if (!context.isRestricted()) {
            try {
                Typeface typefaceJ = q0Var.j(i2, this.j, new a(i5, i6, new WeakReference(this.f503a)));
                if (typefaceJ != null) {
                    if (i < 28 || this.k == -1) {
                        this.l = typefaceJ;
                    } else {
                        this.l = Typeface.create(Typeface.create(typefaceJ, 0), this.k, (this.j & 2) != 0);
                    }
                }
                this.m = this.l == null;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.l != null || (strO = q0Var.o(i2)) == null) {
            return;
        }
        if (i < 28 || this.k == -1) {
            this.l = Typeface.create(strO, this.j);
        } else {
            this.l = Typeface.create(Typeface.create(strO, 0), this.k, (this.j & 2) != 0);
        }
    }

    private void a(Drawable drawable, o0 o0Var) {
        if (drawable == null || o0Var == null) {
            return;
        }
        h.i(drawable, o0Var, this.f503a.getDrawableState());
    }

    private static o0 d(Context context, h hVar, int i) {
        ColorStateList colorStateListF = hVar.f(context, i);
        if (colorStateListF == null) {
            return null;
        }
        o0 o0Var = new o0();
        o0Var.f476d = true;
        o0Var.f475a = colorStateListF;
        return o0Var;
    }

    private void y(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4, Drawable drawable5, Drawable drawable6) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 17 && (drawable5 != null || drawable6 != null)) {
            Drawable[] compoundDrawablesRelative = this.f503a.getCompoundDrawablesRelative();
            TextView textView = this.f503a;
            if (drawable5 == null) {
                drawable5 = compoundDrawablesRelative[0];
            }
            if (drawable2 == null) {
                drawable2 = compoundDrawablesRelative[1];
            }
            if (drawable6 == null) {
                drawable6 = compoundDrawablesRelative[2];
            }
            if (drawable4 == null) {
                drawable4 = compoundDrawablesRelative[3];
            }
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable5, drawable2, drawable6, drawable4);
            return;
        }
        if (drawable == null && drawable2 == null && drawable3 == null && drawable4 == null) {
            return;
        }
        if (i >= 17) {
            Drawable[] compoundDrawablesRelative2 = this.f503a.getCompoundDrawablesRelative();
            if (compoundDrawablesRelative2[0] != null || compoundDrawablesRelative2[2] != null) {
                TextView textView2 = this.f503a;
                Drawable drawable7 = compoundDrawablesRelative2[0];
                if (drawable2 == null) {
                    drawable2 = compoundDrawablesRelative2[1];
                }
                Drawable drawable8 = compoundDrawablesRelative2[2];
                if (drawable4 == null) {
                    drawable4 = compoundDrawablesRelative2[3];
                }
                textView2.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable7, drawable2, drawable8, drawable4);
                return;
            }
        }
        Drawable[] compoundDrawables = this.f503a.getCompoundDrawables();
        TextView textView3 = this.f503a;
        if (drawable == null) {
            drawable = compoundDrawables[0];
        }
        if (drawable2 == null) {
            drawable2 = compoundDrawables[1];
        }
        if (drawable3 == null) {
            drawable3 = compoundDrawables[2];
        }
        if (drawable4 == null) {
            drawable4 = compoundDrawables[3];
        }
        textView3.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
    }

    private void z() {
        o0 o0Var = this.f508h;
        this.b = o0Var;
        this.c = o0Var;
        this.f504d = o0Var;
        this.f505e = o0Var;
        this.f506f = o0Var;
        this.f507g = o0Var;
    }

    void A(int i, float f2) {
        if (androidx.core.widget.b.J || l()) {
            return;
        }
        B(i, f2);
    }

    void b() {
        if (this.b != null || this.c != null || this.f504d != null || this.f505e != null) {
            Drawable[] compoundDrawables = this.f503a.getCompoundDrawables();
            a(compoundDrawables[0], this.b);
            a(compoundDrawables[1], this.c);
            a(compoundDrawables[2], this.f504d);
            a(compoundDrawables[3], this.f505e);
        }
        if (Build.VERSION.SDK_INT >= 17) {
            if (this.f506f == null && this.f507g == null) {
                return;
            }
            Drawable[] compoundDrawablesRelative = this.f503a.getCompoundDrawablesRelative();
            a(compoundDrawablesRelative[0], this.f506f);
            a(compoundDrawablesRelative[2], this.f507g);
        }
    }

    void c() {
        this.i.b();
    }

    int e() {
        return this.i.j();
    }

    int f() {
        return this.i.k();
    }

    int g() {
        return this.i.l();
    }

    int[] h() {
        return this.i.m();
    }

    int i() {
        return this.i.n();
    }

    ColorStateList j() {
        o0 o0Var = this.f508h;
        if (o0Var != null) {
            return o0Var.f475a;
        }
        return null;
    }

    PorterDuff.Mode k() {
        o0 o0Var = this.f508h;
        if (o0Var != null) {
            return o0Var.b;
        }
        return null;
    }

    boolean l() {
        return this.i.s();
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:47:0x0104  */
    /* JADX WARN: Code duplicated, block: B:48:0x0109  */
    /* JADX WARN: Code duplicated, block: B:50:0x010c  */
    /* JADX WARN: Code duplicated, block: B:52:0x0114  */
    /* JADX WARN: Code duplicated, block: B:53:0x0119  */
    /* JADX WARN: Code duplicated, block: B:61:0x0140  */
    /* JADX WARN: Code duplicated, block: B:80:0x0187  */
    /* JADX WARN: Code duplicated, block: B:88:0x01a6  */
    @SuppressLint({"NewApi"})
    void m(AttributeSet attributeSet, int i) {
        String strO;
        ColorStateList colorStateListC;
        String strO2;
        boolean zA;
        ColorStateList colorStateListC2;
        ColorStateList colorStateListC3;
        boolean z;
        int i2;
        String strO3;
        h hVar;
        int i3;
        int i4;
        int i5;
        Context context = this.f503a.getContext();
        h hVarB = h.b();
        int[] iArr = R.styleable.AppCompatTextHelper;
        q0 q0VarV = q0.v(context, attributeSet, iArr, i, 0);
        TextView textView = this.f503a;
        ViewCompat.saveAttributeDataForStyleable(textView, textView.getContext(), iArr, attributeSet, q0VarV.r(), i, 0);
        int iN = q0VarV.n(R.styleable.AppCompatTextHelper_android_textAppearance, -1);
        int i6 = R.styleable.AppCompatTextHelper_android_drawableLeft;
        if (q0VarV.s(i6)) {
            this.b = d(context, hVarB, q0VarV.n(i6, 0));
        }
        int i7 = R.styleable.AppCompatTextHelper_android_drawableTop;
        if (q0VarV.s(i7)) {
            this.c = d(context, hVarB, q0VarV.n(i7, 0));
        }
        int i8 = R.styleable.AppCompatTextHelper_android_drawableRight;
        if (q0VarV.s(i8)) {
            this.f504d = d(context, hVarB, q0VarV.n(i8, 0));
        }
        int i9 = R.styleable.AppCompatTextHelper_android_drawableBottom;
        if (q0VarV.s(i9)) {
            this.f505e = d(context, hVarB, q0VarV.n(i9, 0));
        }
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 17) {
            int i11 = R.styleable.AppCompatTextHelper_android_drawableStart;
            if (q0VarV.s(i11)) {
                this.f506f = d(context, hVarB, q0VarV.n(i11, 0));
            }
            int i12 = R.styleable.AppCompatTextHelper_android_drawableEnd;
            if (q0VarV.s(i12)) {
                this.f507g = d(context, hVarB, q0VarV.n(i12, 0));
            }
        }
        q0VarV.w();
        boolean z2 = this.f503a.getTransformationMethod() instanceof PasswordTransformationMethod;
        if (iN != -1) {
            q0 q0VarT = q0.t(context, iN, R.styleable.TextAppearance);
            if (z2) {
                zA = false;
                z = false;
            } else {
                int i13 = R.styleable.TextAppearance_textAllCaps;
                if (q0VarT.s(i13)) {
                    zA = q0VarT.a(i13, false);
                    z = true;
                } else {
                    zA = false;
                    z = false;
                }
            }
            C(context, q0VarT);
            if (i10 < 23) {
                int i14 = R.styleable.TextAppearance_android_textColor;
                colorStateListC = q0VarT.s(i14) ? q0VarT.c(i14) : null;
                int i15 = R.styleable.TextAppearance_android_textColorHint;
                colorStateListC2 = q0VarT.s(i15) ? q0VarT.c(i15) : null;
                int i16 = R.styleable.TextAppearance_android_textColorLink;
                colorStateListC3 = q0VarT.s(i16) ? q0VarT.c(i16) : null;
                i4 = R.styleable.TextAppearance_textLocale;
                if (q0VarT.s(i4)) {
                    strO2 = q0VarT.o(i4);
                } else {
                    strO2 = null;
                }
                if (i10 >= 26) {
                    i5 = R.styleable.TextAppearance_fontVariationSettings;
                    if (q0VarT.s(i5)) {
                        strO = q0VarT.o(i5);
                    } else {
                        strO = null;
                    }
                } else {
                    strO = null;
                }
                q0VarT.w();
            } else {
                colorStateListC = null;
                colorStateListC2 = null;
            }
            i4 = R.styleable.TextAppearance_textLocale;
            if (q0VarT.s(i4)) {
                strO2 = q0VarT.o(i4);
            } else {
                strO2 = null;
            }
            if (i10 >= 26) {
                i5 = R.styleable.TextAppearance_fontVariationSettings;
                if (q0VarT.s(i5)) {
                    strO = q0VarT.o(i5);
                } else {
                    strO = null;
                }
            } else {
                strO = null;
            }
            q0VarT.w();
        } else {
            strO = null;
            colorStateListC = null;
            strO2 = null;
            zA = false;
            colorStateListC2 = null;
            colorStateListC3 = null;
            z = false;
        }
        q0 q0VarV2 = q0.v(context, attributeSet, R.styleable.TextAppearance, i, 0);
        if (z2) {
            i2 = 23;
        } else {
            int i17 = R.styleable.TextAppearance_textAllCaps;
            if (q0VarV2.s(i17)) {
                zA = q0VarV2.a(i17, false);
                i2 = 23;
                z = true;
            } else {
                i2 = 23;
            }
        }
        if (i10 < i2) {
            int i18 = R.styleable.TextAppearance_android_textColor;
            if (q0VarV2.s(i18)) {
                colorStateListC = q0VarV2.c(i18);
            }
            int i19 = R.styleable.TextAppearance_android_textColorHint;
            if (q0VarV2.s(i19)) {
                colorStateListC2 = q0VarV2.c(i19);
            }
            int i20 = R.styleable.TextAppearance_android_textColorLink;
            if (q0VarV2.s(i20)) {
                colorStateListC3 = q0VarV2.c(i20);
            }
        }
        int i21 = R.styleable.TextAppearance_textLocale;
        if (q0VarV2.s(i21)) {
            strO2 = q0VarV2.o(i21);
        }
        if (i10 >= 26) {
            int i22 = R.styleable.TextAppearance_fontVariationSettings;
            if (q0VarV2.s(i22)) {
                strO3 = q0VarV2.o(i22);
            } else {
                strO3 = strO;
            }
        } else {
            strO3 = strO;
        }
        if (i10 >= 28) {
            int i23 = R.styleable.TextAppearance_android_textSize;
            if (q0VarV2.s(i23)) {
                hVar = hVarB;
                if (q0VarV2.f(i23, -1) == 0) {
                    this.f503a.setTextSize(0, BitmapDescriptorFactory.HUE_RED);
                }
            } else {
                hVar = hVarB;
            }
        } else {
            hVar = hVarB;
        }
        C(context, q0VarV2);
        q0VarV2.w();
        if (colorStateListC != null) {
            this.f503a.setTextColor(colorStateListC);
        }
        if (colorStateListC2 != null) {
            this.f503a.setHintTextColor(colorStateListC2);
        }
        if (colorStateListC3 != null) {
            this.f503a.setLinkTextColor(colorStateListC3);
        }
        if (!z2 && z) {
            s(zA);
        }
        Typeface typeface = this.l;
        if (typeface != null) {
            if (this.k == -1) {
                this.f503a.setTypeface(typeface, this.j);
            } else {
                this.f503a.setTypeface(typeface);
            }
        }
        if (strO3 != null) {
            this.f503a.setFontVariationSettings(strO3);
        }
        if (strO2 != null) {
            if (i10 >= 24) {
                this.f503a.setTextLocales(LocaleList.forLanguageTags(strO2));
            } else if (i10 >= 21) {
                this.f503a.setTextLocale(Locale.forLanguageTag(strO2.substring(0, strO2.indexOf(44))));
            }
        }
        this.i.t(attributeSet, i);
        if (androidx.core.widget.b.J && this.i.n() != 0) {
            int[] iArrM = this.i.m();
            if (iArrM.length > 0) {
                if (this.f503a.getAutoSizeStepGranularity() != -1.0f) {
                    this.f503a.setAutoSizeTextTypeUniformWithConfiguration(this.i.k(), this.i.j(), this.i.l(), 0);
                } else {
                    this.f503a.setAutoSizeTextTypeUniformWithPresetSizes(iArrM, 0);
                }
            }
        }
        q0 q0VarU = q0.u(context, attributeSet, R.styleable.AppCompatTextView);
        int iN2 = q0VarU.n(R.styleable.AppCompatTextView_drawableLeftCompat, -1);
        h hVar2 = hVar;
        Drawable drawableC = iN2 != -1 ? hVar2.c(context, iN2) : null;
        int iN3 = q0VarU.n(R.styleable.AppCompatTextView_drawableTopCompat, -1);
        Drawable drawableC2 = iN3 != -1 ? hVar2.c(context, iN3) : null;
        int iN4 = q0VarU.n(R.styleable.AppCompatTextView_drawableRightCompat, -1);
        Drawable drawableC3 = iN4 != -1 ? hVar2.c(context, iN4) : null;
        int iN5 = q0VarU.n(R.styleable.AppCompatTextView_drawableBottomCompat, -1);
        Drawable drawableC4 = iN5 != -1 ? hVar2.c(context, iN5) : null;
        int iN6 = q0VarU.n(R.styleable.AppCompatTextView_drawableStartCompat, -1);
        Drawable drawableC5 = iN6 != -1 ? hVar2.c(context, iN6) : null;
        int iN7 = q0VarU.n(R.styleable.AppCompatTextView_drawableEndCompat, -1);
        y(drawableC, drawableC2, drawableC3, drawableC4, drawableC5, iN7 != -1 ? hVar2.c(context, iN7) : null);
        int i24 = R.styleable.AppCompatTextView_drawableTint;
        if (q0VarU.s(i24)) {
            androidx.core.widget.i.j(this.f503a, q0VarU.c(i24));
        }
        int i25 = R.styleable.AppCompatTextView_drawableTintMode;
        if (q0VarU.s(i25)) {
            i3 = -1;
            androidx.core.widget.i.k(this.f503a, z.e(q0VarU.k(i25, -1), null));
        } else {
            i3 = -1;
        }
        int iF = q0VarU.f(R.styleable.AppCompatTextView_firstBaselineToTopHeight, i3);
        int iF2 = q0VarU.f(R.styleable.AppCompatTextView_lastBaselineToBottomHeight, i3);
        int iF3 = q0VarU.f(R.styleable.AppCompatTextView_lineHeight, i3);
        q0VarU.w();
        if (iF != i3) {
            androidx.core.widget.i.m(this.f503a, iF);
        }
        if (iF2 != i3) {
            androidx.core.widget.i.n(this.f503a, iF2);
        }
        if (iF3 != i3) {
            androidx.core.widget.i.o(this.f503a, iF3);
        }
    }

    void n(WeakReference<TextView> weakReference, Typeface typeface) {
        if (this.m) {
            this.l = typeface;
            TextView textView = weakReference.get();
            if (textView != null) {
                if (ViewCompat.isAttachedToWindow(textView)) {
                    textView.post(new b(this, textView, typeface, this.j));
                } else {
                    textView.setTypeface(typeface, this.j);
                }
            }
        }
    }

    void o(boolean z, int i, int i2, int i3, int i4) {
        if (androidx.core.widget.b.J) {
            return;
        }
        c();
    }

    void p() {
        b();
    }

    void q(Context context, int i) {
        String strO;
        ColorStateList colorStateListC;
        ColorStateList colorStateListC2;
        ColorStateList colorStateListC3;
        q0 q0VarT = q0.t(context, i, R.styleable.TextAppearance);
        int i2 = R.styleable.TextAppearance_textAllCaps;
        if (q0VarT.s(i2)) {
            s(q0VarT.a(i2, false));
        }
        int i3 = Build.VERSION.SDK_INT;
        if (i3 < 23) {
            int i4 = R.styleable.TextAppearance_android_textColor;
            if (q0VarT.s(i4) && (colorStateListC3 = q0VarT.c(i4)) != null) {
                this.f503a.setTextColor(colorStateListC3);
            }
            int i5 = R.styleable.TextAppearance_android_textColorLink;
            if (q0VarT.s(i5) && (colorStateListC2 = q0VarT.c(i5)) != null) {
                this.f503a.setLinkTextColor(colorStateListC2);
            }
            int i6 = R.styleable.TextAppearance_android_textColorHint;
            if (q0VarT.s(i6) && (colorStateListC = q0VarT.c(i6)) != null) {
                this.f503a.setHintTextColor(colorStateListC);
            }
        }
        int i7 = R.styleable.TextAppearance_android_textSize;
        if (q0VarT.s(i7) && q0VarT.f(i7, -1) == 0) {
            this.f503a.setTextSize(0, BitmapDescriptorFactory.HUE_RED);
        }
        C(context, q0VarT);
        if (i3 >= 26) {
            int i8 = R.styleable.TextAppearance_fontVariationSettings;
            if (q0VarT.s(i8) && (strO = q0VarT.o(i8)) != null) {
                this.f503a.setFontVariationSettings(strO);
            }
        }
        q0VarT.w();
        Typeface typeface = this.l;
        if (typeface != null) {
            this.f503a.setTypeface(typeface, this.j);
        }
    }

    void r(TextView textView, InputConnection inputConnection, EditorInfo editorInfo) {
        if (Build.VERSION.SDK_INT >= 30 || inputConnection == null) {
            return;
        }
        EditorInfoCompat.setInitialSurroundingText(editorInfo, textView.getText());
    }

    void s(boolean z) {
        this.f503a.setAllCaps(z);
    }

    void t(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        this.i.u(i, i2, i3, i4);
    }

    void u(int[] iArr, int i) throws IllegalArgumentException {
        this.i.v(iArr, i);
    }

    void v(int i) {
        this.i.w(i);
    }

    void w(ColorStateList colorStateList) {
        if (this.f508h == null) {
            this.f508h = new o0();
        }
        o0 o0Var = this.f508h;
        o0Var.f475a = colorStateList;
        o0Var.f476d = colorStateList != null;
        z();
    }

    void x(PorterDuff.Mode mode) {
        if (this.f508h == null) {
            this.f508h = new o0();
        }
        o0 o0Var = this.f508h;
        o0Var.b = mode;
        o0Var.c = mode != null;
        z();
    }
}
