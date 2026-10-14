package kotlinx.coroutines;

import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes6.dex */
final class s1 extends z1<t1> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Function1<Throwable, kotlin.v> f16067e;

    /* JADX WARN: Multi-variable type inference failed */
    public s1(t1 t1Var, Function1<? super Throwable, kotlin.v> function1) {
        super(t1Var);
        this.f16067e = function1;
    }

    @Override // kotlinx.coroutines.a0
    public void R(Throwable th) {
        this.f16067e.invoke(th);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ kotlin.v invoke(Throwable th) {
        R(th);
        return kotlin.v.f15822a;
    }

    @Override // kotlinx.coroutines.internal.n
    public String toString() {
        return "InvokeOnCompletion[" + m0.a(this) + '@' + m0.b(this) + ']';
    }
}
