package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;

/* JADX INFO: loaded from: classes6.dex */
public final class FindClassInModuleKt {
    public static final d a(z zVar, kotlin.reflect.jvm.internal.impl.name.b classId) {
        kotlin.jvm.internal.r.e(zVar, "<this>");
        kotlin.jvm.internal.r.e(classId, "classId");
        f fVarB = b(zVar, classId);
        if (fVarB instanceof d) {
            return (d) fVarB;
        }
        return null;
    }

    public static final f b(z zVar, kotlin.reflect.jvm.internal.impl.name.b classId) {
        f fVarF;
        kotlin.jvm.internal.r.e(zVar, "<this>");
        kotlin.jvm.internal.r.e(classId, "classId");
        z zVarA = kotlin.reflect.jvm.internal.impl.resolve.j.a(zVar);
        if (zVarA == null) {
            kotlin.reflect.jvm.internal.impl.name.c cVarH = classId.h();
            kotlin.jvm.internal.r.d(cVarH, "classId.packageFqName");
            f0 f0VarJ0 = zVar.j0(cVarH);
            List<kotlin.reflect.jvm.internal.impl.name.f> listF = classId.i().f();
            kotlin.jvm.internal.r.d(listF, "classId.relativeClassName.pathSegments()");
            MemberScope memberScopeM = f0VarJ0.m();
            Object objC0 = kotlin.collections.s.c0(listF);
            kotlin.jvm.internal.r.d(objC0, "segments.first()");
            fVarF = memberScopeM.f((kotlin.reflect.jvm.internal.impl.name.f) objC0, NoLookupLocation.FROM_DESERIALIZATION);
            if (fVarF == null) {
                return null;
            }
            for (kotlin.reflect.jvm.internal.impl.name.f name : listF.subList(1, listF.size())) {
                if (!(fVarF instanceof d)) {
                    return null;
                }
                MemberScope memberScopeS = ((d) fVarF).S();
                kotlin.jvm.internal.r.d(name, "name");
                f fVarF2 = memberScopeS.f(name, NoLookupLocation.FROM_DESERIALIZATION);
                fVarF = fVarF2 instanceof d ? (d) fVarF2 : null;
                if (fVarF == null) {
                    return null;
                }
            }
        } else {
            kotlin.reflect.jvm.internal.impl.name.c cVarH2 = classId.h();
            kotlin.jvm.internal.r.d(cVarH2, "classId.packageFqName");
            f0 f0VarJ1 = zVarA.j0(cVarH2);
            List<kotlin.reflect.jvm.internal.impl.name.f> listF2 = classId.i().f();
            kotlin.jvm.internal.r.d(listF2, "classId.relativeClassName.pathSegments()");
            MemberScope memberScopeM2 = f0VarJ1.m();
            Object objC1 = kotlin.collections.s.c0(listF2);
            kotlin.jvm.internal.r.d(objC1, "segments.first()");
            f fVarF3 = memberScopeM2.f((kotlin.reflect.jvm.internal.impl.name.f) objC1, NoLookupLocation.FROM_DESERIALIZATION);
            if (fVarF3 == null) {
                fVarF3 = null;
                break;
            }
            for (kotlin.reflect.jvm.internal.impl.name.f name2 : listF2.subList(1, listF2.size())) {
                if (fVarF3 instanceof d) {
                    MemberScope memberScopeS2 = ((d) fVarF3).S();
                    kotlin.jvm.internal.r.d(name2, "name");
                    f fVarF4 = memberScopeS2.f(name2, NoLookupLocation.FROM_DESERIALIZATION);
                    fVarF3 = fVarF4 instanceof d ? (d) fVarF4 : null;
                    if (fVarF3 == null) {
                    }
                }
                fVarF3 = null;
            }
            if (fVarF3 != null) {
                return fVarF3;
            }
            kotlin.reflect.jvm.internal.impl.name.c cVarH3 = classId.h();
            kotlin.jvm.internal.r.d(cVarH3, "classId.packageFqName");
            f0 f0VarJ2 = zVar.j0(cVarH3);
            List<kotlin.reflect.jvm.internal.impl.name.f> listF3 = classId.i().f();
            kotlin.jvm.internal.r.d(listF3, "classId.relativeClassName.pathSegments()");
            MemberScope memberScopeM3 = f0VarJ2.m();
            Object objC2 = kotlin.collections.s.c0(listF3);
            kotlin.jvm.internal.r.d(objC2, "segments.first()");
            fVarF = memberScopeM3.f((kotlin.reflect.jvm.internal.impl.name.f) objC2, NoLookupLocation.FROM_DESERIALIZATION);
            if (fVarF == null) {
                return null;
            }
            for (kotlin.reflect.jvm.internal.impl.name.f name3 : listF3.subList(1, listF3.size())) {
                if (!(fVarF instanceof d)) {
                    return null;
                }
                MemberScope memberScopeS3 = ((d) fVarF).S();
                kotlin.jvm.internal.r.d(name3, "name");
                f fVarF5 = memberScopeS3.f(name3, NoLookupLocation.FROM_DESERIALIZATION);
                fVarF = fVarF5 instanceof d ? (d) fVarF5 : null;
                if (fVarF == null) {
                    return null;
                }
            }
        }
        return fVarF;
    }

    public static final d c(z zVar, kotlin.reflect.jvm.internal.impl.name.b classId, NotFoundClasses notFoundClasses) {
        kotlin.jvm.internal.r.e(zVar, "<this>");
        kotlin.jvm.internal.r.e(classId, "classId");
        kotlin.jvm.internal.r.e(notFoundClasses, "notFoundClasses");
        d dVarA = a(zVar, classId);
        return dVarA != null ? dVarA : notFoundClasses.d(classId, SequencesKt___SequencesKt.A(SequencesKt___SequencesKt.u(SequencesKt__SequencesKt.h(classId, FindClassInModuleKt$findNonGenericClassAcrossDependencies$typeParametersCount$1.INSTANCE), new Function1<kotlin.reflect.jvm.internal.impl.name.b, Integer>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt$findNonGenericClassAcrossDependencies$typeParametersCount$2
            @Override // kotlin.jvm.functions.Function1
            public final Integer invoke(kotlin.reflect.jvm.internal.impl.name.b it) {
                kotlin.jvm.internal.r.e(it, "it");
                return 0;
            }
        })));
    }

    public static final s0 d(z zVar, kotlin.reflect.jvm.internal.impl.name.b classId) {
        kotlin.jvm.internal.r.e(zVar, "<this>");
        kotlin.jvm.internal.r.e(classId, "classId");
        f fVarB = b(zVar, classId);
        if (fVarB instanceof s0) {
            return (s0) fVarB;
        }
        return null;
    }
}
