package kotlinx.coroutines.sync;

import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.q;
import kotlin.k;
import kotlinx.coroutines.internal.b0;

/* JADX INFO: loaded from: classes6.dex */
public final class SemaphoreKt {
    static {
        b0.d("kotlinx.coroutines.semaphore.maxSpinCycles", 100, 0, 0, 12, null);
        b0.d("kotlinx.coroutines.semaphore.segmentSize", 16, 0, 0, 12, null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final <T> Object a(c cVar, Function0<? extends T> function0, Continuation<? super T> continuation) throws Throwable {
        SemaphoreKt$withPermit$1 semaphoreKt$withPermit$1;
        if (continuation instanceof SemaphoreKt$withPermit$1) {
            semaphoreKt$withPermit$1 = (SemaphoreKt$withPermit$1) continuation;
            int i = semaphoreKt$withPermit$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                semaphoreKt$withPermit$1.label = i - Integer.MIN_VALUE;
            } else {
                semaphoreKt$withPermit$1 = new SemaphoreKt$withPermit$1(continuation);
            }
        } else {
            semaphoreKt$withPermit$1 = new SemaphoreKt$withPermit$1(continuation);
        }
        Object obj = semaphoreKt$withPermit$1.result;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i2 = semaphoreKt$withPermit$1.label;
        if (i2 == 0) {
            k.b(obj);
            semaphoreKt$withPermit$1.L$0 = cVar;
            semaphoreKt$withPermit$1.L$1 = function0;
            semaphoreKt$withPermit$1.label = 1;
            if (cVar.a(semaphoreKt$withPermit$1) == objD) {
                return objD;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            function0 = (Function0) semaphoreKt$withPermit$1.L$1;
            cVar = (c) semaphoreKt$withPermit$1.L$0;
            k.b(obj);
        }
        try {
            return function0.invoke();
        } finally {
            q.b(1);
            cVar.release();
            q.a(1);
        }
    }
}
