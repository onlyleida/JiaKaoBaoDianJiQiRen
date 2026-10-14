package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0010\u0006\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/v;", "it", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__DelayKt$sample$2$1$2", "<anonymous>"}, k = 3, mv = {1, 1, 15})
final class FlowKt__DelayKt$sample$2$invokeSuspend$$inlined$select$lambda$2 extends SuspendLambda implements Function2<kotlin.v, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ d $downstream$inlined;
    final /* synthetic */ Ref$ObjectRef $lastValue$inlined;
    final /* synthetic */ kotlinx.coroutines.channels.p $ticker$inlined;
    final /* synthetic */ Ref$ObjectRef $values$inlined;
    Object L$0;
    Object L$1;
    int label;
    private kotlin.v p$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FlowKt__DelayKt$sample$2$invokeSuspend$$inlined$select$lambda$2(Continuation continuation, Ref$ObjectRef ref$ObjectRef, kotlinx.coroutines.channels.p pVar, Ref$ObjectRef ref$ObjectRef2, d dVar) {
        super(2, continuation);
        this.$values$inlined = ref$ObjectRef;
        this.$ticker$inlined = pVar;
        this.$lastValue$inlined = ref$ObjectRef2;
        this.$downstream$inlined = dVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        FlowKt__DelayKt$sample$2$invokeSuspend$$inlined$select$lambda$2 flowKt__DelayKt$sample$2$invokeSuspend$$inlined$select$lambda$2 = new FlowKt__DelayKt$sample$2$invokeSuspend$$inlined$select$lambda$2(continuation, this.$values$inlined, this.$ticker$inlined, this.$lastValue$inlined, this.$downstream$inlined);
        flowKt__DelayKt$sample$2$invokeSuspend$$inlined$select$lambda$2.p$0 = (kotlin.v) obj;
        return flowKt__DelayKt$sample$2$invokeSuspend$$inlined$select$lambda$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlin.v vVar, Continuation<? super kotlin.v> continuation) {
        return ((FlowKt__DelayKt$sample$2$invokeSuspend$$inlined$select$lambda$2) create(vVar, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            kotlin.v vVar = this.p$0;
            Ref$ObjectRef ref$ObjectRef = this.$lastValue$inlined;
            Object obj2 = ref$ObjectRef.element;
            if (obj2 == null) {
                return kotlin.v.f15822a;
            }
            ref$ObjectRef.element = null;
            d dVar = this.$downstream$inlined;
            Object obj3 = obj2 != kotlinx.coroutines.flow.internal.p.f15980a ? obj2 : null;
            this.L$0 = vVar;
            this.L$1 = obj2;
            this.label = 1;
            if (dVar.emit(obj3, this) == objD) {
                return objD;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
        }
        return kotlin.v.f15822a;
    }
}
