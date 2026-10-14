package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

/* JADX INFO: loaded from: classes6.dex */
public abstract class a0 implements kotlin.reflect.jvm.internal.impl.descriptors.annotations.a, kotlin.reflect.jvm.internal.impl.types.model.g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f15651a;

    private a0() {
    }

    public /* synthetic */ a0(kotlin.jvm.internal.o oVar) {
        this();
    }

    private final int G0() {
        return b0.a(this) ? super.hashCode() : (((I0().hashCode() * 31) + H0().hashCode()) * 31) + (J0() ? 1 : 0);
    }

    public abstract List<s0> H0();

    public abstract q0 I0();

    public abstract boolean J0();

    public abstract a0 K0(kotlin.reflect.jvm.internal.impl.types.checker.g gVar);

    public abstract c1 L0();

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a0)) {
            return false;
        }
        a0 a0Var = (a0) obj;
        return J0() == a0Var.J0() && kotlin.reflect.jvm.internal.impl.types.checker.q.f15677a.a(L0(), a0Var.L0());
    }

    public final int hashCode() {
        int i = this.f15651a;
        if (i != 0) {
            return i;
        }
        int iG0 = G0();
        this.f15651a = iG0;
        return iG0;
    }

    public abstract MemberScope m();
}
