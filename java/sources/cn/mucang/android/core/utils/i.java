package cn.mucang.android.core.utils;

import android.util.LongSparseArray;

/* JADX INFO: loaded from: classes.dex */
public class i {
    private static volatile i b = new i();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LongSparseArray<Object> f2654a = new LongSparseArray<>(3);

    /* JADX INFO: Access modifiers changed from: private */
    public void b(long j) {
        this.f2654a.remove(j);
    }

    public static i c() {
        return b;
    }

    public <T> T d(long j) {
        return (T) this.f2654a.get(j);
    }

    public <T> T e(long j) {
        T t = (T) this.f2654a.get(j);
        this.f2654a.remove(j);
        if (t != null) {
            return t;
        }
        return null;
    }

    public long f(Object obj) {
        long jHashCode = obj.hashCode();
        this.f2654a.put(jHashCode, obj);
        return jHashCode;
    }
}
