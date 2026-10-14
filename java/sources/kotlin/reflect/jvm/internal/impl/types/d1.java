package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

/* JADX INFO: loaded from: classes6.dex */
public abstract class d1 extends a0 {
    public d1() {
        super(null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.a0
    public List<s0> H0() {
        return M0().H0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.a0
    public q0 I0() {
        return M0().I0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.a0
    public boolean J0() {
        return M0().J0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.a0
    public final c1 L0() {
        a0 a0VarM0 = M0();
        while (a0VarM0 instanceof d1) {
            a0VarM0 = ((d1) a0VarM0).M0();
        }
        return (c1) a0VarM0;
    }

    protected abstract a0 M0();

    public boolean N0() {
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.a
    public kotlin.reflect.jvm.internal.impl.descriptors.annotations.e getAnnotations() {
        return M0().getAnnotations();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.a0
    public MemberScope m() {
        return M0().m();
    }

    public String toString() {
        return N0() ? M0().toString() : "<Not computed yet>";
    }
}
