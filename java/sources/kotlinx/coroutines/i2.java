package kotlinx.coroutines;

/* JADX INFO: loaded from: classes6.dex */
final class i2 extends d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final kotlinx.coroutines.internal.n f16001a;

    public i2(kotlinx.coroutines.internal.n nVar) {
        this.f16001a = nVar;
    }

    @Override // kotlinx.coroutines.j
    public void a(Throwable th) {
        this.f16001a.N();
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ kotlin.v invoke(Throwable th) {
        a(th);
        return kotlin.v.f15822a;
    }

    public String toString() {
        return "RemoveOnCancel[" + this.f16001a + ']';
    }
}
