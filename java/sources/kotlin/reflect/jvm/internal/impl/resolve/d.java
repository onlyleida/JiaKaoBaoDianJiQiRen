package kotlin.reflect.jvm.internal.impl.resolve;

import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.descriptors.k0;
import kotlin.reflect.jvm.internal.impl.descriptors.v;
import kotlin.reflect.jvm.internal.impl.descriptors.w0;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.f0;

/* JADX INFO: loaded from: classes6.dex */
public final class d {
    static {
        new kotlin.reflect.jvm.internal.impl.name.c("kotlin.jvm.JvmInline");
    }

    public static final boolean a(kotlin.reflect.jvm.internal.impl.descriptors.a aVar) {
        r.e(aVar, "<this>");
        if (aVar instanceof k0) {
            j0 correspondingProperty = ((k0) aVar).T();
            r.d(correspondingProperty, "correspondingProperty");
            if (d(correspondingProperty)) {
                return true;
            }
        }
        return false;
    }

    public static final boolean b(kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
        r.e(kVar, "<this>");
        if (kVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) {
            kotlin.reflect.jvm.internal.impl.descriptors.d dVar = (kotlin.reflect.jvm.internal.impl.descriptors.d) kVar;
            if (dVar.isInline() || dVar.g0()) {
                return true;
            }
        }
        return false;
    }

    public static final boolean c(a0 a0Var) {
        r.e(a0Var, "<this>");
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarU = a0Var.I0().u();
        if (fVarU == null) {
            return false;
        }
        return b(fVarU);
    }

    public static final boolean d(w0 w0Var) {
        v<f0> vVarT;
        r.e(w0Var, "<this>");
        if (w0Var.O() == null) {
            kotlin.reflect.jvm.internal.impl.descriptors.k kVarB = w0Var.b();
            kotlin.reflect.jvm.internal.impl.name.f fVarA = null;
            kotlin.reflect.jvm.internal.impl.descriptors.d dVar = kVarB instanceof kotlin.reflect.jvm.internal.impl.descriptors.d ? (kotlin.reflect.jvm.internal.impl.descriptors.d) kVarB : null;
            if (dVar != null && (vVarT = dVar.t()) != null) {
                fVarA = vVarT.a();
            }
            if (r.a(fVarA, w0Var.getName())) {
                return true;
            }
        }
        return false;
    }

    public static final a0 e(a0 a0Var) {
        r.e(a0Var, "<this>");
        a0 a0VarF = f(a0Var);
        if (a0VarF == null) {
            return null;
        }
        return TypeSubstitutor.f(a0Var).p(a0VarF, Variance.INVARIANT);
    }

    public static final a0 f(a0 a0Var) {
        v<f0> vVarT;
        r.e(a0Var, "<this>");
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarU = a0Var.I0().u();
        if (!(fVarU instanceof kotlin.reflect.jvm.internal.impl.descriptors.d)) {
            fVarU = null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d dVar = (kotlin.reflect.jvm.internal.impl.descriptors.d) fVarU;
        if (dVar == null || (vVarT = dVar.t()) == null) {
            return null;
        }
        return (f0) vVarT.b();
    }
}
