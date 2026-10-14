package kotlin.reflect.jvm.internal.impl.resolve.constants;

/* JADX INFO: loaded from: classes6.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.name.b f15499a;
    private final int b;

    public f(kotlin.reflect.jvm.internal.impl.name.b classId, int i) {
        kotlin.jvm.internal.r.e(classId, "classId");
        this.f15499a = classId;
        this.b = i;
    }

    public final kotlin.reflect.jvm.internal.impl.name.b a() {
        return this.f15499a;
    }

    public final int b() {
        return this.b;
    }

    public final int c() {
        return this.b;
    }

    public final kotlin.reflect.jvm.internal.impl.name.b d() {
        return this.f15499a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return kotlin.jvm.internal.r.a(this.f15499a, fVar.f15499a) && this.b == fVar.b;
    }

    public int hashCode() {
        return (this.f15499a.hashCode() * 31) + this.b;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int iC = c();
        for (int i = 0; i < iC; i++) {
            sb.append("kotlin/Array<");
        }
        sb.append(d());
        int iC2 = c();
        for (int i2 = 0; i2 < iC2; i2++) {
            sb.append(">");
        }
        String string = sb.toString();
        kotlin.jvm.internal.r.d(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }
}
