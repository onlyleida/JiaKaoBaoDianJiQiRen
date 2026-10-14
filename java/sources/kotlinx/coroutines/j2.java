package kotlinx.coroutines;

import kotlin.Result;

/* JADX INFO: loaded from: classes6.dex */
final class j2<T> extends z1<a2> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final l<T> f16042e;

    /* JADX WARN: Multi-variable type inference failed */
    public j2(a2 a2Var, l<? super T> lVar) {
        super(a2Var);
        this.f16042e = lVar;
    }

    @Override // kotlinx.coroutines.a0
    public void R(Throwable th) {
        Object objK0 = ((a2) this.f16133d).k0();
        if (l0.a() && !(!(objK0 instanceof n1))) {
            throw new AssertionError();
        }
        if (objK0 instanceof y) {
            l<T> lVar = this.f16042e;
            Throwable th2 = ((y) objK0).f16129a;
            Result.Companion companion = Result.INSTANCE;
            lVar.resumeWith(Result.m139constructorimpl(kotlin.k.a(th2)));
            return;
        }
        l<T> lVar2 = this.f16042e;
        Object objH = b2.h(objK0);
        Result.Companion companion2 = Result.INSTANCE;
        lVar2.resumeWith(Result.m139constructorimpl(objH));
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ kotlin.v invoke(Throwable th) {
        R(th);
        return kotlin.v.f15822a;
    }

    @Override // kotlinx.coroutines.internal.n
    public String toString() {
        return "ResumeAwaitOnCompletion[" + this.f16042e + ']';
    }
}
