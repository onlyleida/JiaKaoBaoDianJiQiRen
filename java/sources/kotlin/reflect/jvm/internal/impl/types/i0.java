package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class i0 {
    public static final a a(a0 a0Var) {
        kotlin.jvm.internal.r.e(a0Var, "<this>");
        c1 c1VarL0 = a0Var.L0();
        if (c1VarL0 instanceof a) {
            return (a) c1VarL0;
        }
        return null;
    }

    public static final f0 b(a0 a0Var) {
        kotlin.jvm.internal.r.e(a0Var, "<this>");
        a aVarA = a(a0Var);
        if (aVarA == null) {
            return null;
        }
        return aVarA.U0();
    }

    public static final boolean c(a0 a0Var) {
        kotlin.jvm.internal.r.e(a0Var, "<this>");
        return a0Var.L0() instanceof k;
    }

    private static final IntersectionTypeConstructor d(IntersectionTypeConstructor intersectionTypeConstructor) {
        a0 a0Var;
        Collection<a0> collectionA = intersectionTypeConstructor.a();
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(collectionA, 10));
        Iterator<T> it = collectionA.iterator();
        boolean z = false;
        while (true) {
            a0Var = null;
            if (!it.hasNext()) {
                break;
            }
            a0 a0VarF = (a0) it.next();
            if (y0.m(a0VarF)) {
                a0VarF = f(a0VarF.L0(), false, 1, null);
                z = true;
            }
            arrayList.add(a0VarF);
        }
        if (!z) {
            return null;
        }
        a0 a0VarG = intersectionTypeConstructor.g();
        if (a0VarG != null) {
            if (y0.m(a0VarG)) {
                a0VarG = f(a0VarG.L0(), false, 1, null);
            }
            a0Var = a0VarG;
        }
        return new IntersectionTypeConstructor(arrayList).l(a0Var);
    }

    public static final c1 e(c1 c1Var, boolean z) {
        kotlin.jvm.internal.r.e(c1Var, "<this>");
        k kVarB = k.f15692d.b(c1Var, z);
        if (kVarB != null) {
            return kVarB;
        }
        f0 f0VarG = g(c1Var);
        return f0VarG == null ? c1Var.M0(false) : f0VarG;
    }

    public static /* synthetic */ c1 f(c1 c1Var, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return e(c1Var, z);
    }

    private static final f0 g(a0 a0Var) {
        IntersectionTypeConstructor intersectionTypeConstructorD;
        q0 q0VarI0 = a0Var.I0();
        IntersectionTypeConstructor intersectionTypeConstructor = q0VarI0 instanceof IntersectionTypeConstructor ? (IntersectionTypeConstructor) q0VarI0 : null;
        if (intersectionTypeConstructor == null || (intersectionTypeConstructorD = d(intersectionTypeConstructor)) == null) {
            return null;
        }
        return intersectionTypeConstructorD.f();
    }

    public static final f0 h(f0 f0Var, boolean z) {
        kotlin.jvm.internal.r.e(f0Var, "<this>");
        k kVarB = k.f15692d.b(f0Var, z);
        if (kVarB != null) {
            return kVarB;
        }
        f0 f0VarG = g(f0Var);
        return f0VarG == null ? f0Var.M0(false) : f0VarG;
    }

    public static /* synthetic */ f0 i(f0 f0Var, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return h(f0Var, z);
    }

    public static final f0 j(f0 f0Var, f0 abbreviatedType) {
        kotlin.jvm.internal.r.e(f0Var, "<this>");
        kotlin.jvm.internal.r.e(abbreviatedType, "abbreviatedType");
        return b0.a(f0Var) ? f0Var : new a(f0Var, abbreviatedType);
    }

    public static final kotlin.reflect.jvm.internal.impl.types.checker.i k(kotlin.reflect.jvm.internal.impl.types.checker.i iVar) {
        kotlin.jvm.internal.r.e(iVar, "<this>");
        return new kotlin.reflect.jvm.internal.impl.types.checker.i(iVar.R0(), iVar.I0(), iVar.T0(), iVar.getAnnotations(), iVar.J0(), true);
    }
}
