package kotlin.reflect.jvm.internal.impl.types;

import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;

/* JADX INFO: loaded from: classes6.dex */
public final class x extends v implements z0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final v f15720d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a0 f15721e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(v origin, a0 enhancement) {
        super(origin.Q0(), origin.R0());
        kotlin.jvm.internal.r.e(origin, "origin");
        kotlin.jvm.internal.r.e(enhancement, "enhancement");
        this.f15720d = origin;
        this.f15721e = enhancement;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.c1
    public c1 M0(boolean z) {
        return a1.e(B0().M0(z), e0().L0().M0(z));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.c1
    /* JADX INFO: renamed from: O0 */
    public c1 Q0(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e newAnnotations) {
        kotlin.jvm.internal.r.e(newAnnotations, "newAnnotations");
        return a1.e(B0().Q0(newAnnotations), e0());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.v
    public f0 P0() {
        return B0().P0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.v
    public String S0(DescriptorRenderer renderer, kotlin.reflect.jvm.internal.impl.renderer.b options) {
        kotlin.jvm.internal.r.e(renderer, "renderer");
        kotlin.jvm.internal.r.e(options, "options");
        return options.d() ? renderer.w(e0()) : B0().S0(renderer, options);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.z0
    /* JADX INFO: renamed from: T0, reason: merged with bridge method [inline-methods] */
    public v B0() {
        return this.f15720d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.c1
    /* JADX INFO: renamed from: U0, reason: merged with bridge method [inline-methods] */
    public x S0(kotlin.reflect.jvm.internal.impl.types.checker.g kotlinTypeRefiner) {
        kotlin.jvm.internal.r.e(kotlinTypeRefiner, "kotlinTypeRefiner");
        return new x((v) kotlinTypeRefiner.g(B0()), kotlinTypeRefiner.g(e0()));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.z0
    public a0 e0() {
        return this.f15721e;
    }
}
