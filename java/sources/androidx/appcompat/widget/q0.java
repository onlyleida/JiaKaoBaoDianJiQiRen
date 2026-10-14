package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;

/* JADX INFO: loaded from: classes.dex */
public class q0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f479a;
    private final TypedArray b;
    private TypedValue c;

    private q0(Context context, TypedArray typedArray) {
        this.f479a = context;
        this.b = typedArray;
    }

    public static q0 t(Context context, int i, int[] iArr) {
        return new q0(context, context.obtainStyledAttributes(i, iArr));
    }

    public static q0 u(Context context, AttributeSet attributeSet, int[] iArr) {
        return new q0(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    public static q0 v(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2) {
        return new q0(context, context.obtainStyledAttributes(attributeSet, iArr, i, i2));
    }

    public boolean a(int i, boolean z) {
        return this.b.getBoolean(i, z);
    }

    public int b(int i, int i2) {
        return this.b.getColor(i, i2);
    }

    public ColorStateList c(int i) {
        int resourceId;
        ColorStateList colorStateListC;
        return (!this.b.hasValue(i) || (resourceId = this.b.getResourceId(i, 0)) == 0 || (colorStateListC = androidx.appcompat.a.a.a.c(this.f479a, resourceId)) == null) ? this.b.getColorStateList(i) : colorStateListC;
    }

    public float d(int i, float f2) {
        return this.b.getDimension(i, f2);
    }

    public int e(int i, int i2) {
        return this.b.getDimensionPixelOffset(i, i2);
    }

    public int f(int i, int i2) {
        return this.b.getDimensionPixelSize(i, i2);
    }

    public Drawable g(int i) {
        int resourceId;
        return (!this.b.hasValue(i) || (resourceId = this.b.getResourceId(i, 0)) == 0) ? this.b.getDrawable(i) : androidx.appcompat.a.a.a.d(this.f479a, resourceId);
    }

    public Drawable h(int i) {
        int resourceId;
        if (!this.b.hasValue(i) || (resourceId = this.b.getResourceId(i, 0)) == 0) {
            return null;
        }
        return h.b().d(this.f479a, resourceId, true);
    }

    public float i(int i, float f2) {
        return this.b.getFloat(i, f2);
    }

    public Typeface j(int i, int i2, androidx.core.a.f.f.c cVar) {
        int resourceId = this.b.getResourceId(i, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.c == null) {
            this.c = new TypedValue();
        }
        return androidx.core.a.f.f.f(this.f479a, resourceId, this.c, i2, cVar);
    }

    public int k(int i, int i2) {
        return this.b.getInt(i, i2);
    }

    public int l(int i, int i2) {
        return this.b.getInteger(i, i2);
    }

    public int m(int i, int i2) {
        return this.b.getLayoutDimension(i, i2);
    }

    public int n(int i, int i2) {
        return this.b.getResourceId(i, i2);
    }

    public String o(int i) {
        return this.b.getString(i);
    }

    public CharSequence p(int i) {
        return this.b.getText(i);
    }

    public CharSequence[] q(int i) {
        return this.b.getTextArray(i);
    }

    public TypedArray r() {
        return this.b;
    }

    public boolean s(int i) {
        return this.b.hasValue(i);
    }

    public void w() {
        this.b.recycle();
    }
}
