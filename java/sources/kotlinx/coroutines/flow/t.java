package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes6.dex */
final /* synthetic */ class t {
    public static final Object a(c<?> cVar, Continuation<? super kotlin.v> continuation) {
        Object objD = cVar.d(kotlinx.coroutines.flow.internal.o.f15979a, continuation);
        return objD == kotlin.coroutines.intrinsics.b.d() ? objD : kotlin.v.f15822a;
    }

    public static final <T> Object b(c<? extends T> cVar, Function2<? super T, ? super Continuation<? super kotlin.v>, ? extends Object> function2, Continuation<? super kotlin.v> continuation) {
        Object objG = f.g(u.b(f.w(cVar, function2), 0, null, 2, null), continuation);
        return objG == kotlin.coroutines.intrinsics.b.d() ? objG : kotlin.v.f15822a;
    }
}
