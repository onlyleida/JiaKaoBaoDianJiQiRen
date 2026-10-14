package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes6.dex */
final class s2 implements Function1<Throwable, kotlin.v> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final AtomicIntegerFieldUpdater f16068d = AtomicIntegerFieldUpdater.newUpdater(s2.class, "_state");
    private volatile int _state = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Thread f16069a = Thread.currentThread();
    private y0 b;
    private final t1 c;

    public s2(t1 t1Var) {
        this.c = t1Var;
    }

    private final Void b(int i) {
        throw new IllegalStateException(("Illegal state " + i).toString());
    }

    public final void a() {
        while (true) {
            int i = this._state;
            if (i != 0) {
                if (i != 2) {
                    if (i == 3) {
                        Thread.interrupted();
                        return;
                    } else {
                        b(i);
                        throw null;
                    }
                }
            } else if (f16068d.compareAndSet(this, i, 1)) {
                y0 y0Var = this.b;
                if (y0Var != null) {
                    y0Var.dispose();
                    return;
                }
                return;
            }
        }
    }

    public void c(Throwable th) {
        int i;
        do {
            i = this._state;
            if (i != 0) {
                if (i == 1 || i == 2 || i == 3) {
                    return;
                }
                b(i);
                throw null;
            }
        } while (!f16068d.compareAndSet(this, i, 2));
        this.f16069a.interrupt();
        this._state = 3;
    }

    public final void d() {
        int i;
        this.b = this.c.h(true, true, this);
        do {
            i = this._state;
            if (i != 0) {
                if (i == 2 || i == 3) {
                    return;
                }
                b(i);
                throw null;
            }
        } while (!f16068d.compareAndSet(this, i, 0));
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ kotlin.v invoke(Throwable th) {
        c(th);
        return kotlin.v.f15822a;
    }
}
