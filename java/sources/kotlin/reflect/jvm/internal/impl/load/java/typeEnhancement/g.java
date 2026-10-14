package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes6.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final NullabilityQualifier f15171a;
    private final boolean b;

    public g(NullabilityQualifier qualifier, boolean z) {
        r.e(qualifier, "qualifier");
        this.f15171a = qualifier;
        this.b = z;
    }

    public static /* synthetic */ g b(g gVar, NullabilityQualifier nullabilityQualifier, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            nullabilityQualifier = gVar.f15171a;
        }
        if ((i & 2) != 0) {
            z = gVar.b;
        }
        return gVar.a(nullabilityQualifier, z);
    }

    public final g a(NullabilityQualifier qualifier, boolean z) {
        r.e(qualifier, "qualifier");
        return new g(qualifier, z);
    }

    public final NullabilityQualifier c() {
        return this.f15171a;
    }

    public final boolean d() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return this.f15171a == gVar.f15171a && this.b == gVar.b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    public int hashCode() {
        int iHashCode = this.f15171a.hashCode() * 31;
        boolean z = this.b;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        return iHashCode + r1;
    }

    public String toString() {
        return "NullabilityQualifierWithMigrationStatus(qualifier=" + this.f15171a + ", isForWarningOnly=" + this.b + ')';
    }

    public /* synthetic */ g(NullabilityQualifier nullabilityQualifier, boolean z, int i, kotlin.jvm.internal.o oVar) {
        this(nullabilityQualifier, (i & 2) != 0 ? false : z);
    }
}
