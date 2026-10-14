package kotlin.reflect.jvm.internal.impl.descriptors.c1.a;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes6.dex */
public final class e {
    public static final Class<?> a(ClassLoader classLoader, String fqName) {
        r.e(classLoader, "<this>");
        r.e(fqName, "fqName");
        try {
            return Class.forName(fqName, false, classLoader);
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }
}
