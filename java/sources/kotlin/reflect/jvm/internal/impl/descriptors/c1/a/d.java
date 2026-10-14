package kotlin.reflect.jvm.internal.impl.descriptors.c1.a;

import java.util.Set;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClass;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.s;
import kotlin.reflect.jvm.internal.impl.load.java.structure.u;
import kotlin.text.t;

/* JADX INFO: loaded from: classes6.dex */
public final class d implements kotlin.reflect.jvm.internal.impl.load.java.i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ClassLoader f14879a;

    public d(ClassLoader classLoader) {
        r.e(classLoader, "classLoader");
        this.f14879a = classLoader;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.i
    public kotlin.reflect.jvm.internal.impl.load.java.structure.g a(kotlin.reflect.jvm.internal.impl.load.java.i.a request) {
        r.e(request, "request");
        kotlin.reflect.jvm.internal.impl.name.b bVarA = request.a();
        kotlin.reflect.jvm.internal.impl.name.c cVarH = bVarA.h();
        r.d(cVarH, "classId.packageFqName");
        String strB = bVarA.i().b();
        r.d(strB, "classId.relativeClassName.asString()");
        String strW = t.w(strB, '.', '$', false, 4, null);
        if (!cVarH.d()) {
            strW = cVarH.b() + '.' + strW;
        }
        Class<?> clsA = e.a(this.f14879a, strW);
        if (clsA != null) {
            return new ReflectJavaClass(clsA);
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.i
    public u b(kotlin.reflect.jvm.internal.impl.name.c fqName) {
        r.e(fqName, "fqName");
        return new s(fqName);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.i
    public Set<String> c(kotlin.reflect.jvm.internal.impl.name.c packageFqName) {
        r.e(packageFqName, "packageFqName");
        return null;
    }
}
