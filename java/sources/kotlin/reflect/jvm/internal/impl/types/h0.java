package kotlin.reflect.jvm.internal.impl.types;

/* JADX INFO: loaded from: classes6.dex */
public final class h0 extends m implements z0 {
    private final f0 b;
    private final a0 c;

    public h0(f0 delegate, a0 enhancement) {
        kotlin.jvm.internal.r.e(delegate, "delegate");
        kotlin.jvm.internal.r.e(enhancement, "enhancement");
        this.b = delegate;
        this.c = enhancement;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    /* JADX INFO: renamed from: P0 */
    public f0 M0(boolean z) {
        return (f0) a1.e(B0().M0(z), e0().L0().M0(z));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.c1
    public f0 Q0(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e newAnnotations) {
        kotlin.jvm.internal.r.e(newAnnotations, "newAnnotations");
        return (f0) a1.e(B0().Q0(newAnnotations), e0());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.m
    protected f0 R0() {
        return this.b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.z0
    /* JADX INFO: renamed from: U0, reason: merged with bridge method [inline-methods] */
    public f0 B0() {
        return R0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.m
    /* JADX INFO: renamed from: V0, reason: merged with bridge method [inline-methods] */
    public h0 S0(kotlin.reflect.jvm.internal.impl.types.checker.g kotlinTypeRefiner) {
        kotlin.jvm.internal.r.e(kotlinTypeRefiner, "kotlinTypeRefiner");
        return new h0((f0) kotlinTypeRefiner.g(R0()), kotlinTypeRefiner.g(e0()));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.m
    /* JADX INFO: renamed from: W0, reason: merged with bridge method [inline-methods] */
    public h0 T0(f0 delegate) {
        kotlin.jvm.internal.r.e(delegate, "delegate");
        return new h0(delegate, e0());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.z0
    public a0 e0() {
        return this.c;
    }
}
