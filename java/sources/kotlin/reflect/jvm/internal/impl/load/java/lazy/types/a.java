package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import java.util.Set;
import kotlin.collections.v0;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.load.java.components.TypeUsage;
import kotlin.reflect.jvm.internal.impl.types.f0;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TypeUsage f15125a;
    private final JavaTypeFlexibility b;
    private final boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Set<t0> f15126d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final f0 f15127e;

    /* JADX WARN: Multi-variable type inference failed */
    public a(TypeUsage howThisTypeIsUsed, JavaTypeFlexibility flexibility, boolean z, Set<? extends t0> set, f0 f0Var) {
        r.e(howThisTypeIsUsed, "howThisTypeIsUsed");
        r.e(flexibility, "flexibility");
        this.f15125a = howThisTypeIsUsed;
        this.b = flexibility;
        this.c = z;
        this.f15126d = set;
        this.f15127e = f0Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ a b(a aVar, TypeUsage typeUsage, JavaTypeFlexibility javaTypeFlexibility, boolean z, Set set, f0 f0Var, int i, Object obj) {
        if ((i & 1) != 0) {
            typeUsage = aVar.f15125a;
        }
        if ((i & 2) != 0) {
            javaTypeFlexibility = aVar.b;
        }
        JavaTypeFlexibility javaTypeFlexibility2 = javaTypeFlexibility;
        if ((i & 4) != 0) {
            z = aVar.c;
        }
        boolean z2 = z;
        if ((i & 8) != 0) {
            set = aVar.f15126d;
        }
        Set set2 = set;
        if ((i & 16) != 0) {
            f0Var = aVar.f15127e;
        }
        return aVar.a(typeUsage, javaTypeFlexibility2, z2, set2, f0Var);
    }

    public final a a(TypeUsage howThisTypeIsUsed, JavaTypeFlexibility flexibility, boolean z, Set<? extends t0> set, f0 f0Var) {
        r.e(howThisTypeIsUsed, "howThisTypeIsUsed");
        r.e(flexibility, "flexibility");
        return new a(howThisTypeIsUsed, flexibility, z, set, f0Var);
    }

    public final f0 c() {
        return this.f15127e;
    }

    public final JavaTypeFlexibility d() {
        return this.b;
    }

    public final TypeUsage e() {
        return this.f15125a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f15125a == aVar.f15125a && this.b == aVar.b && this.c == aVar.c && r.a(this.f15126d, aVar.f15126d) && r.a(this.f15127e, aVar.f15127e);
    }

    public final Set<t0> f() {
        return this.f15126d;
    }

    public final boolean g() {
        return this.c;
    }

    public final a h(f0 f0Var) {
        return b(this, null, null, false, null, f0Var, 15, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v9 */
    public int hashCode() {
        int iHashCode = ((this.f15125a.hashCode() * 31) + this.b.hashCode()) * 31;
        boolean z = this.c;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        int i = (iHashCode + r1) * 31;
        Set<t0> set = this.f15126d;
        int iHashCode2 = (i + (set == null ? 0 : set.hashCode())) * 31;
        f0 f0Var = this.f15127e;
        return iHashCode2 + (f0Var != null ? f0Var.hashCode() : 0);
    }

    public final a i(JavaTypeFlexibility flexibility) {
        r.e(flexibility, "flexibility");
        return b(this, null, flexibility, false, null, null, 29, null);
    }

    public final a j(t0 typeParameter) {
        r.e(typeParameter, "typeParameter");
        Set<t0> set = this.f15126d;
        return b(this, null, null, false, set != null ? v0.i(set, typeParameter) : kotlin.collections.t0.a(typeParameter), null, 23, null);
    }

    public String toString() {
        return "JavaTypeAttributes(howThisTypeIsUsed=" + this.f15125a + ", flexibility=" + this.b + ", isForAnnotationParameter=" + this.c + ", visitedTypeParameters=" + this.f15126d + ", defaultType=" + this.f15127e + ')';
    }

    public /* synthetic */ a(TypeUsage typeUsage, JavaTypeFlexibility javaTypeFlexibility, boolean z, Set set, f0 f0Var, int i, o oVar) {
        this(typeUsage, (i & 2) != 0 ? JavaTypeFlexibility.INFLEXIBLE : javaTypeFlexibility, (i & 4) != 0 ? false : z, (i & 8) != 0 ? null : set, (i & 16) != 0 ? null : f0Var);
    }
}
