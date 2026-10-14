package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.EnumMap;

/* JADX INFO: loaded from: classes6.dex */
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final EnumMap<AnnotationQualifierApplicabilityType, k> f15135a;

    public p(EnumMap<AnnotationQualifierApplicabilityType, k> defaultQualifiers) {
        kotlin.jvm.internal.r.e(defaultQualifiers, "defaultQualifiers");
        this.f15135a = defaultQualifiers;
    }

    public final k a(AnnotationQualifierApplicabilityType annotationQualifierApplicabilityType) {
        return this.f15135a.get(annotationQualifierApplicabilityType);
    }

    public final EnumMap<AnnotationQualifierApplicabilityType, k> b() {
        return this.f15135a;
    }
}
