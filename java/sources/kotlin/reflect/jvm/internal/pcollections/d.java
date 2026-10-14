package kotlin.reflect.jvm.internal.pcollections;

/* JADX INFO: loaded from: classes6.dex */
final class d<V> {
    private static final d<Object> b = new d<>(c.f15765f);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c<V> f15769a;

    private d(c<V> cVar) {
        this.f15769a = cVar;
    }

    public static <V> d<V> a() {
        return (d<V>) b;
    }

    private d<V> d(c<V> cVar) {
        return cVar == this.f15769a ? this : new d<>(cVar);
    }

    public V b(int i) {
        return this.f15769a.a(i);
    }

    public d<V> c(int i, V v) {
        return d(this.f15769a.b(i, v));
    }
}
