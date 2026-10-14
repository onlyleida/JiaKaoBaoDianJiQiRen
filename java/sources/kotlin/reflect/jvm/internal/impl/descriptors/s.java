package kotlin.reflect.jvm.internal.impl.descriptors;

/* JADX INFO: loaded from: classes6.dex */
public abstract class s {
    protected s() {
    }

    public final Integer a(s visibility) {
        kotlin.jvm.internal.r.e(visibility, "visibility");
        return b().a(visibility.b());
    }

    public abstract z0 b();

    public abstract String c();

    public final boolean d() {
        return b().c();
    }

    public abstract boolean e(kotlin.reflect.jvm.internal.impl.resolve.scopes.i.d dVar, o oVar, k kVar);

    public abstract s f();

    public final String toString() {
        return b().toString();
    }
}
