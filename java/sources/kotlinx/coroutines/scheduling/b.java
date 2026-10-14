package kotlinx.coroutines.scheduling;

import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.internal.b0;
import kotlinx.coroutines.internal.z;

/* JADX INFO: loaded from: classes6.dex */
public final class b extends c {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final CoroutineDispatcher f16083g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final b f16084h;

    static {
        b bVar = new b();
        f16084h = bVar;
        f16083g = new e(bVar, b0.d("kotlinx.coroutines.io.parallelism", kotlin.ranges.f.b(64, z.a()), 0, 0, 12, null), "Dispatchers.IO", 1);
    }

    private b() {
        super(0, 0, null, 7, null);
    }

    public final CoroutineDispatcher E() {
        return f16083g;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new UnsupportedOperationException("Dispatchers.Default cannot be closed");
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public String toString() {
        return "Dispatchers.Default";
    }
}
