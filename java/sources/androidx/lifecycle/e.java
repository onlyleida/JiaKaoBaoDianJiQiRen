package androidx.lifecycle;

import java.io.Closeable;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.y1;

/* JADX INFO: loaded from: classes.dex */
public final class e implements Closeable, kotlinx.coroutines.i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CoroutineContext f1497a;

    public e(CoroutineContext context) {
        kotlin.jvm.internal.r.e(context, "context");
        this.f1497a = context;
    }

    @Override // kotlinx.coroutines.i0
    public CoroutineContext E() {
        return this.f1497a;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        y1.d(E(), null, 1, null);
    }
}
