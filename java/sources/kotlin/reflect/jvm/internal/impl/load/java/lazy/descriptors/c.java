package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.Collection;
import java.util.List;
import kotlin.collections.u;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.descriptors.v0;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.e;
import kotlin.reflect.jvm.internal.impl.name.f;
import kotlin.reflect.jvm.internal.impl.types.a0;

/* JADX INFO: loaded from: classes6.dex */
public abstract class c extends LazyJavaScope {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(e c) {
        super(c, null, 2, null);
        r.e(c, "c");
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    protected LazyJavaScope.a H(kotlin.reflect.jvm.internal.impl.load.java.structure.r method, List<? extends t0> methodTypeParameters, a0 returnType, List<? extends v0> valueParameters) {
        r.e(method, "method");
        r.e(methodTypeParameters, "methodTypeParameters");
        r.e(returnType, "returnType");
        r.e(valueParameters, "valueParameters");
        return new LazyJavaScope.a(returnType, null, valueParameters, methodTypeParameters, false, u.j());
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    protected void s(f name, Collection<j0> result) {
        r.e(name, "name");
        r.e(result, "result");
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    protected m0 z() {
        return null;
    }
}
