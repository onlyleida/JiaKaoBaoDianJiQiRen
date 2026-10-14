package androidx.lifecycle;

/* JADX INFO: loaded from: classes.dex */
class CompositeGeneratedAdaptersObserver implements o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k[] f1448a;

    CompositeGeneratedAdaptersObserver(k[] kVarArr) {
        this.f1448a = kVarArr;
    }

    @Override // androidx.lifecycle.o
    public void b(r rVar, Lifecycle.Event event) {
        y yVar = new y();
        for (k kVar : this.f1448a) {
            kVar.a(rVar, event, false, yVar);
        }
        for (k kVar2 : this.f1448a) {
            kVar2.a(rVar, event, true, yVar);
        }
    }
}
