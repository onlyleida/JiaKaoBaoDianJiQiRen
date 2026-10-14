package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

/* JADX INFO: loaded from: classes6.dex */
public abstract class e extends f0 {
    private final q0 b;
    private final boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final MemberScope f15680d;

    public e(q0 originalTypeVariable, boolean z) {
        kotlin.jvm.internal.r.e(originalTypeVariable, "originalTypeVariable");
        this.b = originalTypeVariable;
        this.c = z;
        MemberScope memberScopeH = t.h(kotlin.jvm.internal.r.m("Scope for stub type: ", originalTypeVariable));
        kotlin.jvm.internal.r.d(memberScopeH, "createErrorScope(\"Scope …: $originalTypeVariable\")");
        this.f15680d = memberScopeH;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.a0
    public List<s0> H0() {
        return kotlin.collections.u.j();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.a0
    public boolean J0() {
        return this.c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.a0
    /* JADX INFO: renamed from: K0 */
    public /* bridge */ /* synthetic */ a0 S0(kotlin.reflect.jvm.internal.impl.types.checker.g gVar) {
        T0(gVar);
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.c1
    /* JADX INFO: renamed from: N0 */
    public /* bridge */ /* synthetic */ c1 S0(kotlin.reflect.jvm.internal.impl.types.checker.g gVar) {
        T0(gVar);
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.c1
    /* JADX INFO: renamed from: O0 */
    public /* bridge */ /* synthetic */ c1 Q0(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar) {
        Q0(eVar);
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    /* JADX INFO: renamed from: P0 */
    public f0 M0(boolean z) {
        return z == J0() ? this : S0(z);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    public f0 Q0(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e newAnnotations) {
        kotlin.jvm.internal.r.e(newAnnotations, "newAnnotations");
        return this;
    }

    public final q0 R0() {
        return this.b;
    }

    public abstract e S0(boolean z);

    public e T0(kotlin.reflect.jvm.internal.impl.types.checker.g kotlinTypeRefiner) {
        kotlin.jvm.internal.r.e(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.a
    public kotlin.reflect.jvm.internal.impl.descriptors.annotations.e getAnnotations() {
        return kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.a0
    public MemberScope m() {
        return this.f15680d;
    }
}
