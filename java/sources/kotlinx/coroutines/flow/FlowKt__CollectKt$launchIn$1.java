package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/i0;", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__CollectKt$launchIn$1", f = "Collect.kt", l = {50}, m = "invokeSuspend")
final class FlowKt__CollectKt$launchIn$1 extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ c $this_launchIn;
    Object L$0;
    int label;
    private kotlinx.coroutines.i0 p$;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FlowKt__CollectKt$launchIn$1(c cVar, Continuation continuation) {
        super(2, continuation);
        this.$this_launchIn = cVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        FlowKt__CollectKt$launchIn$1 flowKt__CollectKt$launchIn$1 = new FlowKt__CollectKt$launchIn$1(this.$this_launchIn, continuation);
        flowKt__CollectKt$launchIn$1.p$ = (kotlinx.coroutines.i0) obj;
        return flowKt__CollectKt$launchIn$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Continuation<? super kotlin.v> continuation) {
        return ((FlowKt__CollectKt$launchIn$1) create(i0Var, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            kotlinx.coroutines.i0 i0Var = this.p$;
            c cVar = this.$this_launchIn;
            this.L$0 = i0Var;
            this.label = 1;
            if (f.g(cVar, this) == objD) {
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
