package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import java.util.ArrayList;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.i;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.load.java.AnnotationQualifierApplicabilityType;
import kotlin.reflect.jvm.internal.impl.load.java.AnnotationTypeQualifierResolver;
import kotlin.reflect.jvm.internal.impl.load.java.ReportLevel;
import kotlin.reflect.jvm.internal.impl.load.java.p;
import kotlin.reflect.jvm.internal.impl.load.java.structure.z;

/* JADX INFO: loaded from: classes6.dex */
public final class ContextKt {
    private static final e a(e eVar, k kVar, z zVar, int i, Lazy<p> lazy) {
        b bVarA = eVar.a();
        h lazyJavaTypeParameterResolver = zVar == null ? null : new LazyJavaTypeParameterResolver(eVar, kVar, zVar, i);
        if (lazyJavaTypeParameterResolver == null) {
            lazyJavaTypeParameterResolver = eVar.f();
        }
        return new e(bVarA, lazyJavaTypeParameterResolver, lazy);
    }

    public static final e b(e eVar, h typeParameterResolver) {
        r.e(eVar, "<this>");
        r.e(typeParameterResolver, "typeParameterResolver");
        return new e(eVar.a(), typeParameterResolver, eVar.c());
    }

    public static final e c(final e eVar, final kotlin.reflect.jvm.internal.impl.descriptors.e containingDeclaration, z zVar, int i) {
        r.e(eVar, "<this>");
        r.e(containingDeclaration, "containingDeclaration");
        return a(eVar, containingDeclaration, zVar, i, i.a(LazyThreadSafetyMode.NONE, new Function0<p>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.ContextKt$childForClassOrPackage$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final p invoke() {
                return ContextKt.g(eVar, containingDeclaration.getAnnotations());
            }
        }));
    }

    public static /* synthetic */ e d(e eVar, kotlin.reflect.jvm.internal.impl.descriptors.e eVar2, z zVar, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            zVar = null;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return c(eVar, eVar2, zVar, i);
    }

    public static final e e(e eVar, k containingDeclaration, z typeParameterOwner, int i) {
        r.e(eVar, "<this>");
        r.e(containingDeclaration, "containingDeclaration");
        r.e(typeParameterOwner, "typeParameterOwner");
        return a(eVar, containingDeclaration, typeParameterOwner, i, eVar.c());
    }

    public static /* synthetic */ e f(e eVar, k kVar, z zVar, int i, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return e(eVar, kVar, zVar, i);
    }

    public static final p g(e eVar, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e additionalAnnotations) {
        EnumMap<AnnotationQualifierApplicabilityType, kotlin.reflect.jvm.internal.impl.load.java.k> enumMapB;
        r.e(eVar, "<this>");
        r.e(additionalAnnotations, "additionalAnnotations");
        if (eVar.a().i().b()) {
            return eVar.b();
        }
        ArrayList<kotlin.reflect.jvm.internal.impl.load.java.k> arrayList = new ArrayList();
        Iterator<kotlin.reflect.jvm.internal.impl.descriptors.annotations.c> it = additionalAnnotations.iterator();
        while (it.hasNext()) {
            kotlin.reflect.jvm.internal.impl.load.java.k kVarI = i(eVar, it.next());
            if (kVarI != null) {
                arrayList.add(kVarI);
            }
        }
        if (arrayList.isEmpty()) {
            return eVar.b();
        }
        p pVarB = eVar.b();
        EnumMap enumMap = null;
        if (pVarB != null && (enumMapB = pVarB.b()) != null) {
            enumMap = new EnumMap((EnumMap) enumMapB);
        }
        if (enumMap == null) {
            enumMap = new EnumMap(AnnotationQualifierApplicabilityType.class);
        }
        boolean z = false;
        for (kotlin.reflect.jvm.internal.impl.load.java.k kVar : arrayList) {
            Iterator<AnnotationQualifierApplicabilityType> it2 = kVar.g().iterator();
            while (it2.hasNext()) {
                enumMap.put(it2.next(), kVar);
                z = true;
            }
        }
        return !z ? eVar.b() : new p(enumMap);
    }

    public static final e h(final e eVar, final kotlin.reflect.jvm.internal.impl.descriptors.annotations.e additionalAnnotations) {
        r.e(eVar, "<this>");
        r.e(additionalAnnotations, "additionalAnnotations");
        return additionalAnnotations.isEmpty() ? eVar : new e(eVar.a(), eVar.f(), i.a(LazyThreadSafetyMode.NONE, new Function0<p>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.ContextKt$copyWithNewDefaultTypeQualifiers$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final p invoke() {
                return ContextKt.g(eVar, additionalAnnotations);
            }
        }));
    }

    private static final kotlin.reflect.jvm.internal.impl.load.java.k i(e eVar, kotlin.reflect.jvm.internal.impl.descriptors.annotations.c cVar) {
        AnnotationTypeQualifierResolver annotationTypeQualifierResolverA = eVar.a().a();
        kotlin.reflect.jvm.internal.impl.load.java.k kVarL = annotationTypeQualifierResolverA.l(cVar);
        if (kVarL != null) {
            return kVarL;
        }
        AnnotationTypeQualifierResolver.a aVarN = annotationTypeQualifierResolverA.n(cVar);
        if (aVarN == null) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.annotations.c cVarA = aVarN.a();
        List<AnnotationQualifierApplicabilityType> listB = aVarN.b();
        ReportLevel reportLevelK = annotationTypeQualifierResolverA.k(cVar);
        if (reportLevelK == null) {
            reportLevelK = annotationTypeQualifierResolverA.j(cVarA);
        }
        if (reportLevelK.isIgnore()) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.g gVarH = eVar.a().r().h(cVarA, eVar.a().q().b(), false);
        kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.g gVarB = gVarH == null ? null : kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.g.b(gVarH, null, reportLevelK.isWarning(), 1, null);
        if (gVarB == null) {
            return null;
        }
        return new kotlin.reflect.jvm.internal.impl.load.java.k(gVarB, listB, false, false, 12, null);
    }

    public static final e j(e eVar, b components) {
        r.e(eVar, "<this>");
        r.e(components, "components");
        return new e(components, eVar.f(), eVar.c());
    }
}
