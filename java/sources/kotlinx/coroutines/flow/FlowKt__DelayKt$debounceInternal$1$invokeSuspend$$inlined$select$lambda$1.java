package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$LongRef;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\u0005\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/v;", "invoke", "(Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$3$1", "<anonymous>"}, k = 3, mv = {1, 1, 15})
final class FlowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$1 extends SuspendLambda implements Function1<Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ d $downstream$inlined;
    final /* synthetic */ Ref$ObjectRef $lastValue$inlined;
    final /* synthetic */ Ref$LongRef $timeoutMillis$inlined;
    final /* synthetic */ Ref$ObjectRef $values$inlined;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FlowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$1(Continuation continuation, Ref$ObjectRef ref$ObjectRef, Ref$LongRef ref$LongRef, d dVar, Ref$ObjectRef ref$ObjectRef2) {
        super(1, continuation);
        this.$lastValue$inlined = ref$ObjectRef;
        this.$timeoutMillis$inlined = ref$LongRef;
        this.$downstream$inlined = dVar;
        this.$values$inlined = ref$ObjectRef2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Continuation<?> continuation) {
        return new FlowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$1(continuation, this.$lastValue$inlined, this.$timeoutMillis$inlined, this.$downstream$inlined, this.$values$inlined);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Continuation<? super kotlin.v> continuation) {
        return ((FlowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$1) create(continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            d dVar = this.$downstream$inlined;
            kotlinx.coroutines.internal.y yVar = kotlinx.coroutines.flow.internal.p.f15980a;
            Object obj2 = this.$lastValue$inlined.element;
            if (obj2 == yVar) {
                obj2 = null;
            }
            this.label = 1;
            if (dVar.emit(obj2, this) == objD) {
                return objD;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
        }
        this.$lastValue$inlined.element = null;
        return kotlin.v.f15822a;
    }
}
