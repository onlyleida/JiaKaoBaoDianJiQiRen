package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes6.dex */
class q0<T> extends a<T> implements p0<T>, kotlinx.coroutines.selects.d<T> {
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    static /* synthetic */ Object X0(q0 q0Var, Continuation continuation) throws Throwable {
        DeferredCoroutine$await$1 deferredCoroutine$await$1;
        if (continuation instanceof DeferredCoroutine$await$1) {
            deferredCoroutine$await$1 = (DeferredCoroutine$await$1) continuation;
            int i = deferredCoroutine$await$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                deferredCoroutine$await$1.label = i - Integer.MIN_VALUE;
            } else {
                deferredCoroutine$await$1 = new DeferredCoroutine$await$1(q0Var, continuation);
            }
        } else {
            deferredCoroutine$await$1 = new DeferredCoroutine$await$1(q0Var, continuation);
        }
        Object objP = deferredCoroutine$await$1.result;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i2 = deferredCoroutine$await$1.label;
        if (i2 == 0) {
            kotlin.k.b(objP);
            deferredCoroutine$await$1.L$0 = q0Var;
            deferredCoroutine$await$1.label = 1;
            objP = q0Var.P(deferredCoroutine$await$1);
            if (objP == objD) {
                return objD;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(objP);
        }
        return objP;
    }

    @Override // kotlinx.coroutines.p0
    public T d() {
        return (T) d0();
    }

    @Override // kotlinx.coroutines.selects.d
    public <R> void f(kotlinx.coroutines.selects.f<? super R> fVar, Function2<? super T, ? super Continuation<? super R>, ? extends Object> function2) {
        D0(fVar, function2);
    }
}
