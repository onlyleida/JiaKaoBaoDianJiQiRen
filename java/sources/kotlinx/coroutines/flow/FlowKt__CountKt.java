package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$IntRef;

/* JADX INFO: loaded from: classes6.dex */
final /* synthetic */ class FlowKt__CountKt {

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static final class a<T> implements d<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Ref$IntRef f15925a;

        public a(Ref$IntRef ref$IntRef) {
            this.f15925a = ref$IntRef;
        }

        @Override // kotlinx.coroutines.flow.d
        public Object emit(Object obj, Continuation continuation) {
            this.f15925a.element++;
            return kotlin.v.f15822a;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final <T> Object a(c<? extends T> cVar, Continuation<? super Integer> continuation) throws Throwable {
        FlowKt__CountKt$count$1 flowKt__CountKt$count$1;
        Ref$IntRef ref$IntRef;
        if (continuation instanceof FlowKt__CountKt$count$1) {
            flowKt__CountKt$count$1 = (FlowKt__CountKt$count$1) continuation;
            int i = flowKt__CountKt$count$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                flowKt__CountKt$count$1.label = i - Integer.MIN_VALUE;
            } else {
                flowKt__CountKt$count$1 = new FlowKt__CountKt$count$1(continuation);
            }
        } else {
            flowKt__CountKt$count$1 = new FlowKt__CountKt$count$1(continuation);
        }
        Object obj = flowKt__CountKt$count$1.result;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i2 = flowKt__CountKt$count$1.label;
        if (i2 == 0) {
            kotlin.k.b(obj);
            Ref$IntRef ref$IntRef2 = new Ref$IntRef();
            ref$IntRef2.element = 0;
            d<? super Object> aVar = new a<>(ref$IntRef2);
            flowKt__CountKt$count$1.L$0 = cVar;
            flowKt__CountKt$count$1.L$1 = ref$IntRef2;
            flowKt__CountKt$count$1.L$2 = cVar;
            flowKt__CountKt$count$1.label = 1;
            if (cVar.d(aVar, flowKt__CountKt$count$1) == objD) {
                return objD;
            }
            ref$IntRef = ref$IntRef2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ref$IntRef = (Ref$IntRef) flowKt__CountKt$count$1.L$1;
            kotlin.k.b(obj);
        }
        return kotlin.coroutines.jvm.internal.a.d(ref$IntRef.element);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final <T> Object b(c<? extends T> cVar, Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, Continuation<? super Integer> continuation) throws Throwable {
        FlowKt__CountKt$count$3 flowKt__CountKt$count$3;
        Ref$IntRef ref$IntRef;
        if (continuation instanceof FlowKt__CountKt$count$3) {
            flowKt__CountKt$count$3 = (FlowKt__CountKt$count$3) continuation;
            int i = flowKt__CountKt$count$3.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                flowKt__CountKt$count$3.label = i - Integer.MIN_VALUE;
            } else {
                flowKt__CountKt$count$3 = new FlowKt__CountKt$count$3(continuation);
            }
        } else {
            flowKt__CountKt$count$3 = new FlowKt__CountKt$count$3(continuation);
        }
        Object obj = flowKt__CountKt$count$3.result;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i2 = flowKt__CountKt$count$3.label;
        if (i2 == 0) {
            kotlin.k.b(obj);
            Ref$IntRef ref$IntRef2 = new Ref$IntRef();
            ref$IntRef2.element = 0;
            d<? super Object> flowKt__CountKt$count$$inlined$collect$2 = new FlowKt__CountKt$count$$inlined$collect$2<>(function2, ref$IntRef2);
            flowKt__CountKt$count$3.L$0 = cVar;
            flowKt__CountKt$count$3.L$1 = function2;
            flowKt__CountKt$count$3.L$2 = ref$IntRef2;
            flowKt__CountKt$count$3.L$3 = cVar;
            flowKt__CountKt$count$3.label = 1;
            if (cVar.d(flowKt__CountKt$count$$inlined$collect$2, flowKt__CountKt$count$3) == objD) {
                return objD;
            }
            ref$IntRef = ref$IntRef2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ref$IntRef = (Ref$IntRef) flowKt__CountKt$count$3.L$2;
            kotlin.k.b(obj);
        }
        return kotlin.coroutines.jvm.internal.a.d(ref$IntRef.element);
    }
}
