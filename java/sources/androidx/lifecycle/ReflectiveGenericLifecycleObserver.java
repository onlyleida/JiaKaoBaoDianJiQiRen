package androidx.lifecycle;

/* JADX INFO: loaded from: classes.dex */
class ReflectiveGenericLifecycleObserver implements o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f1474a;
    private final d.a b;

    ReflectiveGenericLifecycleObserver(Object obj) {
        this.f1474a = obj;
        this.b = d.c.c(obj.getClass());
    }

    @Override // androidx.lifecycle.o
    public void b(r rVar, Lifecycle.Event event) {
        this.b.a(rVar, event, this.f1474a);
    }
}
