package kotlin.reflect.jvm.internal.impl.descriptors;

/* JADX INFO: loaded from: classes6.dex */
public abstract class z0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f15002a;
    private final boolean b;

    protected z0(String name, boolean z) {
        kotlin.jvm.internal.r.e(name, "name");
        this.f15002a = name;
        this.b = z;
    }

    public Integer a(z0 visibility) {
        kotlin.jvm.internal.r.e(visibility, "visibility");
        return y0.f15001a.a(this, visibility);
    }

    public String b() {
        return this.f15002a;
    }

    public final boolean c() {
        return this.b;
    }

    public z0 d() {
        return this;
    }

    public final String toString() {
        return b();
    }
}
