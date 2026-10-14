package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0006\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/channels/n;", "", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2$values$1", f = "Delay.kt", l = {352}, m = "invokeSuspend")
final class FlowKt__DelayKt$sample$2$values$1 extends SuspendLambda implements Function2<kotlinx.coroutines.channels.n<? super Object>, Continuation<? super kotlin.v>, Object> {
    Object L$0;
    Object L$1;
    int label;
    private kotlinx.coroutines.channels.n p$;
    final /* synthetic */ FlowKt__DelayKt$sample$2 this$0;

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static final class a<T> implements d<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.channels.n f15928a;

        public a(kotlinx.coroutines.channels.n nVar) {
            this.f15928a = nVar;
        }

        @Override // kotlinx.coroutines.flow.d
        public Object emit(Object obj, Continuation continuation) {
            kotlinx.coroutines.channels.n nVar = this.f15928a;
            if (obj == null) {
                obj = kotlinx.coroutines.flow.internal.p.f15980a;
            }
            Object objF = nVar.F(obj, continuation);
            return objF == kotlin.coroutines.intrinsics.b.d() ? objF : kotlin.v.f15822a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FlowKt__DelayKt$sample$2$values$1(FlowKt__DelayKt$sample$2 flowKt__DelayKt$sample$2, Continuation continuation) {
        super(2, continuation);
        this.this$0 = flowKt__DelayKt$sample$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        FlowKt__DelayKt$sample$2$values$1 flowKt__DelayKt$sample$2$values$1 = new FlowKt__DelayKt$sample$2$values$1(this.this$0, continuation);
        flowKt__DelayKt$sample$2$values$1.p$ = (kotlinx.coroutines.channels.n) obj;
        return flowKt__DelayKt$sample$2$values$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.channels.n<? super Object> nVar, Continuation<? super kotlin.v> continuation) {
        return ((FlowKt__DelayKt$sample$2$values$1) create(nVar, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            kotlinx.coroutines.channels.n nVar = this.p$;
            c cVar = this.this$0.$this_sample;
            a aVar = new a(nVar);
            this.L$0 = nVar;
            this.L$1 = cVar;
            this.label = 1;
            if (cVar.d(aVar, this) == objD) {
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
