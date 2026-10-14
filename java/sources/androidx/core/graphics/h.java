package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.util.Log;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class h extends l {
    private static final Class<?> b;
    private static final Constructor<?> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Method f1138d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Method f1139e;

    static {
        Class<?> cls;
        Method method;
        Method method2;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(new Class[0]);
            Class<?> cls2 = Integer.TYPE;
            method2 = cls.getMethod("addFontWeightStyle", ByteBuffer.class, cls2, List.class, cls2, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e2) {
            Log.e("TypefaceCompatApi24Impl", e2.getClass().getName(), e2);
            cls = null;
            method = null;
            method2 = null;
        }
        c = constructor;
        b = cls;
        f1138d = method2;
        f1139e = method;
    }

    h() {
    }

    private static boolean k(Object obj, ByteBuffer byteBuffer, int i, int i2, boolean z) {
        try {
            return ((Boolean) f1138d.invoke(obj, byteBuffer, Integer.valueOf(i), null, Integer.valueOf(i2), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    private static Typeface l(Object obj) {
        try {
            Object objNewInstance = Array.newInstance(b, 1);
            Array.set(objNewInstance, 0, obj);
            return (Typeface) f1139e.invoke(null, objNewInstance);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    public static boolean m() {
        Method method = f1138d;
        if (method == null) {
            Log.w("TypefaceCompatApi24Impl", "Unable to collect necessary private methods.Fallback to legacy implementation.");
        }
        return method != null;
    }

    private static Object n() {
        try {
            return c.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    @Override // androidx.core.graphics.l
    public Typeface b(Context context, androidx.core.a.f.c.b bVar, Resources resources, int i) {
        Object objN = n();
        if (objN == null) {
            return null;
        }
        for (androidx.core.a.f.c.C0022c c0022c : bVar.a()) {
            ByteBuffer byteBufferB = m.b(context, resources, c0022c.b());
            if (byteBufferB == null || !k(objN, byteBufferB, c0022c.c(), c0022c.e(), c0022c.f())) {
                return null;
            }
        }
        return l(objN);
    }

    @Override // androidx.core.graphics.l
    public Typeface c(Context context, CancellationSignal cancellationSignal, androidx.core.d.f.b[] bVarArr, int i) {
        Object objN = n();
        if (objN == null) {
            return null;
        }
        androidx.collection.g gVar = new androidx.collection.g();
        for (androidx.core.d.f.b bVar : bVarArr) {
            Uri uriD = bVar.d();
            ByteBuffer byteBufferF = (ByteBuffer) gVar.get(uriD);
            if (byteBufferF == null) {
                byteBufferF = m.f(context, cancellationSignal, uriD);
                gVar.put(uriD, byteBufferF);
            }
            if (byteBufferF == null || !k(objN, byteBufferF, bVar.c(), bVar.e(), bVar.f())) {
                return null;
            }
        }
        Typeface typefaceL = l(objN);
        if (typefaceL == null) {
            return null;
        }
        return Typeface.create(typefaceL, i);
    }
}
