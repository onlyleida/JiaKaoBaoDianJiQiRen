package kotlinx.coroutines;

/* JADX INFO: loaded from: classes6.dex */
final class l2 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CoroutineDispatcher f16052a;
    private final k<kotlin.v> b;

    /* JADX WARN: Multi-variable type inference failed */
    public l2(CoroutineDispatcher coroutineDispatcher, k<? super kotlin.v> kVar) {
        this.f16052a = coroutineDispatcher;
        this.b = kVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.b.C(this.f16052a, kotlin.v.f15822a);
    }
}
