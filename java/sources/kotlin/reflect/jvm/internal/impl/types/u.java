package kotlin.reflect.jvm.internal.impl.types;

import java.util.HashSet;

/* JADX INFO: loaded from: classes6.dex */
public final class u {
    public static final kotlin.reflect.jvm.internal.impl.types.model.g a(x0 x0Var, kotlin.reflect.jvm.internal.impl.types.model.g inlineClassType) {
        kotlin.jvm.internal.r.e(x0Var, "<this>");
        kotlin.jvm.internal.r.e(inlineClassType, "inlineClassType");
        return b(x0Var, inlineClassType, new HashSet());
    }

    private static final kotlin.reflect.jvm.internal.impl.types.model.g b(x0 x0Var, kotlin.reflect.jvm.internal.impl.types.model.g gVar, HashSet<kotlin.reflect.jvm.internal.impl.types.model.k> hashSet) {
        kotlin.reflect.jvm.internal.impl.types.model.g gVarB;
        kotlin.reflect.jvm.internal.impl.types.model.k kVarW = x0Var.W(gVar);
        if (!hashSet.add(kVarW)) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.types.model.l lVarQ = x0Var.q(kVarW);
        if (lVarQ != null) {
            gVarB = b(x0Var, x0Var.P(lVarQ), hashSet);
            if (gVarB == null) {
                return null;
            }
            if (!x0Var.G(gVarB) && x0Var.q0(gVar)) {
                return x0Var.x0(gVarB);
            }
        } else {
            if (!x0Var.z(kVarW)) {
                return gVar;
            }
            kotlin.reflect.jvm.internal.impl.types.model.g gVarK0 = x0Var.k0(gVar);
            if (gVarK0 == null || (gVarB = b(x0Var, gVarK0, hashSet)) == null) {
                return null;
            }
            if (x0Var.G(gVar)) {
                if (x0Var.G(gVarB)) {
                    return gVar;
                }
                return ((gVarB instanceof kotlin.reflect.jvm.internal.impl.types.model.h) && x0Var.M((kotlin.reflect.jvm.internal.impl.types.model.h) gVarB)) ? gVar : x0Var.x0(gVarB);
            }
        }
        return gVarB;
    }
}
