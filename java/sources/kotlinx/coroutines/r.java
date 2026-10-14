package kotlinx.coroutines;

/* JADX INFO: loaded from: classes6.dex */
public final class r extends u1<a2> implements q {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final s f16063e;

    public r(a2 a2Var, s sVar) {
        super(a2Var);
        this.f16063e = sVar;
    }

    @Override // kotlinx.coroutines.a0
    public void R(Throwable th) {
        this.f16063e.j((h2) this.f16133d);
    }

    @Override // kotlinx.coroutines.q
    public boolean b(Throwable th) {
        return ((a2) this.f16133d).X(th);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ kotlin.v invoke(Throwable th) {
        R(th);
        return kotlin.v.f15822a;
    }

    @Override // kotlinx.coroutines.internal.n
    public String toString() {
        return "ChildHandle[" + this.f16063e + ']';
    }
}
