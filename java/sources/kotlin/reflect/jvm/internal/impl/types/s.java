package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

/* JADX INFO: loaded from: classes6.dex */
public class s extends f0 {
    private final q0 b;
    private final MemberScope c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<s0> f15704d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f15705e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f15706f;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public s(q0 constructor, MemberScope memberScope) {
        this(constructor, memberScope, null, false, null, 28, null);
        kotlin.jvm.internal.r.e(constructor, "constructor");
        kotlin.jvm.internal.r.e(memberScope, "memberScope");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public s(q0 constructor, MemberScope memberScope, List<? extends s0> arguments, boolean z) {
        this(constructor, memberScope, arguments, z, null, 16, null);
        kotlin.jvm.internal.r.e(constructor, "constructor");
        kotlin.jvm.internal.r.e(memberScope, "memberScope");
        kotlin.jvm.internal.r.e(arguments, "arguments");
    }

    public /* synthetic */ s(q0 q0Var, MemberScope memberScope, List list, boolean z, String str, int i, kotlin.jvm.internal.o oVar) {
        this(q0Var, memberScope, (i & 4) != 0 ? kotlin.collections.u.j() : list, (i & 8) != 0 ? false : z, (i & 16) != 0 ? "???" : str);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.a0
    public List<s0> H0() {
        return this.f15704d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.a0
    public q0 I0() {
        return this.b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.a0
    public boolean J0() {
        return this.f15705e;
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
        return new s(I0(), m(), H0(), z, null, 16, null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    public f0 Q0(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e newAnnotations) {
        kotlin.jvm.internal.r.e(newAnnotations, "newAnnotations");
        return this;
    }

    public String R0() {
        return this.f15706f;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.c1
    public s S0(kotlin.reflect.jvm.internal.impl.types.checker.g kotlinTypeRefiner) {
        kotlin.jvm.internal.r.e(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.a
    public kotlin.reflect.jvm.internal.impl.descriptors.annotations.e getAnnotations() {
        return kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.a0
    public MemberScope m() {
        return this.c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(I0());
        sb.append(H0().isEmpty() ? "" : CollectionsKt___CollectionsKt.l0(H0(), ", ", "<", ">", -1, "...", null));
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public s(q0 constructor, MemberScope memberScope, List<? extends s0> arguments, boolean z, String presentableName) {
        kotlin.jvm.internal.r.e(constructor, "constructor");
        kotlin.jvm.internal.r.e(memberScope, "memberScope");
        kotlin.jvm.internal.r.e(arguments, "arguments");
        kotlin.jvm.internal.r.e(presentableName, "presentableName");
        this.b = constructor;
        this.c = memberScope;
        this.f15704d = arguments;
        this.f15705e = z;
        this.f15706f = presentableName;
    }
}
