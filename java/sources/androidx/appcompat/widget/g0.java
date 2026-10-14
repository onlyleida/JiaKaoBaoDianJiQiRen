package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import androidx.appcompat.resources.R;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.apache.commons.math3.linear.ConjugateGradient;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public final class g0 {
    private static g0 i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WeakHashMap<Context, androidx.collection.h<ColorStateList>> f425a;
    private androidx.collection.g<String, e> b;
    private androidx.collection.h<String> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final WeakHashMap<Context, androidx.collection.d<WeakReference<Drawable.ConstantState>>> f426d = new WeakHashMap<>(0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TypedValue f427e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f428f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private f f429g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final PorterDuff.Mode f424h = PorterDuff.Mode.SRC_IN;
    private static final c j = new c(6);

    static class a implements e {
        a() {
        }

        @Override // androidx.appcompat.widget.g0.e
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return androidx.appcompat.b.a.a.m(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e2) {
                Log.e("AsldcInflateDelegate", "Exception while inflating <animated-selector>", e2);
                return null;
            }
        }
    }

    private static class b implements e {
        b() {
        }

        @Override // androidx.appcompat.widget.g0.e
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return androidx.vectordrawable.a.a.c.a(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e2) {
                Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", e2);
                return null;
            }
        }
    }

    private static class c extends androidx.collection.e<Integer, PorterDuffColorFilter> {
        public c(int i) {
            super(i);
        }

        private static int a(int i, PorterDuff.Mode mode) {
            return ((i + 31) * 31) + mode.hashCode();
        }

        PorterDuffColorFilter b(int i, PorterDuff.Mode mode) {
            return get(Integer.valueOf(a(i, mode)));
        }

        PorterDuffColorFilter c(int i, PorterDuff.Mode mode, PorterDuffColorFilter porterDuffColorFilter) {
            return put(Integer.valueOf(a(i, mode)), porterDuffColorFilter);
        }
    }

    static class d implements e {
        d() {
        }

        @Override // androidx.appcompat.widget.g0.e
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            String classAttribute = attributeSet.getClassAttribute();
            if (classAttribute != null) {
                try {
                    Drawable drawable = (Drawable) d.class.getClassLoader().loadClass(classAttribute).asSubclass(Drawable.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                    if (Build.VERSION.SDK_INT >= 21) {
                        drawable.inflate(context.getResources(), xmlPullParser, attributeSet, theme);
                    } else {
                        drawable.inflate(context.getResources(), xmlPullParser, attributeSet);
                    }
                    return drawable;
                } catch (Exception e2) {
                    Log.e("DrawableDelegate", "Exception while inflating <drawable>", e2);
                }
            }
            return null;
        }
    }

    private interface e {
        Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme);
    }

    public interface f {
        Drawable a(g0 g0Var, Context context, int i);

        ColorStateList b(Context context, int i);

        boolean c(Context context, int i, Drawable drawable);

        PorterDuff.Mode d(int i);

        boolean e(Context context, int i, Drawable drawable);
    }

    private static class g implements e {
        g() {
        }

        @Override // androidx.appcompat.widget.g0.e
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return androidx.vectordrawable.a.a.i.c(context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e2) {
                Log.e("VdcInflateDelegate", "Exception while inflating <vector>", e2);
                return null;
            }
        }
    }

    private void a(String str, e eVar) {
        if (this.b == null) {
            this.b = new androidx.collection.g<>();
        }
        this.b.put(str, eVar);
    }

    private synchronized boolean b(Context context, long j2, Drawable drawable) {
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState == null) {
            return false;
        }
        androidx.collection.d<WeakReference<Drawable.ConstantState>> dVar = this.f426d.get(context);
        if (dVar == null) {
            dVar = new androidx.collection.d<>();
            this.f426d.put(context, dVar);
        }
        dVar.j(j2, new WeakReference<>(constantState));
        return true;
    }

    private void c(Context context, int i2, ColorStateList colorStateList) {
        if (this.f425a == null) {
            this.f425a = new WeakHashMap<>();
        }
        androidx.collection.h<ColorStateList> hVar = this.f425a.get(context);
        if (hVar == null) {
            hVar = new androidx.collection.h<>();
            this.f425a.put(context, hVar);
        }
        hVar.b(i2, colorStateList);
    }

    private void d(Context context) {
        if (this.f428f) {
            return;
        }
        this.f428f = true;
        Drawable drawableJ = j(context, R.drawable.abc_vector_test);
        if (drawableJ == null || !q(drawableJ)) {
            this.f428f = false;
            throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
        }
    }

    private static long e(TypedValue typedValue) {
        return (((long) typedValue.assetCookie) << 32) | ((long) typedValue.data);
    }

    private Drawable f(Context context, int i2) {
        if (this.f427e == null) {
            this.f427e = new TypedValue();
        }
        TypedValue typedValue = this.f427e;
        context.getResources().getValue(i2, typedValue, true);
        long jE = e(typedValue);
        Drawable drawableI = i(context, jE);
        if (drawableI != null) {
            return drawableI;
        }
        f fVar = this.f429g;
        Drawable drawableA = fVar == null ? null : fVar.a(this, context, i2);
        if (drawableA != null) {
            drawableA.setChangingConfigurations(typedValue.changingConfigurations);
            b(context, jE, drawableA);
        }
        return drawableA;
    }

    private static PorterDuffColorFilter g(ColorStateList colorStateList, PorterDuff.Mode mode, int[] iArr) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return l(colorStateList.getColorForState(iArr, 0), mode);
    }

    public static synchronized g0 h() {
        if (i == null) {
            g0 g0Var = new g0();
            i = g0Var;
            p(g0Var);
        }
        return i;
    }

    private synchronized Drawable i(Context context, long j2) {
        androidx.collection.d<WeakReference<Drawable.ConstantState>> dVar = this.f426d.get(context);
        if (dVar == null) {
            return null;
        }
        WeakReference<Drawable.ConstantState> weakReferenceF = dVar.f(j2);
        if (weakReferenceF != null) {
            Drawable.ConstantState constantState = weakReferenceF.get();
            if (constantState != null) {
                return constantState.newDrawable(context.getResources());
            }
            dVar.k(j2);
        }
        return null;
    }

    public static synchronized PorterDuffColorFilter l(int i2, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilterB;
        c cVar = j;
        porterDuffColorFilterB = cVar.b(i2, mode);
        if (porterDuffColorFilterB == null) {
            porterDuffColorFilterB = new PorterDuffColorFilter(i2, mode);
            cVar.c(i2, mode, porterDuffColorFilterB);
        }
        return porterDuffColorFilterB;
    }

    private ColorStateList n(Context context, int i2) {
        androidx.collection.h<ColorStateList> hVar;
        WeakHashMap<Context, androidx.collection.h<ColorStateList>> weakHashMap = this.f425a;
        if (weakHashMap == null || (hVar = weakHashMap.get(context)) == null) {
            return null;
        }
        return hVar.f(i2);
    }

    private static void p(g0 g0Var) {
        if (Build.VERSION.SDK_INT < 24) {
            g0Var.a(ConjugateGradient.VECTOR, new g());
            g0Var.a("animated-vector", new b());
            g0Var.a("animated-selector", new a());
            g0Var.a("drawable", new d());
        }
    }

    private static boolean q(Drawable drawable) {
        return (drawable instanceof androidx.vectordrawable.a.a.i) || "android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName());
    }

    private Drawable r(Context context, int i2) {
        int next;
        androidx.collection.g<String, e> gVar = this.b;
        if (gVar == null || gVar.isEmpty()) {
            return null;
        }
        androidx.collection.h<String> hVar = this.c;
        if (hVar != null) {
            String strF = hVar.f(i2);
            if ("appcompat_skip_skip".equals(strF) || (strF != null && this.b.get(strF) == null)) {
                return null;
            }
        } else {
            this.c = new androidx.collection.h<>();
        }
        if (this.f427e == null) {
            this.f427e = new TypedValue();
        }
        TypedValue typedValue = this.f427e;
        Resources resources = context.getResources();
        resources.getValue(i2, typedValue, true);
        long jE = e(typedValue);
        Drawable drawableI = i(context, jE);
        if (drawableI != null) {
            return drawableI;
        }
        CharSequence charSequence = typedValue.string;
        if (charSequence != null && charSequence.toString().endsWith(".xml")) {
            try {
                XmlResourceParser xml = resources.getXml(i2);
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                String name = xml.getName();
                this.c.b(i2, name);
                e eVar = this.b.get(name);
                if (eVar != null) {
                    drawableI = eVar.a(context, xml, attributeSetAsAttributeSet, context.getTheme());
                }
                if (drawableI != null) {
                    drawableI.setChangingConfigurations(typedValue.changingConfigurations);
                    b(context, jE, drawableI);
                }
            } catch (Exception e2) {
                Log.e("ResourceManagerInternal", "Exception while inflating drawable", e2);
            }
        }
        if (drawableI == null) {
            this.c.b(i2, "appcompat_skip_skip");
        }
        return drawableI;
    }

    private Drawable v(Context context, int i2, boolean z, Drawable drawable) {
        ColorStateList colorStateListM = m(context, i2);
        if (colorStateListM == null) {
            f fVar = this.f429g;
            if ((fVar == null || !fVar.e(context, i2, drawable)) && !x(context, i2, drawable) && z) {
                return null;
            }
            return drawable;
        }
        if (z.a(drawable)) {
            drawable = drawable.mutate();
        }
        Drawable drawableR = androidx.core.graphics.drawable.a.r(drawable);
        androidx.core.graphics.drawable.a.o(drawableR, colorStateListM);
        PorterDuff.Mode modeO = o(i2);
        if (modeO == null) {
            return drawableR;
        }
        androidx.core.graphics.drawable.a.p(drawableR, modeO);
        return drawableR;
    }

    static void w(Drawable drawable, o0 o0Var, int[] iArr) {
        if (z.a(drawable) && drawable.mutate() != drawable) {
            Log.d("ResourceManagerInternal", "Mutated drawable is not the same instance as the input.");
            return;
        }
        boolean z = o0Var.f476d;
        if (z || o0Var.c) {
            drawable.setColorFilter(g(z ? o0Var.f475a : null, o0Var.c ? o0Var.b : f424h, iArr));
        } else {
            drawable.clearColorFilter();
        }
        if (Build.VERSION.SDK_INT <= 23) {
            drawable.invalidateSelf();
        }
    }

    public synchronized Drawable j(Context context, int i2) {
        return k(context, i2, false);
    }

    synchronized Drawable k(Context context, int i2, boolean z) {
        Drawable drawableR;
        d(context);
        drawableR = r(context, i2);
        if (drawableR == null) {
            drawableR = f(context, i2);
        }
        if (drawableR == null) {
            drawableR = androidx.core.a.a.f(context, i2);
        }
        if (drawableR != null) {
            drawableR = v(context, i2, z, drawableR);
        }
        if (drawableR != null) {
            z.b(drawableR);
        }
        return drawableR;
    }

    synchronized ColorStateList m(Context context, int i2) {
        ColorStateList colorStateListN;
        colorStateListN = n(context, i2);
        if (colorStateListN == null) {
            f fVar = this.f429g;
            colorStateListN = fVar == null ? null : fVar.b(context, i2);
            if (colorStateListN != null) {
                c(context, i2, colorStateListN);
            }
        }
        return colorStateListN;
    }

    PorterDuff.Mode o(int i2) {
        f fVar = this.f429g;
        if (fVar == null) {
            return null;
        }
        return fVar.d(i2);
    }

    public synchronized void s(Context context) {
        androidx.collection.d<WeakReference<Drawable.ConstantState>> dVar = this.f426d.get(context);
        if (dVar != null) {
            dVar.c();
        }
    }

    synchronized Drawable t(Context context, v0 v0Var, int i2) {
        Drawable drawableR = r(context, i2);
        if (drawableR == null) {
            drawableR = v0Var.c(i2);
        }
        if (drawableR == null) {
            return null;
        }
        return v(context, i2, false, drawableR);
    }

    public synchronized void u(f fVar) {
        this.f429g = fVar;
    }

    boolean x(Context context, int i2, Drawable drawable) {
        f fVar = this.f429g;
        return fVar != null && fVar.c(context, i2, drawable);
    }
}
