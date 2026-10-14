package androidx.core.util;

/* JADX INFO: loaded from: classes.dex */
public class f<T> implements e<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object[] f1149a;
    private int b;

    public f(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("The max pool size must be > 0");
        }
        this.f1149a = new Object[i];
    }

    private boolean a(T t) {
        for (int i = 0; i < this.b; i++) {
            if (this.f1149a[i] == t) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.core.util.e
    public T acquire() {
        int i = this.b;
        if (i <= 0) {
            return null;
        }
        int i2 = i - 1;
        Object[] objArr = this.f1149a;
        T t = (T) objArr[i2];
        objArr[i2] = null;
        this.b = i - 1;
        return t;
    }

    @Override // androidx.core.util.e
    public boolean release(T t) {
        if (a(t)) {
            throw new IllegalStateException("Already in the pool!");
        }
        int i = this.b;
        Object[] objArr = this.f1149a;
        if (i >= objArr.length) {
            return false;
        }
        objArr[i] = t;
        this.b = i + 1;
        return true;
    }
}
