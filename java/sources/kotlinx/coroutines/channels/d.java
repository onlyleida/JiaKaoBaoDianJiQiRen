package kotlinx.coroutines.channels;

import java.util.concurrent.locks.ReentrantLock;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.internal.OnUndeliveredElementKt;
import kotlinx.coroutines.internal.UndeliveredElementException;
import kotlinx.coroutines.internal.y;
import kotlinx.coroutines.l0;

/* JADX INFO: loaded from: classes6.dex */
public class d<E> extends AbstractChannel<E> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ReentrantLock f15878d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Object[] f15879e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f15880f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f15881g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final BufferOverflow f15882h;
    private volatile int size;

    public d(int i, BufferOverflow bufferOverflow, Function1<? super E, kotlin.v> function1) {
        super(function1);
        this.f15881g = i;
        this.f15882h = bufferOverflow;
        if (!(i >= 1)) {
            throw new IllegalArgumentException(("ArrayChannel capacity must be at least 1, but " + i + " was specified").toString());
        }
        this.f15878d = new ReentrantLock();
        Object[] objArr = new Object[Math.min(i, 8)];
        kotlin.collections.n.j(objArr, a.f15870a, 0, 0, 6, null);
        kotlin.v vVar = kotlin.v.f15822a;
        this.f15879e = objArr;
        this.size = 0;
    }

    private final void c0(int i, E e2) {
        if (i < this.f15881g) {
            d0(i);
            Object[] objArr = this.f15879e;
            objArr[(this.f15880f + i) % objArr.length] = e2;
            return;
        }
        if (l0.a()) {
            if (!(this.f15882h == BufferOverflow.DROP_OLDEST)) {
                throw new AssertionError();
            }
        }
        Object[] objArr2 = this.f15879e;
        int i2 = this.f15880f;
        objArr2[i2 % objArr2.length] = null;
        objArr2[(i + i2) % objArr2.length] = e2;
        this.f15880f = (i2 + 1) % objArr2.length;
    }

    private final void d0(int i) {
        Object[] objArr = this.f15879e;
        if (i >= objArr.length) {
            int iMin = Math.min(objArr.length * 2, this.f15881g);
            Object[] objArr2 = new Object[iMin];
            for (int i2 = 0; i2 < i; i2++) {
                Object[] objArr3 = this.f15879e;
                objArr2[i2] = objArr3[(this.f15880f + i2) % objArr3.length];
            }
            kotlin.collections.n.i(objArr2, a.f15870a, i, iMin);
            this.f15879e = objArr2;
            this.f15880f = 0;
        }
    }

    private final y e0(int i) {
        if (i < this.f15881g) {
            this.size = i + 1;
            return null;
        }
        int i2 = c.f15877a[this.f15882h.ordinal()];
        if (i2 == 1) {
            return a.c;
        }
        if (i2 == 2) {
            return a.b;
        }
        if (i2 == 3) {
            return null;
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel
    protected boolean N(o<? super E> oVar) {
        ReentrantLock reentrantLock = this.f15878d;
        reentrantLock.lock();
        try {
            return super.N(oVar);
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel
    protected final boolean P() {
        return false;
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel
    protected final boolean Q() {
        return this.size == 0;
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel
    protected void S(boolean z) {
        Function1<E, kotlin.v> function1 = this.b;
        ReentrantLock reentrantLock = this.f15878d;
        reentrantLock.lock();
        try {
            int i = this.size;
            UndeliveredElementException undeliveredElementExceptionC = null;
            for (int i2 = 0; i2 < i; i2++) {
                Object obj = this.f15879e[this.f15880f];
                if (function1 != null && obj != a.f15870a) {
                    undeliveredElementExceptionC = OnUndeliveredElementKt.c(function1, obj, undeliveredElementExceptionC);
                }
                Object[] objArr = this.f15879e;
                int i3 = this.f15880f;
                objArr[i3] = a.f15870a;
                this.f15880f = (i3 + 1) % objArr.length;
            }
            this.size = 0;
            kotlin.v vVar = kotlin.v.f15822a;
            reentrantLock.unlock();
            super.S(z);
            if (undeliveredElementExceptionC != null) {
                throw undeliveredElementExceptionC;
            }
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel
    protected Object V() {
        ReentrantLock reentrantLock = this.f15878d;
        reentrantLock.lock();
        try {
            int i = this.size;
            if (i == 0) {
                Object objH = h();
                if (objH == null) {
                    objH = a.f15871d;
                }
                reentrantLock.unlock();
                return objH;
            }
            Object[] objArr = this.f15879e;
            int i2 = this.f15880f;
            Object obj = objArr[i2];
            s sVar = null;
            objArr[i2] = null;
            this.size = i - 1;
            Object objS = a.f15871d;
            boolean z = false;
            if (i == this.f15881g) {
                s sVar2 = null;
                while (true) {
                    s sVarE = E();
                    if (sVarE == null) {
                        sVar = sVar2;
                        break;
                    }
                    kotlin.jvm.internal.r.c(sVarE);
                    y yVarU = sVarE.U(null);
                    if (yVarU != null) {
                        if (l0.a()) {
                            if (!(yVarU == kotlinx.coroutines.m.f16053a)) {
                                throw new AssertionError();
                            }
                        }
                        kotlin.jvm.internal.r.c(sVarE);
                        objS = sVarE.S();
                        sVar = sVarE;
                        z = true;
                        break;
                    }
                    kotlin.jvm.internal.r.c(sVarE);
                    sVarE.V();
                    sVar2 = sVarE;
                }
            }
            if (objS != a.f15871d && !(objS instanceof j)) {
                this.size = i;
                Object[] objArr2 = this.f15879e;
                objArr2[(this.f15880f + i) % objArr2.length] = objS;
            }
            this.f15880f = (this.f15880f + 1) % this.f15879e.length;
            kotlin.v vVar = kotlin.v.f15822a;
            reentrantLock.unlock();
            if (z) {
                kotlin.jvm.internal.r.c(sVar);
                sVar.R();
            }
            return obj;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel
    protected Object W(kotlinx.coroutines.selects.f<?> fVar) {
        boolean z;
        ReentrantLock reentrantLock = this.f15878d;
        reentrantLock.lock();
        try {
            int i = this.size;
            if (i == 0) {
                Object objH = h();
                if (objH == null) {
                    objH = a.f15871d;
                }
                reentrantLock.unlock();
                return objH;
            }
            Object[] objArr = this.f15879e;
            int i2 = this.f15880f;
            Object obj = objArr[i2];
            s sVarO = null;
            objArr[i2] = null;
            this.size = i - 1;
            Object objS = a.f15871d;
            if (i == this.f15881g) {
                while (true) {
                    AbstractChannel.g<E> gVarL = L();
                    Object objQ = fVar.q(gVarL);
                    if (objQ == null) {
                        sVarO = gVarL.o();
                        kotlin.jvm.internal.r.c(sVarO);
                        objS = sVarO.S();
                    } else if (objQ == a.f15871d) {
                        z = false;
                    } else if (objQ != kotlinx.coroutines.internal.c.b) {
                        if (objQ == kotlinx.coroutines.selects.g.d()) {
                            this.size = i;
                            this.f15879e[this.f15880f] = obj;
                            reentrantLock.unlock();
                            return objQ;
                        }
                        if (!(objQ instanceof j)) {
                            throw new IllegalStateException(("performAtomicTrySelect(describeTryOffer) returned " + objQ).toString());
                        }
                        sVarO = (s) objQ;
                        objS = objQ;
                    }
                    z = true;
                }
            } else {
                z = false;
            }
            if (objS != a.f15871d && !(objS instanceof j)) {
                this.size = i;
                Object[] objArr2 = this.f15879e;
                objArr2[(this.f15880f + i) % objArr2.length] = objS;
            } else if (!fVar.j()) {
                this.size = i;
                this.f15879e[this.f15880f] = obj;
                Object objD = kotlinx.coroutines.selects.g.d();
                reentrantLock.unlock();
                return objD;
            }
            this.f15880f = (this.f15880f + 1) % this.f15879e.length;
            kotlin.v vVar = kotlin.v.f15822a;
            reentrantLock.unlock();
            if (z) {
                kotlin.jvm.internal.r.c(sVarO);
                sVarO.R();
            }
            return obj;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override // kotlinx.coroutines.channels.b
    protected Object d(s sVar) {
        ReentrantLock reentrantLock = this.f15878d;
        reentrantLock.lock();
        try {
            return super.d(sVar);
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.b
    protected String e() {
        return "(buffer:capacity=" + this.f15881g + ",size=" + this.size + ')';
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel, kotlinx.coroutines.channels.p
    public boolean g() {
        ReentrantLock reentrantLock = this.f15878d;
        reentrantLock.lock();
        try {
            return super.g();
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.b
    protected final boolean q() {
        return false;
    }

    @Override // kotlinx.coroutines.channels.b
    protected final boolean r() {
        return this.size == this.f15881g && this.f15882h == BufferOverflow.SUSPEND;
    }

    @Override // kotlinx.coroutines.channels.b
    protected Object u(E e2) {
        ReentrantLock reentrantLock = this.f15878d;
        reentrantLock.lock();
        try {
            int i = this.size;
            j<?> jVarH = h();
            if (jVarH != null) {
                reentrantLock.unlock();
                return jVarH;
            }
            y yVarE0 = e0(i);
            if (yVarE0 != null) {
                reentrantLock.unlock();
                return yVarE0;
            }
            if (i == 0) {
                while (true) {
                    q<E> qVarC = C();
                    if (qVarC == null) {
                        break;
                    }
                    if (qVarC instanceof j) {
                        this.size = i;
                        kotlin.jvm.internal.r.c(qVarC);
                        reentrantLock.unlock();
                        return qVarC;
                    }
                    kotlin.jvm.internal.r.c(qVarC);
                    y yVarS = qVarC.s(e2, null);
                    if (yVarS != null) {
                        if (l0.a()) {
                            if (!(yVarS == kotlinx.coroutines.m.f16053a)) {
                                throw new AssertionError();
                            }
                        }
                        this.size = i;
                        kotlin.v vVar = kotlin.v.f15822a;
                        reentrantLock.unlock();
                        kotlin.jvm.internal.r.c(qVarC);
                        qVarC.g(e2);
                        kotlin.jvm.internal.r.c(qVarC);
                        return qVarC.a();
                    }
                }
            }
            c0(i, e2);
            y yVar = a.b;
            reentrantLock.unlock();
            return yVar;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }
}
