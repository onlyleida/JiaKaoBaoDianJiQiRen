package kotlinx.coroutines;

/* JADX INFO: loaded from: classes6.dex */
public final class p extends u1<t1> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final l<?> f16061e;

    public p(t1 t1Var, l<?> lVar) {
        super(t1Var);
        this.f16061e = lVar;
    }

    @Override // kotlinx.coroutines.a0
    public void R(Throwable th) {
        l<?> lVar = this.f16061e;
        lVar.G(lVar.u(this.f16133d));
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ kotlin.v invoke(Throwable th) {
        R(th);
        return kotlin.v.f15822a;
    }

    @Override // kotlinx.coroutines.internal.n
    public String toString() {
        return "ChildContinuation[" + this.f16061e + ']';
    }
}
