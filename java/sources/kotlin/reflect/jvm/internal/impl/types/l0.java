package kotlin.reflect.jvm.internal.impl.types;

import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

/* JADX INFO: loaded from: classes6.dex */
public final class l0 extends e implements kotlin.reflect.jvm.internal.impl.types.model.h {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final q0 f15693e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final MemberScope f15694f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l0(q0 originalTypeVariable, boolean z, q0 constructor) {
        super(originalTypeVariable, z);
        kotlin.jvm.internal.r.e(originalTypeVariable, "originalTypeVariable");
        kotlin.jvm.internal.r.e(constructor, "constructor");
        this.f15693e = constructor;
        this.f15694f = originalTypeVariable.k().i().m();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.a0
    public q0 I0() {
        return this.f15693e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.e
    public e S0(boolean z) {
        return new l0(R0(), z, I0());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.e, kotlin.reflect.jvm.internal.impl.types.a0
    public MemberScope m() {
        return this.f15694f;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Stub (BI): ");
        sb.append(R0());
        sb.append(J0() ? "?" : "");
        return sb.toString();
    }
}
