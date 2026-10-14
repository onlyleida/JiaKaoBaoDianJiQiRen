package androidx.core.graphics;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.util.concurrent.ConcurrentHashMap;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes.dex */
class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @SuppressLint({"BanConcurrentHashMap"})
    private ConcurrentHashMap<Long, androidx.core.a.f.c.b> f1142a = new ConcurrentHashMap<>();

    class a implements c<androidx.core.d.f.b> {
        a(l lVar) {
        }

        @Override // androidx.core.graphics.l.c
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public int b(androidx.core.d.f.b bVar) {
            return bVar.e();
        }

        @Override // androidx.core.graphics.l.c
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean a(androidx.core.d.f.b bVar) {
            return bVar.f();
        }
    }

    class b implements c<androidx.core.a.f.c.C0022c> {
        b(l lVar) {
        }

        @Override // androidx.core.graphics.l.c
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public int b(androidx.core.a.f.c.C0022c c0022c) {
            return c0022c.e();
        }

        @Override // androidx.core.graphics.l.c
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean a(androidx.core.a.f.c.C0022c c0022c) {
            return c0022c.f();
        }
    }

    private interface c<T> {
        boolean a(T t);

        int b(T t);
    }

    l() {
    }

    private void a(Typeface typeface, androidx.core.a.f.c.b bVar) {
        long j = j(typeface);
        if (j != 0) {
            this.f1142a.put(Long.valueOf(j), bVar);
        }
    }

    private androidx.core.a.f.c.C0022c f(androidx.core.a.f.c.b bVar, int i) {
        return (androidx.core.a.f.c.C0022c) g(bVar.a(), i, new b(this));
    }

    private static <T> T g(T[] tArr, int i, c<T> cVar) {
        int i2 = (i & 1) == 0 ? Videoio.CAP_PROP_XI_DOWNSAMPLING : 700;
        boolean z = (i & 2) != 0;
        T t = null;
        int i3 = Integer.MAX_VALUE;
        for (T t2 : tArr) {
            int iAbs = (Math.abs(cVar.b(t2) - i2) * 2) + (cVar.a(t2) == z ? 0 : 1);
            if (t == null || i3 > iAbs) {
                t = t2;
                i3 = iAbs;
            }
        }
        return t;
    }

    private static long j(Typeface typeface) {
        if (typeface == null) {
            return 0L;
        }
        try {
            Field declaredField = Typeface.class.getDeclaredField("native_instance");
            declaredField.setAccessible(true);
            return ((Number) declaredField.get(typeface)).longValue();
        } catch (IllegalAccessException e2) {
            Log.e("TypefaceCompatBaseImpl", "Could not retrieve font from family.", e2);
            return 0L;
        } catch (NoSuchFieldException e3) {
            Log.e("TypefaceCompatBaseImpl", "Could not retrieve font from family.", e3);
            return 0L;
        }
    }

    public Typeface b(Context context, androidx.core.a.f.c.b bVar, Resources resources, int i) {
        androidx.core.a.f.c.C0022c c0022cF = f(bVar, i);
        if (c0022cF == null) {
            return null;
        }
        Typeface typefaceD = f.d(context, resources, c0022cF.b(), c0022cF.a(), i);
        a(typefaceD, bVar);
        return typefaceD;
    }

    public Typeface c(Context context, CancellationSignal cancellationSignal, androidx.core.d.f.b[] bVarArr, int i) throws Throwable {
        InputStream inputStreamOpenInputStream;
        InputStream inputStream = null;
        if (bVarArr.length < 1) {
            return null;
        }
        try {
            inputStreamOpenInputStream = context.getContentResolver().openInputStream(h(bVarArr, i).d());
            try {
                Typeface typefaceD = d(context, inputStreamOpenInputStream);
                m.a(inputStreamOpenInputStream);
                return typefaceD;
            } catch (IOException unused) {
                m.a(inputStreamOpenInputStream);
                return null;
            } catch (Throwable th) {
                th = th;
                inputStream = inputStreamOpenInputStream;
                m.a(inputStream);
                throw th;
            }
        } catch (IOException unused2) {
            inputStreamOpenInputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    protected Typeface d(Context context, InputStream inputStream) {
        File fileE = m.e(context);
        if (fileE == null) {
            return null;
        }
        try {
            if (m.d(fileE, inputStream)) {
                return Typeface.createFromFile(fileE.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            fileE.delete();
        }
    }

    public Typeface e(Context context, Resources resources, int i, String str, int i2) {
        File fileE = m.e(context);
        if (fileE == null) {
            return null;
        }
        try {
            if (m.c(fileE, resources, i)) {
                return Typeface.createFromFile(fileE.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            fileE.delete();
        }
    }

    protected androidx.core.d.f.b h(androidx.core.d.f.b[] bVarArr, int i) {
        return (androidx.core.d.f.b) g(bVarArr, i, new a(this));
    }

    androidx.core.a.f.c.b i(Typeface typeface) {
        long j = j(typeface);
        if (j == 0) {
            return null;
        }
        return this.f1142a.get(Long.valueOf(j));
    }
}
