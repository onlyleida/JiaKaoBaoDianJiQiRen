package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

/* JADX INFO: loaded from: classes6.dex */
public final class q {
    public static final f a(k kVar) {
        kotlin.jvm.internal.r.e(kVar, "<this>");
        k kVarB = kVar.b();
        if (kVarB == null || (kVar instanceof b0)) {
            return null;
        }
        if (!b(kVarB)) {
            return a(kVarB);
        }
        if (kVarB instanceof f) {
            return (f) kVarB;
        }
        return null;
    }

    public static final boolean b(k kVar) {
        kotlin.jvm.internal.r.e(kVar, "<this>");
        return kVar.b() instanceof b0;
    }

    public static final d c(z zVar, kotlin.reflect.jvm.internal.impl.name.c fqName, kotlin.reflect.jvm.internal.impl.incremental.components.b lookupLocation) {
        MemberScope memberScopeS;
        f fVarF;
        kotlin.jvm.internal.r.e(zVar, "<this>");
        kotlin.jvm.internal.r.e(fqName, "fqName");
        kotlin.jvm.internal.r.e(lookupLocation, "lookupLocation");
        if (fqName.d()) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.name.c cVarE = fqName.e();
        kotlin.jvm.internal.r.d(cVarE, "fqName.parent()");
        MemberScope memberScopeM = zVar.j0(cVarE).m();
        kotlin.reflect.jvm.internal.impl.name.f fVarG = fqName.g();
        kotlin.jvm.internal.r.d(fVarG, "fqName.shortName()");
        f fVarF2 = memberScopeM.f(fVarG, lookupLocation);
        d dVar = fVarF2 instanceof d ? (d) fVarF2 : null;
        if (dVar != null) {
            return dVar;
        }
        kotlin.reflect.jvm.internal.impl.name.c cVarE2 = fqName.e();
        kotlin.jvm.internal.r.d(cVarE2, "fqName.parent()");
        d dVarC = c(zVar, cVarE2, lookupLocation);
        if (dVarC == null || (memberScopeS = dVarC.S()) == null) {
            fVarF = null;
        } else {
            kotlin.reflect.jvm.internal.impl.name.f fVarG2 = fqName.g();
            kotlin.jvm.internal.r.d(fVarG2, "fqName.shortName()");
            fVarF = memberScopeS.f(fVarG2, lookupLocation);
        }
        if (fVarF instanceof d) {
            return (d) fVarF;
        }
        return null;
    }
}
