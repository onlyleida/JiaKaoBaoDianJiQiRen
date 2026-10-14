package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.internal.SafeCollector;

/* JADX INFO: loaded from: classes6.dex */
public final class SubscribedFlowCollector<T> implements d<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d<T> f15951a;
    private final Function2<d<? super T>, Continuation<? super kotlin.v>, Object> b;

    /* JADX WARN: Code duplicated, block: B:27:0x0072  */
    /* JADX WARN: Code duplicated, block: B:29:0x0080 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object c(Continuation<? super kotlin.v> continuation) throws Throwable {
        SubscribedFlowCollector$onSubscription$1 subscribedFlowCollector$onSubscription$1;
        SafeCollector safeCollector;
        SubscribedFlowCollector<T> subscribedFlowCollector;
        d<T> dVar;
        if (continuation instanceof SubscribedFlowCollector$onSubscription$1) {
            subscribedFlowCollector$onSubscription$1 = (SubscribedFlowCollector$onSubscription$1) continuation;
            int i = subscribedFlowCollector$onSubscription$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                subscribedFlowCollector$onSubscription$1.label = i - Integer.MIN_VALUE;
            } else {
                subscribedFlowCollector$onSubscription$1 = new SubscribedFlowCollector$onSubscription$1(this, continuation);
            }
        } else {
            subscribedFlowCollector$onSubscription$1 = new SubscribedFlowCollector$onSubscription$1(this, continuation);
        }
        Object obj = subscribedFlowCollector$onSubscription$1.result;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i2 = subscribedFlowCollector$onSubscription$1.label;
        if (i2 == 0) {
            kotlin.k.b(obj);
            SafeCollector safeCollector2 = new SafeCollector(this.f15951a, subscribedFlowCollector$onSubscription$1.getContext());
            try {
                Function2<d<? super T>, Continuation<? super kotlin.v>, Object> function2 = this.b;
                subscribedFlowCollector$onSubscription$1.L$0 = this;
                subscribedFlowCollector$onSubscription$1.L$1 = safeCollector2;
                subscribedFlowCollector$onSubscription$1.label = 1;
                if (function2.invoke(safeCollector2, subscribedFlowCollector$onSubscription$1) == objD) {
                    return objD;
                }
                subscribedFlowCollector = this;
                safeCollector = safeCollector2;
                safeCollector.releaseIntercepted();
                dVar = subscribedFlowCollector.f15951a;
                if (dVar instanceof SubscribedFlowCollector) {
                    subscribedFlowCollector$onSubscription$1.L$0 = subscribedFlowCollector;
                    subscribedFlowCollector$onSubscription$1.L$1 = safeCollector;
                    subscribedFlowCollector$onSubscription$1.label = 2;
                    if (((SubscribedFlowCollector) dVar).c(subscribedFlowCollector$onSubscription$1) == objD) {
                        return objD;
                    }
                }
            } catch (Throwable th) {
                th = th;
                safeCollector = safeCollector2;
                safeCollector.releaseIntercepted();
                throw th;
            }
        } else if (i2 == 1) {
            safeCollector = (SafeCollector) subscribedFlowCollector$onSubscription$1.L$1;
            subscribedFlowCollector = (SubscribedFlowCollector) subscribedFlowCollector$onSubscription$1.L$0;
            try {
                kotlin.k.b(obj);
                safeCollector.releaseIntercepted();
                dVar = subscribedFlowCollector.f15951a;
                if (dVar instanceof SubscribedFlowCollector) {
                    subscribedFlowCollector$onSubscription$1.L$0 = subscribedFlowCollector;
                    subscribedFlowCollector$onSubscription$1.L$1 = safeCollector;
                    subscribedFlowCollector$onSubscription$1.label = 2;
                    if (((SubscribedFlowCollector) dVar).c(subscribedFlowCollector$onSubscription$1) == objD) {
                        return objD;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                safeCollector.releaseIntercepted();
                throw th;
            }
        } else {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
        }
        return kotlin.v.f15822a;
    }

    @Override // kotlinx.coroutines.flow.d
    public Object emit(T t, Continuation<? super kotlin.v> continuation) {
        return this.f15951a.emit(t, continuation);
    }
}
