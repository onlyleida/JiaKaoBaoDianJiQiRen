package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import kotlin.reflect.jvm.internal.impl.descriptors.o0;

/* JADX INFO: loaded from: classes6.dex */
public abstract class w extends j implements kotlin.reflect.jvm.internal.impl.descriptors.b0 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.name.c f14955e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f14956f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(kotlin.reflect.jvm.internal.impl.descriptors.z module, kotlin.reflect.jvm.internal.impl.name.c fqName) {
        super(module, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b(), fqName.h(), o0.f14970a);
        kotlin.jvm.internal.r.e(module, "module");
        kotlin.jvm.internal.r.e(fqName, "fqName");
        this.f14955e = fqName;
        this.f14956f = "package " + fqName + " of " + module;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.b0
    public final kotlin.reflect.jvm.internal.impl.name.c e() {
        return this.f14955e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.j, kotlin.reflect.jvm.internal.impl.descriptors.n
    public o0 o() {
        o0 NO_SOURCE = o0.f14970a;
        kotlin.jvm.internal.r.d(NO_SOURCE, "NO_SOURCE");
        return NO_SOURCE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.i
    public String toString() {
        return this.f14956f;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
    public <R, D> R y(kotlin.reflect.jvm.internal.impl.descriptors.m<R, D> visitor, D d2) {
        kotlin.jvm.internal.r.e(visitor, "visitor");
        return visitor.h(this, d2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.j, kotlin.reflect.jvm.internal.impl.descriptors.k
    public kotlin.reflect.jvm.internal.impl.descriptors.z b() {
        return (kotlin.reflect.jvm.internal.impl.descriptors.z) super.b();
    }
}
