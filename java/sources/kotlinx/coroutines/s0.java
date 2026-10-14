package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.time.Duration;

/* JADX INFO: loaded from: classes6.dex */
public final class s0 {
    public static final Object a(long j, Continuation<? super kotlin.v> continuation) {
        if (j <= 0) {
            return kotlin.v.f15822a;
        }
        l lVar = new l(IntrinsicsKt__IntrinsicsJvmKt.c(continuation), 1);
        lVar.z();
        if (j < Long.MAX_VALUE) {
            b(lVar.getContext()).c(j, lVar);
        }
        Object objX = lVar.x();
        if (objX == kotlin.coroutines.intrinsics.b.d()) {
            kotlin.coroutines.jvm.internal.f.c(continuation);
        }
        return objX;
    }

    public static final r0 b(CoroutineContext coroutineContext) {
        CoroutineContext.a aVar = coroutineContext.get(ContinuationInterceptor.L);
        if (!(aVar instanceof r0)) {
            aVar = null;
        }
        r0 r0Var = (r0) aVar;
        return r0Var != null ? r0Var : o0.a();
    }

    public static final long c(double d2) {
        if (Duration.compareTo-LRDsOJo(d2, Duration.f14587d.getZERO-UwyO8pc()) > 0) {
            return kotlin.ranges.f.c(Duration.toLongMilliseconds-impl(d2), 1L);
        }
        return 0L;
    }
}
