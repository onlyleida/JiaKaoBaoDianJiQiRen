package kotlinx.coroutines.flow.internal;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.v;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\u0006\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/i0;", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge$collectTo$2$1", "<anonymous>"}, k = 3, mv = {1, 1, 15})
final class ChannelLimitedFlowMerge$collectTo$$inlined$forEach$lambda$1 extends SuspendLambda implements Function2<i0, Continuation<? super v>, Object> {
    final /* synthetic */ r $collector$inlined;
    final /* synthetic */ kotlinx.coroutines.flow.c $flow;
    final /* synthetic */ kotlinx.coroutines.channels.n $scope$inlined;
    Object L$0;
    int label;
    private i0 p$;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ChannelLimitedFlowMerge$collectTo$$inlined$forEach$lambda$1(kotlinx.coroutines.flow.c cVar, Continuation continuation, kotlinx.coroutines.channels.n nVar, r rVar) {
        super(2, continuation);
        this.$flow = cVar;
        this.$scope$inlined = nVar;
        this.$collector$inlined = rVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        ChannelLimitedFlowMerge$collectTo$$inlined$forEach$lambda$1 channelLimitedFlowMerge$collectTo$$inlined$forEach$lambda$1 = new ChannelLimitedFlowMerge$collectTo$$inlined$forEach$lambda$1(this.$flow, continuation, this.$scope$inlined, this.$collector$inlined);
        channelLimitedFlowMerge$collectTo$$inlined$forEach$lambda$1.p$ = (i0) obj;
        return channelLimitedFlowMerge$collectTo$$inlined$forEach$lambda$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Continuation<? super v> continuation) {
        return ((ChannelLimitedFlowMerge$collectTo$$inlined$forEach$lambda$1) create(i0Var, continuation)).invokeSuspend(v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            i0 i0Var = this.p$;
            kotlinx.coroutines.flow.c cVar = this.$flow;
            r rVar = this.$collector$inlined;
            this.L$0 = i0Var;
            this.label = 1;
            if (cVar.d(rVar, this) == objD) {
                return objD;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
        }
        return v.f15822a;
    }
}
