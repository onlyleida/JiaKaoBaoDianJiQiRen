package kotlin.reflect.jvm.internal.impl.types;

import kotlin.NoWhenBranchMatchedException;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class w extends v implements j {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static boolean f15718e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f15719d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(f0 lowerBound, f0 upperBound) {
        super(lowerBound, upperBound);
        kotlin.jvm.internal.r.e(lowerBound, "lowerBound");
        kotlin.jvm.internal.r.e(upperBound, "upperBound");
    }

    private final void U0() {
        if (!f15718e || this.f15719d) {
            return;
        }
        this.f15719d = true;
        y.b(Q0());
        y.b(R0());
        kotlin.jvm.internal.r.a(Q0(), R0());
        kotlin.reflect.jvm.internal.impl.types.checker.f.f15664a.d(Q0(), R0());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.c1
    public c1 M0(boolean z) {
        return KotlinTypeFactory.d(Q0().M0(z), R0().M0(z));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.c1
    /* JADX INFO: renamed from: O0 */
    public c1 Q0(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e newAnnotations) {
        kotlin.jvm.internal.r.e(newAnnotations, "newAnnotations");
        return KotlinTypeFactory.d(Q0().Q0(newAnnotations), R0().Q0(newAnnotations));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.v
    public f0 P0() {
        U0();
        return Q0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.v
    public String S0(DescriptorRenderer renderer, kotlin.reflect.jvm.internal.impl.renderer.b options) {
        kotlin.jvm.internal.r.e(renderer, "renderer");
        kotlin.jvm.internal.r.e(options, "options");
        if (!options.i()) {
            return renderer.t(renderer.w(Q0()), renderer.w(R0()), TypeUtilsKt.h(this));
        }
        return '(' + renderer.w(Q0()) + ".." + renderer.w(R0()) + ')';
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.c1
    /* JADX INFO: renamed from: T0, reason: merged with bridge method [inline-methods] */
    public v S0(kotlin.reflect.jvm.internal.impl.types.checker.g kotlinTypeRefiner) {
        kotlin.jvm.internal.r.e(kotlinTypeRefiner, "kotlinTypeRefiner");
        return new w((f0) kotlinTypeRefiner.g(Q0()), (f0) kotlinTypeRefiner.g(R0()));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.j
    public a0 h0(a0 replacement) {
        c1 c1VarD;
        kotlin.jvm.internal.r.e(replacement, "replacement");
        c1 c1VarL0 = replacement.L0();
        if (c1VarL0 instanceof v) {
            c1VarD = c1VarL0;
        } else {
            if (!(c1VarL0 instanceof f0)) {
                throw new NoWhenBranchMatchedException();
            }
            f0 f0Var = (f0) c1VarL0;
            c1VarD = KotlinTypeFactory.d(f0Var, f0Var.M0(true));
        }
        return a1.b(c1VarD, c1VarL0);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.v
    public String toString() {
        return '(' + Q0() + ".." + R0() + ')';
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.j
    public boolean w() {
        return (Q0().I0().u() instanceof kotlin.reflect.jvm.internal.impl.descriptors.t0) && kotlin.jvm.internal.r.a(Q0().I0(), R0().I0());
    }
}
