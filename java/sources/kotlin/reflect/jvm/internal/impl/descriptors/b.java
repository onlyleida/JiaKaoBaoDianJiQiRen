package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.types.Variance;

/* JADX INFO: loaded from: classes6.dex */
final class b implements t0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final t0 f14876a;
    private final k b;
    private final int c;

    public b(t0 originalDescriptor, k declarationDescriptor, int i) {
        kotlin.jvm.internal.r.e(originalDescriptor, "originalDescriptor");
        kotlin.jvm.internal.r.e(declarationDescriptor, "declarationDescriptor");
        this.f14876a = originalDescriptor;
        this.b = declarationDescriptor;
        this.c = i;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.t0
    public kotlin.reflect.jvm.internal.impl.storage.m L() {
        return this.f14876a.L();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.t0
    public boolean Q() {
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.l, kotlin.reflect.jvm.internal.impl.descriptors.k
    public k b() {
        return this.b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.a
    public kotlin.reflect.jvm.internal.impl.descriptors.annotations.e getAnnotations() {
        return this.f14876a.getAnnotations();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a0
    public kotlin.reflect.jvm.internal.impl.name.f getName() {
        return this.f14876a.getName();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.t0
    public List<kotlin.reflect.jvm.internal.impl.types.a0> getUpperBounds() {
        return this.f14876a.getUpperBounds();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.t0
    public Variance getVariance() {
        return this.f14876a.getVariance();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.t0
    public int h() {
        return this.c + this.f14876a.h();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.t0, kotlin.reflect.jvm.internal.impl.descriptors.f
    public kotlin.reflect.jvm.internal.impl.types.q0 i() {
        return this.f14876a.i();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.f
    public kotlin.reflect.jvm.internal.impl.types.f0 n() {
        return this.f14876a.n();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.n
    public o0 o() {
        return this.f14876a.o();
    }

    public String toString() {
        return this.f14876a + "[inner-copy]";
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.t0
    public boolean v() {
        return this.f14876a.v();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
    public <R, D> R y(m<R, D> mVar, D d2) {
        return (R) this.f14876a.y(mVar, d2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
    public t0 a() {
        t0 t0VarA = this.f14876a.a();
        kotlin.jvm.internal.r.d(t0VarA, "originalDescriptor.original");
        return t0VarA;
    }
}
