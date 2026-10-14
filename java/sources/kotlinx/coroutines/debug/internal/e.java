package kotlinx.coroutines.debug.internal;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes6.dex */
public final class e<T> extends WeakReference<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f15916a;

    public e(T t, ReferenceQueue<T> referenceQueue) {
        super(t, referenceQueue);
        this.f15916a = t != null ? t.hashCode() : 0;
    }
}
