package kotlin.reflect.jvm.internal.impl.types;

/* JADX INFO: loaded from: classes6.dex */
public final class a extends m {
    private final f0 b;
    private final f0 c;

    public a(f0 delegate, f0 abbreviation) {
        kotlin.jvm.internal.r.e(delegate, "delegate");
        kotlin.jvm.internal.r.e(abbreviation, "abbreviation");
        this.b = delegate;
        this.c = abbreviation;
    }

    public final f0 F() {
        return R0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.m
    protected f0 R0() {
        return this.b;
    }

    public final f0 U0() {
        return this.c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    /* JADX INFO: renamed from: V0, reason: merged with bridge method [inline-methods] */
    public a M0(boolean z) {
        return new a(R0().M0(z), this.c.M0(z));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.m
    /* JADX INFO: renamed from: W0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public a S0(kotlin.reflect.jvm.internal.impl.types.checker.g kotlinTypeRefiner) {
        kotlin.jvm.internal.r.e(kotlinTypeRefiner, "kotlinTypeRefiner");
        return new a((f0) kotlinTypeRefiner.g(R0()), (f0) kotlinTypeRefiner.g(this.c));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    /* JADX INFO: renamed from: X0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public a Q0(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e newAnnotations) {
        kotlin.jvm.internal.r.e(newAnnotations, "newAnnotations");
        return new a(R0().Q0(newAnnotations), this.c);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.m
    /* JADX INFO: renamed from: Y0, reason: merged with bridge method [inline-methods] */
    public a T0(f0 delegate) {
        kotlin.jvm.internal.r.e(delegate, "delegate");
        return new a(delegate, this.c);
    }
}
