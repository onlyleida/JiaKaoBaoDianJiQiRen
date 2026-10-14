package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: loaded from: classes6.dex */
public class p<E> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final AtomicReferenceFieldUpdater f16028a = AtomicReferenceFieldUpdater.newUpdater(p.class, Object.class, "_cur");
    private volatile Object _cur;

    public p(boolean z) {
        this._cur = new q(8, z);
    }

    public final boolean a(E e2) {
        while (true) {
            q qVar = (q) this._cur;
            int iA = qVar.a(e2);
            if (iA == 0) {
                return true;
            }
            if (iA == 1) {
                f16028a.compareAndSet(this, qVar, qVar.i());
            } else if (iA == 2) {
                return false;
            }
        }
    }

    public final void b() {
        while (true) {
            q qVar = (q) this._cur;
            if (qVar.d()) {
                return;
            } else {
                f16028a.compareAndSet(this, qVar, qVar.i());
            }
        }
    }

    public final int c() {
        return ((q) this._cur).f();
    }

    public final E d() {
        while (true) {
            q qVar = (q) this._cur;
            E e2 = (E) qVar.j();
            if (e2 != q.f16031g) {
                return e2;
            }
            f16028a.compareAndSet(this, qVar, qVar.i());
        }
    }
}
