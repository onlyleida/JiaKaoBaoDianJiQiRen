package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ThreadLocal<TypedValue> f466a = new ThreadLocal<>();
    static final int[] b = {-16842910};
    static final int[] c = {R.attr.state_focused};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final int[] f467d = {R.attr.state_pressed};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final int[] f468e = {R.attr.state_checked};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final int[] f469f = new int[0];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int[] f470g = new int[1];

    public static void a(View view, Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(androidx.appcompat.R.styleable.AppCompatTheme);
        try {
            if (!typedArrayObtainStyledAttributes.hasValue(androidx.appcompat.R.styleable.AppCompatTheme_windowActionBar)) {
                Log.e("ThemeUtils", "View " + view.getClass() + " is an AppCompat widget that can only be used with a Theme.AppCompat theme (or descendant).");
            }
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static int b(Context context, int i) {
        ColorStateList colorStateListE = e(context, i);
        if (colorStateListE != null && colorStateListE.isStateful()) {
            return colorStateListE.getColorForState(b, colorStateListE.getDefaultColor());
        }
        TypedValue typedValueF = f();
        context.getTheme().resolveAttribute(R.attr.disabledAlpha, typedValueF, true);
        return d(context, i, typedValueF.getFloat());
    }

    public static int c(Context context, int i) {
        int[] iArr = f470g;
        iArr[0] = i;
        q0 q0VarU = q0.u(context, null, iArr);
        try {
            return q0VarU.b(0, 0);
        } finally {
            q0VarU.w();
        }
    }

    static int d(Context context, int i, float f2) {
        int iC = c(context, i);
        return androidx.core.graphics.c.d(iC, Math.round(Color.alpha(iC) * f2));
    }

    public static ColorStateList e(Context context, int i) {
        int[] iArr = f470g;
        iArr[0] = i;
        q0 q0VarU = q0.u(context, null, iArr);
        try {
            return q0VarU.c(0);
        } finally {
            q0VarU.w();
        }
    }

    private static TypedValue f() {
        ThreadLocal<TypedValue> threadLocal = f466a;
        TypedValue typedValue = threadLocal.get();
        if (typedValue != null) {
            return typedValue;
        }
        TypedValue typedValue2 = new TypedValue();
        threadLocal.set(typedValue2);
        return typedValue2;
    }
}
