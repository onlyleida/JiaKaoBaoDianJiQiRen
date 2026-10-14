package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes6.dex */
final /* synthetic */ class FlowKt__ErrorsKt {
    public static final <T> c<T> a(c<? extends T> cVar, Function3<? super d<? super T>, ? super Throwable, ? super Continuation<? super kotlin.v>, ? extends Object> function3) {
        return new FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1(cVar, function3);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final <T> Object b(c<? extends T> cVar, d<? super T> dVar, Continuation<? super Throwable> continuation) throws Throwable {
        FlowKt__ErrorsKt$catchImpl$1 flowKt__ErrorsKt$catchImpl$1;
        Ref$ObjectRef ref$ObjectRef;
        if (continuation instanceof FlowKt__ErrorsKt$catchImpl$1) {
            flowKt__ErrorsKt$catchImpl$1 = (FlowKt__ErrorsKt$catchImpl$1) continuation;
            int i = flowKt__ErrorsKt$catchImpl$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                flowKt__ErrorsKt$catchImpl$1.label = i - Integer.MIN_VALUE;
            } else {
                flowKt__ErrorsKt$catchImpl$1 = new FlowKt__ErrorsKt$catchImpl$1(continuation);
            }
        } else {
            flowKt__ErrorsKt$catchImpl$1 = new FlowKt__ErrorsKt$catchImpl$1(continuation);
        }
        Object obj = flowKt__ErrorsKt$catchImpl$1.result;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i2 = flowKt__ErrorsKt$catchImpl$1.label;
        if (i2 != 0) {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ref$ObjectRef = (Ref$ObjectRef) flowKt__ErrorsKt$catchImpl$1.L$2;
            try {
                kotlin.k.b(obj);
                return null;
            } catch (Throwable th) {
                th = th;
                if (d(th, (Throwable) ref$ObjectRef.element)) {
                }
                throw th;
            }
        }
        kotlin.k.b(obj);
        Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
        ref$ObjectRef2.element = null;
        try {
            d<? super Object> flowKt__ErrorsKt$catchImpl$$inlined$collect$1 = new FlowKt__ErrorsKt$catchImpl$$inlined$collect$1<>(dVar, ref$ObjectRef2);
            flowKt__ErrorsKt$catchImpl$1.L$0 = cVar;
            flowKt__ErrorsKt$catchImpl$1.L$1 = dVar;
            flowKt__ErrorsKt$catchImpl$1.L$2 = ref$ObjectRef2;
            flowKt__ErrorsKt$catchImpl$1.L$3 = cVar;
            flowKt__ErrorsKt$catchImpl$1.label = 1;
            if (cVar.d(flowKt__ErrorsKt$catchImpl$$inlined$collect$1, flowKt__ErrorsKt$catchImpl$1) == objD) {
                return objD;
            }
            return null;
        } catch (Throwable th2) {
            th = th2;
            ref$ObjectRef = ref$ObjectRef2;
            if (!d(th, (Throwable) ref$ObjectRef.element) || c(th, flowKt__ErrorsKt$catchImpl$1.getContext())) {
                throw th;
            }
            return th;
        }
    }

    private static final boolean c(Throwable th, CoroutineContext coroutineContext) {
        kotlinx.coroutines.t1 t1Var = (kotlinx.coroutines.t1) coroutineContext.get(kotlinx.coroutines.t1.R);
        if (t1Var == null || !t1Var.isCancelled()) {
            return false;
        }
        return d(th, t1Var.i());
    }

    private static final boolean d(Throwable th, Throwable th2) {
        if (th2 != null) {
            if (kotlinx.coroutines.l0.d()) {
                th2 = kotlinx.coroutines.internal.x.m(th2);
            }
            if (kotlinx.coroutines.l0.d()) {
                th = kotlinx.coroutines.internal.x.m(th);
            }
            if (kotlin.jvm.internal.r.a(th2, th)) {
                return true;
            }
        }
        return false;
    }

    public static final <T> c<T> e(c<? extends T> cVar, long j, Function2<? super Throwable, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        if (j > 0) {
            return f.D(cVar, new FlowKt__ErrorsKt$retry$3(j, function2, null));
        }
        throw new IllegalArgumentException(("Expected positive amount of retries, but had " + j).toString());
    }

    public static final <T> c<T> f(c<? extends T> cVar, Function4<? super d<? super T>, ? super Throwable, ? super Long, ? super Continuation<? super Boolean>, ? extends Object> function4) {
        return new FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1(cVar, function4);
    }
}
