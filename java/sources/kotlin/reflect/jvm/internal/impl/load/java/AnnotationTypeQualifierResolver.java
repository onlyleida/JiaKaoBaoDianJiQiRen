package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.z;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.KotlinTarget;
import kotlin.reflect.jvm.internal.impl.load.java.components.JavaAnnotationTargetMapper;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class AnnotationTypeQualifierResolver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final JavaTypeEnhancementState f15004a;
    private final kotlin.reflect.jvm.internal.impl.storage.g<kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.annotations.c> b;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final kotlin.reflect.jvm.internal.impl.descriptors.annotations.c f15005a;
        private final int b;

        public a(kotlin.reflect.jvm.internal.impl.descriptors.annotations.c typeQualifier, int i) {
            kotlin.jvm.internal.r.e(typeQualifier, "typeQualifier");
            this.f15005a = typeQualifier;
            this.b = i;
        }

        private final boolean c(AnnotationQualifierApplicabilityType annotationQualifierApplicabilityType) {
            return ((1 << annotationQualifierApplicabilityType.ordinal()) & this.b) != 0;
        }

        private final boolean d(AnnotationQualifierApplicabilityType annotationQualifierApplicabilityType) {
            if (c(annotationQualifierApplicabilityType)) {
                return true;
            }
            return c(AnnotationQualifierApplicabilityType.TYPE_USE) && annotationQualifierApplicabilityType != AnnotationQualifierApplicabilityType.TYPE_PARAMETER_BOUNDS;
        }

        public final kotlin.reflect.jvm.internal.impl.descriptors.annotations.c a() {
            return this.f15005a;
        }

        public final List<AnnotationQualifierApplicabilityType> b() {
            AnnotationQualifierApplicabilityType[] annotationQualifierApplicabilityTypeArrValues = AnnotationQualifierApplicabilityType.values();
            ArrayList arrayList = new ArrayList();
            for (AnnotationQualifierApplicabilityType annotationQualifierApplicabilityType : annotationQualifierApplicabilityTypeArrValues) {
                if (d(annotationQualifierApplicabilityType)) {
                    arrayList.add(annotationQualifierApplicabilityType);
                }
            }
            return arrayList;
        }
    }

    public AnnotationTypeQualifierResolver(kotlin.reflect.jvm.internal.impl.storage.m storageManager, JavaTypeEnhancementState javaTypeEnhancementState) {
        kotlin.jvm.internal.r.e(storageManager, "storageManager");
        kotlin.jvm.internal.r.e(javaTypeEnhancementState, "javaTypeEnhancementState");
        this.f15004a = javaTypeEnhancementState;
        this.b = storageManager.g(new AnnotationTypeQualifierResolver$resolvedNicknames$1(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final kotlin.reflect.jvm.internal.impl.descriptors.annotations.c c(kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        if (!dVar.getAnnotations().h(kotlin.reflect.jvm.internal.impl.load.java.a.g())) {
            return null;
        }
        Iterator<kotlin.reflect.jvm.internal.impl.descriptors.annotations.c> it = dVar.getAnnotations().iterator();
        while (it.hasNext()) {
            kotlin.reflect.jvm.internal.impl.descriptors.annotations.c cVarM = m(it.next());
            if (cVarM != null) {
                return cVarM;
            }
        }
        return null;
    }

    private final List<AnnotationQualifierApplicabilityType> d(kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> gVar, Function2<? super kotlin.reflect.jvm.internal.impl.resolve.constants.i, ? super AnnotationQualifierApplicabilityType, Boolean> function2) {
        AnnotationQualifierApplicabilityType annotationQualifierApplicabilityType;
        if (gVar instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.b) {
            List<? extends kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> listB = ((kotlin.reflect.jvm.internal.impl.resolve.constants.b) gVar).b();
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = listB.iterator();
            while (it.hasNext()) {
                z.B(arrayList, d((kotlin.reflect.jvm.internal.impl.resolve.constants.g) it.next(), function2));
            }
            return arrayList;
        }
        if (!(gVar instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.i)) {
            return kotlin.collections.u.j();
        }
        AnnotationQualifierApplicabilityType[] annotationQualifierApplicabilityTypeArrValues = AnnotationQualifierApplicabilityType.values();
        int length = annotationQualifierApplicabilityTypeArrValues.length;
        for (int i = 0; i < length; i++) {
            annotationQualifierApplicabilityType = annotationQualifierApplicabilityTypeArrValues[i];
            if (function2.invoke(gVar, annotationQualifierApplicabilityType).booleanValue()) {
                return kotlin.collections.u.n(annotationQualifierApplicabilityType);
            }
        }
        annotationQualifierApplicabilityType = null;
        return kotlin.collections.u.n(annotationQualifierApplicabilityType);
    }

    private final List<AnnotationQualifierApplicabilityType> e(kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> gVar) {
        return d(gVar, new Function2<kotlin.reflect.jvm.internal.impl.resolve.constants.i, AnnotationQualifierApplicabilityType, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.AnnotationTypeQualifierResolver$mapJavaConstantToQualifierApplicabilityTypes$1
            @Override // kotlin.jvm.functions.Function2
            public final Boolean invoke(kotlin.reflect.jvm.internal.impl.resolve.constants.i mapConstantToQualifierApplicabilityTypes, AnnotationQualifierApplicabilityType it) {
                kotlin.jvm.internal.r.e(mapConstantToQualifierApplicabilityTypes, "$this$mapConstantToQualifierApplicabilityTypes");
                kotlin.jvm.internal.r.e(it, "it");
                return Boolean.valueOf(kotlin.jvm.internal.r.a(mapConstantToQualifierApplicabilityTypes.c().d(), it.getJavaTarget()));
            }
        });
    }

    private final List<AnnotationQualifierApplicabilityType> f(kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> gVar) {
        return d(gVar, new Function2<kotlin.reflect.jvm.internal.impl.resolve.constants.i, AnnotationQualifierApplicabilityType, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.AnnotationTypeQualifierResolver$mapKotlinConstantToQualifierApplicabilityTypes$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Boolean invoke(kotlin.reflect.jvm.internal.impl.resolve.constants.i mapConstantToQualifierApplicabilityTypes, AnnotationQualifierApplicabilityType it) {
                kotlin.jvm.internal.r.e(mapConstantToQualifierApplicabilityTypes, "$this$mapConstantToQualifierApplicabilityTypes");
                kotlin.jvm.internal.r.e(it, "it");
                return Boolean.valueOf(this.this$0.p(it.getJavaTarget()).contains(mapConstantToQualifierApplicabilityTypes.c().d()));
            }
        });
    }

    private final ReportLevel g(kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        kotlin.reflect.jvm.internal.impl.descriptors.annotations.c cVarD = dVar.getAnnotations().d(kotlin.reflect.jvm.internal.impl.load.java.a.d());
        kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> gVarB = cVarD == null ? null : DescriptorUtilsKt.b(cVarD);
        kotlin.reflect.jvm.internal.impl.resolve.constants.i iVar = gVarB instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.i ? (kotlin.reflect.jvm.internal.impl.resolve.constants.i) gVarB : null;
        if (iVar == null) {
            return null;
        }
        ReportLevel reportLevelB = this.f15004a.d().b();
        if (reportLevelB != null) {
            return reportLevelB;
        }
        String strB = iVar.c().b();
        int iHashCode = strB.hashCode();
        if (iHashCode == -2137067054) {
            if (strB.equals("IGNORE")) {
                return ReportLevel.IGNORE;
            }
            return null;
        }
        if (iHashCode == -1838656823) {
            if (strB.equals("STRICT")) {
                return ReportLevel.STRICT;
            }
            return null;
        }
        if (iHashCode == 2656902 && strB.equals("WARN")) {
            return ReportLevel.WARN;
        }
        return null;
    }

    private final ReportLevel i(kotlin.reflect.jvm.internal.impl.descriptors.annotations.c cVar) {
        kotlin.reflect.jvm.internal.impl.name.c cVarE = cVar.e();
        return (cVarE == null || !kotlin.reflect.jvm.internal.impl.load.java.a.c().containsKey(cVarE)) ? j(cVar) : this.f15004a.c().invoke(cVarE);
    }

    private final kotlin.reflect.jvm.internal.impl.descriptors.annotations.c o(kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        if (dVar.g() != ClassKind.ANNOTATION_CLASS) {
            return null;
        }
        return this.b.invoke(dVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<String> p(String str) {
        Set<KotlinTarget> setB = JavaAnnotationTargetMapper.f15035a.b(str);
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(setB, 10));
        Iterator<T> it = setB.iterator();
        while (it.hasNext()) {
            arrayList.add(((KotlinTarget) it.next()).name());
        }
        return arrayList;
    }

    public final a h(kotlin.reflect.jvm.internal.impl.descriptors.annotations.c annotationDescriptor) {
        kotlin.jvm.internal.r.e(annotationDescriptor, "annotationDescriptor");
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarF = DescriptorUtilsKt.f(annotationDescriptor);
        if (dVarF == null) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.annotations.e annotations = dVarF.getAnnotations();
        kotlin.reflect.jvm.internal.impl.name.c TARGET_ANNOTATION = r.c;
        kotlin.jvm.internal.r.d(TARGET_ANNOTATION, "TARGET_ANNOTATION");
        kotlin.reflect.jvm.internal.impl.descriptors.annotations.c cVarD = annotations.d(TARGET_ANNOTATION);
        if (cVarD == null) {
            return null;
        }
        Map<kotlin.reflect.jvm.internal.impl.name.f, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> mapA = cVarD.a();
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<kotlin.reflect.jvm.internal.impl.name.f, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>>> it = mapA.entrySet().iterator();
        while (it.hasNext()) {
            z.B(arrayList, f(it.next().getValue()));
        }
        int iOrdinal = 0;
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            iOrdinal |= 1 << ((AnnotationQualifierApplicabilityType) it2.next()).ordinal();
        }
        return new a(annotationDescriptor, iOrdinal);
    }

    public final ReportLevel j(kotlin.reflect.jvm.internal.impl.descriptors.annotations.c annotationDescriptor) {
        kotlin.jvm.internal.r.e(annotationDescriptor, "annotationDescriptor");
        ReportLevel reportLevelK = k(annotationDescriptor);
        return reportLevelK == null ? this.f15004a.d().a() : reportLevelK;
    }

    public final ReportLevel k(kotlin.reflect.jvm.internal.impl.descriptors.annotations.c annotationDescriptor) {
        kotlin.jvm.internal.r.e(annotationDescriptor, "annotationDescriptor");
        ReportLevel reportLevel = this.f15004a.d().c().get(annotationDescriptor.e());
        if (reportLevel != null) {
            return reportLevel;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarF = DescriptorUtilsKt.f(annotationDescriptor);
        if (dVarF == null) {
            return null;
        }
        return g(dVarF);
    }

    public final k l(kotlin.reflect.jvm.internal.impl.descriptors.annotations.c annotationDescriptor) {
        k kVar;
        kotlin.jvm.internal.r.e(annotationDescriptor, "annotationDescriptor");
        if (this.f15004a.b() || (kVar = kotlin.reflect.jvm.internal.impl.load.java.a.a().get(annotationDescriptor.e())) == null) {
            return null;
        }
        ReportLevel reportLevelI = i(annotationDescriptor);
        if (!(reportLevelI != ReportLevel.IGNORE)) {
            reportLevelI = null;
        }
        if (reportLevelI == null) {
            return null;
        }
        return k.b(kVar, kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.g.b(kVar.f(), null, reportLevelI.isWarning(), 1, null), null, false, false, 14, null);
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.annotations.c m(kotlin.reflect.jvm.internal.impl.descriptors.annotations.c annotationDescriptor) {
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarF;
        kotlin.jvm.internal.r.e(annotationDescriptor, "annotationDescriptor");
        if (this.f15004a.d().d() || (dVarF = DescriptorUtilsKt.f(annotationDescriptor)) == null) {
            return null;
        }
        return b.b(dVarF) ? annotationDescriptor : o(dVarF);
    }

    public final a n(kotlin.reflect.jvm.internal.impl.descriptors.annotations.c annotationDescriptor) {
        kotlin.reflect.jvm.internal.impl.descriptors.annotations.c next;
        kotlin.jvm.internal.r.e(annotationDescriptor, "annotationDescriptor");
        if (this.f15004a.d().d()) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarF = DescriptorUtilsKt.f(annotationDescriptor);
        if (dVarF == null || !dVarF.getAnnotations().h(kotlin.reflect.jvm.internal.impl.load.java.a.e())) {
            dVarF = null;
        }
        if (dVarF == null) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarF2 = DescriptorUtilsKt.f(annotationDescriptor);
        kotlin.jvm.internal.r.c(dVarF2);
        kotlin.reflect.jvm.internal.impl.descriptors.annotations.c cVarD = dVarF2.getAnnotations().d(kotlin.reflect.jvm.internal.impl.load.java.a.e());
        kotlin.jvm.internal.r.c(cVarD);
        Map<kotlin.reflect.jvm.internal.impl.name.f, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> mapA = cVarD.a();
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<kotlin.reflect.jvm.internal.impl.name.f, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> entry : mapA.entrySet()) {
            z.B(arrayList, kotlin.jvm.internal.r.a(entry.getKey(), r.b) ? e(entry.getValue()) : kotlin.collections.u.j());
        }
        Iterator it = arrayList.iterator();
        int iOrdinal = 0;
        while (it.hasNext()) {
            iOrdinal |= 1 << ((AnnotationQualifierApplicabilityType) it.next()).ordinal();
        }
        Iterator<kotlin.reflect.jvm.internal.impl.descriptors.annotations.c> it2 = dVarF.getAnnotations().iterator();
        do {
            if (!it2.hasNext()) {
                next = null;
                break;
            }
            next = it2.next();
        } while (!(m(next) != null));
        kotlin.reflect.jvm.internal.impl.descriptors.annotations.c cVar = next;
        if (cVar == null) {
            return null;
        }
        return new a(cVar, iOrdinal);
    }
}
