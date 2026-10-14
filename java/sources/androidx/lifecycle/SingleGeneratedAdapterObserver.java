package androidx.lifecycle;

/* JADX INFO: loaded from: classes.dex */
class SingleGeneratedAdapterObserver implements o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k f1477a;

    SingleGeneratedAdapterObserver(k kVar) {
        this.f1477a = kVar;
    }

    @Override // androidx.lifecycle.o
    public void b(r rVar, Lifecycle.Event event) {
        this.f1477a.a(rVar, event, false, null);
        this.f1477a.a(rVar, event, true, null);
    }
}
