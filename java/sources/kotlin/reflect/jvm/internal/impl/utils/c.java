package kotlin.reflect.jvm.internal.impl.utils;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes6.dex */
public final class c {
    public static final boolean a(Throwable th) {
        r.e(th, "<this>");
        Class<?> superclass = th.getClass();
        while (!r.a(superclass.getCanonicalName(), "com.intellij.openapi.progress.ProcessCanceledException")) {
            superclass = superclass.getSuperclass();
            if (superclass == null) {
                return false;
            }
        }
        return true;
    }

    public static final RuntimeException b(Throwable e2) throws Throwable {
        r.e(e2, "e");
        throw e2;
    }
}
