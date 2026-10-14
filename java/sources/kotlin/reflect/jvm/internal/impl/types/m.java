package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

/* JADX INFO: loaded from: classes6.dex */
public abstract class m extends f0 {
    @Override // kotlin.reflect.jvm.internal.impl.types.a0
    public List<s0> H0() {
        return R0().H0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.a0
    public q0 I0() {
        return R0().I0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.a0
    public boolean J0() {
        return R0().J0();
    }

    protected abstract f0 R0();

    @Override // kotlin.reflect.jvm.internal.impl.types.c1
    public f0 S0(kotlin.reflect.jvm.internal.impl.types.checker.g kotlinTypeRefiner) {
        kotlin.jvm.internal.r.e(kotlinTypeRefiner, "kotlinTypeRefiner");
        return T0((f0) kotlinTypeRefiner.g(R0()));
    }

    public abstract m T0(f0 f0Var);

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.a
    public kotlin.reflect.jvm.internal.impl.descriptors.annotations.e getAnnotations() {
        return R0().getAnnotations();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.a0
    public MemberScope m() {
        return R0().m();
    }
}
