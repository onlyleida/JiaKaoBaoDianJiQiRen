package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

/* JADX INFO: loaded from: classes6.dex */
final class g0 extends f0 {
    private final q0 b;
    private final List<s0> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f15684d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final MemberScope f15685e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Function1<kotlin.reflect.jvm.internal.impl.types.checker.g, f0> f15686f;

    /* JADX WARN: Multi-variable type inference failed */
    public g0(q0 constructor, List<? extends s0> arguments, boolean z, MemberScope memberScope, Function1<? super kotlin.reflect.jvm.internal.impl.types.checker.g, ? extends f0> refinedTypeFactory) {
        kotlin.jvm.internal.r.e(constructor, "constructor");
        kotlin.jvm.internal.r.e(arguments, "arguments");
        kotlin.jvm.internal.r.e(memberScope, "memberScope");
        kotlin.jvm.internal.r.e(refinedTypeFactory, "refinedTypeFactory");
        this.b = constructor;
        this.c = arguments;
        this.f15684d = z;
        this.f15685e = memberScope;
        this.f15686f = refinedTypeFactory;
        if (m() instanceof t.d) {
            throw new IllegalStateException("SimpleTypeImpl should not be created for error type: " + m() + '\n' + I0());
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.a0
    public List<s0> H0() {
        return this.c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.a0
    public q0 I0() {
        return this.b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.a0
    public boolean J0() {
        return this.f15684d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    /* JADX INFO: renamed from: P0 */
    public f0 M0(boolean z) {
        if (z == J0()) {
            return this;
        }
        return z ? new d0(this) : new c0(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.c1
    public f0 Q0(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e newAnnotations) {
        kotlin.jvm.internal.r.e(newAnnotations, "newAnnotations");
        return newAnnotations.isEmpty() ? this : new g(this, newAnnotations);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.c1
    /* JADX INFO: renamed from: R0, reason: merged with bridge method [inline-methods] */
    public f0 S0(kotlin.reflect.jvm.internal.impl.types.checker.g kotlinTypeRefiner) {
        kotlin.jvm.internal.r.e(kotlinTypeRefiner, "kotlinTypeRefiner");
        f0 f0VarInvoke = this.f15686f.invoke(kotlinTypeRefiner);
        return f0VarInvoke == null ? this : f0VarInvoke;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.a
    public kotlin.reflect.jvm.internal.impl.descriptors.annotations.e getAnnotations() {
        return kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.a0
    public MemberScope m() {
        return this.f15685e;
    }
}
