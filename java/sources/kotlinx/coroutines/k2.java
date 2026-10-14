package kotlinx.coroutines;

import kotlin.Result;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes6.dex */
final class k2 extends z1<t1> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Continuation<kotlin.v> f16044e;

    /* JADX WARN: Multi-variable type inference failed */
    public k2(t1 t1Var, Continuation<? super kotlin.v> continuation) {
        super(t1Var);
        this.f16044e = continuation;
    }

    @Override // kotlinx.coroutines.a0
    public void R(Throwable th) {
        Continuation<kotlin.v> continuation = this.f16044e;
        kotlin.v vVar = kotlin.v.f15822a;
        Result.Companion companion = Result.INSTANCE;
        continuation.resumeWith(Result.m139constructorimpl(vVar));
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ kotlin.v invoke(Throwable th) {
        R(th);
        return kotlin.v.f15822a;
    }

    @Override // kotlinx.coroutines.internal.n
    public String toString() {
        return "ResumeOnCompletion[" + this.f16044e + ']';
    }
}
