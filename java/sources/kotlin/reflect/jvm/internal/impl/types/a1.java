package kotlin.reflect.jvm.internal.impl.types;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes6.dex */
public final class a1 {
    /* JADX WARN: Multi-variable type inference failed */
    public static final a0 a(a0 a0Var) {
        kotlin.jvm.internal.r.e(a0Var, "<this>");
        if (a0Var instanceof z0) {
            return ((z0) a0Var).e0();
        }
        return null;
    }

    public static final c1 b(c1 c1Var, a0 origin) {
        kotlin.jvm.internal.r.e(c1Var, "<this>");
        kotlin.jvm.internal.r.e(origin, "origin");
        return e(c1Var, a(origin));
    }

    public static final c1 c(c1 c1Var, a0 origin, Function1<? super a0, ? extends a0> transform) {
        kotlin.jvm.internal.r.e(c1Var, "<this>");
        kotlin.jvm.internal.r.e(origin, "origin");
        kotlin.jvm.internal.r.e(transform, "transform");
        a0 a0VarA = a(origin);
        return e(c1Var, a0VarA == null ? null : transform.invoke(a0VarA));
    }

    public static final a0 d(a0 a0Var) {
        kotlin.jvm.internal.r.e(a0Var, "<this>");
        a0 a0VarA = a(a0Var);
        return a0VarA == null ? a0Var : a0VarA;
    }

    public static final c1 e(c1 c1Var, a0 a0Var) {
        kotlin.jvm.internal.r.e(c1Var, "<this>");
        if (a0Var == null) {
            return c1Var;
        }
        if (c1Var instanceof f0) {
            return new h0((f0) c1Var, a0Var);
        }
        if (c1Var instanceof v) {
            return new x((v) c1Var, a0Var);
        }
        throw new NoWhenBranchMatchedException();
    }
}
