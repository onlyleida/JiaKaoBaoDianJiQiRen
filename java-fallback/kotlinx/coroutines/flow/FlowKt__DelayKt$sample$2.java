package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.channels.ProduceKt;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0007\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/i0;", "Lkotlinx/coroutines/flow/d;", "downstream", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2", f = "Delay.kt", l = {355}, m = "invokeSuspend")
final class FlowKt__DelayKt$sample$2<T> extends SuspendLambda implements kotlin.jvm.b.q<kotlinx.coroutines.i0, d<? super T>, kotlin.coroutines.c<? super kotlin.v>, Object> {
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

    FlowKt__DelayKt$sample$2(c r1, long r2, kotlin.coroutines.c r4) {
        this.$this_sample = r1;
        this.$periodMillis = r2;
        super(3, r4);
    }

    public final kotlin.coroutines.c<kotlin.v> create(kotlinx.coroutines.i0 r5, d<? super T> r6, kotlin.coroutines.c<? super kotlin.v> r7) {
        FlowKt__DelayKt$sample$2 r0 = new FlowKt__DelayKt$sample$2(this.$this_sample, this.$periodMillis, r7);
        r0.p$ = r5;
        r0.p$0 = r6;
        return r0;
    }

    @Override // kotlin.jvm.b.q
    public final Object invoke(kotlinx.coroutines.i0 r1, Object r2, kotlin.coroutines.c<? super kotlin.v> r3) {
        return ((FlowKt__DelayKt$sample$2) create(r1, (d) r2, r3)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object r17) {
        Object r0 = kotlin.coroutines.intrinsics.a.d();
        int r2 = this.label;
        int r3 = 1;
        if (r2 == 0) goto L8;
        if (r2 != 1) goto L7;
        FlowKt__DelayKt$sample$2 r4 = (FlowKt__DelayKt$sample$2) this.L$5;
        kotlinx.coroutines.channels.p r5 = (kotlinx.coroutines.channels.p) this.L$4;
        Ref$ObjectRef r6 = (Ref$ObjectRef) this.L$3;
        Ref$ObjectRef r7 = (Ref$ObjectRef) this.L$2;
        d r8 = (d) this.L$1;
        kotlinx.coroutines.i0 r9 = (kotlinx.coroutines.i0) this.L$0;
        kotlin.k.b(r17);
        FlowKt__DelayKt$sample$2<T> r15 = this;
        kotlinx.coroutines.channels.p r10 = r5;
        Ref$ObjectRef r13 = r6;
        Ref$ObjectRef r12 = r7;
        d r11 = r8;
        kotlinx.coroutines.i0 r14 = r9;
        Object r16 = r0;
    L26:
        r3 = 1;
    L10:
        if (r13.element == kotlinx.coroutines.flow.internal.p.c) goto L28;
        r15.L$0 = r14;
        r15.L$1 = r11;
        r15.L$2 = r12;
        r15.L$3 = r13;
        r15.L$4 = r10;
        r15.L$5 = r15;
        r15.label = r3;
        kotlinx.coroutines.selects.b r18 = new kotlinx.coroutines.selects.b(r15);
        kotlinx.coroutines.selects.d r1 = ((kotlinx.coroutines.channels.p) r12.element).z();     // Catch: Throwable -> L18
        kotlinx.coroutines.selects.b r19 = r18;
        r19.t(r1, new FlowKt__DelayKt$sample$2$invokeSuspend$$inlined$select$lambda$1(null, r12, r10, r13, r11));     // Catch: Throwable -> L16
        r19.t(r10.y(), new FlowKt__DelayKt$sample$2$invokeSuspend$$inlined$select$lambda$2(null, r12, r10, r13, r11));     // Catch: Throwable -> L16
    L21:
        Object r20 = r19.U();
        if (r20 != kotlin.coroutines.intrinsics.a.d()) goto L24;
        kotlin.coroutines.jvm.internal.f.c(r15);
    L24:
        if (r20 != r16) goto L26;
        return r16;
    L33:
        if (r20 != r16) goto L26;
    L16:
        th = th;
    L20:
        r19.V(th);
    L18:
        th = th;
        r19 = r18;
        goto L20
    L28:
        return kotlin.v.f15822a;
    L7:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L8:
        kotlin.k.b(r17);
        kotlinx.coroutines.i0 r21 = this.p$;
        r11 = this.p$0;
        r12 = new Ref$ObjectRef();
        r12.element = (T) ProduceKt.e(r21, null, -1, new FlowKt__DelayKt$sample$2$values$1(this, null), 1, null);
        r13 = new Ref$ObjectRef();
        r13.element = null;
        r15 = this;
        r14 = r21;
        r10 = f.s(r21, this.$periodMillis, 0, 2, null);
        r16 = r0;
        goto L10
    }
}
