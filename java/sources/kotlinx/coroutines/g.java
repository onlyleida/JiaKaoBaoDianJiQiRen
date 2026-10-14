package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.internal.ThreadContextKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class g {
    public static final t1 a(i0 i0Var, CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2<? super i0, ? super Continuation<? super kotlin.v>, ? extends Object> function2) {
        CoroutineContext coroutineContextC = d0.c(i0Var, coroutineContext);
        a c2Var = coroutineStart.isLazy() ? new c2(coroutineContextC, function2) : new n2(coroutineContextC, true);
        c2Var.W0(coroutineStart, c2Var, function2);
        return c2Var;
    }

    public static /* synthetic */ t1 b(i0 i0Var, CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        if ((i & 2) != 0) {
            coroutineStart = CoroutineStart.DEFAULT;
        }
        return f.a(i0Var, coroutineContext, coroutineStart, function2);
    }

    public static final <T> Object c(CoroutineContext coroutineContext, Function2<? super i0, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super T> continuation) {
        Object objY0;
        CoroutineContext context = continuation.getContext();
        CoroutineContext coroutineContextPlus = context.plus(coroutineContext);
        z2.a(coroutineContextPlus);
        if (coroutineContextPlus == context) {
            kotlinx.coroutines.internal.w wVar = new kotlinx.coroutines.internal.w(coroutineContextPlus, continuation);
            objY0 = kotlinx.coroutines.a3.b.e(wVar, wVar, function2);
        } else {
            ContinuationInterceptor.b bVar = ContinuationInterceptor.L;
            if (kotlin.jvm.internal.r.a((ContinuationInterceptor) coroutineContextPlus.get(bVar), (ContinuationInterceptor) context.get(bVar))) {
                x2 x2Var = new x2(coroutineContextPlus, continuation);
                Object objC = ThreadContextKt.c(coroutineContextPlus, null);
                try {
                    Object objE = kotlinx.coroutines.a3.b.e(x2Var, x2Var, function2);
                    ThreadContextKt.a(coroutineContextPlus, objC);
                    objY0 = objE;
                } catch (Throwable th) {
                    ThreadContextKt.a(coroutineContextPlus, objC);
                    throw th;
                }
            } else {
                t0 t0Var = new t0(coroutineContextPlus, continuation);
                t0Var.S0();
                kotlinx.coroutines.a3.a.d(function2, t0Var, t0Var, null, 4, null);
                objY0 = t0Var.Y0();
            }
        }
        if (objY0 == kotlin.coroutines.intrinsics.b.d()) {
            kotlin.coroutines.jvm.internal.f.c(continuation);
        }
        return objY0;
    }
}
