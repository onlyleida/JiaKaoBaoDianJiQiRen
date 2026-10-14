package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.NoWhenBranchMatchedException;

/* JADX INFO: loaded from: classes6.dex */
public final class w0 {
    public static final f0 a(a0 a0Var) {
        kotlin.jvm.internal.r.e(a0Var, "<this>");
        c1 c1VarL0 = a0Var.L0();
        f0 f0Var = c1VarL0 instanceof f0 ? (f0) c1VarL0 : null;
        if (f0Var != null) {
            return f0Var;
        }
        throw new IllegalStateException(kotlin.jvm.internal.r.m("This is should be simple type: ", a0Var).toString());
    }

    public static final a0 b(a0 a0Var, List<? extends s0> newArguments, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e newAnnotations) {
        kotlin.jvm.internal.r.e(a0Var, "<this>");
        kotlin.jvm.internal.r.e(newArguments, "newArguments");
        kotlin.jvm.internal.r.e(newAnnotations, "newAnnotations");
        return e(a0Var, newArguments, newAnnotations, null, 4, null);
    }

    public static final a0 c(a0 a0Var, List<? extends s0> newArguments, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e newAnnotations, List<? extends s0> newArgumentsForUpperBound) {
        kotlin.jvm.internal.r.e(a0Var, "<this>");
        kotlin.jvm.internal.r.e(newArguments, "newArguments");
        kotlin.jvm.internal.r.e(newAnnotations, "newAnnotations");
        kotlin.jvm.internal.r.e(newArgumentsForUpperBound, "newArgumentsForUpperBound");
        if ((newArguments.isEmpty() || newArguments == a0Var.H0()) && newAnnotations == a0Var.getAnnotations()) {
            return a0Var;
        }
        c1 c1VarL0 = a0Var.L0();
        if (c1VarL0 instanceof v) {
            v vVar = (v) c1VarL0;
            return KotlinTypeFactory.d(d(vVar.Q0(), newArguments, newAnnotations), d(vVar.R0(), newArgumentsForUpperBound, newAnnotations));
        }
        if (c1VarL0 instanceof f0) {
            return d((f0) c1VarL0, newArguments, newAnnotations);
        }
        throw new NoWhenBranchMatchedException();
    }

    public static final f0 d(f0 f0Var, List<? extends s0> newArguments, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e newAnnotations) {
        kotlin.jvm.internal.r.e(f0Var, "<this>");
        kotlin.jvm.internal.r.e(newArguments, "newArguments");
        kotlin.jvm.internal.r.e(newAnnotations, "newAnnotations");
        if (newArguments.isEmpty() && newAnnotations == f0Var.getAnnotations()) {
            return f0Var;
        }
        return newArguments.isEmpty() ? f0Var.Q0(newAnnotations) : KotlinTypeFactory.i(newAnnotations, f0Var.I0(), newArguments, f0Var.J0(), null, 16, null);
    }

    public static /* synthetic */ a0 e(a0 a0Var, List list, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, List list2, int i, Object obj) {
        if ((i & 1) != 0) {
            list = a0Var.H0();
        }
        if ((i & 2) != 0) {
            eVar = a0Var.getAnnotations();
        }
        if ((i & 4) != 0) {
            list2 = list;
        }
        return c(a0Var, list, eVar, list2);
    }

    public static /* synthetic */ f0 f(f0 f0Var, List list, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, int i, Object obj) {
        if ((i & 1) != 0) {
            list = f0Var.H0();
        }
        if ((i & 2) != 0) {
            eVar = f0Var.getAnnotations();
        }
        return d(f0Var, list, eVar);
    }
}
