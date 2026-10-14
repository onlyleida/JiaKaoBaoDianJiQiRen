package kotlin.reflect.jvm.internal.impl.types;

/* JADX INFO: loaded from: classes6.dex */
public abstract class n extends m {
    private final f0 b;

    public n(f0 delegate) {
        kotlin.jvm.internal.r.e(delegate, "delegate");
        this.b = delegate;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    /* JADX INFO: renamed from: P0 */
    public f0 M0(boolean z) {
        return z == J0() ? this : R0().M0(z).Q0(getAnnotations());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.m
    protected f0 R0() {
        return this.b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    /* JADX INFO: renamed from: U0, reason: merged with bridge method [inline-methods] */
    public n Q0(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e newAnnotations) {
        kotlin.jvm.internal.r.e(newAnnotations, "newAnnotations");
        return newAnnotations != getAnnotations() ? new g(this, newAnnotations) : this;
    }
}
