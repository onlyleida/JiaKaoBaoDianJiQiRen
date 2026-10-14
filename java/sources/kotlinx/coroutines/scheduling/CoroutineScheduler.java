package kotlinx.coroutines.scheduling;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.LockSupport;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.random.Random;
import kotlin.v;
import kotlinx.coroutines.internal.y;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.m0;
import kotlinx.coroutines.t2;
import kotlinx.coroutines.u2;

/* JADX INFO: loaded from: classes6.dex */
public final class CoroutineScheduler implements Executor, Closeable {
    private volatile int _isTerminated;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d f16071a;
    public final d b;
    public final AtomicReferenceArray<a> c;
    volatile long controlState;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f16072d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f16073e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f16074f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f16075g;
    private volatile long parkedWorkersStack;
    public static final y k = new y("NOT_IN_STACK");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final AtomicLongFieldUpdater f16070h = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "parkedWorkersStack");
    static final AtomicLongFieldUpdater i = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "controlState");
    private static final AtomicIntegerFieldUpdater j = AtomicIntegerFieldUpdater.newUpdater(CoroutineScheduler.class, "_isTerminated");

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;", "", "<init>", "(Ljava/lang/String;I)V", "CPU_ACQUIRED", "BLOCKING", "PARKING", "DORMANT", "TERMINATED", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15})
    public enum WorkerState {
        CPU_ACQUIRED,
        BLOCKING,
        PARKING,
        DORMANT,
        TERMINATED
    }

    public CoroutineScheduler(int i2, int i3, long j2, String str) {
        this.f16072d = i2;
        this.f16073e = i3;
        this.f16074f = j2;
        this.f16075g = str;
        if (!(i2 >= 1)) {
            throw new IllegalArgumentException(("Core pool size " + i2 + " should be at least 1").toString());
        }
        if (!(i3 >= i2)) {
            throw new IllegalArgumentException(("Max pool size " + i3 + " should be greater than or equals to core pool size " + i2).toString());
        }
        if (!(i3 <= 2097150)) {
            throw new IllegalArgumentException(("Max pool size " + i3 + " should not exceed maximal supported number of threads 2097150").toString());
        }
        if (!(j2 > 0)) {
            throw new IllegalArgumentException(("Idle worker keep alive time " + j2 + " must be positive").toString());
        }
        this.f16071a = new d();
        this.b = new d();
        this.parkedWorkersStack = 0L;
        this.c = new AtomicReferenceArray<>(i3 + 1);
        this.controlState = ((long) i2) << 42;
        this._isTerminated = 0;
    }

    private final boolean A() {
        a aVarK;
        do {
            aVarK = k();
            if (aVarK == null) {
                return false;
            }
        } while (!a.f16076h.compareAndSet(aVarK, -1, 0));
        LockSupport.unpark(aVarK);
        return true;
    }

    private final boolean b(h hVar) {
        return hVar.b.l() == 1 ? this.b.a(hVar) : this.f16071a.a(hVar);
    }

    private final int c() {
        synchronized (this.c) {
            if (isTerminated()) {
                return -1;
            }
            long j2 = this.controlState;
            int i2 = (int) (j2 & 2097151);
            int iB = kotlin.ranges.f.b(i2 - ((int) ((j2 & 4398044413952L) >> 21)), 0);
            if (iB >= this.f16072d) {
                return 0;
            }
            if (i2 >= this.f16073e) {
                return 0;
            }
            int i3 = ((int) (this.controlState & 2097151)) + 1;
            if (!(i3 > 0 && this.c.get(i3) == null)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            a aVar = new a(this, i3);
            this.c.set(i3, aVar);
            if (!(i3 == ((int) (2097151 & i.incrementAndGet(this))))) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            aVar.start();
            return iB + 1;
        }
    }

    private final a e() {
        Thread threadCurrentThread = Thread.currentThread();
        if (!(threadCurrentThread instanceof a)) {
            threadCurrentThread = null;
        }
        a aVar = (a) threadCurrentThread;
        if (aVar == null || !r.a(CoroutineScheduler.this, this)) {
            return null;
        }
        return aVar;
    }

    public static /* synthetic */ void h(CoroutineScheduler coroutineScheduler, Runnable runnable, i iVar, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            iVar = g.b;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        coroutineScheduler.g(runnable, iVar, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int i() {
        return (int) (this.controlState & 2097151);
    }

    private final int j(a aVar) {
        Object objG = aVar.g();
        while (objG != k) {
            if (objG == null) {
                return 0;
            }
            a aVar2 = (a) objG;
            int iF = aVar2.f();
            if (iF != 0) {
                return iF;
            }
            objG = aVar2.g();
        }
        return -1;
    }

    private final a k() {
        while (true) {
            long j2 = this.parkedWorkersStack;
            a aVar = this.c.get((int) (2097151 & j2));
            if (aVar == null) {
                return null;
            }
            long j3 = (PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE + j2) & (-2097152);
            int iJ = j(aVar);
            if (iJ >= 0 && f16070h.compareAndSet(this, j2, ((long) iJ) | j3)) {
                aVar.o(k);
                return aVar;
            }
        }
    }

    private final void s(boolean z) {
        long jAddAndGet = i.addAndGet(this, PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE);
        if (z || A() || y(jAddAndGet)) {
            return;
        }
        A();
    }

    private final h x(a aVar, h hVar, boolean z) {
        if (aVar == null || aVar.b == WorkerState.TERMINATED) {
            return hVar;
        }
        if (hVar.b.l() == 0 && aVar.b == WorkerState.BLOCKING) {
            return hVar;
        }
        aVar.f16080f = true;
        return aVar.f16077a.a(hVar, z);
    }

    private final boolean y(long j2) {
        if (kotlin.ranges.f.b(((int) (2097151 & j2)) - ((int) ((j2 & 4398044413952L) >> 21)), 0) < this.f16072d) {
            int iC = c();
            if (iC == 1 && this.f16072d > 1) {
                c();
            }
            if (iC > 0) {
                return true;
            }
        }
        return false;
    }

    static /* synthetic */ boolean z(CoroutineScheduler coroutineScheduler, long j2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            j2 = coroutineScheduler.controlState;
        }
        return coroutineScheduler.y(j2);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws InterruptedException {
        q(10000L);
    }

    public final h d(Runnable runnable, i iVar) {
        long jA = k.f16097e.a();
        if (!(runnable instanceof h)) {
            return new j(runnable, jA, iVar);
        }
        h hVar = (h) runnable;
        hVar.f16094a = jA;
        hVar.b = iVar;
        return hVar;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        h(this, runnable, null, false, 6, null);
    }

    public final void g(Runnable runnable, i iVar, boolean z) {
        t2 t2VarA = u2.a();
        if (t2VarA != null) {
            t2VarA.e();
        }
        h hVarD = d(runnable, iVar);
        a aVarE = e();
        h hVarX = x(aVarE, hVarD, z);
        if (hVarX != null && !b(hVarX)) {
            throw new RejectedExecutionException(this.f16075g + " was terminated");
        }
        boolean z2 = z && aVarE != null;
        if (hVarD.b.l() != 0) {
            s(z2);
        } else {
            if (z2) {
                return;
            }
            u();
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [boolean, int] */
    public final boolean isTerminated() {
        return this._isTerminated;
    }

    public final boolean l(a aVar) {
        long j2;
        long j3;
        int iF;
        if (aVar.g() != k) {
            return false;
        }
        do {
            j2 = this.parkedWorkersStack;
            int i2 = (int) (2097151 & j2);
            j3 = (PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE + j2) & (-2097152);
            iF = aVar.f();
            if (l0.a()) {
                if (!(iF != 0)) {
                    throw new AssertionError();
                }
            }
            aVar.o(this.c.get(i2));
        } while (!f16070h.compareAndSet(this, j2, ((long) iF) | j3));
        return true;
    }

    public final void n(a aVar, int i2, int i3) {
        while (true) {
            long j2 = this.parkedWorkersStack;
            int iJ = (int) (2097151 & j2);
            long j3 = (PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE + j2) & (-2097152);
            if (iJ == i2) {
                iJ = i3 == 0 ? j(aVar) : i3;
            }
            if (iJ >= 0 && f16070h.compareAndSet(this, j2, j3 | ((long) iJ))) {
                return;
            }
        }
    }

    public final void p(h hVar) {
        t2 t2VarA;
        try {
            hVar.run();
            t2VarA = u2.a();
            if (t2VarA == null) {
                return;
            }
        } catch (Throwable th) {
            try {
                Thread threadCurrentThread = Thread.currentThread();
                threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th);
                t2VarA = u2.a();
                if (t2VarA == null) {
                    return;
                }
            } catch (Throwable th2) {
                t2 t2VarA2 = u2.a();
                if (t2VarA2 != null) {
                    t2VarA2.a();
                }
                throw th2;
            }
        }
        t2VarA.a();
    }

    /* JADX WARN: Code duplicated, block: B:35:0x006e  */
    public final void q(long j2) throws InterruptedException {
        int i2;
        h hVarD;
        if (j.compareAndSet(this, 0, 1)) {
            a aVarE = e();
            synchronized (this.c) {
                i2 = (int) (this.controlState & 2097151);
            }
            if (1 <= i2) {
                int i3 = 1;
                while (true) {
                    a aVar = this.c.get(i3);
                    r.c(aVar);
                    a aVar2 = aVar;
                    if (aVar2 != aVarE) {
                        while (aVar2.isAlive()) {
                            LockSupport.unpark(aVar2);
                            aVar2.join(j2);
                        }
                        WorkerState workerState = aVar2.b;
                        if (l0.a()) {
                            if (!(workerState == WorkerState.TERMINATED)) {
                                throw new AssertionError();
                            }
                        }
                        aVar2.f16077a.g(this.b);
                    }
                    if (i3 == i2) {
                        break;
                    } else {
                        i3++;
                    }
                }
            }
            this.b.b();
            this.f16071a.b();
            while (true) {
                if (aVarE == null) {
                    hVarD = this.f16071a.d();
                } else {
                    hVarD = aVarE.e(true);
                    if (hVarD == null) {
                        hVarD = this.f16071a.d();
                    }
                }
                if (hVarD == null) {
                    hVarD = this.b.d();
                }
                if (hVarD == null) {
                    break;
                } else {
                    p(hVarD);
                }
            }
            if (aVarE != null) {
                aVarE.r(WorkerState.TERMINATED);
            }
            if (l0.a()) {
                if (!(((int) ((this.controlState & 9223367638808264704L) >> 42)) == this.f16072d)) {
                    throw new AssertionError();
                }
            }
            this.parkedWorkersStack = 0L;
            this.controlState = 0L;
        }
    }

    public String toString() {
        ArrayList arrayList = new ArrayList();
        int length = this.c.length();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 1; i7 < length; i7++) {
            a aVar = this.c.get(i7);
            if (aVar != null) {
                int iF = aVar.f16077a.f();
                int i8 = kotlinx.coroutines.scheduling.a.f16082a[aVar.b.ordinal()];
                if (i8 == 1) {
                    i4++;
                } else if (i8 == 2) {
                    i3++;
                    arrayList.add(String.valueOf(iF) + "b");
                } else if (i8 == 3) {
                    i2++;
                    arrayList.add(String.valueOf(iF) + "c");
                } else if (i8 == 4) {
                    i5++;
                    if (iF > 0) {
                        arrayList.add(String.valueOf(iF) + "d");
                    }
                } else if (i8 == 5) {
                    i6++;
                }
            }
        }
        long j2 = this.controlState;
        return this.f16075g + '@' + m0.b(this) + "[Pool Size {core = " + this.f16072d + ", max = " + this.f16073e + "}, Worker States {CPU = " + i2 + ", blocking = " + i3 + ", parked = " + i4 + ", dormant = " + i5 + ", terminated = " + i6 + "}, running workers queues = " + arrayList + ", global CPU queue size = " + this.f16071a.c() + ", global blocking queue size = " + this.b.c() + ", Control State {created workers= " + ((int) (2097151 & j2)) + ", blocking tasks = " + ((int) ((4398044413952L & j2) >> 21)) + ", CPUs acquired = " + (this.f16072d - ((int) ((9223367638808264704L & j2) >> 42))) + "}]";
    }

    public final void u() {
        if (A() || z(this, 0L, 1, null)) {
            return;
        }
        A();
    }

    public final class a extends Thread {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        static final AtomicIntegerFieldUpdater f16076h = AtomicIntegerFieldUpdater.newUpdater(a.class, "workerCtl");

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final m f16077a;
        public WorkerState b;
        private long c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f16078d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f16079e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f16080f;
        private volatile int indexInArray;
        private volatile Object nextParkedWorker;
        volatile int workerCtl;

        private a() {
            setDaemon(true);
            this.f16077a = new m();
            this.b = WorkerState.DORMANT;
            this.workerCtl = 0;
            this.nextParkedWorker = CoroutineScheduler.k;
            this.f16079e = Random.INSTANCE.nextInt();
        }

        private final void a(int i) {
            if (i == 0) {
                return;
            }
            CoroutineScheduler.i.addAndGet(CoroutineScheduler.this, -2097152L);
            WorkerState workerState = this.b;
            if (workerState != WorkerState.TERMINATED) {
                if (l0.a()) {
                    if (!(workerState == WorkerState.BLOCKING)) {
                        throw new AssertionError();
                    }
                }
                this.b = WorkerState.DORMANT;
            }
        }

        private final void b(int i) {
            if (i != 0 && r(WorkerState.BLOCKING)) {
                CoroutineScheduler.this.u();
            }
        }

        private final void c(h hVar) {
            int iL = hVar.b.l();
            h(iL);
            b(iL);
            CoroutineScheduler.this.p(hVar);
            a(iL);
        }

        private final h d(boolean z) {
            h hVarL;
            h hVarL2;
            if (z) {
                boolean z2 = j(CoroutineScheduler.this.f16072d * 2) == 0;
                if (z2 && (hVarL2 = l()) != null) {
                    return hVarL2;
                }
                h hVarH = this.f16077a.h();
                if (hVarH != null) {
                    return hVarH;
                }
                if (!z2 && (hVarL = l()) != null) {
                    return hVarL;
                }
            } else {
                h hVarL3 = l();
                if (hVarL3 != null) {
                    return hVarL3;
                }
            }
            return s(false);
        }

        private final void h(int i) {
            this.c = 0L;
            if (this.b == WorkerState.PARKING) {
                if (l0.a()) {
                    if (!(i == 1)) {
                        throw new AssertionError();
                    }
                }
                this.b = WorkerState.BLOCKING;
            }
        }

        private final boolean i() {
            return this.nextParkedWorker != CoroutineScheduler.k;
        }

        private final void k() {
            if (this.c == 0) {
                this.c = System.nanoTime() + CoroutineScheduler.this.f16074f;
            }
            LockSupport.parkNanos(CoroutineScheduler.this.f16074f);
            if (System.nanoTime() - this.c >= 0) {
                this.c = 0L;
                t();
            }
        }

        private final h l() {
            if (j(2) == 0) {
                h hVarD = CoroutineScheduler.this.f16071a.d();
                return hVarD != null ? hVarD : CoroutineScheduler.this.b.d();
            }
            h hVarD2 = CoroutineScheduler.this.b.d();
            return hVarD2 != null ? hVarD2 : CoroutineScheduler.this.f16071a.d();
        }

        private final void m() {
            loop0: while (true) {
                boolean z = false;
                while (true) {
                    if (CoroutineScheduler.this.isTerminated() || this.b == WorkerState.TERMINATED) {
                        break loop0;
                    }
                    h hVarE = e(this.f16080f);
                    if (hVarE != null) {
                        this.f16078d = 0L;
                        c(hVarE);
                        break;
                    }
                    this.f16080f = false;
                    if (this.f16078d == 0) {
                        q();
                    } else {
                        if (z) {
                            r(WorkerState.PARKING);
                            Thread.interrupted();
                            LockSupport.parkNanos(this.f16078d);
                            this.f16078d = 0L;
                            break;
                        }
                        z = true;
                    }
                }
            }
            r(WorkerState.TERMINATED);
        }

        private final boolean p() {
            boolean z;
            if (this.b != WorkerState.CPU_ACQUIRED) {
                CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
                while (true) {
                    long j = coroutineScheduler.controlState;
                    if (((int) ((9223367638808264704L & j) >> 42)) == 0) {
                        z = false;
                        break;
                    }
                    if (CoroutineScheduler.i.compareAndSet(coroutineScheduler, j, j - 4398046511104L)) {
                        z = true;
                        break;
                    }
                }
                if (!z) {
                    return false;
                }
                this.b = WorkerState.CPU_ACQUIRED;
            }
            return true;
        }

        private final void q() {
            if (!i()) {
                CoroutineScheduler.this.l(this);
                return;
            }
            if (l0.a()) {
                if (!(this.f16077a.f() == 0)) {
                    throw new AssertionError();
                }
            }
            this.workerCtl = -1;
            while (i() && !CoroutineScheduler.this.isTerminated() && this.b != WorkerState.TERMINATED) {
                r(WorkerState.PARKING);
                Thread.interrupted();
                k();
            }
        }

        private final h s(boolean z) {
            if (l0.a()) {
                if (!(this.f16077a.f() == 0)) {
                    throw new AssertionError();
                }
            }
            int i = CoroutineScheduler.this.i();
            if (i < 2) {
                return null;
            }
            int iJ = j(i);
            long jMin = Long.MAX_VALUE;
            for (int i2 = 0; i2 < i; i2++) {
                iJ++;
                if (iJ > i) {
                    iJ = 1;
                }
                a aVar = CoroutineScheduler.this.c.get(iJ);
                if (aVar != null && aVar != this) {
                    if (l0.a()) {
                        if (!(this.f16077a.f() == 0)) {
                            throw new AssertionError();
                        }
                    }
                    long jK = z ? this.f16077a.k(aVar.f16077a) : this.f16077a.l(aVar.f16077a);
                    if (jK == -1) {
                        return this.f16077a.h();
                    }
                    if (jK > 0) {
                        jMin = Math.min(jMin, jK);
                    }
                }
            }
            if (jMin == Long.MAX_VALUE) {
                jMin = 0;
            }
            this.f16078d = jMin;
            return null;
        }

        private final void t() {
            synchronized (CoroutineScheduler.this.c) {
                if (CoroutineScheduler.this.isTerminated()) {
                    return;
                }
                if (CoroutineScheduler.this.i() <= CoroutineScheduler.this.f16072d) {
                    return;
                }
                if (f16076h.compareAndSet(this, -1, 1)) {
                    int i = this.indexInArray;
                    n(0);
                    CoroutineScheduler.this.n(this, i, 0);
                    int andDecrement = (int) (CoroutineScheduler.i.getAndDecrement(CoroutineScheduler.this) & 2097151);
                    if (andDecrement != i) {
                        a aVar = CoroutineScheduler.this.c.get(andDecrement);
                        r.c(aVar);
                        a aVar2 = aVar;
                        CoroutineScheduler.this.c.set(i, aVar2);
                        aVar2.n(i);
                        CoroutineScheduler.this.n(aVar2, andDecrement, i);
                    }
                    CoroutineScheduler.this.c.set(andDecrement, null);
                    v vVar = v.f15822a;
                    this.b = WorkerState.TERMINATED;
                }
            }
        }

        public final h e(boolean z) {
            h hVarD;
            if (p()) {
                return d(z);
            }
            if (!z || (hVarD = this.f16077a.h()) == null) {
                hVarD = CoroutineScheduler.this.b.d();
            }
            return hVarD != null ? hVarD : s(true);
        }

        public final int f() {
            return this.indexInArray;
        }

        public final Object g() {
            return this.nextParkedWorker;
        }

        public final int j(int i) {
            int i2 = this.f16079e;
            int i3 = i2 ^ (i2 << 13);
            int i4 = i3 ^ (i3 >> 17);
            int i5 = i4 ^ (i4 << 5);
            this.f16079e = i5;
            int i6 = i - 1;
            return (i6 & i) == 0 ? i5 & i6 : (i5 & Integer.MAX_VALUE) % i;
        }

        public final void n(int i) {
            StringBuilder sb = new StringBuilder();
            sb.append(CoroutineScheduler.this.f16075g);
            sb.append("-worker-");
            sb.append(i == 0 ? "TERMINATED" : String.valueOf(i));
            setName(sb.toString());
            this.indexInArray = i;
        }

        public final void o(Object obj) {
            this.nextParkedWorker = obj;
        }

        public final boolean r(WorkerState workerState) {
            WorkerState workerState2 = this.b;
            boolean z = workerState2 == WorkerState.CPU_ACQUIRED;
            if (z) {
                CoroutineScheduler.i.addAndGet(CoroutineScheduler.this, 4398046511104L);
            }
            if (workerState2 != workerState) {
                this.b = workerState;
            }
            return z;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            m();
        }

        public a(CoroutineScheduler coroutineScheduler, int i) {
            this();
            n(i);
        }
    }
}
