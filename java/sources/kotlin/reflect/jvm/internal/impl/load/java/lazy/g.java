package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes6.dex */
public final class g implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public kotlin.reflect.jvm.internal.impl.resolve.jvm.c f15116a;

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.f
    public kotlin.reflect.jvm.internal.impl.descriptors.d a(kotlin.reflect.jvm.internal.impl.load.java.structure.g javaClass) {
        r.e(javaClass, "javaClass");
        return b().b(javaClass);
    }

    public final kotlin.reflect.jvm.internal.impl.resolve.jvm.c b() {
        kotlin.reflect.jvm.internal.impl.resolve.jvm.c cVar = this.f15116a;
        if (cVar != null) {
            return cVar;
        }
        r.u("resolver");
        throw null;
    }

    public final void c(kotlin.reflect.jvm.internal.impl.resolve.jvm.c cVar) {
        r.e(cVar, "<set-?>");
        this.f15116a = cVar;
    }
}
