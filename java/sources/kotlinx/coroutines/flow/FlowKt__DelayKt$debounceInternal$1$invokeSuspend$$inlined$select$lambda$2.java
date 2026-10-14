package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$LongRef;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\u0007\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u00002\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "", "value", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$3$2", "<anonymous>"}, k = 3, mv = {1, 1, 15})
final class FlowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$2 extends SuspendLambda implements Function2<Object, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ d $downstream$inlined;
    final /* synthetic */ Ref$ObjectRef $lastValue$inlined;
    final /* synthetic */ Ref$LongRef $timeoutMillis$inlined;
    final /* synthetic */ Ref$ObjectRef $values$inlined;
    Object L$0;
    int label;
    private Object p$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FlowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$2(Continuation continuation, Ref$ObjectRef ref$ObjectRef, Ref$LongRef ref$LongRef, d dVar, Ref$ObjectRef ref$ObjectRef2) {
        super(2, continuation);
        this.$lastValue$inlined = ref$ObjectRef;
        this.$timeoutMillis$inlined = ref$LongRef;
        this.$downstream$inlined = dVar;
        this.$values$inlined = ref$ObjectRef2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        FlowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$2 flowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$2 = new FlowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$2(continuation, this.$lastValue$inlined, this.$timeoutMillis$inlined, this.$downstream$inlined, this.$values$inlined);
        flowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$2.p$0 = obj;
        return flowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Continuation<? super kotlin.v> continuation) {
        return ((FlowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$2) create(obj, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [T, kotlinx.coroutines.internal.y] */
    /* JADX WARN: Type inference failed for: r6v1, types: [T, java.lang.Object] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            ?? r6 = this.p$0;
            if (r6 == 0) {
                Object obj2 = this.$lastValue$inlined.element;
                if (obj2 != null) {
                    d dVar = this.$downstream$inlined;
                    if (obj2 == kotlinx.coroutines.flow.internal.p.f15980a) {
                        obj2 = null;
                    }
                    this.L$0 = r6;
                    this.label = 1;
                    if (dVar.emit(obj2, this) == objD) {
                        return objD;
                    }
                }
            } else {
                this.$lastValue$inlined.element = r6;
            }
            return kotlin.v.f15822a;
        }
        if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        this.$lastValue$inlined.element = kotlinx.coroutines.flow.internal.p.c;
        return kotlin.v.f15822a;
    }
}
