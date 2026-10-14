package androidx.core.d;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Typeface;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final androidx.collection.e<String, Typeface> f1071a = new androidx.collection.e<>(16);
    private static final ExecutorService b = g.a("fonts-androidx", 10, 10000);
    static final Object c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final androidx.collection.g<String, ArrayList<androidx.core.util.a<C0028e>>> f1072d = new androidx.collection.g<>();

    class a implements Callable<C0028e> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f1073a;
        final /* synthetic */ Context b;
        final /* synthetic */ androidx.core.d.d c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f1074d;

        a(String str, Context context, androidx.core.d.d dVar, int i) {
            this.f1073a = str;
            this.b = context;
            this.c = dVar;
            this.f1074d = i;
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public C0028e call() {
            return e.c(this.f1073a, this.b, this.c, this.f1074d);
        }
    }

    class b implements androidx.core.util.a<C0028e> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ androidx.core.d.a f1075a;

        b(androidx.core.d.a aVar) {
            this.f1075a = aVar;
        }

        @Override // androidx.core.util.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(C0028e c0028e) {
            this.f1075a.b(c0028e);
        }
    }

    class c implements Callable<C0028e> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f1076a;
        final /* synthetic */ Context b;
        final /* synthetic */ androidx.core.d.d c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f1077d;

        c(String str, Context context, androidx.core.d.d dVar, int i) {
            this.f1076a = str;
            this.b = context;
            this.c = dVar;
            this.f1077d = i;
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public C0028e call() {
            return e.c(this.f1076a, this.b, this.c, this.f1077d);
        }
    }

    class d implements androidx.core.util.a<C0028e> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f1078a;

        d(String str) {
            this.f1078a = str;
        }

        @Override // androidx.core.util.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(C0028e c0028e) {
            synchronized (e.c) {
                androidx.collection.g<String, ArrayList<androidx.core.util.a<C0028e>>> gVar = e.f1072d;
                ArrayList<androidx.core.util.a<C0028e>> arrayList = gVar.get(this.f1078a);
                if (arrayList == null) {
                    return;
                }
                gVar.remove(this.f1078a);
                for (int i = 0; i < arrayList.size(); i++) {
                    arrayList.get(i).accept(c0028e);
                }
            }
        }
    }

    private static String a(androidx.core.d.d dVar, int i) {
        return dVar.d() + "-" + i;
    }

    @SuppressLint({"WrongConstant"})
    private static int b(f.a aVar) {
        int i = 1;
        if (aVar.c() != 0) {
            return aVar.c() != 1 ? -3 : -2;
        }
        f.b[] bVarArrB = aVar.b();
        if (bVarArrB != null && bVarArrB.length != 0) {
            i = 0;
            for (f.b bVar : bVarArrB) {
                int iB = bVar.b();
                if (iB != 0) {
                    if (iB < 0) {
                        return -3;
                    }
                    return iB;
                }
            }
        }
        return i;
    }

    static C0028e c(String str, Context context, androidx.core.d.d dVar, int i) {
        androidx.collection.e<String, Typeface> eVar = f1071a;
        Typeface typeface = eVar.get(str);
        if (typeface != null) {
            return new C0028e(typeface);
        }
        try {
            f.a aVarD = androidx.core.d.c.d(context, dVar, null);
            int iB = b(aVarD);
            if (iB != 0) {
                return new C0028e(iB);
            }
            Typeface typefaceB = androidx.core.graphics.f.b(context, null, aVarD.b(), i);
            if (typefaceB == null) {
                return new C0028e(-3);
            }
            eVar.put(str, typefaceB);
            return new C0028e(typefaceB);
        } catch (PackageManager.NameNotFoundException unused) {
            return new C0028e(-1);
        }
    }

    static Typeface d(Context context, androidx.core.d.d dVar, int i, Executor executor, androidx.core.d.a aVar) {
        String strA = a(dVar, i);
        Typeface typeface = f1071a.get(strA);
        if (typeface != null) {
            aVar.b(new C0028e(typeface));
            return typeface;
        }
        b bVar = new b(aVar);
        synchronized (c) {
            androidx.collection.g<String, ArrayList<androidx.core.util.a<C0028e>>> gVar = f1072d;
            ArrayList<androidx.core.util.a<C0028e>> arrayList = gVar.get(strA);
            if (arrayList != null) {
                arrayList.add(bVar);
                return null;
            }
            ArrayList<androidx.core.util.a<C0028e>> arrayList2 = new ArrayList<>();
            arrayList2.add(bVar);
            gVar.put(strA, arrayList2);
            c cVar = new c(strA, context, dVar, i);
            if (executor == null) {
                executor = b;
            }
            g.b(executor, cVar, new d(strA));
            return null;
        }
    }

    static Typeface e(Context context, androidx.core.d.d dVar, androidx.core.d.a aVar, int i, int i2) {
        String strA = a(dVar, i);
        Typeface typeface = f1071a.get(strA);
        if (typeface != null) {
            aVar.b(new C0028e(typeface));
            return typeface;
        }
        if (i2 == -1) {
            C0028e c0028eC = c(strA, context, dVar, i);
            aVar.b(c0028eC);
            return c0028eC.f1079a;
        }
        try {
            C0028e c0028e = (C0028e) g.c(b, new a(strA, context, dVar, i), i2);
            aVar.b(c0028e);
            return c0028e.f1079a;
        } catch (InterruptedException unused) {
            aVar.b(new C0028e(-3));
            return null;
        }
    }

    /* JADX INFO: renamed from: androidx.core.d.e$e, reason: collision with other inner class name */
    static final class C0028e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Typeface f1079a;
        final int b;

        C0028e(int i) {
            this.f1079a = null;
            this.b = i;
        }

        @SuppressLint({"WrongConstant"})
        boolean a() {
            return this.b == 0;
        }

        @SuppressLint({"WrongConstant"})
        C0028e(Typeface typeface) {
            this.f1079a = typeface;
            this.b = 0;
        }
    }
}
