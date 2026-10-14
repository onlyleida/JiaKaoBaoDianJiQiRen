package kotlinx.coroutines;

/* JADX INFO: loaded from: classes6.dex */
public final class a1 extends z1<t1> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final y0 f15828e;

    public a1(t1 t1Var, y0 y0Var) {
        super(t1Var);
        this.f15828e = y0Var;
    }

    @Override // kotlinx.coroutines.a0
    public void R(Throwable th) {
        this.f15828e.dispose();
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ kotlin.v invoke(Throwable th) {
        R(th);
        return kotlin.v.f15822a;
    }

    @Override // kotlinx.coroutines.internal.n
    public String toString() {
        return "DisposeOnCompletion[" + this.f15828e + ']';
    }
}
