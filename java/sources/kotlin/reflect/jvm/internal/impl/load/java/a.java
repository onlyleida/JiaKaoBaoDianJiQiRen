package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.n0;
import kotlin.collections.o0;
import kotlin.collections.u0;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifier;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final kotlin.reflect.jvm.internal.impl.name.c f15022a = new kotlin.reflect.jvm.internal.impl.name.c("javax.annotation.meta.TypeQualifierNickname");
    private static final kotlin.reflect.jvm.internal.impl.name.c b = new kotlin.reflect.jvm.internal.impl.name.c("javax.annotation.meta.TypeQualifier");
    private static final kotlin.reflect.jvm.internal.impl.name.c c = new kotlin.reflect.jvm.internal.impl.name.c("javax.annotation.meta.TypeQualifierDefault");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final kotlin.reflect.jvm.internal.impl.name.c f15023d = new kotlin.reflect.jvm.internal.impl.name.c("kotlin.annotations.jvm.UnderMigration");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final List<AnnotationQualifierApplicabilityType> f15024e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Map<kotlin.reflect.jvm.internal.impl.name.c, k> f15025f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Map<kotlin.reflect.jvm.internal.impl.name.c, k> f15026g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Set<kotlin.reflect.jvm.internal.impl.name.c> f15027h;

    static {
        AnnotationQualifierApplicabilityType annotationQualifierApplicabilityType = AnnotationQualifierApplicabilityType.VALUE_PARAMETER;
        List<AnnotationQualifierApplicabilityType> listM = kotlin.collections.u.m(AnnotationQualifierApplicabilityType.FIELD, AnnotationQualifierApplicabilityType.METHOD_RETURN_TYPE, annotationQualifierApplicabilityType, AnnotationQualifierApplicabilityType.TYPE_PARAMETER_BOUNDS, AnnotationQualifierApplicabilityType.TYPE_USE);
        f15024e = listM;
        kotlin.reflect.jvm.internal.impl.name.c cVarI = s.i();
        NullabilityQualifier nullabilityQualifier = NullabilityQualifier.NOT_NULL;
        Map<kotlin.reflect.jvm.internal.impl.name.c, k> mapE = n0.e(kotlin.l.a(cVarI, new k(new kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.g(nullabilityQualifier, false, 2, null), listM, false, false)));
        f15025f = mapE;
        f15026g = o0.n(o0.k(kotlin.l.a(new kotlin.reflect.jvm.internal.impl.name.c("javax.annotation.ParametersAreNullableByDefault"), new k(new kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.g(NullabilityQualifier.NULLABLE, false, 2, null), kotlin.collections.t.d(annotationQualifierApplicabilityType), false, false, 12, null)), kotlin.l.a(new kotlin.reflect.jvm.internal.impl.name.c("javax.annotation.ParametersAreNonnullByDefault"), new k(new kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.g(nullabilityQualifier, false, 2, null), kotlin.collections.t.d(annotationQualifierApplicabilityType), false, false, 12, null))), mapE);
        f15027h = u0.f(s.f(), s.e());
    }

    public static final Map<kotlin.reflect.jvm.internal.impl.name.c, k> a() {
        return f15026g;
    }

    public static final Set<kotlin.reflect.jvm.internal.impl.name.c> b() {
        return f15027h;
    }

    public static final Map<kotlin.reflect.jvm.internal.impl.name.c, k> c() {
        return f15025f;
    }

    public static final kotlin.reflect.jvm.internal.impl.name.c d() {
        return f15023d;
    }

    public static final kotlin.reflect.jvm.internal.impl.name.c e() {
        return c;
    }

    public static final kotlin.reflect.jvm.internal.impl.name.c f() {
        return b;
    }

    public static final kotlin.reflect.jvm.internal.impl.name.c g() {
        return f15022a;
    }
}
