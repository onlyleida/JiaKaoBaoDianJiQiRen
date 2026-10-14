package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.internal.AbortFlowException;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes6.dex */
public final class FlowKt__LimitKt$collectWhile$collector$1<T> implements d<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Function2 f15936a;

    public FlowKt__LimitKt$collectWhile$collector$1(Function2 function2) {
        this.f15936a = function2;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.d
    public Object emit(T t, Continuation<? super kotlin.v> continuation) throws Throwable {
        FlowKt__LimitKt$collectWhile$collector$1$emit$1 flowKt__LimitKt$collectWhile$collector$1$emit$1;
        FlowKt__LimitKt$collectWhile$collector$1<T> flowKt__LimitKt$collectWhile$collector$1;
        if (continuation instanceof FlowKt__LimitKt$collectWhile$collector$1$emit$1) {
            flowKt__LimitKt$collectWhile$collector$1$emit$1 = (FlowKt__LimitKt$collectWhile$collector$1$emit$1) continuation;
            int i = flowKt__LimitKt$collectWhile$collector$1$emit$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                flowKt__LimitKt$collectWhile$collector$1$emit$1.label = i - Integer.MIN_VALUE;
            } else {
                flowKt__LimitKt$collectWhile$collector$1$emit$1 = new FlowKt__LimitKt$collectWhile$collector$1$emit$1(this, continuation);
            }
        } else {
            flowKt__LimitKt$collectWhile$collector$1$emit$1 = new FlowKt__LimitKt$collectWhile$collector$1$emit$1(this, continuation);
        }
        Object objInvoke = flowKt__LimitKt$collectWhile$collector$1$emit$1.result;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i2 = flowKt__LimitKt$collectWhile$collector$1$emit$1.label;
        if (i2 == 0) {
            kotlin.k.b(objInvoke);
            Function2 function2 = this.f15936a;
            flowKt__LimitKt$collectWhile$collector$1$emit$1.L$0 = this;
            flowKt__LimitKt$collectWhile$collector$1$emit$1.L$1 = t;
            flowKt__LimitKt$collectWhile$collector$1$emit$1.label = 1;
            objInvoke = function2.invoke(t, flowKt__LimitKt$collectWhile$collector$1$emit$1);
            if (objInvoke == objD) {
                return objD;
            }
            flowKt__LimitKt$collectWhile$collector$1 = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Object obj = flowKt__LimitKt$collectWhile$collector$1$emit$1.L$1;
            flowKt__LimitKt$collectWhile$collector$1 = (FlowKt__LimitKt$collectWhile$collector$1) flowKt__LimitKt$collectWhile$collector$1$emit$1.L$0;
            kotlin.k.b(objInvoke);
        }
        if (((Boolean) objInvoke).booleanValue()) {
            return kotlin.v.f15822a;
        }
        throw new AbortFlowException(flowKt__LimitKt$collectWhile$collector$1);
    }
}
