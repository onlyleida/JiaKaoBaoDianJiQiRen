package kotlinx.coroutines.flow.internal;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.v;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0006\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlinx/coroutines/i0;", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3", f = "Merge.kt", l = {101}, m = "invokeSuspend")
final class ChannelFlowTransformLatest$flowCollect$3 extends SuspendLambda implements kotlin.jvm.b.p<i0, kotlin.coroutines.c<? super v>, Object> {
    final /* synthetic */ kotlinx.coroutines.flow.d $collector;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    private i0 p$;
    final /* synthetic */ ChannelFlowTransformLatest this$0;

    ChannelFlowTransformLatest$flowCollect$3(ChannelFlowTransformLatest r1, kotlinx.coroutines.flow.d r2, kotlin.coroutines.c r3) {
        this.this$0 = r1;
        this.$collector = r2;
        super(2, r3);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.c<v> create(Object r4, kotlin.coroutines.c<?> r5) {
        ChannelFlowTransformLatest$flowCollect$3 r0 = new ChannelFlowTransformLatest$flowCollect$3(this.this$0, this.$collector, r5);
        r0.p$ = (i0) r4;
        return r0;
    }

    @Override // kotlin.jvm.b.p
    public final Object invoke(i0 r1, kotlin.coroutines.c<? super v> r2) {
        return ((ChannelFlowTransformLatest$flowCollect$3) create(r1, r2)).invokeSuspend(v.f15822a);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type kotlin.coroutines.c to kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3 for r5v1 'this'  kotlin.coroutines.c
        	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
        	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
        	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
        	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        java.lang.Object r0 = kotlin.coroutines.intrinsics.a.d();
        int r1 = r5.label;
        if (r1 == 0) goto L8;
        if (r1 != 1) goto L6;
        java.lang.Object r0 = r5.L$2;
        kotlinx.coroutines.flow.c r0 = (kotlinx.coroutines.flow.c) r0;
        java.lang.Object r0 = r5.L$1;
        kotlin.jvm.internal.Ref$ObjectRef r0 = (kotlin.jvm.internal.Ref$ObjectRef) r0;
        java.lang.Object r0 = r5.L$0;
        kotlinx.coroutines.i0 r0 = (kotlinx.coroutines.i0) r0;
        kotlin.k.b(r6);
    L11:
        kotlin.v r6 = kotlin.v.f15822a;
        return r6;
    L6:
        java.lang.IllegalStateException r6 = new java.lang.IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        throw r6;
    L8:
        kotlin.k.b(r6);
        kotlinx.coroutines.i0 r6 = r5.p$;
        kotlin.jvm.internal.Ref$ObjectRef r1 = new kotlin.jvm.internal.Ref$ObjectRef();
        r1.element = null;
        kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest r3 = r5.this$0;
        kotlinx.coroutines.flow.c<S> r3 = r3.f15963d;
        kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1 r4 = new kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1(r5, r6, r1);
        r5.L$0 = r6;
        r5.L$1 = r1;
        r5.L$2 = r3;
        r5.label = 1;
        kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1 r4 = r4;
        kotlin.coroutines.c r5 = (kotlin.coroutines.c<? super kotlin.v>) r5;
        java.lang.Object r6 = r3.d(r4, r5);
        if (r6 != r0) goto L11;
        return r0;
    }
}
