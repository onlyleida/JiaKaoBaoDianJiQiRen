package kotlin.reflect.jvm.internal.impl.types.typesApproximation;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes6.dex */
final class CapturedTypeApproximationKt$toTypeProjection$1$descriptorRenderer$1 extends Lambda implements Function1<kotlin.reflect.jvm.internal.impl.renderer.b, v> {
    public static final CapturedTypeApproximationKt$toTypeProjection$1$descriptorRenderer$1 INSTANCE = new CapturedTypeApproximationKt$toTypeProjection$1$descriptorRenderer$1();

    CapturedTypeApproximationKt$toTypeProjection$1$descriptorRenderer$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ v invoke(kotlin.reflect.jvm.internal.impl.renderer.b bVar) {
        invoke2(bVar);
        return v.f15822a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(kotlin.reflect.jvm.internal.impl.renderer.b withOptions) {
        r.e(withOptions, "$this$withOptions");
        withOptions.m(kotlin.reflect.jvm.internal.impl.renderer.a.C0350a.f15474a);
    }
}
