package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.v;

/* JADX WARN: Unexpected interfaces in signature: [java.lang.Object] */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0007\u001a\u00020\u00042\u000e\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0001H\u0086@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/d;", "", "p1", "p2", "Lkotlin/v;", "invoke", "(Lkotlinx/coroutines/flow/d;Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
final /* synthetic */ class SafeCollectorKt$emitFun$1 extends FunctionReferenceImpl implements Function3<kotlinx.coroutines.flow.d<? super Object>, Object, Continuation<? super v>, Object> {
    SafeCollectorKt$emitFun$1() {
        super(3, kotlinx.coroutines.flow.d.class, "emit", "emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Object invoke(kotlinx.coroutines.flow.d<? super Object> dVar, Object obj, Continuation<? super v> continuation) {
        return invoke2((kotlinx.coroutines.flow.d<Object>) dVar, obj, continuation);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(kotlinx.coroutines.flow.d<Object> dVar, Object obj, Continuation<? super v> continuation) {
        kotlin.jvm.internal.q.c(0);
        Object objEmit = dVar.emit(obj, continuation);
        kotlin.jvm.internal.q.c(2);
        kotlin.jvm.internal.q.c(1);
        return objEmit;
    }
}
