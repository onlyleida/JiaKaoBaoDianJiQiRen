package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.types.a0;

/* JADX INFO: loaded from: classes6.dex */
final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a0 f15177a;
    private final kotlin.reflect.jvm.internal.impl.load.java.k b;
    private final t0 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f15178d;

    public k(a0 type, kotlin.reflect.jvm.internal.impl.load.java.k kVar, t0 t0Var, boolean z) {
        r.e(type, "type");
        this.f15177a = type;
        this.b = kVar;
        this.c = t0Var;
        this.f15178d = z;
    }

    public final a0 a() {
        return this.f15177a;
    }

    public final kotlin.reflect.jvm.internal.impl.load.java.k b() {
        return this.b;
    }

    public final t0 c() {
        return this.c;
    }

    public final boolean d() {
        return this.f15178d;
    }

    public final a0 e() {
        return this.f15177a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        return r.a(this.f15177a, kVar.f15177a) && r.a(this.b, kVar.b) && r.a(this.c, kVar.c) && this.f15178d == kVar.f15178d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [int] */
    /* JADX WARN: Type inference failed for: r1v5, types: [int] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v8 */
    public int hashCode() {
        int iHashCode = this.f15177a.hashCode() * 31;
        kotlin.reflect.jvm.internal.impl.load.java.k kVar = this.b;
        int iHashCode2 = (iHashCode + (kVar == null ? 0 : kVar.hashCode())) * 31;
        t0 t0Var = this.c;
        int iHashCode3 = (iHashCode2 + (t0Var != null ? t0Var.hashCode() : 0)) * 31;
        boolean z = this.f15178d;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        return iHashCode3 + r1;
    }

    public String toString() {
        return "TypeAndDefaultQualifiers(type=" + this.f15177a + ", defaultQualifiers=" + this.b + ", typeParameterForArgument=" + this.c + ", isFromStarProjection=" + this.f15178d + ')';
    }
}
