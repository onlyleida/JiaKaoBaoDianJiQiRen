package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.Collection;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifier;

/* JADX INFO: loaded from: classes6.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.g f15060a;
    private final Collection<AnnotationQualifierApplicabilityType> b;
    private final boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f15061d;

    /* JADX WARN: Multi-variable type inference failed */
    public k(kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.g nullabilityQualifier, Collection<? extends AnnotationQualifierApplicabilityType> qualifierApplicabilityTypes, boolean z, boolean z2) {
        kotlin.jvm.internal.r.e(nullabilityQualifier, "nullabilityQualifier");
        kotlin.jvm.internal.r.e(qualifierApplicabilityTypes, "qualifierApplicabilityTypes");
        this.f15060a = nullabilityQualifier;
        this.b = qualifierApplicabilityTypes;
        this.c = z;
        this.f15061d = z2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ k b(k kVar, kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.g gVar, Collection collection, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            gVar = kVar.f15060a;
        }
        if ((i & 2) != 0) {
            collection = kVar.b;
        }
        if ((i & 4) != 0) {
            z = kVar.c;
        }
        if ((i & 8) != 0) {
            z2 = kVar.f15061d;
        }
        return kVar.a(gVar, collection, z, z2);
    }

    public final k a(kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.g nullabilityQualifier, Collection<? extends AnnotationQualifierApplicabilityType> qualifierApplicabilityTypes, boolean z, boolean z2) {
        kotlin.jvm.internal.r.e(nullabilityQualifier, "nullabilityQualifier");
        kotlin.jvm.internal.r.e(qualifierApplicabilityTypes, "qualifierApplicabilityTypes");
        return new k(nullabilityQualifier, qualifierApplicabilityTypes, z, z2);
    }

    public final boolean c() {
        return this.f15061d;
    }

    public final boolean d() {
        return this.c;
    }

    public final boolean e() {
        return this.f15060a.c() == NullabilityQualifier.NOT_NULL && this.c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        return kotlin.jvm.internal.r.a(this.f15060a, kVar.f15060a) && kotlin.jvm.internal.r.a(this.b, kVar.b) && this.c == kVar.c && this.f15061d == kVar.f15061d;
    }

    public final kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.g f() {
        return this.f15060a;
    }

    public final Collection<AnnotationQualifierApplicabilityType> g() {
        return this.b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    /* JADX WARN: Type inference failed for: r0v7, types: [int] */
    /* JADX WARN: Type inference failed for: r1v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v2 */
    public int hashCode() {
        int iHashCode = ((this.f15060a.hashCode() * 31) + this.b.hashCode()) * 31;
        boolean z = this.c;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        int i = (iHashCode + r1) * 31;
        boolean z2 = this.f15061d;
        return i + (z2 ? 1 : z2);
    }

    public String toString() {
        return "JavaDefaultQualifiers(nullabilityQualifier=" + this.f15060a + ", qualifierApplicabilityTypes=" + this.b + ", affectsTypeParameterBasedTypes=" + this.c + ", affectsStarProjection=" + this.f15061d + ')';
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ k(kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.g gVar, Collection collection, boolean z, boolean z2, int i, kotlin.jvm.internal.o oVar) {
        if ((i & 4) != 0) {
            z = gVar.c() == NullabilityQualifier.NOT_NULL;
        }
        this(gVar, collection, z, (i & 8) != 0 ? z : z2);
    }
}
