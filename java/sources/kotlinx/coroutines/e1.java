package kotlinx.coroutines;

import java.util.concurrent.locks.LockSupport;

/* JADX INFO: loaded from: classes6.dex */
public abstract class e1 extends c1 {
    protected abstract Thread M();

    protected final void N(long j, d1.c cVar) {
        if (l0.a()) {
            if (!(this != n0.f16058h)) {
                throw new AssertionError();
            }
        }
        n0.f16058h.Z(j, cVar);
    }

    protected final void O() {
        Thread threadM = M();
        if (Thread.currentThread() != threadM) {
            t2 t2VarA = u2.a();
            if (t2VarA != null) {
                t2VarA.b(threadM);
            } else {
                LockSupport.unpark(threadM);
            }
        }
    }
}
