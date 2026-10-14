package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes6.dex */
final class m2<T, R> extends z1<a2> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final kotlinx.coroutines.selects.f<R> f16055e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Function2<T, Continuation<? super R>, Object> f16056f;

    /* JADX WARN: Multi-variable type inference failed */
    public m2(a2 a2Var, kotlinx.coroutines.selects.f<? super R> fVar, Function2<? super T, ? super Continuation<? super R>, ? extends Object> function2) {
        super(a2Var);
        this.f16055e = fVar;
        this.f16056f = function2;
    }

    @Override // kotlinx.coroutines.a0
    public void R(Throwable th) {
        if (this.f16055e.j()) {
            ((a2) this.f16133d).F0(this.f16055e, this.f16056f);
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ kotlin.v invoke(Throwable th) {
        R(th);
        return kotlin.v.f15822a;
    }

    @Override // kotlinx.coroutines.internal.n
    public String toString() {
        return "SelectAwaitOnCompletion[" + this.f16055e + ']';
    }
}
