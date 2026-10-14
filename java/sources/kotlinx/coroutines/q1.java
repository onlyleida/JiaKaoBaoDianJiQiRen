package kotlinx.coroutines;

import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes6.dex */
final class q1 extends i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Function1<Throwable, kotlin.v> f16062a;

    /* JADX WARN: Multi-variable type inference failed */
    public q1(Function1<? super Throwable, kotlin.v> function1) {
        this.f16062a = function1;
    }

    @Override // kotlinx.coroutines.j
    public void a(Throwable th) {
        this.f16062a.invoke(th);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ kotlin.v invoke(Throwable th) {
        a(th);
        return kotlin.v.f15822a;
    }

    public String toString() {
        return "InvokeOnCancel[" + m0.a(this.f16062a) + '@' + m0.b(this) + ']';
    }
}
