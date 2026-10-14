package androidx.core.util;

/* JADX INFO: loaded from: classes.dex */
public class g<T> extends f<T> {
    private final Object c;

    public g(int i) {
        super(i);
        this.c = new Object();
    }

    @Override // androidx.core.util.f, androidx.core.util.e
    public T acquire() {
        T t;
        synchronized (this.c) {
            t = (T) super.acquire();
        }
        return t;
    }

    @Override // androidx.core.util.f, androidx.core.util.e
    public boolean release(T t) {
        boolean zRelease;
        synchronized (this.c) {
            zRelease = super.release(t);
        }
        return zRelease;
    }
}
