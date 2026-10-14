package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.load.java.structure.y;
import kotlin.reflect.jvm.internal.impl.load.java.structure.z;

/* JADX INFO: loaded from: classes6.dex */
public final class LazyJavaTypeParameterResolver implements h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f15067a;
    private final k b;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<y, Integer> f15068d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.storage.g<y, kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.d> f15069e;

    public LazyJavaTypeParameterResolver(e c, k containingDeclaration, z typeParameterOwner, int i) {
        r.e(c, "c");
        r.e(containingDeclaration, "containingDeclaration");
        r.e(typeParameterOwner, "typeParameterOwner");
        this.f15067a = c;
        this.b = containingDeclaration;
        this.c = i;
        this.f15068d = kotlin.reflect.jvm.internal.impl.utils.a.d(typeParameterOwner.getTypeParameters());
        this.f15069e = c.e().g(new Function1<y, kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.d>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaTypeParameterResolver$resolve$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.d invoke(y typeParameter) {
                r.e(typeParameter, "typeParameter");
                Integer num = (Integer) this.this$0.f15068d.get(typeParameter);
                if (num == null) {
                    return null;
                }
                LazyJavaTypeParameterResolver lazyJavaTypeParameterResolver = this.this$0;
                return new kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.d(ContextKt.h(ContextKt.b(lazyJavaTypeParameterResolver.f15067a, lazyJavaTypeParameterResolver), lazyJavaTypeParameterResolver.b.getAnnotations()), typeParameter, lazyJavaTypeParameterResolver.c + num.intValue(), lazyJavaTypeParameterResolver.b);
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.h
    public t0 a(y javaTypeParameter) {
        r.e(javaTypeParameter, "javaTypeParameter");
        kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.d dVarInvoke = this.f15069e.invoke(javaTypeParameter);
        return dVarInvoke == null ? this.f15067a.f().a(javaTypeParameter) : dVarInvoke;
    }
}
