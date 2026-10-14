package kotlin.reflect.jvm.internal.impl.resolve.calls.inference;

import java.util.List;
import kotlin.collections.u;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.e;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.checker.g;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.s0;
import kotlin.reflect.jvm.internal.impl.types.t;

/* JADX INFO: loaded from: classes6.dex */
public final class a extends f0 implements kotlin.reflect.jvm.internal.impl.types.model.b {
    private final s0 b;
    private final b c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f15490d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final e f15491e;

    public /* synthetic */ a(s0 s0Var, b bVar, boolean z, e eVar, int i, o oVar) {
        this(s0Var, (i & 2) != 0 ? new c(s0Var) : bVar, (i & 4) != 0 ? false : z, (i & 8) != 0 ? e.O.b() : eVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.a0
    public List<s0> H0() {
        return u.j();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.a0
    public boolean J0() {
        return this.f15490d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.a0
    /* JADX INFO: renamed from: R0, reason: merged with bridge method [inline-methods] */
    public b I0() {
        return this.c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    /* JADX INFO: renamed from: S0, reason: merged with bridge method [inline-methods] */
    public a M0(boolean z) {
        return z == J0() ? this : new a(this.b, I0(), z, getAnnotations());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.c1
    /* JADX INFO: renamed from: T0, reason: merged with bridge method [inline-methods] */
    public a S0(g kotlinTypeRefiner) {
        r.e(kotlinTypeRefiner, "kotlinTypeRefiner");
        s0 s0VarB = this.b.b(kotlinTypeRefiner);
        r.d(s0VarB, "typeProjection.refine(kotlinTypeRefiner)");
        return new a(s0VarB, I0(), J0(), getAnnotations());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    /* JADX INFO: renamed from: U0, reason: merged with bridge method [inline-methods] */
    public a Q0(e newAnnotations) {
        r.e(newAnnotations, "newAnnotations");
        return new a(this.b, I0(), J0(), newAnnotations);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.a
    public e getAnnotations() {
        return this.f15491e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.a0
    public MemberScope m() {
        MemberScope memberScopeI = t.i("No member resolution should be done on captured type, it used only during constraint system resolution", true);
        r.d(memberScopeI, "createErrorScope(\n      …solution\", true\n        )");
        return memberScopeI;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Captured(");
        sb.append(this.b);
        sb.append(')');
        sb.append(J0() ? "?" : "");
        return sb.toString();
    }

    public a(s0 typeProjection, b constructor, boolean z, e annotations) {
        r.e(typeProjection, "typeProjection");
        r.e(constructor, "constructor");
        r.e(annotations, "annotations");
        this.b = typeProjection;
        this.c = constructor;
        this.f15490d = z;
        this.f15491e = annotations;
    }
}
