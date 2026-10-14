package androidx.core.graphics;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Handler;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"NewApi"})
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final l f1133a;
    private static final androidx.collection.e<String, Typeface> b;

    public static class a extends androidx.core.d.f.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private androidx.core.a.f.f.c f1134a;

        public a(androidx.core.a.f.f.c cVar) {
            this.f1134a = cVar;
        }

        @Override // androidx.core.d.f.c
        public void a(int i) {
            androidx.core.a.f.f.c cVar = this.f1134a;
            if (cVar != null) {
                cVar.onFontRetrievalFailed(i);
            }
        }

        @Override // androidx.core.d.f.c
        public void b(Typeface typeface) {
            androidx.core.a.f.f.c cVar = this.f1134a;
            if (cVar != null) {
                cVar.onFontRetrieved(typeface);
            }
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            f1133a = new k();
        } else if (i >= 28) {
            f1133a = new j();
        } else if (i >= 26) {
            f1133a = new i();
        } else if (i >= 24 && h.m()) {
            f1133a = new h();
        } else if (i >= 21) {
            f1133a = new g();
        } else {
            f1133a = new l();
        }
        b = new androidx.collection.e<>(16);
    }

    public static Typeface a(Context context, Typeface typeface, int i) {
        Typeface typefaceG;
        if (context != null) {
            return (Build.VERSION.SDK_INT >= 21 || (typefaceG = g(context, typeface, i)) == null) ? Typeface.create(typeface, i) : typefaceG;
        }
        throw new IllegalArgumentException("Context cannot be null");
    }

    public static Typeface b(Context context, CancellationSignal cancellationSignal, androidx.core.d.f.b[] bVarArr, int i) {
        return f1133a.c(context, cancellationSignal, bVarArr, i);
    }

    public static Typeface c(Context context, androidx.core.a.f.c.a aVar, Resources resources, int i, int i2, androidx.core.a.f.f.c cVar, Handler handler, boolean z) {
        Typeface typefaceB;
        if (aVar instanceof androidx.core.a.f.c.d) {
            androidx.core.a.f.c.d dVar = (androidx.core.a.f.c.d) aVar;
            Typeface typefaceH = h(dVar.c());
            if (typefaceH != null) {
                if (cVar != null) {
                    cVar.callbackSuccessAsync(typefaceH, handler);
                }
                return typefaceH;
            }
            typefaceB = androidx.core.d.f.a(context, dVar.b(), i2, !z ? cVar != null : dVar.a() != 0, z ? dVar.d() : -1, androidx.core.a.f.f.c.getHandler(handler), new a(cVar));
        } else {
            typefaceB = f1133a.b(context, (androidx.core.a.f.c.b) aVar, resources, i2);
            if (cVar != null) {
                if (typefaceB != null) {
                    cVar.callbackSuccessAsync(typefaceB, handler);
                } else {
                    cVar.callbackFailAsync(-3, handler);
                }
            }
        }
        if (typefaceB != null) {
            b.put(e(resources, i, i2), typefaceB);
        }
        return typefaceB;
    }

    public static Typeface d(Context context, Resources resources, int i, String str, int i2) {
        Typeface typefaceE = f1133a.e(context, resources, i, str, i2);
        if (typefaceE != null) {
            b.put(e(resources, i, i2), typefaceE);
        }
        return typefaceE;
    }

    private static String e(Resources resources, int i, int i2) {
        return resources.getResourcePackageName(i) + "-" + i + "-" + i2;
    }

    public static Typeface f(Resources resources, int i, int i2) {
        return b.get(e(resources, i, i2));
    }

    private static Typeface g(Context context, Typeface typeface, int i) {
        l lVar = f1133a;
        androidx.core.a.f.c.b bVarI = lVar.i(typeface);
        if (bVarI == null) {
            return null;
        }
        return lVar.b(context, bVarI, context.getResources(), i);
    }

    private static Typeface h(String str) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        Typeface typefaceCreate = Typeface.create(str, 0);
        Typeface typefaceCreate2 = Typeface.create(Typeface.DEFAULT, 0);
        if (typefaceCreate == null || typefaceCreate.equals(typefaceCreate2)) {
            return null;
        }
        return typefaceCreate;
    }
}
