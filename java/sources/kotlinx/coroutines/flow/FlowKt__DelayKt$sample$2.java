package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0007\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/i0;", "Lkotlinx/coroutines/flow/d;", "downstream", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2", f = "Delay.kt", l = {355}, m = "invokeSuspend")
final class FlowKt__DelayKt$sample$2<T> extends SuspendLambda implements Function3<kotlinx.coroutines.i0, d<? super T>, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ long $periodMillis;
    final /* synthetic */ c $this_sample;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    int label;
    private kotlinx.coroutines.i0 p$;
    private d p$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FlowKt__DelayKt$sample$2(c cVar, long j, Continuation continuation) {
        super(3, continuation);
        this.$this_sample = cVar;
        this.$periodMillis = j;
    }

    public final Continuation<kotlin.v> create(kotlinx.coroutines.i0 i0Var, d<? super T> dVar, Continuation<? super kotlin.v> continuation) {
        FlowKt__DelayKt$sample$2 flowKt__DelayKt$sample$2 = new FlowKt__DelayKt$sample$2(this.$this_sample, this.$periodMillis, continuation);
        flowKt__DelayKt$sample$2.p$ = i0Var;
        flowKt__DelayKt$sample$2.p$0 = dVar;
        return flowKt__DelayKt$sample$2;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Object obj, Continuation<? super kotlin.v> continuation) {
        return ((FlowKt__DelayKt$sample$2) create(i0Var, (d) obj, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0071  */
    /* JADX WARN: Code duplicated, block: B:23:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:24:0x00c3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:25:0x00c5 A[RETURN] */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:11:0x0071
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r17) {
        /*
            Method dump skipped, instruction units count: 205
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
