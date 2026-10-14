package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.widget.TextView;
import androidx.appcompat.R;
import androidx.core.view.ViewCompat;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
class v {
    private static final RectF l = new RectF();

    @SuppressLint({"BanConcurrentHashMap"})
    private static ConcurrentHashMap<String, Method> m = new ConcurrentHashMap<>();

    @SuppressLint({"BanConcurrentHashMap"})
    private static ConcurrentHashMap<String, Field> n = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f517a = 0;
    private boolean b = false;
    private float c = -1.0f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f518d = -1.0f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f519e = -1.0f;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int[] f520f = new int[0];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f521g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private TextPaint f522h;
    private final TextView i;
    private final Context j;
    private final c k;

    private static class a extends c {
        a() {
        }

        @Override // androidx.appcompat.widget.v.c
        void a(StaticLayout.Builder builder, TextView textView) {
            builder.setTextDirection((TextDirectionHeuristic) v.r(textView, "getTextDirectionHeuristic", TextDirectionHeuristics.FIRSTSTRONG_LTR));
        }
    }

    private static class b extends a {
        b() {
        }

        @Override // androidx.appcompat.widget.v.a, androidx.appcompat.widget.v.c
        void a(StaticLayout.Builder builder, TextView textView) {
            builder.setTextDirection(textView.getTextDirectionHeuristic());
        }

        @Override // androidx.appcompat.widget.v.c
        boolean b(TextView textView) {
            return textView.isHorizontallyScrollable();
        }
    }

    private static class c {
        c() {
        }

        void a(StaticLayout.Builder builder, TextView textView) {
        }

        boolean b(TextView textView) {
            return ((Boolean) v.r(textView, "getHorizontallyScrolling", Boolean.FALSE)).booleanValue();
        }
    }

    v(TextView textView) {
        this.i = textView;
        this.j = textView.getContext();
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            this.k = new b();
        } else if (i >= 23) {
            this.k = new a();
        } else {
            this.k = new c();
        }
    }

    private void A(TypedArray typedArray) {
        int length = typedArray.length();
        int[] iArr = new int[length];
        if (length > 0) {
            for (int i = 0; i < length; i++) {
                iArr[i] = typedArray.getDimensionPixelSize(i, -1);
            }
            this.f520f = c(iArr);
            B();
        }
    }

    private boolean B() {
        int[] iArr = this.f520f;
        int length = iArr.length;
        boolean z = length > 0;
        this.f521g = z;
        if (z) {
            this.f517a = 1;
            this.f518d = iArr[0];
            this.f519e = iArr[length - 1];
            this.c = -1.0f;
        }
        return z;
    }

    private boolean C(int i, RectF rectF) {
        CharSequence transformation;
        CharSequence text = this.i.getText();
        TransformationMethod transformationMethod = this.i.getTransformationMethod();
        if (transformationMethod != null && (transformation = transformationMethod.getTransformation(text, this.i)) != null) {
            text = transformation;
        }
        int maxLines = Build.VERSION.SDK_INT >= 16 ? this.i.getMaxLines() : -1;
        q(i);
        StaticLayout staticLayoutE = e(text, (Layout.Alignment) r(this.i, "getLayoutAlignment", Layout.Alignment.ALIGN_NORMAL), Math.round(rectF.right), maxLines);
        return (maxLines == -1 || (staticLayoutE.getLineCount() <= maxLines && staticLayoutE.getLineEnd(staticLayoutE.getLineCount() - 1) == text.length())) && ((float) staticLayoutE.getHeight()) <= rectF.bottom;
    }

    private boolean D() {
        return !(this.i instanceof AppCompatEditText);
    }

    private void E(float f2, float f3, float f4) throws IllegalArgumentException {
        if (f2 <= BitmapDescriptorFactory.HUE_RED) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f2 + "px) is less or equal to (0px)");
        }
        if (f3 <= f2) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f3 + "px) is less or equal to minimum auto-size text size (" + f2 + "px)");
        }
        if (f4 <= BitmapDescriptorFactory.HUE_RED) {
            throw new IllegalArgumentException("The auto-size step granularity (" + f4 + "px) is less or equal to (0px)");
        }
        this.f517a = 1;
        this.f518d = f2;
        this.f519e = f3;
        this.c = f4;
        this.f521g = false;
    }

    private static <T> T a(Object obj, String str, T t) {
        try {
            Field fieldO = o(str);
            return fieldO == null ? t : (T) fieldO.get(obj);
        } catch (IllegalAccessException e2) {
            Log.w("ACTVAutoSizeHelper", "Failed to access TextView#" + str + " member", e2);
            return t;
        }
    }

    private int[] c(int[] iArr) {
        int length = iArr.length;
        if (length == 0) {
            return iArr;
        }
        Arrays.sort(iArr);
        ArrayList arrayList = new ArrayList();
        for (int i : iArr) {
            if (i > 0 && Collections.binarySearch(arrayList, Integer.valueOf(i)) < 0) {
                arrayList.add(Integer.valueOf(i));
            }
        }
        if (length == arrayList.size()) {
            return iArr;
        }
        int size = arrayList.size();
        int[] iArr2 = new int[size];
        for (int i2 = 0; i2 < size; i2++) {
            iArr2[i2] = ((Integer) arrayList.get(i2)).intValue();
        }
        return iArr2;
    }

    private void d() {
        this.f517a = 0;
        this.f518d = -1.0f;
        this.f519e = -1.0f;
        this.c = -1.0f;
        this.f520f = new int[0];
        this.b = false;
    }

    private StaticLayout f(CharSequence charSequence, Layout.Alignment alignment, int i, int i2) {
        StaticLayout.Builder builderObtain = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), this.f522h, i);
        StaticLayout.Builder hyphenationFrequency = builderObtain.setAlignment(alignment).setLineSpacing(this.i.getLineSpacingExtra(), this.i.getLineSpacingMultiplier()).setIncludePad(this.i.getIncludeFontPadding()).setBreakStrategy(this.i.getBreakStrategy()).setHyphenationFrequency(this.i.getHyphenationFrequency());
        if (i2 == -1) {
            i2 = Integer.MAX_VALUE;
        }
        hyphenationFrequency.setMaxLines(i2);
        try {
            this.k.a(builderObtain, this.i);
        } catch (ClassCastException unused) {
            Log.w("ACTVAutoSizeHelper", "Failed to obtain TextDirectionHeuristic, auto size may be incorrect");
        }
        return builderObtain.build();
    }

    private StaticLayout g(CharSequence charSequence, Layout.Alignment alignment, int i) {
        return new StaticLayout(charSequence, this.f522h, i, alignment, ((Float) a(this.i, "mSpacingMult", Float.valueOf(1.0f))).floatValue(), ((Float) a(this.i, "mSpacingAdd", Float.valueOf(BitmapDescriptorFactory.HUE_RED))).floatValue(), ((Boolean) a(this.i, "mIncludePad", Boolean.TRUE)).booleanValue());
    }

    private StaticLayout h(CharSequence charSequence, Layout.Alignment alignment, int i) {
        return new StaticLayout(charSequence, this.f522h, i, alignment, this.i.getLineSpacingMultiplier(), this.i.getLineSpacingExtra(), this.i.getIncludeFontPadding());
    }

    private int i(RectF rectF) {
        int length = this.f520f.length;
        if (length == 0) {
            throw new IllegalStateException("No available text sizes to choose from.");
        }
        int i = length - 1;
        int i2 = 1;
        int i3 = 0;
        while (i2 <= i) {
            int i4 = (i2 + i) / 2;
            if (C(this.f520f[i4], rectF)) {
                int i5 = i4 + 1;
                i3 = i2;
                i2 = i5;
            } else {
                i3 = i4 - 1;
                i = i3;
            }
        }
        return this.f520f[i3];
    }

    private static Field o(String str) {
        try {
            Field declaredField = n.get(str);
            if (declaredField == null && (declaredField = TextView.class.getDeclaredField(str)) != null) {
                declaredField.setAccessible(true);
                n.put(str, declaredField);
            }
            return declaredField;
        } catch (NoSuchFieldException e2) {
            Log.w("ACTVAutoSizeHelper", "Failed to access TextView#" + str + " member", e2);
            return null;
        }
    }

    private static Method p(String str) {
        try {
            Method declaredMethod = m.get(str);
            if (declaredMethod == null && (declaredMethod = TextView.class.getDeclaredMethod(str, new Class[0])) != null) {
                declaredMethod.setAccessible(true);
                m.put(str, declaredMethod);
            }
            return declaredMethod;
        } catch (Exception e2) {
            Log.w("ACTVAutoSizeHelper", "Failed to retrieve TextView#" + str + "() method", e2);
            return null;
        }
    }

    static <T> T r(Object obj, String str, T t) {
        try {
            return (T) p(str).invoke(obj, new Object[0]);
        } catch (Exception e2) {
            Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#" + str + "() method", e2);
            return t;
        }
    }

    private void x(float f2) {
        if (f2 != this.i.getPaint().getTextSize()) {
            this.i.getPaint().setTextSize(f2);
            boolean zIsInLayout = Build.VERSION.SDK_INT >= 18 ? this.i.isInLayout() : false;
            if (this.i.getLayout() != null) {
                this.b = false;
                try {
                    Method methodP = p("nullLayouts");
                    if (methodP != null) {
                        methodP.invoke(this.i, new Object[0]);
                    }
                } catch (Exception e2) {
                    Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#nullLayouts() method", e2);
                }
                if (zIsInLayout) {
                    this.i.forceLayout();
                } else {
                    this.i.requestLayout();
                }
                this.i.invalidate();
            }
        }
    }

    private boolean z() {
        if (D() && this.f517a == 1) {
            if (!this.f521g || this.f520f.length == 0) {
                int iFloor = ((int) Math.floor((this.f519e - this.f518d) / this.c)) + 1;
                int[] iArr = new int[iFloor];
                for (int i = 0; i < iFloor; i++) {
                    iArr[i] = Math.round(this.f518d + (i * this.c));
                }
                this.f520f = c(iArr);
            }
            this.b = true;
        } else {
            this.b = false;
        }
        return this.b;
    }

    void b() {
        if (s()) {
            if (this.b) {
                if (this.i.getMeasuredHeight() <= 0 || this.i.getMeasuredWidth() <= 0) {
                    return;
                }
                int measuredWidth = this.k.b(this.i) ? 1048576 : (this.i.getMeasuredWidth() - this.i.getTotalPaddingLeft()) - this.i.getTotalPaddingRight();
                int height = (this.i.getHeight() - this.i.getCompoundPaddingBottom()) - this.i.getCompoundPaddingTop();
                if (measuredWidth <= 0 || height <= 0) {
                    return;
                }
                RectF rectF = l;
                synchronized (rectF) {
                    rectF.setEmpty();
                    rectF.right = measuredWidth;
                    rectF.bottom = height;
                    float fI = i(rectF);
                    if (fI != this.i.getTextSize()) {
                        y(0, fI);
                    }
                }
            }
            this.b = true;
        }
    }

    StaticLayout e(CharSequence charSequence, Layout.Alignment alignment, int i, int i2) {
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 23) {
            return f(charSequence, alignment, i, i2);
        }
        return i3 >= 16 ? h(charSequence, alignment, i) : g(charSequence, alignment, i);
    }

    int j() {
        return Math.round(this.f519e);
    }

    int k() {
        return Math.round(this.f518d);
    }

    int l() {
        return Math.round(this.c);
    }

    int[] m() {
        return this.f520f;
    }

    int n() {
        return this.f517a;
    }

    void q(int i) {
        TextPaint textPaint = this.f522h;
        if (textPaint == null) {
            this.f522h = new TextPaint();
        } else {
            textPaint.reset();
        }
        this.f522h.set(this.i.getPaint());
        this.f522h.setTextSize(i);
    }

    boolean s() {
        return D() && this.f517a != 0;
    }

    void t(AttributeSet attributeSet, int i) {
        int resourceId;
        Context context = this.j;
        int[] iArr = R.styleable.AppCompatTextView;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        TextView textView = this.i;
        ViewCompat.saveAttributeDataForStyleable(textView, textView.getContext(), iArr, attributeSet, typedArrayObtainStyledAttributes, i, 0);
        int i2 = R.styleable.AppCompatTextView_autoSizeTextType;
        if (typedArrayObtainStyledAttributes.hasValue(i2)) {
            this.f517a = typedArrayObtainStyledAttributes.getInt(i2, 0);
        }
        int i3 = R.styleable.AppCompatTextView_autoSizeStepGranularity;
        float dimension = typedArrayObtainStyledAttributes.hasValue(i3) ? typedArrayObtainStyledAttributes.getDimension(i3, -1.0f) : -1.0f;
        int i4 = R.styleable.AppCompatTextView_autoSizeMinTextSize;
        float dimension2 = typedArrayObtainStyledAttributes.hasValue(i4) ? typedArrayObtainStyledAttributes.getDimension(i4, -1.0f) : -1.0f;
        int i5 = R.styleable.AppCompatTextView_autoSizeMaxTextSize;
        float dimension3 = typedArrayObtainStyledAttributes.hasValue(i5) ? typedArrayObtainStyledAttributes.getDimension(i5, -1.0f) : -1.0f;
        int i6 = R.styleable.AppCompatTextView_autoSizePresetSizes;
        if (typedArrayObtainStyledAttributes.hasValue(i6) && (resourceId = typedArrayObtainStyledAttributes.getResourceId(i6, 0)) > 0) {
            TypedArray typedArrayObtainTypedArray = typedArrayObtainStyledAttributes.getResources().obtainTypedArray(resourceId);
            A(typedArrayObtainTypedArray);
            typedArrayObtainTypedArray.recycle();
        }
        typedArrayObtainStyledAttributes.recycle();
        if (!D()) {
            this.f517a = 0;
            return;
        }
        if (this.f517a == 1) {
            if (!this.f521g) {
                DisplayMetrics displayMetrics = this.j.getResources().getDisplayMetrics();
                if (dimension2 == -1.0f) {
                    dimension2 = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                }
                if (dimension3 == -1.0f) {
                    dimension3 = TypedValue.applyDimension(2, 112.0f, displayMetrics);
                }
                if (dimension == -1.0f) {
                    dimension = 1.0f;
                }
                E(dimension2, dimension3, dimension);
            }
            z();
        }
    }

    void u(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        if (D()) {
            DisplayMetrics displayMetrics = this.j.getResources().getDisplayMetrics();
            E(TypedValue.applyDimension(i4, i, displayMetrics), TypedValue.applyDimension(i4, i2, displayMetrics), TypedValue.applyDimension(i4, i3, displayMetrics));
            if (z()) {
                b();
            }
        }
    }

    void v(int[] iArr, int i) throws IllegalArgumentException {
        if (D()) {
            int length = iArr.length;
            if (length > 0) {
                int[] iArrCopyOf = new int[length];
                if (i == 0) {
                    iArrCopyOf = Arrays.copyOf(iArr, length);
                } else {
                    DisplayMetrics displayMetrics = this.j.getResources().getDisplayMetrics();
                    for (int i2 = 0; i2 < length; i2++) {
                        iArrCopyOf[i2] = Math.round(TypedValue.applyDimension(i, iArr[i2], displayMetrics));
                    }
                }
                this.f520f = c(iArrCopyOf);
                if (!B()) {
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(iArr));
                }
            } else {
                this.f521g = false;
            }
            if (z()) {
                b();
            }
        }
    }

    void w(int i) {
        if (D()) {
            if (i == 0) {
                d();
                return;
            }
            if (i != 1) {
                throw new IllegalArgumentException("Unknown auto-size text type: " + i);
            }
            DisplayMetrics displayMetrics = this.j.getResources().getDisplayMetrics();
            E(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
            if (z()) {
                b();
            }
        }
    }

    void y(int i, float f2) {
        Context context = this.j;
        x(TypedValue.applyDimension(i, f2, (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics()));
    }
}
