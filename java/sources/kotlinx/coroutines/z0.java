package kotlinx.coroutines;

/* JADX INFO: loaded from: classes6.dex */
final class z0 extends i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final y0 f16132a;

    public z0(y0 y0Var) {
        this.f16132a = y0Var;
    }

    @Override // kotlinx.coroutines.j
    public void a(Throwable th) {
        this.f16132a.dispose();
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ kotlin.v invoke(Throwable th) {
        a(th);
        return kotlin.v.f15822a;
    }

    public String toString() {
        return "DisposeOnCancel[" + this.f16132a + ']';
    }
}
