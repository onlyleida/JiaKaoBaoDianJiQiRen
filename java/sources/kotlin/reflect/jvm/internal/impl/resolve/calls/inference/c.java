package kotlin.reflect.jvm.internal.impl.resolve.calls.inference;

import java.util.Collection;
import java.util.List;
import kotlin.collections.t;
import kotlin.collections.u;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.f;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.checker.NewCapturedTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.checker.g;
import kotlin.reflect.jvm.internal.impl.types.s0;

/* JADX INFO: loaded from: classes6.dex */
public final class c implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final s0 f15492a;
    private NewCapturedTypeConstructor b;

    public c(s0 projection) {
        r.e(projection, "projection");
        this.f15492a = projection;
        getProjection().c();
        Variance variance = Variance.INVARIANT;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.q0
    public Collection<a0> a() {
        a0 type = getProjection().c() == Variance.OUT_VARIANCE ? getProjection().getType() : k().I();
        r.d(type, "if (projection.projectio… builtIns.nullableAnyType");
        return t.d(type);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.q0
    /* JADX INFO: renamed from: c */
    public /* bridge */ /* synthetic */ f u() {
        return (f) e();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.q0
    public boolean d() {
        return false;
    }

    public Void e() {
        return null;
    }

    public final NewCapturedTypeConstructor f() {
        return this.b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.q0
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public c b(g kotlinTypeRefiner) {
        r.e(kotlinTypeRefiner, "kotlinTypeRefiner");
        s0 s0VarB = getProjection().b(kotlinTypeRefiner);
        r.d(s0VarB, "projection.refine(kotlinTypeRefiner)");
        return new c(s0VarB);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.q0
    public List<t0> getParameters() {
        return u.j();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.calls.inference.b
    public s0 getProjection() {
        return this.f15492a;
    }

    public final void h(NewCapturedTypeConstructor newCapturedTypeConstructor) {
        this.b = newCapturedTypeConstructor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.q0
    public kotlin.reflect.jvm.internal.impl.builtins.g k() {
        kotlin.reflect.jvm.internal.impl.builtins.g gVarK = getProjection().getType().I0().k();
        r.d(gVarK, "projection.type.constructor.builtIns");
        return gVarK;
    }

    public String toString() {
        return "CapturedTypeConstructor(" + getProjection() + ')';
    }
}
