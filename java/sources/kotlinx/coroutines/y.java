package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* JADX INFO: loaded from: classes6.dex */
public class y {
    private static final AtomicIntegerFieldUpdater b = AtomicIntegerFieldUpdater.newUpdater(y.class, "_handled");
    private volatile int _handled;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Throwable f16129a;

    public y(Throwable th, boolean z) {
        this.f16129a = th;
        this._handled = z ? 1 : 0;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [boolean, int] */
    public final boolean a() {
        return this._handled;
    }

    public final boolean b() {
        return b.compareAndSet(this, 0, 1);
    }

    public String toString() {
        return m0.a(this) + '[' + this.f16129a + ']';
    }

    public /* synthetic */ y(Throwable th, boolean z, int i, kotlin.jvm.internal.o oVar) {
        this(th, (i & 2) != 0 ? false : z);
    }
}
