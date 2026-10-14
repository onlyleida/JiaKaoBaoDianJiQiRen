package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes6.dex */
final /* synthetic */ class FlowKt__EmittersKt {
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    static final /* synthetic */ <T> Object a(d<? super T> dVar, Function3<? super d<? super T>, ? super Throwable, ? super Continuation<? super kotlin.v>, ? extends Object> function3, Throwable th, Continuation<? super kotlin.v> continuation) throws Throwable {
        FlowKt__EmittersKt$invokeSafely$1 flowKt__EmittersKt$invokeSafely$1;
        if (continuation instanceof FlowKt__EmittersKt$invokeSafely$1) {
            flowKt__EmittersKt$invokeSafely$1 = (FlowKt__EmittersKt$invokeSafely$1) continuation;
            int i = flowKt__EmittersKt$invokeSafely$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                flowKt__EmittersKt$invokeSafely$1.label = i - Integer.MIN_VALUE;
            } else {
                flowKt__EmittersKt$invokeSafely$1 = new FlowKt__EmittersKt$invokeSafely$1(continuation);
            }
        } else {
            flowKt__EmittersKt$invokeSafely$1 = new FlowKt__EmittersKt$invokeSafely$1(continuation);
        }
        Object obj = flowKt__EmittersKt$invokeSafely$1.result;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i2 = flowKt__EmittersKt$invokeSafely$1.label;
        try {
            if (i2 == 0) {
                kotlin.k.b(obj);
                flowKt__EmittersKt$invokeSafely$1.L$0 = dVar;
                flowKt__EmittersKt$invokeSafely$1.L$1 = function3;
                flowKt__EmittersKt$invokeSafely$1.L$2 = th;
                flowKt__EmittersKt$invokeSafely$1.label = 1;
                if (function3.invoke(dVar, th, flowKt__EmittersKt$invokeSafely$1) == objD) {
                    return objD;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                th = (Throwable) flowKt__EmittersKt$invokeSafely$1.L$2;
                kotlin.k.b(obj);
            }
            return kotlin.v.f15822a;
        } catch (Throwable th2) {
            if (th != null && th != th2) {
                kotlin.b.a(th2, th);
            }
            throw th2;
        }
    }

    public static final <T> c<T> b(c<? extends T> cVar, Function3<? super d<? super T>, ? super Throwable, ? super Continuation<? super kotlin.v>, ? extends Object> function3) {
        return new FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1(cVar, function3);
    }

    public static final <T> c<T> c(c<? extends T> cVar, Function2<? super d<? super T>, ? super Continuation<? super kotlin.v>, ? extends Object> function2) {
        return new FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1(cVar, function2);
    }
}
