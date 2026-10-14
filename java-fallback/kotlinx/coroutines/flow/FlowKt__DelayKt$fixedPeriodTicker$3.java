package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/channels/n;", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$fixedPeriodTicker$3", f = "Delay.kt", l = {316, 318, 319}, m = "invokeSuspend")
final class FlowKt__DelayKt$fixedPeriodTicker$3 extends SuspendLambda implements kotlin.jvm.b.p<kotlinx.coroutines.channels.n<? super kotlin.v>, kotlin.coroutines.c<? super kotlin.v>, Object> {
    final /* synthetic */ long $delayMillis;
    final /* synthetic */ long $initialDelayMillis;
    Object L$0;
    int label;
    private kotlinx.coroutines.channels.n p$;

    FlowKt__DelayKt$fixedPeriodTicker$3(long r1, long r3, kotlin.coroutines.c r5) {
        this.$initialDelayMillis = r1;
        this.$delayMillis = r3;
        super(2, r5);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.c<kotlin.v> create(Object r8, kotlin.coroutines.c<?> r9) {
        FlowKt__DelayKt$fixedPeriodTicker$3 r6 = new FlowKt__DelayKt$fixedPeriodTicker$3(this.$initialDelayMillis, this.$delayMillis, r9);
        r6.p$ = (kotlinx.coroutines.channels.n) r8;
        return r6;
    }

    @Override // kotlin.jvm.b.p
    public final Object invoke(kotlinx.coroutines.channels.n<? super kotlin.v> r1, kotlin.coroutines.c<? super kotlin.v> r2) {
        return ((FlowKt__DelayKt$fixedPeriodTicker$3) create(r1, r2)).invokeSuspend(kotlin.v.f15822a);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0058 -> B:15:0x003d). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object r8) {
        Object r0 = kotlin.coroutines.intrinsics.a.d();
        int r1 = this.label;
        if (r1 == 0) goto L11;
        if (r1 == 1) goto L7;
        if (r1 == 2) goto L10;
        if (r1 == 3) goto L7;
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L10:
        kotlinx.coroutines.channels.n r2 = (kotlinx.coroutines.channels.n) this.L$0;
        kotlin.k.b(r8);
        FlowKt__DelayKt$fixedPeriodTicker$3 r9 = this;
    L18:
        long r4 = r9.$delayMillis;
        r9.L$0 = r2;
        r9.label = 3;
        if (kotlinx.coroutines.s0.a(r4, r9) == r0) goto L20;
    L15:
        kotlinx.coroutines.channels.t r5 = r2.k();
        kotlin.v r6 = kotlin.v.f15822a;
        r9.L$0 = r2;
        r9.label = 2;
        if (r5.F(r6, r9) != r0) goto L18;
        return r0;
    L20:
        return r0;
    L7:
        r2 = (kotlinx.coroutines.channels.n) this.L$0;
        kotlin.k.b(r8);
    L14:
        r9 = this;
        goto L15
    L11:
        kotlin.k.b(r8);
        r2 = this.p$;
        long r7 = this.$initialDelayMillis;
        this.L$0 = r2;
        this.label = 1;
        if (kotlinx.coroutines.s0.a(r7, this) != r0) goto L14;
        return r0;
    }
}
