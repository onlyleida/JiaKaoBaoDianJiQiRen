package kotlin.reflect.jvm.internal.impl.storage;

/* JADX INFO: loaded from: classes6.dex */
class k<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final T f15635a;
    private final Thread b = Thread.currentThread();

    k(T t) {
        this.f15635a = t;
    }

    public T a() {
        if (b()) {
            return this.f15635a;
        }
        throw new IllegalStateException("No value in this thread (hasValue should be checked before)");
    }

    public boolean b() {
        return this.b == Thread.currentThread();
    }
}
