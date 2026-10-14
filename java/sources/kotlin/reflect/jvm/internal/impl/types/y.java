package kotlin.reflect.jvm.internal.impl.types;

import kotlin.NoWhenBranchMatchedException;

/* JADX INFO: loaded from: classes6.dex */
public final class y {
    public static final v a(a0 a0Var) {
        kotlin.jvm.internal.r.e(a0Var, "<this>");
        return (v) a0Var.L0();
    }

    public static final boolean b(a0 a0Var) {
        kotlin.jvm.internal.r.e(a0Var, "<this>");
        return a0Var.L0() instanceof v;
    }

    public static final f0 c(a0 a0Var) {
        kotlin.jvm.internal.r.e(a0Var, "<this>");
        c1 c1VarL0 = a0Var.L0();
        if (c1VarL0 instanceof v) {
            return ((v) c1VarL0).Q0();
        }
        if (c1VarL0 instanceof f0) {
            return (f0) c1VarL0;
        }
        throw new NoWhenBranchMatchedException();
    }

    public static final f0 d(a0 a0Var) {
        kotlin.jvm.internal.r.e(a0Var, "<this>");
        c1 c1VarL0 = a0Var.L0();
        if (c1VarL0 instanceof v) {
            return ((v) c1VarL0).R0();
        }
        if (c1VarL0 instanceof f0) {
            return (f0) c1VarL0;
        }
        throw new NoWhenBranchMatchedException();
    }
}
