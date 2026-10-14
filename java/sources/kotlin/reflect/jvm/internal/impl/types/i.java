package kotlin.reflect.jvm.internal.impl.types;

/* JADX INFO: loaded from: classes6.dex */
public abstract class i implements q0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f15690a;

    private final boolean f(kotlin.reflect.jvm.internal.impl.descriptors.f fVar) {
        return (t.r(fVar) || kotlin.reflect.jvm.internal.impl.resolve.c.E(fVar)) ? false : true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.q0
    /* JADX INFO: renamed from: c */
    public abstract kotlin.reflect.jvm.internal.impl.descriptors.f u();

    protected final boolean e(kotlin.reflect.jvm.internal.impl.descriptors.f first, kotlin.reflect.jvm.internal.impl.descriptors.f second) {
        kotlin.jvm.internal.r.e(first, "first");
        kotlin.jvm.internal.r.e(second, "second");
        if (!kotlin.jvm.internal.r.a(first.getName(), second.getName())) {
            return false;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.k kVarB = first.b();
        for (kotlin.reflect.jvm.internal.impl.descriptors.k kVarB2 = second.b(); kVarB != null && kVarB2 != null; kVarB2 = kVarB2.b()) {
            if (kVarB instanceof kotlin.reflect.jvm.internal.impl.descriptors.z) {
                return kVarB2 instanceof kotlin.reflect.jvm.internal.impl.descriptors.z;
            }
            if (kVarB2 instanceof kotlin.reflect.jvm.internal.impl.descriptors.z) {
                return false;
            }
            if (kVarB instanceof kotlin.reflect.jvm.internal.impl.descriptors.b0) {
                return (kVarB2 instanceof kotlin.reflect.jvm.internal.impl.descriptors.b0) && kotlin.jvm.internal.r.a(((kotlin.reflect.jvm.internal.impl.descriptors.b0) kVarB).e(), ((kotlin.reflect.jvm.internal.impl.descriptors.b0) kVarB2).e());
            }
            if ((kVarB2 instanceof kotlin.reflect.jvm.internal.impl.descriptors.b0) || !kotlin.jvm.internal.r.a(kVarB.getName(), kVarB2.getName())) {
                return false;
            }
            kVarB = kVarB.b();
        }
        return true;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q0) || obj.hashCode() != hashCode()) {
            return false;
        }
        q0 q0Var = (q0) obj;
        if (q0Var.getParameters().size() != getParameters().size()) {
            return false;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarU = u();
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarU2 = q0Var.u();
        if (fVarU2 != null && f(fVarU) && f(fVarU2)) {
            return g(fVarU2);
        }
        return false;
    }

    protected abstract boolean g(kotlin.reflect.jvm.internal.impl.descriptors.f fVar);

    public int hashCode() {
        int i = this.f15690a;
        if (i != 0) {
            return i;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarU = u();
        int iHashCode = f(fVarU) ? kotlin.reflect.jvm.internal.impl.resolve.c.m(fVarU).hashCode() : System.identityHashCode(this);
        this.f15690a = iHashCode;
        return iHashCode;
    }
}
