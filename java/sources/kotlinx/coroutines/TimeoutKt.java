package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes6.dex */
public final class TimeoutKt {
    public static final TimeoutCancellationException a(long j, t1 t1Var) {
        return new TimeoutCancellationException("Timed out waiting for " + j + " ms", t1Var);
    }

    private static final <U, T extends U> Object b(v2<U, ? super T> v2Var, Function2<? super i0, ? super Continuation<? super T>, ? extends Object> function2) {
        w1.f(v2Var, s0.b(v2Var.f16039d.getContext()).g(v2Var.f16123e, v2Var, v2Var.getContext()));
        return kotlinx.coroutines.a3.b.f(v2Var, v2Var, function2);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, kotlinx.coroutines.v2] */
    public static final <T> Object c(long j, Function2<? super i0, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super T> continuation) throws Throwable {
        TimeoutKt$withTimeoutOrNull$1 timeoutKt$withTimeoutOrNull$1;
        Ref$ObjectRef ref$ObjectRef;
        if (continuation instanceof TimeoutKt$withTimeoutOrNull$1) {
            timeoutKt$withTimeoutOrNull$1 = (TimeoutKt$withTimeoutOrNull$1) continuation;
            int i = timeoutKt$withTimeoutOrNull$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                timeoutKt$withTimeoutOrNull$1.label = i - Integer.MIN_VALUE;
            } else {
                timeoutKt$withTimeoutOrNull$1 = new TimeoutKt$withTimeoutOrNull$1(continuation);
            }
        } else {
            timeoutKt$withTimeoutOrNull$1 = new TimeoutKt$withTimeoutOrNull$1(continuation);
        }
        Object obj = timeoutKt$withTimeoutOrNull$1.result;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i2 = timeoutKt$withTimeoutOrNull$1.label;
        if (i2 == 0) {
            kotlin.k.b(obj);
            if (j <= 0) {
                return null;
            }
            Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
            ref$ObjectRef2.element = null;
            try {
                timeoutKt$withTimeoutOrNull$1.J$0 = j;
                timeoutKt$withTimeoutOrNull$1.L$0 = function2;
                timeoutKt$withTimeoutOrNull$1.L$1 = ref$ObjectRef2;
                timeoutKt$withTimeoutOrNull$1.label = 1;
                ?? r2 = (T) new v2(j, timeoutKt$withTimeoutOrNull$1);
                ref$ObjectRef2.element = r2;
                Object objB = b(r2, function2);
                if (objB == kotlin.coroutines.intrinsics.b.d()) {
                    kotlin.coroutines.jvm.internal.f.c(timeoutKt$withTimeoutOrNull$1);
                }
                return objB == objD ? objD : objB;
            } catch (TimeoutCancellationException e2) {
                e = e2;
                ref$ObjectRef = ref$ObjectRef2;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ref$ObjectRef = (Ref$ObjectRef) timeoutKt$withTimeoutOrNull$1.L$1;
            long j2 = timeoutKt$withTimeoutOrNull$1.J$0;
            try {
                kotlin.k.b(obj);
                return obj;
            } catch (TimeoutCancellationException e3) {
                e = e3;
            }
        }
        if (e.coroutine == ((v2) ref$ObjectRef.element)) {
            return null;
        }
        throw e;
    }
}
