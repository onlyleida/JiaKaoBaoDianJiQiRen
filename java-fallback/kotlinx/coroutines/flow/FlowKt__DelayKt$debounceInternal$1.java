package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.Ref$LongRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.channels.ProduceKt;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0007\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/i0;", "Lkotlinx/coroutines/flow/d;", "downstream", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1", f = "Delay.kt", l = {354, 358}, m = "invokeSuspend")
final class FlowKt__DelayKt$debounceInternal$1<T> extends SuspendLambda implements kotlin.jvm.b.q<kotlinx.coroutines.i0, d<? super T>, kotlin.coroutines.c<? super kotlin.v>, Object> {
    final /* synthetic */ c $this_debounceInternal;
    final /* synthetic */ kotlin.jvm.b.l $timeoutMillisSelector;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    int label;
    private kotlinx.coroutines.i0 p$;
    private d p$0;

    FlowKt__DelayKt$debounceInternal$1(c r1, kotlin.jvm.b.l r2, kotlin.coroutines.c r3) {
        this.$this_debounceInternal = r1;
        this.$timeoutMillisSelector = r2;
        super(3, r3);
    }

    public final kotlin.coroutines.c<kotlin.v> create(kotlinx.coroutines.i0 r4, d<? super T> r5, kotlin.coroutines.c<? super kotlin.v> r6) {
        FlowKt__DelayKt$debounceInternal$1 r0 = new FlowKt__DelayKt$debounceInternal$1(this.$this_debounceInternal, this.$timeoutMillisSelector, r6);
        r0.p$ = r4;
        r0.p$0 = r5;
        return r0;
    }

    @Override // kotlin.jvm.b.q
    public final Object invoke(kotlinx.coroutines.i0 r1, Object r2, kotlin.coroutines.c<? super kotlin.v> r3) {
        return ((FlowKt__DelayKt$debounceInternal$1) create(r1, (d) r2, r3)).invokeSuspend(kotlin.v.f15822a);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:71:0x017c -> B:72:0x0184). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object r23) {
        Object r0 = kotlin.coroutines.intrinsics.a.d();
        int r2 = this.label;
        int r4 = 2;
        long r5 = 0;
        int r7 = 1;
        if (r2 == 0) goto L10;
        if (r2 == 1) goto L9;
        if (r2 != 2) goto L8;
        FlowKt__DelayKt$debounceInternal$1 r3 = (FlowKt__DelayKt$debounceInternal$1) this.L$5;
        Ref$LongRef r6 = (Ref$LongRef) this.L$4;
        Ref$ObjectRef r8 = (Ref$ObjectRef) this.L$3;
        Ref$ObjectRef r9 = (Ref$ObjectRef) this.L$2;
        d r10 = (d) this.L$1;
        kotlinx.coroutines.i0 r11 = (kotlinx.coroutines.i0) this.L$0;
        kotlin.k.b(r23);
        kotlinx.coroutines.i0 r12 = r11;
        d r13 = r10;
        Ref$ObjectRef r14 = r9;
        Ref$ObjectRef r15 = r8;
        FlowKt__DelayKt$debounceInternal$1<T> r16 = this;
    L72:
        r4 = 2;
        r5 = 0;
        r7 = 1;
    L12:
        if (r15.element == kotlinx.coroutines.flow.internal.p.c) goto L74;
        Ref$LongRef r17 = new Ref$LongRef();
        r17.element = r5;
        T r18 = r15.element;
        if (r18 == null) goto L32;
        kotlin.jvm.b.l r19 = r16.$timeoutMillisSelector;
        kotlinx.coroutines.internal.y r20 = kotlinx.coroutines.flow.internal.p.f15980a;
        if (r18 != r20) goto L18;
        r18 = null;
    L18:
        long r110 = ((Number) r19.invoke(r18)).longValue();
        r17.element = r110;
        if (r110 < r5) goto L21;
        boolean r111 = true;
    L22:
        if (r111 == false) goto L34;
        if (r110 != r5) goto L32;
        T r112 = r15.element;
        if (r112 != r20) goto L28;
        r112 = null;
    L28:
        r16.L$0 = r12;
        r16.L$1 = r13;
        r16.L$2 = r14;
        r16.L$3 = r15;
        r16.L$4 = r17;
        r16.label = r7;
        if (r13.emit(r112, r16) != r0) goto L31;
        return r0;
    L31:
        r15.element = null;
        goto L32
    L34:
        throw new IllegalArgumentException("Debounce timeout should not be negative".toString());
    L21:
        r111 = false;
    L32:
        FlowKt__DelayKt$debounceInternal$1<T> r113 = r16;
        Ref$ObjectRef r21 = r15;
        Ref$ObjectRef r114 = r14;
        Object r22 = r0;
        Ref$LongRef r1 = r17;
        d r115 = r13;
        if (kotlinx.coroutines.l0.a() == true) goto L38;
    L49:
        r113.L$0 = r12;
        r113.L$1 = r115;
        r113.L$2 = r114;
        r113.L$3 = r21;
        r113.L$4 = r1;
        r113.L$5 = r113;
        r113.label = r4;
        kotlinx.coroutines.selects.b r116 = new kotlinx.coroutines.selects.b(r113);
    L63:
        th = th;
        kotlinx.coroutines.selects.b r24 = r116;
        kotlinx.coroutines.i0 r117 = r12;
        d r25 = r115;
        Ref$ObjectRef r26 = r114;
    L65:
        r24.V(th);
    L66:
        Object r27 = r24.U();
        if (r27 != kotlin.coroutines.intrinsics.a.d()) goto L69;
        kotlin.coroutines.jvm.internal.f.c(r113);
    L69:
        if (r27 != r22) goto L71;
        return r22;
    L71:
        r0 = r22;
        r15 = r21;
        r14 = r26;
        r16 = r113;
        r12 = r117;
        r13 = r25;
        goto L72
    L51:
        if (r21.element == null) goto L58;
        r24 = r116;
        r117 = r12;
        r25 = r115;
        r24.f(r1.element, new FlowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$1(null, r21, r1, r115, r114));     // Catch: Throwable -> L56
        r26 = r114;
    L75:
        r24.t(((kotlinx.coroutines.channels.p) r26.element).z(), new FlowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$2(null, r21, r1, r25, r26));     // Catch: Throwable -> L61
    L61:
        th = th;
    L56:
        th = th;
        r26 = r114;
        goto L65
    L58:
        r24 = r116;
        r117 = r12;
        r25 = r115;
        r26 = r114;
        goto L75
    L38:
        if (r21.element != null) goto L40;
    L43:
        boolean r28 = true;
    L45:
        if (kotlin.coroutines.jvm.internal.a.a(r28).booleanValue() == true) goto L49;
        throw new AssertionError();
    L40:
        if (r1.element > r5) goto L43;
        r28 = false;
        goto L45
    L74:
        return kotlin.v.f15822a;
    L8:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L9:
        Ref$LongRef r29 = (Ref$LongRef) this.L$4;
        r15 = (Ref$ObjectRef) this.L$3;
        r14 = (Ref$ObjectRef) this.L$2;
        r13 = (d) this.L$1;
        r12 = (kotlinx.coroutines.i0) this.L$0;
        kotlin.k.b(r23);
        r17 = r29;
        r16 = this;
        goto L31
    L10:
        kotlin.k.b(r23);
        kotlinx.coroutines.i0 r30 = this.p$;
        d r31 = this.p$0;
        r14 = new Ref$ObjectRef();
        r14.element = (T) ProduceKt.e(r30, null, 0, new FlowKt__DelayKt$debounceInternal$1$values$1(this, null), 3, null);
        Ref$ObjectRef r118 = new Ref$ObjectRef();
        r118.element = null;
        r12 = r30;
        r16 = this;
        r13 = r31;
        r15 = r118;
        goto L12
    }
}
