package kotlinx.coroutines.sync;

import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.q;
import kotlin.k;
import kotlinx.coroutines.internal.y;

/* JADX INFO: loaded from: classes6.dex */
public final class MutexKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final y f16113a = new y("LOCKED");
    private static final y b = new y("UNLOCKED");

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final <T> Object a(a aVar, Object obj, Function0<? extends T> function0, Continuation<? super T> continuation) throws Throwable {
        MutexKt$withLock$1 mutexKt$withLock$1;
        if (continuation instanceof MutexKt$withLock$1) {
            mutexKt$withLock$1 = (MutexKt$withLock$1) continuation;
            int i = mutexKt$withLock$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                mutexKt$withLock$1.label = i - Integer.MIN_VALUE;
            } else {
                mutexKt$withLock$1 = new MutexKt$withLock$1(continuation);
            }
        } else {
            mutexKt$withLock$1 = new MutexKt$withLock$1(continuation);
        }
        Object obj2 = mutexKt$withLock$1.result;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i2 = mutexKt$withLock$1.label;
        if (i2 == 0) {
            k.b(obj2);
            mutexKt$withLock$1.L$0 = aVar;
            mutexKt$withLock$1.L$1 = obj;
            mutexKt$withLock$1.L$2 = function0;
            mutexKt$withLock$1.label = 1;
            if (aVar.b(obj, mutexKt$withLock$1) == objD) {
                return objD;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            function0 = (Function0) mutexKt$withLock$1.L$2;
            obj = mutexKt$withLock$1.L$1;
            aVar = (a) mutexKt$withLock$1.L$0;
            k.b(obj2);
        }
        try {
            return function0.invoke();
        } finally {
            q.b(1);
            aVar.c(obj);
            q.a(1);
        }
    }
}
