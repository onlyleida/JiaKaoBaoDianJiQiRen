package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.internal.AbortFlowException;

/* JADX INFO: loaded from: classes6.dex */
final /* synthetic */ class FlowKt__LimitKt {
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final <T> Object a(c<? extends T> cVar, Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, Continuation<? super kotlin.v> continuation) throws Throwable {
        FlowKt__LimitKt$collectWhile$1 flowKt__LimitKt$collectWhile$1;
        d<? super Object> dVar;
        if (continuation instanceof FlowKt__LimitKt$collectWhile$1) {
            flowKt__LimitKt$collectWhile$1 = (FlowKt__LimitKt$collectWhile$1) continuation;
            int i = flowKt__LimitKt$collectWhile$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                flowKt__LimitKt$collectWhile$1.label = i - Integer.MIN_VALUE;
            } else {
                flowKt__LimitKt$collectWhile$1 = new FlowKt__LimitKt$collectWhile$1(continuation);
            }
        } else {
            flowKt__LimitKt$collectWhile$1 = new FlowKt__LimitKt$collectWhile$1(continuation);
        }
        Object obj = flowKt__LimitKt$collectWhile$1.result;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i2 = flowKt__LimitKt$collectWhile$1.label;
        if (i2 == 0) {
            kotlin.k.b(obj);
            d<? super Object> flowKt__LimitKt$collectWhile$collector$1 = new FlowKt__LimitKt$collectWhile$collector$1<>(function2);
            try {
                flowKt__LimitKt$collectWhile$1.L$0 = cVar;
                flowKt__LimitKt$collectWhile$1.L$1 = function2;
                flowKt__LimitKt$collectWhile$1.L$2 = flowKt__LimitKt$collectWhile$collector$1;
                flowKt__LimitKt$collectWhile$1.label = 1;
                if (cVar.d(flowKt__LimitKt$collectWhile$collector$1, flowKt__LimitKt$collectWhile$1) == objD) {
                    return objD;
                }
            } catch (AbortFlowException e2) {
                e = e2;
                dVar = flowKt__LimitKt$collectWhile$collector$1;
                kotlinx.coroutines.flow.internal.l.a(e, dVar);
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            dVar = (FlowKt__LimitKt$collectWhile$collector$1) flowKt__LimitKt$collectWhile$1.L$2;
            try {
                kotlin.k.b(obj);
            } catch (AbortFlowException e3) {
                e = e3;
                kotlinx.coroutines.flow.internal.l.a(e, dVar);
            }
        }
        return kotlin.v.f15822a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    static final /* synthetic */ <T> Object b(d<? super T> dVar, T t, Continuation<? super kotlin.v> continuation) throws Throwable {
        FlowKt__LimitKt$emitAbort$1 flowKt__LimitKt$emitAbort$1;
        if (continuation instanceof FlowKt__LimitKt$emitAbort$1) {
            flowKt__LimitKt$emitAbort$1 = (FlowKt__LimitKt$emitAbort$1) continuation;
            int i = flowKt__LimitKt$emitAbort$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                flowKt__LimitKt$emitAbort$1.label = i - Integer.MIN_VALUE;
            } else {
                flowKt__LimitKt$emitAbort$1 = new FlowKt__LimitKt$emitAbort$1(continuation);
            }
        } else {
            flowKt__LimitKt$emitAbort$1 = new FlowKt__LimitKt$emitAbort$1(continuation);
        }
        Object obj = flowKt__LimitKt$emitAbort$1.result;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i2 = flowKt__LimitKt$emitAbort$1.label;
        if (i2 == 0) {
            kotlin.k.b(obj);
            flowKt__LimitKt$emitAbort$1.L$0 = dVar;
            flowKt__LimitKt$emitAbort$1.L$1 = t;
            flowKt__LimitKt$emitAbort$1.label = 1;
            if (dVar.emit(t, flowKt__LimitKt$emitAbort$1) == objD) {
                return objD;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Object obj2 = flowKt__LimitKt$emitAbort$1.L$1;
            dVar = (d) flowKt__LimitKt$emitAbort$1.L$0;
            kotlin.k.b(obj);
        }
        throw new AbortFlowException(dVar);
    }
}
