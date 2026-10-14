package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlinx.coroutines.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class q<E> {
    private volatile Object _next = null;
    private volatile long _state = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f16033a;
    private AtomicReferenceArray b;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f16034d;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f16032h = new a(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final y f16031g = new y("REMOVE_FROZEN");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final AtomicReferenceFieldUpdater f16029e = AtomicReferenceFieldUpdater.newUpdater(q.class, Object.class, "_next");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final AtomicLongFieldUpdater f16030f = AtomicLongFieldUpdater.newUpdater(q.class, "_state");

    public static final class a {
        private a() {
        }

        public final int a(long j) {
            return (j & 2305843009213693952L) != 0 ? 2 : 1;
        }

        public final long b(long j, int i) {
            return d(j, 1073741823L) | (((long) i) << 0);
        }

        public final long c(long j, int i) {
            return d(j, 1152921503533105152L) | (((long) i) << 30);
        }

        public final long d(long j, long j2) {
            return j & (~j2);
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f16035a;

        public b(int i) {
            this.f16035a = i;
        }
    }

    public q(int i, boolean z) {
        this.c = i;
        this.f16034d = z;
        int i2 = i - 1;
        this.f16033a = i2;
        this.b = new AtomicReferenceArray(i);
        if (!(i2 <= 1073741823)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if (!((i & i2) == 0)) {
            throw new IllegalStateException("Check failed.".toString());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final q<E> b(long j) {
        q<E> qVar = new q<>(this.c * 2, this.f16034d);
        int i = (int) ((1073741823 & j) >> 0);
        int i2 = (int) ((1152921503533105152L & j) >> 30);
        while (true) {
            int i3 = this.f16033a;
            if ((i & i3) == (i2 & i3)) {
                qVar._state = f16032h.d(j, 1152921504606846976L);
                return qVar;
            }
            Object bVar = this.b.get(i3 & i);
            if (bVar == null) {
                bVar = new b(i);
            }
            qVar.b.set(qVar.f16033a & i, bVar);
            i++;
        }
    }

    private final q<E> c(long j) {
        while (true) {
            q<E> qVar = (q) this._next;
            if (qVar != null) {
                return qVar;
            }
            f16029e.compareAndSet(this, null, b(j));
        }
    }

    private final q<E> e(int i, E e2) {
        Object obj = this.b.get(this.f16033a & i);
        if (!(obj instanceof b) || ((b) obj).f16035a != i) {
            return null;
        }
        this.b.set(i & this.f16033a, e2);
        return this;
    }

    private final long h() {
        long j;
        long j2;
        do {
            j = this._state;
            if ((j & 1152921504606846976L) != 0) {
                return j;
            }
            j2 = j | 1152921504606846976L;
        } while (!f16030f.compareAndSet(this, j, j2));
        return j2;
    }

    private final q<E> k(int i, int i2) {
        long j;
        a aVar;
        int i3;
        do {
            j = this._state;
            aVar = f16032h;
            i3 = (int) ((1073741823 & j) >> 0);
            if (l0.a()) {
                if (!(i3 == i)) {
                    throw new AssertionError();
                }
            }
            if ((1152921504606846976L & j) != 0) {
                return i();
            }
        } while (!f16030f.compareAndSet(this, j, aVar.b(j, i2)));
        this.b.set(this.f16033a & i3, null);
        return null;
    }

    public final int a(E e2) {
        while (true) {
            long j = this._state;
            if ((3458764513820540928L & j) != 0) {
                return f16032h.a(j);
            }
            a aVar = f16032h;
            int i = (int) ((1073741823 & j) >> 0);
            int i2 = (int) ((1152921503533105152L & j) >> 30);
            int i3 = this.f16033a;
            if (((i2 + 2) & i3) == (i & i3)) {
                return 1;
            }
            if (!this.f16034d && this.b.get(i2 & i3) != null) {
                int i4 = this.c;
                if (i4 < 1024 || ((i2 - i) & 1073741823) > (i4 >> 1)) {
                    return 1;
                }
            } else if (f16030f.compareAndSet(this, j, aVar.c(j, (i2 + 1) & 1073741823))) {
                this.b.set(i2 & i3, e2);
                q<E> qVarE = this;
                while ((qVarE._state & 1152921504606846976L) != 0 && (qVarE = qVarE.i().e(i2, e2)) != null) {
                }
                return 0;
            }
        }
    }

    public final boolean d() {
        long j;
        do {
            j = this._state;
            if ((j & 2305843009213693952L) != 0) {
                return true;
            }
            if ((1152921504606846976L & j) != 0) {
                return false;
            }
        } while (!f16030f.compareAndSet(this, j, j | 2305843009213693952L));
        return true;
    }

    public final int f() {
        long j = this._state;
        return 1073741823 & (((int) ((j & 1152921503533105152L) >> 30)) - ((int) ((1073741823 & j) >> 0)));
    }

    public final boolean g() {
        long j = this._state;
        return ((int) ((1073741823 & j) >> 0)) == ((int) ((j & 1152921503533105152L) >> 30));
    }

    public final q<E> i() {
        return c(h());
    }

    public final Object j() {
        while (true) {
            long j = this._state;
            if ((1152921504606846976L & j) != 0) {
                return f16031g;
            }
            a aVar = f16032h;
            int i = (int) ((1073741823 & j) >> 0);
            int i2 = (int) ((1152921503533105152L & j) >> 30);
            int i3 = this.f16033a;
            if ((i2 & i3) == (i & i3)) {
                return null;
            }
            Object obj = this.b.get(i3 & i);
            if (obj == null) {
                if (this.f16034d) {
                    return null;
                }
            } else {
                if (obj instanceof b) {
                    return null;
                }
                int i4 = (i + 1) & 1073741823;
                if (f16030f.compareAndSet(this, j, aVar.b(j, i4))) {
                    this.b.set(this.f16033a & i, null);
                    return obj;
                }
                if (this.f16034d) {
                    q<E> qVarK = this;
                    do {
                        qVarK = qVarK.k(i, i4);
                    } while (qVarK != null);
                    return obj;
                }
            }
        }
    }
}
