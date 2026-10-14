package kotlin.reflect.jvm.internal.impl.descriptors.c1.a;

import java.io.InputStream;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes6.dex */
public final class g implements kotlin.reflect.jvm.internal.impl.load.kotlin.k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ClassLoader f14881a;
    private final kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.c b;

    public g(ClassLoader classLoader) {
        r.e(classLoader, "classLoader");
        this.f14881a = classLoader;
        this.b = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.c();
    }

    private final kotlin.reflect.jvm.internal.impl.load.kotlin.k.a d(String str) {
        f fVarA;
        Class<?> clsA = e.a(this.f14881a, str);
        if (clsA == null || (fVarA = f.c.a(clsA)) == null) {
            return null;
        }
        return new kotlin.reflect.jvm.internal.impl.load.kotlin.k.a.b(fVarA, null, 2, null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k
    public kotlin.reflect.jvm.internal.impl.load.kotlin.k.a a(kotlin.reflect.jvm.internal.impl.load.java.structure.g javaClass) {
        r.e(javaClass, "javaClass");
        kotlin.reflect.jvm.internal.impl.name.c cVarE = javaClass.e();
        String strB = cVarE == null ? null : cVarE.b();
        if (strB == null) {
            return null;
        }
        return d(strB);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.o
    public InputStream b(kotlin.reflect.jvm.internal.impl.name.c packageFqName) {
        r.e(packageFqName, "packageFqName");
        if (packageFqName.i(kotlin.reflect.jvm.internal.impl.builtins.h.k)) {
            return this.b.a(kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.a.m.n(packageFqName));
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k
    public kotlin.reflect.jvm.internal.impl.load.kotlin.k.a c(kotlin.reflect.jvm.internal.impl.name.b classId) {
        r.e(classId, "classId");
        return d(h.b(classId));
    }
}
