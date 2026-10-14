package kotlinx.coroutines.channels;

import java.util.concurrent.locks.ReentrantLock;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.internal.OnUndeliveredElementKt;
import kotlinx.coroutines.internal.UndeliveredElementException;
import kotlinx.coroutines.internal.y;
import kotlinx.coroutines.l0;

/* JADX INFO: loaded from: classes6.dex */
public class k<E> extends AbstractChannel<E> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ReentrantLock f15886d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Object f15887e;

    public k(Function1<? super E, kotlin.v> function1) {
        super(function1);
        this.f15886d = new ReentrantLock();
        this.f15887e = a.f15870a;
    }

    private final UndeliveredElementException c0(Object obj) {
        Function1<E, kotlin.v> function1;
        Object obj2 = this.f15887e;
        UndeliveredElementException undeliveredElementExceptionD = null;
        if (obj2 != a.f15870a && (function1 = this.b) != null) {
            undeliveredElementExceptionD = OnUndeliveredElementKt.d(function1, obj2, null, 2, null);
        }
        this.f15887e = obj;
        return undeliveredElementExceptionD;
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel
    protected boolean N(o<? super E> oVar) {
        ReentrantLock reentrantLock = this.f15886d;
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
        return this.f15887e == a.f15870a;
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel
    protected void S(boolean z) {
        ReentrantLock reentrantLock = this.f15886d;
        reentrantLock.lock();
        try {
            UndeliveredElementException undeliveredElementExceptionC0 = c0(a.f15870a);
            kotlin.v vVar = kotlin.v.f15822a;
            reentrantLock.unlock();
            super.S(z);
            if (undeliveredElementExceptionC0 != null) {
                throw undeliveredElementExceptionC0;
            }
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel
    protected Object V() {
        ReentrantLock reentrantLock = this.f15886d;
        reentrantLock.lock();
        try {
            Object obj = this.f15887e;
            y yVar = a.f15870a;
            if (obj != yVar) {
                this.f15887e = yVar;
                kotlin.v vVar = kotlin.v.f15822a;
                return obj;
            }
            Object objH = h();
            if (objH == null) {
                objH = a.f15871d;
            }
            return objH;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel
    protected Object W(kotlinx.coroutines.selects.f<?> fVar) {
        ReentrantLock reentrantLock = this.f15886d;
        reentrantLock.lock();
        try {
            Object obj = this.f15887e;
            y yVar = a.f15870a;
            if (obj == yVar) {
                Object objH = h();
                if (objH == null) {
                    objH = a.f15871d;
                }
                return objH;
            }
            if (!fVar.j()) {
                return kotlinx.coroutines.selects.g.d();
            }
            Object obj2 = this.f15887e;
            this.f15887e = yVar;
            kotlin.v vVar = kotlin.v.f15822a;
            return obj2;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.b
    protected String e() {
        return "(value=" + this.f15887e + ')';
    }

    @Override // kotlinx.coroutines.channels.b
    protected final boolean q() {
        return false;
    }

    @Override // kotlinx.coroutines.channels.b
    protected final boolean r() {
        return false;
    }

    @Override // kotlinx.coroutines.channels.b
    protected Object u(E e2) {
        ReentrantLock reentrantLock = this.f15886d;
        reentrantLock.lock();
        try {
            j<?> jVarH = h();
            if (jVarH != null) {
                reentrantLock.unlock();
                return jVarH;
            }
            if (this.f15887e == a.f15870a) {
                while (true) {
                    q<E> qVarC = C();
                    if (qVarC == null) {
                        break;
                    }
                    if (qVarC instanceof j) {
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
                        kotlin.v vVar = kotlin.v.f15822a;
                        reentrantLock.unlock();
                        kotlin.jvm.internal.r.c(qVarC);
                        qVarC.g(e2);
                        kotlin.jvm.internal.r.c(qVarC);
                        return qVarC.a();
                    }
                }
            }
            UndeliveredElementException undeliveredElementExceptionC0 = c0(e2);
            if (undeliveredElementExceptionC0 != null) {
                throw undeliveredElementExceptionC0;
            }
            y yVar = a.b;
            reentrantLock.unlock();
            return yVar;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }
}
