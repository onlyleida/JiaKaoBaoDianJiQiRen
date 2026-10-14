package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

/* JADX INFO: loaded from: classes6.dex */
public final class b1 extends s {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f15652g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b1(String presentableName, q0 constructor, MemberScope memberScope, List<? extends s0> arguments, boolean z) {
        super(constructor, memberScope, arguments, z, null, 16, null);
        kotlin.jvm.internal.r.e(presentableName, "presentableName");
        kotlin.jvm.internal.r.e(constructor, "constructor");
        kotlin.jvm.internal.r.e(memberScope, "memberScope");
        kotlin.jvm.internal.r.e(arguments, "arguments");
        this.f15652g = presentableName;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.s, kotlin.reflect.jvm.internal.impl.types.a0
    /* JADX INFO: renamed from: K0 */
    public /* bridge */ /* synthetic */ a0 S0(kotlin.reflect.jvm.internal.impl.types.checker.g gVar) {
        T0(gVar);
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.s, kotlin.reflect.jvm.internal.impl.types.c1
    /* JADX INFO: renamed from: N0 */
    public /* bridge */ /* synthetic */ c1 S0(kotlin.reflect.jvm.internal.impl.types.checker.g gVar) {
        T0(gVar);
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0, kotlin.reflect.jvm.internal.impl.types.c1
    /* JADX INFO: renamed from: P0 */
    public f0 M0(boolean z) {
        return new b1(R0(), I0(), m(), H0(), z);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.s
    public String R0() {
        return this.f15652g;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.s
    public /* bridge */ /* synthetic */ s S0(kotlin.reflect.jvm.internal.impl.types.checker.g gVar) {
        T0(gVar);
        return this;
    }

    public b1 T0(kotlin.reflect.jvm.internal.impl.types.checker.g kotlinTypeRefiner) {
        kotlin.jvm.internal.r.e(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this;
    }
}
