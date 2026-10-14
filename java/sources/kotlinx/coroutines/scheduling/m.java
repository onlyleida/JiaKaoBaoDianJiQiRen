package kotlinx.coroutines.scheduling;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlinx.coroutines.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class m {
    private static final AtomicReferenceFieldUpdater b = AtomicReferenceFieldUpdater.newUpdater(m.class, Object.class, "lastScheduledTask");
    private static final AtomicIntegerFieldUpdater c = AtomicIntegerFieldUpdater.newUpdater(m.class, "producerIndex");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final AtomicIntegerFieldUpdater f16098d = AtomicIntegerFieldUpdater.newUpdater(m.class, "consumerIndex");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final AtomicIntegerFieldUpdater f16099e = AtomicIntegerFieldUpdater.newUpdater(m.class, "blockingTasksInBuffer");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicReferenceArray<h> f16100a = new AtomicReferenceArray<>(128);
    private volatile Object lastScheduledTask = null;
    private volatile int producerIndex = 0;
    private volatile int consumerIndex = 0;
    private volatile int blockingTasksInBuffer = 0;

    public static /* synthetic */ h b(m mVar, h hVar, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return mVar.a(hVar, z);
    }

    private final h c(h hVar) {
        if (hVar.b.l() == 1) {
            f16099e.incrementAndGet(this);
        }
        if (e() == 127) {
            return hVar;
        }
        int i = this.producerIndex & 127;
        while (this.f16100a.get(i) != null) {
            Thread.yield();
        }
        this.f16100a.lazySet(i, hVar);
        c.incrementAndGet(this);
        return null;
    }

    private final void d(h hVar) {
        if (hVar != null) {
            if (hVar.b.l() == 1) {
                int iDecrementAndGet = f16099e.decrementAndGet(this);
                if (l0.a()) {
                    if (!(iDecrementAndGet >= 0)) {
                        throw new AssertionError();
                    }
                }
            }
        }
    }

    private final h i() {
        h andSet;
        while (true) {
            int i = this.consumerIndex;
            if (i - this.producerIndex == 0) {
                return null;
            }
            int i2 = i & 127;
            if (f16098d.compareAndSet(this, i, i + 1) && (andSet = this.f16100a.getAndSet(i2, null)) != null) {
                d(andSet);
                return andSet;
            }
        }
    }

    private final boolean j(d dVar) {
        h hVarI = i();
        if (hVarI == null) {
            return false;
        }
        dVar.a(hVarI);
        return true;
    }

    private final long m(m mVar, boolean z) {
        h hVar;
        do {
            hVar = (h) mVar.lastScheduledTask;
            if (hVar == null) {
                return -2L;
            }
            if (z) {
                if (!(hVar.b.l() == 1)) {
                    return -2L;
                }
            }
            long jA = k.f16097e.a() - hVar.f16094a;
            long j = k.f16095a;
            if (jA < j) {
                return j - jA;
            }
        } while (!b.compareAndSet(mVar, hVar, null));
        b(this, hVar, false, 2, null);
        return -1L;
    }

    public final h a(h hVar, boolean z) {
        if (z) {
            return c(hVar);
        }
        h hVar2 = (h) b.getAndSet(this, hVar);
        if (hVar2 != null) {
            return c(hVar2);
        }
        return null;
    }

    public final int e() {
        return this.producerIndex - this.consumerIndex;
    }

    public final int f() {
        return this.lastScheduledTask != null ? e() + 1 : e();
    }

    public final void g(d dVar) {
        h hVar = (h) b.getAndSet(this, null);
        if (hVar != null) {
            dVar.a(hVar);
        }
        while (j(dVar)) {
        }
    }

    public final h h() {
        h hVar = (h) b.getAndSet(this, null);
        return hVar != null ? hVar : i();
    }

    public final long k(m mVar) {
        if (l0.a()) {
            if (!(e() == 0)) {
                throw new AssertionError();
            }
        }
        int i = mVar.producerIndex;
        AtomicReferenceArray<h> atomicReferenceArray = mVar.f16100a;
        for (int i2 = mVar.consumerIndex; i2 != i; i2++) {
            int i3 = i2 & 127;
            if (mVar.blockingTasksInBuffer == 0) {
                break;
            }
            h hVar = atomicReferenceArray.get(i3);
            if (hVar != null) {
                if ((hVar.b.l() == 1) && atomicReferenceArray.compareAndSet(i3, hVar, null)) {
                    f16099e.decrementAndGet(mVar);
                    b(this, hVar, false, 2, null);
                    return -1L;
                }
            }
        }
        return m(mVar, true);
    }

    public final long l(m mVar) {
        if (l0.a()) {
            if (!(e() == 0)) {
                throw new AssertionError();
            }
        }
        h hVarI = mVar.i();
        if (hVarI == null) {
            return m(mVar, false);
        }
        h hVarB = b(this, hVarI, false, 2, null);
        if (!l0.a()) {
            return -1L;
        }
        if (hVarB == null) {
            return -1L;
        }
        throw new AssertionError();
    }
}
