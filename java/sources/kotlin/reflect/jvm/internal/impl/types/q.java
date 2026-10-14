package kotlin.reflect.jvm.internal.impl.types;

import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class q extends v implements kotlin.reflect.jvm.internal.impl.types.model.d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.descriptors.annotations.e f15702d;

    /* JADX WARN: Illegal instructions before constructor call */
    public q(kotlin.reflect.jvm.internal.impl.builtins.g builtIns, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e annotations) {
        kotlin.jvm.internal.r.e(builtIns, "builtIns");
        kotlin.jvm.internal.r.e(annotations, "annotations");
        f0 f0VarH = builtIns.H();
        kotlin.jvm.internal.r.d(f0VarH, "builtIns.nothingType");
        f0 f0VarI = builtIns.I();
        kotlin.jvm.internal.r.d(f0VarI, "builtIns.nullableAnyType");
        super(f0VarH, f0VarI);
        this.f15702d = annotations;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.v, kotlin.reflect.jvm.internal.impl.types.a0
    public boolean J0() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.a0
    /* JADX INFO: renamed from: K0 */
    public /* bridge */ /* synthetic */ a0 S0(kotlin.reflect.jvm.internal.impl.types.checker.g gVar) {
        U0(gVar);
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.c1
    public /* bridge */ /* synthetic */ c1 M0(boolean z) {
        T0(z);
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.c1
    /* JADX INFO: renamed from: N0 */
    public /* bridge */ /* synthetic */ c1 S0(kotlin.reflect.jvm.internal.impl.types.checker.g gVar) {
        U0(gVar);
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.v
    public f0 P0() {
        return R0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.v
    public String S0(DescriptorRenderer renderer, kotlin.reflect.jvm.internal.impl.renderer.b options) {
        kotlin.jvm.internal.r.e(renderer, "renderer");
        kotlin.jvm.internal.r.e(options, "options");
        return "dynamic";
    }

    public q T0(boolean z) {
        return this;
    }

    public q U0(kotlin.reflect.jvm.internal.impl.types.checker.g kotlinTypeRefiner) {
        kotlin.jvm.internal.r.e(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.c1
    /* JADX INFO: renamed from: V0, reason: merged with bridge method [inline-methods] */
    public q Q0(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e newAnnotations) {
        kotlin.jvm.internal.r.e(newAnnotations, "newAnnotations");
        return new q(TypeUtilsKt.h(P0()), newAnnotations);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.v, kotlin.reflect.jvm.internal.impl.descriptors.annotations.a
    public kotlin.reflect.jvm.internal.impl.descriptors.annotations.e getAnnotations() {
        return this.f15702d;
    }
}
