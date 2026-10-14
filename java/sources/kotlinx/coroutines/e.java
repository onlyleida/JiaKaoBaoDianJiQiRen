package kotlinx.coroutines;

/* JADX INFO: loaded from: classes6.dex */
public final class e extends d1 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Thread f15918g;

    public e(Thread thread) {
        this.f15918g = thread;
    }

    @Override // kotlinx.coroutines.e1
    protected Thread M() {
        return this.f15918g;
    }
}
