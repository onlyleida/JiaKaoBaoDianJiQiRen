package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

/* JADX INFO: loaded from: classes6.dex */
public final class n<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final T f15603a;
    private final T b;
    private final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.name.b f15604d;

    public n(T t, T t2, String filePath, kotlin.reflect.jvm.internal.impl.name.b classId) {
        kotlin.jvm.internal.r.e(filePath, "filePath");
        kotlin.jvm.internal.r.e(classId, "classId");
        this.f15603a = t;
        this.b = t2;
        this.c = filePath;
        this.f15604d = classId;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        return kotlin.jvm.internal.r.a(this.f15603a, nVar.f15603a) && kotlin.jvm.internal.r.a(this.b, nVar.b) && kotlin.jvm.internal.r.a(this.c, nVar.c) && kotlin.jvm.internal.r.a(this.f15604d, nVar.f15604d);
    }

    public int hashCode() {
        T t = this.f15603a;
        int iHashCode = (t == null ? 0 : t.hashCode()) * 31;
        T t2 = this.b;
        return ((((iHashCode + (t2 != null ? t2.hashCode() : 0)) * 31) + this.c.hashCode()) * 31) + this.f15604d.hashCode();
    }

    public String toString() {
        return "IncompatibleVersionErrorData(actualVersion=" + this.f15603a + ", expectedVersion=" + this.b + ", filePath=" + this.c + ", classId=" + this.f15604d + ')';
    }
}
