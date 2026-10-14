package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructorKt;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.q0;
import kotlin.reflect.jvm.internal.impl.types.r0;
import kotlin.reflect.jvm.internal.impl.types.s0;
import kotlin.reflect.jvm.internal.impl.types.typesApproximation.CapturedTypeApproximationKt;
import kotlin.reflect.jvm.internal.impl.types.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class v {
    private static final a0 a(a0 a0Var) {
        return CapturedTypeApproximationKt.a(a0Var).d();
    }

    private static final String b(q0 q0Var) {
        StringBuilder sb = new StringBuilder();
        c(kotlin.jvm.internal.r.m("type: ", q0Var), sb);
        c(kotlin.jvm.internal.r.m("hashCode: ", Integer.valueOf(q0Var.hashCode())), sb);
        c(kotlin.jvm.internal.r.m("javaClass: ", q0Var.getClass().getCanonicalName()), sb);
        for (kotlin.reflect.jvm.internal.impl.descriptors.k kVarC = q0Var.c(); kVarC != null; kVarC = kVarC.b()) {
            c(kotlin.jvm.internal.r.m("fqName: ", DescriptorRenderer.b.q(kVarC)), sb);
            c(kotlin.jvm.internal.r.m("javaClass: ", kVarC.getClass().getCanonicalName()), sb);
        }
        String string = sb.toString();
        kotlin.jvm.internal.r.d(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    private static final StringBuilder c(String str, StringBuilder sb) {
        kotlin.jvm.internal.r.e(str, "<this>");
        sb.append(str);
        kotlin.jvm.internal.r.d(sb, "append(value)");
        sb.append('\n');
        kotlin.jvm.internal.r.d(sb, "append('\\n')");
        return sb;
    }

    public static final a0 d(a0 subtype, a0 supertype, u typeCheckingProcedureCallbacks) {
        boolean z;
        kotlin.jvm.internal.r.e(subtype, "subtype");
        kotlin.jvm.internal.r.e(supertype, "supertype");
        kotlin.jvm.internal.r.e(typeCheckingProcedureCallbacks, "typeCheckingProcedureCallbacks");
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.add(new r(subtype, null));
        q0 q0VarI0 = supertype.I0();
        while (!arrayDeque.isEmpty()) {
            r rVar = (r) arrayDeque.poll();
            a0 a0VarB = rVar.b();
            q0 q0VarI1 = a0VarB.I0();
            if (typeCheckingProcedureCallbacks.a(q0VarI1, q0VarI0)) {
                boolean zJ0 = a0VarB.J0();
                for (r rVarA = rVar.a(); rVarA != null; rVarA = rVarA.a()) {
                    a0 a0VarB2 = rVarA.b();
                    List<s0> listH0 = a0VarB2.H0();
                    if (!(listH0 instanceof Collection) || !listH0.isEmpty()) {
                        Iterator<T> it = listH0.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                z = false;
                                break;
                            }
                            if (((s0) it.next()).c() != Variance.INVARIANT) {
                                z = true;
                                break;
                            }
                        }
                    } else {
                        z = false;
                        break;
                    }
                    if (z) {
                        a0 a0VarN = CapturedTypeConstructorKt.f(r0.b.a(a0VarB2), false, 1, null).c().n(a0VarB, Variance.INVARIANT);
                        kotlin.jvm.internal.r.d(a0VarN, "TypeConstructorSubstitut…uted, Variance.INVARIANT)");
                        a0VarB = a(a0VarN);
                    } else {
                        a0VarB = r0.b.a(a0VarB2).c().n(a0VarB, Variance.INVARIANT);
                        kotlin.jvm.internal.r.d(a0VarB, "{\n                    Ty…ARIANT)\n                }");
                    }
                    zJ0 = zJ0 || a0VarB2.J0();
                }
                q0 q0VarI2 = a0VarB.I0();
                if (typeCheckingProcedureCallbacks.a(q0VarI2, q0VarI0)) {
                    return y0.q(a0VarB, zJ0);
                }
                throw new AssertionError("Type constructors should be equals!\nsubstitutedSuperType: " + b(q0VarI2) + ", \n\nsupertype: " + b(q0VarI0) + " \n" + typeCheckingProcedureCallbacks.a(q0VarI2, q0VarI0));
            }
            for (a0 immediateSupertype : q0VarI1.a()) {
                kotlin.jvm.internal.r.d(immediateSupertype, "immediateSupertype");
                arrayDeque.add(new r(immediateSupertype, rVar));
            }
        }
        return null;
    }
}
