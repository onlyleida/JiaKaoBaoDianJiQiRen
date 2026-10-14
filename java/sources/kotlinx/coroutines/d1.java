package kotlinx.coroutines;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes6.dex */
public abstract class d1 extends e1 implements r0 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final AtomicReferenceFieldUpdater f15895e = AtomicReferenceFieldUpdater.newUpdater(d1.class, Object.class, "_queue");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final AtomicReferenceFieldUpdater f15896f = AtomicReferenceFieldUpdater.newUpdater(d1.class, Object.class, "_delayed");
    private volatile Object _queue = null;
    private volatile Object _delayed = null;
    private volatile int _isCompleted = 0;

    private final class a extends c {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final k<kotlin.v> f15897d;

        /* JADX WARN: Multi-variable type inference failed */
        public a(long j, k<? super kotlin.v> kVar) {
            super(j);
            this.f15897d = kVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f15897d.C(d1.this, kotlin.v.f15822a);
        }

        @Override // kotlinx.coroutines.d1.c
        public String toString() {
            return super.toString() + this.f15897d.toString();
        }
    }

    private static final class b extends c {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Runnable f15899d;

        public b(long j, Runnable runnable) {
            super(j);
            this.f15899d = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f15899d.run();
        }

        @Override // kotlinx.coroutines.d1.c
        public String toString() {
            return super.toString() + this.f15899d.toString();
        }
    }

    public static abstract class c implements Runnable, Comparable<c>, y0, kotlinx.coroutines.internal.d0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Object f15900a;
        private int b = -1;
        public long c;

        public c(long j) {
            this.c = j;
        }

        @Override // kotlinx.coroutines.internal.d0
        public void a(kotlinx.coroutines.internal.c0<?> c0Var) {
            if (!(this.f15900a != g1.f15998a)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            this.f15900a = c0Var;
        }

        @Override // kotlinx.coroutines.internal.d0
        public kotlinx.coroutines.internal.c0<?> c() {
            Object obj = this.f15900a;
            if (!(obj instanceof kotlinx.coroutines.internal.c0)) {
                obj = null;
            }
            return (kotlinx.coroutines.internal.c0) obj;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public int compareTo(c cVar) {
            long j = this.c - cVar.c;
            if (j > 0) {
                return 1;
            }
            return j < 0 ? -1 : 0;
        }

        @Override // kotlinx.coroutines.y0
        public final synchronized void dispose() {
            Object obj = this.f15900a;
            if (obj == g1.f15998a) {
                return;
            }
            if (!(obj instanceof d)) {
                obj = null;
            }
            d dVar = (d) obj;
            if (dVar != null) {
                dVar.g(this);
            }
            this.f15900a = g1.f15998a;
        }

        public final synchronized int e(long j, d dVar, d1 d1Var) {
            if (this.f15900a == g1.f15998a) {
                return 2;
            }
            synchronized (dVar) {
                c cVarB = dVar.b();
                if (d1Var.U()) {
                    return 1;
                }
                if (cVarB == null) {
                    dVar.b = j;
                } else {
                    long j2 = cVarB.c;
                    if (j2 - j < 0) {
                        j = j2;
                    }
                    if (j - dVar.b > 0) {
                        dVar.b = j;
                    }
                }
                long j3 = this.c;
                long j4 = dVar.b;
                if (j3 - j4 < 0) {
                    this.c = j4;
                }
                dVar.a(this);
                return 0;
            }
        }

        public final boolean g(long j) {
            return j - this.c >= 0;
        }

        @Override // kotlinx.coroutines.internal.d0
        public int h() {
            return this.b;
        }

        @Override // kotlinx.coroutines.internal.d0
        public void setIndex(int i) {
            this.b = i;
        }

        public String toString() {
            return "Delayed[nanos=" + this.c + ']';
        }
    }

    public static final class d extends kotlinx.coroutines.internal.c0<c> {
        public long b;

        public d(long j) {
            this.b = j;
        }
    }

    private final void Q() {
        if (l0.a() && !U()) {
            throw new AssertionError();
        }
        while (true) {
            Object obj = this._queue;
            if (obj == null) {
                if (f15895e.compareAndSet(this, null, g1.b)) {
                    return;
                }
            } else if (obj instanceof kotlinx.coroutines.internal.q) {
                ((kotlinx.coroutines.internal.q) obj).d();
                return;
            } else {
                if (obj == g1.b) {
                    return;
                }
                kotlinx.coroutines.internal.q qVar = new kotlinx.coroutines.internal.q(8, true);
                Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.Runnable /* = java.lang.Runnable */");
                qVar.a((Runnable) obj);
                if (f15895e.compareAndSet(this, obj, qVar)) {
                    return;
                }
            }
        }
    }

    private final Runnable R() {
        while (true) {
            Object obj = this._queue;
            if (obj == null) {
                return null;
            }
            if (obj instanceof kotlinx.coroutines.internal.q) {
                Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.Queue<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> /* = kotlinx.coroutines.internal.LockFreeTaskQueueCore<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> */");
                kotlinx.coroutines.internal.q qVar = (kotlinx.coroutines.internal.q) obj;
                Object objJ = qVar.j();
                if (objJ != kotlinx.coroutines.internal.q.f16031g) {
                    return (Runnable) objJ;
                }
                f15895e.compareAndSet(this, obj, qVar.i());
            } else {
                if (obj == g1.b) {
                    return null;
                }
                if (f15895e.compareAndSet(this, obj, null)) {
                    Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.Runnable /* = java.lang.Runnable */");
                    return (Runnable) obj;
                }
            }
        }
    }

    private final boolean T(Runnable runnable) {
        while (true) {
            Object obj = this._queue;
            if (U()) {
                return false;
            }
            if (obj == null) {
                if (f15895e.compareAndSet(this, null, runnable)) {
                    return true;
                }
            } else if (obj instanceof kotlinx.coroutines.internal.q) {
                Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.Queue<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> /* = kotlinx.coroutines.internal.LockFreeTaskQueueCore<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> */");
                kotlinx.coroutines.internal.q qVar = (kotlinx.coroutines.internal.q) obj;
                int iA = qVar.a(runnable);
                if (iA == 0) {
                    return true;
                }
                if (iA == 1) {
                    f15895e.compareAndSet(this, obj, qVar.i());
                } else if (iA == 2) {
                    return false;
                }
            } else {
                if (obj == g1.b) {
                    return false;
                }
                kotlinx.coroutines.internal.q qVar2 = new kotlinx.coroutines.internal.q(8, true);
                Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.Runnable /* = java.lang.Runnable */");
                qVar2.a((Runnable) obj);
                qVar2.a(runnable);
                if (f15895e.compareAndSet(this, obj, qVar2)) {
                    return true;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v0, types: [boolean, int] */
    public final boolean U() {
        return this._isCompleted;
    }

    private final void X() {
        c cVarI;
        t2 t2VarA = u2.a();
        long jNanoTime = t2VarA != null ? t2VarA.nanoTime() : System.nanoTime();
        while (true) {
            d dVar = (d) this._delayed;
            if (dVar == null || (cVarI = dVar.i()) == null) {
                return;
            } else {
                N(jNanoTime, cVarI);
            }
        }
    }

    private final int a0(long j, c cVar) {
        if (U()) {
            return 1;
        }
        d dVar = (d) this._delayed;
        if (dVar == null) {
            f15896f.compareAndSet(this, null, new d(j));
            Object obj = this._delayed;
            kotlin.jvm.internal.r.c(obj);
            dVar = (d) obj;
        }
        return cVar.e(j, dVar, this);
    }

    private final void c0(boolean z) {
        this._isCompleted = z ? 1 : 0;
    }

    private final boolean d0(c cVar) {
        d dVar = (d) this._delayed;
        return (dVar != null ? dVar.e() : null) == cVar;
    }

    @Override // kotlinx.coroutines.c1
    protected long E() {
        c cVarE;
        if (super.E() == 0) {
            return 0L;
        }
        Object obj = this._queue;
        if (obj != null) {
            if (!(obj instanceof kotlinx.coroutines.internal.q)) {
                return obj == g1.b ? Long.MAX_VALUE : 0L;
            }
            if (!((kotlinx.coroutines.internal.q) obj).g()) {
                return 0L;
            }
        }
        d dVar = (d) this._delayed;
        if (dVar == null || (cVarE = dVar.e()) == null) {
            return Long.MAX_VALUE;
        }
        long j = cVarE.c;
        t2 t2VarA = u2.a();
        return kotlin.ranges.f.c(j - (t2VarA != null ? t2VarA.nanoTime() : System.nanoTime()), 0L);
    }

    public final void S(Runnable runnable) {
        if (T(runnable)) {
            O();
        } else {
            n0.f16058h.S(runnable);
        }
    }

    protected boolean V() {
        if (!K()) {
            return false;
        }
        d dVar = (d) this._delayed;
        if (dVar != null && !dVar.d()) {
            return false;
        }
        Object obj = this._queue;
        if (obj != null) {
            if (obj instanceof kotlinx.coroutines.internal.q) {
                return ((kotlinx.coroutines.internal.q) obj).g();
            }
            if (obj != g1.b) {
                return false;
            }
        }
        return true;
    }

    public long W() {
        c cVarH;
        if (L()) {
            return 0L;
        }
        d dVar = (d) this._delayed;
        if (dVar != null && !dVar.d()) {
            t2 t2VarA = u2.a();
            long jNanoTime = t2VarA != null ? t2VarA.nanoTime() : System.nanoTime();
            do {
                synchronized (dVar) {
                    c cVarB = dVar.b();
                    cVarH = null;
                    if (cVarB != null) {
                        c cVar = cVarB;
                        cVarH = cVar.g(jNanoTime) ? T(cVar) : false ? dVar.h(0) : null;
                    }
                }
            } while (cVarH != null);
        }
        Runnable runnableR = R();
        if (runnableR == null) {
            return E();
        }
        runnableR.run();
        return 0L;
    }

    protected final void Y() {
        this._queue = null;
        this._delayed = null;
    }

    public final void Z(long j, c cVar) {
        int iA0 = a0(j, cVar);
        if (iA0 == 0) {
            if (d0(cVar)) {
                O();
            }
        } else if (iA0 == 1) {
            N(j, cVar);
        } else if (iA0 != 2) {
            throw new IllegalStateException("unexpected result".toString());
        }
    }

    protected final y0 b0(long j, Runnable runnable) {
        long jD = g1.d(j);
        if (jD >= 4611686018427387903L) {
            return f2.f15920a;
        }
        t2 t2VarA = u2.a();
        long jNanoTime = t2VarA != null ? t2VarA.nanoTime() : System.nanoTime();
        b bVar = new b(jD + jNanoTime, runnable);
        Z(jNanoTime, bVar);
        return bVar;
    }

    @Override // kotlinx.coroutines.r0
    public void c(long j, k<? super kotlin.v> kVar) {
        long jD = g1.d(j);
        if (jD < 4611686018427387903L) {
            t2 t2VarA = u2.a();
            long jNanoTime = t2VarA != null ? t2VarA.nanoTime() : System.nanoTime();
            a aVar = new a(jD + jNanoTime, kVar);
            n.a(kVar, aVar);
            Z(jNanoTime, aVar);
        }
    }

    @Override // kotlinx.coroutines.r0
    public y0 g(long j, Runnable runnable, CoroutineContext coroutineContext) {
        return r0.a.a(this, j, runnable, coroutineContext);
    }

    @Override // kotlinx.coroutines.c1
    protected void shutdown() {
        r2.b.b();
        c0(true);
        Q();
        while (W() <= 0) {
        }
        X();
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void y(CoroutineContext coroutineContext, Runnable runnable) {
        S(runnable);
    }
}
