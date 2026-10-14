package androidx.core.a.f;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import androidx.core.util.h;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ThreadLocal<TypedValue> f941a = new ThreadLocal<>();
    private static final WeakHashMap<b, SparseArray<a>> b = new WeakHashMap<>(0);
    private static final Object c = new Object();

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final ColorStateList f942a;
        final Configuration b;

        a(ColorStateList colorStateList, Configuration configuration) {
            this.f942a = colorStateList;
            this.b = configuration;
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Resources f943a;
        final Resources.Theme b;

        b(Resources resources, Resources.Theme theme) {
            this.f943a = resources;
            this.b = theme;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || b.class != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            return this.f943a.equals(bVar.f943a) && androidx.core.util.c.a(this.b, bVar.b);
        }

        public int hashCode() {
            return androidx.core.util.c.b(this.f943a, this.b);
        }
    }

    public static abstract class c {

        class a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ Typeface f944a;

            a(Typeface typeface) {
                this.f944a = typeface;
            }

            @Override // java.lang.Runnable
            public void run() {
                c.this.onFontRetrieved(this.f944a);
            }
        }

        class b implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ int f945a;

            b(int i) {
                this.f945a = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                c.this.onFontRetrievalFailed(this.f945a);
            }
        }

        public static Handler getHandler(Handler handler) {
            return handler == null ? new Handler(Looper.getMainLooper()) : handler;
        }

        public final void callbackFailAsync(int i, Handler handler) {
            getHandler(handler).post(new b(i));
        }

        public final void callbackSuccessAsync(Typeface typeface, Handler handler) {
            getHandler(handler).post(new a(typeface));
        }

        public abstract void onFontRetrievalFailed(int i);

        public abstract void onFontRetrieved(Typeface typeface);
    }

    public static final class d {

        static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private static final Object f946a = new Object();
            private static Method b;
            private static boolean c;

            /* JADX WARN: Code duplicated, block: B:30:0x0027 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            static void a(Resources.Theme theme) {
                Method method;
                synchronized (f946a) {
                    if (c) {
                        method = b;
                        if (method != null) {
                            method.invoke(theme, new Object[0]);
                        }
                    } else {
                        try {
                            Method declaredMethod = Resources.Theme.class.getDeclaredMethod("rebase", new Class[0]);
                            b = declaredMethod;
                            declaredMethod.setAccessible(true);
                        } catch (NoSuchMethodException e2) {
                            Log.i("ResourcesCompat", "Failed to retrieve rebase() method", e2);
                        }
                        c = true;
                        method = b;
                        if (method != null) {
                            try {
                                method.invoke(theme, new Object[0]);
                            } catch (IllegalAccessException | InvocationTargetException e3) {
                                Log.i("ResourcesCompat", "Failed to invoke rebase() method via reflection", e3);
                                b = null;
                            }
                        }
                    }
                    throw th;
                }
            }
        }

        static class b {
            static void a(Resources.Theme theme) {
                theme.rebase();
            }
        }

        public static void a(Resources.Theme theme) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 29) {
                b.a(theme);
            } else if (i >= 23) {
                a.a(theme);
            }
        }
    }

    private static void a(b bVar, int i, ColorStateList colorStateList) {
        synchronized (c) {
            WeakHashMap<b, SparseArray<a>> weakHashMap = b;
            SparseArray<a> sparseArray = weakHashMap.get(bVar);
            if (sparseArray == null) {
                sparseArray = new SparseArray<>();
                weakHashMap.put(bVar, sparseArray);
            }
            sparseArray.append(i, new a(colorStateList, bVar.f943a.getConfiguration()));
        }
    }

    private static ColorStateList b(b bVar, int i) {
        a aVar;
        synchronized (c) {
            SparseArray<a> sparseArray = b.get(bVar);
            if (sparseArray != null && sparseArray.size() > 0 && (aVar = sparseArray.get(i)) != null) {
                if (aVar.b.equals(bVar.f943a.getConfiguration())) {
                    return aVar.f942a;
                }
                sparseArray.remove(i);
            }
            return null;
        }
    }

    public static ColorStateList c(Resources resources, int i, Resources.Theme theme) throws Resources.NotFoundException {
        if (Build.VERSION.SDK_INT >= 23) {
            return resources.getColorStateList(i, theme);
        }
        b bVar = new b(resources, theme);
        ColorStateList colorStateListB = b(bVar, i);
        if (colorStateListB != null) {
            return colorStateListB;
        }
        ColorStateList colorStateListI = i(resources, i, theme);
        if (colorStateListI == null) {
            return resources.getColorStateList(i);
        }
        a(bVar, i, colorStateListI);
        return colorStateListI;
    }

    public static Drawable d(Resources resources, int i, Resources.Theme theme) throws Resources.NotFoundException {
        return Build.VERSION.SDK_INT >= 21 ? resources.getDrawable(i, theme) : resources.getDrawable(i);
    }

    public static Typeface e(Context context, int i) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return k(context, i, new TypedValue(), 0, null, null, false, false);
    }

    public static Typeface f(Context context, int i, TypedValue typedValue, int i2, c cVar) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return k(context, i, typedValue, i2, cVar, null, true, false);
    }

    public static void g(Context context, int i, c cVar, Handler handler) throws Resources.NotFoundException {
        h.f(cVar);
        if (context.isRestricted()) {
            cVar.callbackFailAsync(-4, handler);
        } else {
            k(context, i, new TypedValue(), 0, cVar, handler, false, false);
        }
    }

    private static TypedValue h() {
        ThreadLocal<TypedValue> threadLocal = f941a;
        TypedValue typedValue = threadLocal.get();
        if (typedValue != null) {
            return typedValue;
        }
        TypedValue typedValue2 = new TypedValue();
        threadLocal.set(typedValue2);
        return typedValue2;
    }

    private static ColorStateList i(Resources resources, int i, Resources.Theme theme) {
        if (j(resources, i)) {
            return null;
        }
        try {
            return androidx.core.a.f.a.a(resources, resources.getXml(i), theme);
        } catch (Exception e2) {
            Log.e("ResourcesCompat", "Failed to inflate ColorStateList, leaving it to the framework", e2);
            return null;
        }
    }

    private static boolean j(Resources resources, int i) {
        TypedValue typedValueH = h();
        resources.getValue(i, typedValueH, true);
        int i2 = typedValueH.type;
        return i2 >= 28 && i2 <= 31;
    }

    private static Typeface k(Context context, int i, TypedValue typedValue, int i2, c cVar, Handler handler, boolean z, boolean z2) {
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        Typeface typefaceL = l(context, resources, typedValue, i, i2, cVar, handler, z, z2);
        if (typefaceL != null || cVar != null || z2) {
            return typefaceL;
        }
        throw new Resources.NotFoundException("Font resource ID #0x" + Integer.toHexString(i) + " could not be retrieved.");
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00a6  */
    private static Typeface l(Context context, Resources resources, TypedValue typedValue, int i, int i2, c cVar, Handler handler, boolean z, boolean z2) {
        CharSequence charSequence = typedValue.string;
        if (charSequence == null) {
            throw new Resources.NotFoundException("Resource \"" + resources.getResourceName(i) + "\" (" + Integer.toHexString(i) + ") is not a Font: " + typedValue);
        }
        String string = charSequence.toString();
        if (!string.startsWith("res/")) {
            if (cVar != null) {
                cVar.callbackFailAsync(-3, handler);
            }
            return null;
        }
        Typeface typefaceF = androidx.core.graphics.f.f(resources, i, i2);
        if (typefaceF != null) {
            if (cVar != null) {
                cVar.callbackSuccessAsync(typefaceF, handler);
            }
            return typefaceF;
        }
        if (z2) {
            return null;
        }
        try {
            if (!string.toLowerCase().endsWith(".xml")) {
                Typeface typefaceD = androidx.core.graphics.f.d(context, resources, i, string, i2);
                if (cVar != null) {
                    if (typefaceD != null) {
                        cVar.callbackSuccessAsync(typefaceD, handler);
                    } else {
                        cVar.callbackFailAsync(-3, handler);
                    }
                }
                return typefaceD;
            }
            androidx.core.a.f.c.a aVarB = androidx.core.a.f.c.b(resources.getXml(i), resources);
            if (aVarB != null) {
                return androidx.core.graphics.f.c(context, aVarB, resources, i, i2, cVar, handler, z);
            }
            Log.e("ResourcesCompat", "Failed to find font-family tag");
            if (cVar != null) {
                cVar.callbackFailAsync(-3, handler);
            }
            return null;
        } catch (IOException e2) {
            Log.e("ResourcesCompat", "Failed to read xml resource " + string, e2);
            if (cVar != null) {
                cVar.callbackFailAsync(-3, handler);
            }
            return null;
        } catch (XmlPullParserException e3) {
            Log.e("ResourcesCompat", "Failed to parse xml resource " + string, e3);
            if (cVar != null) {
                cVar.callbackFailAsync(-3, handler);
            }
            return null;
        }
    }
}
