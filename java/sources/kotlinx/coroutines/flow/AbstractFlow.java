package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.internal.SafeCollector;

/* JADX WARN: Unexpected interfaces in signature: [java.lang.Object<T>] */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractFlow<T> implements c<T> {
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.c
    public final Object d(d<? super T> dVar, Continuation<? super kotlin.v> continuation) throws Throwable {
        AbstractFlow$collect$1 abstractFlow$collect$1;
        Throwable th;
        SafeCollector safeCollector;
        if (continuation instanceof AbstractFlow$collect$1) {
            abstractFlow$collect$1 = (AbstractFlow$collect$1) continuation;
            int i = abstractFlow$collect$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                abstractFlow$collect$1.label = i - Integer.MIN_VALUE;
            } else {
                abstractFlow$collect$1 = new AbstractFlow$collect$1(this, continuation);
            }
        } else {
            abstractFlow$collect$1 = new AbstractFlow$collect$1(this, continuation);
        }
        Object obj = abstractFlow$collect$1.result;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i2 = abstractFlow$collect$1.label;
        if (i2 != 0) {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            safeCollector = (SafeCollector) abstractFlow$collect$1.L$2;
            try {
                kotlin.k.b(obj);
                safeCollector.releaseIntercepted();
                return kotlin.v.f15822a;
            } catch (Throwable th2) {
                th = th2;
                safeCollector.releaseIntercepted();
                throw th;
            }
        }
        kotlin.k.b(obj);
        SafeCollector safeCollector2 = new SafeCollector(dVar, abstractFlow$collect$1.getContext());
        try {
            abstractFlow$collect$1.L$0 = this;
            abstractFlow$collect$1.L$1 = dVar;
            abstractFlow$collect$1.L$2 = safeCollector2;
            abstractFlow$collect$1.label = 1;
            if (g(safeCollector2, abstractFlow$collect$1) == objD) {
                return objD;
            }
            safeCollector = safeCollector2;
            safeCollector.releaseIntercepted();
            return kotlin.v.f15822a;
        } catch (Throwable th3) {
            th = th3;
            safeCollector = safeCollector2;
            safeCollector.releaseIntercepted();
            throw th;
        }
    }

    public abstract Object g(d<? super T> dVar, Continuation<? super kotlin.v> continuation);
}
