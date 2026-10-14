package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.Collection;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.reflect.jvm.internal.impl.types.a0;

/* JADX INFO: loaded from: classes6.dex */
public final class u implements t<h> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final u f15238a = new u();

    private u() {
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.t
    public String b(kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        return t.a.a(this, dVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.t
    public String c(kotlin.reflect.jvm.internal.impl.descriptors.d classDescriptor) {
        kotlin.jvm.internal.r.e(classDescriptor, "classDescriptor");
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.t
    public a0 d(a0 a0Var) {
        return t.a.b(this, a0Var);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.t
    public boolean e() {
        return t.a.c(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.t
    public void f(a0 kotlinType, kotlin.reflect.jvm.internal.impl.descriptors.d descriptor) {
        kotlin.jvm.internal.r.e(kotlinType, "kotlinType");
        kotlin.jvm.internal.r.e(descriptor, "descriptor");
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.t
    public a0 g(Collection<? extends a0> types) {
        kotlin.jvm.internal.r.e(types, "types");
        throw new AssertionError(kotlin.jvm.internal.r.m("There should be no intersection type in existing descriptors, but found: ", CollectionsKt___CollectionsKt.m0(types, null, null, null, 0, null, null, 63, null)));
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.t
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public h a(kotlin.reflect.jvm.internal.impl.descriptors.d classDescriptor) {
        kotlin.jvm.internal.r.e(classDescriptor, "classDescriptor");
        return null;
    }
}
