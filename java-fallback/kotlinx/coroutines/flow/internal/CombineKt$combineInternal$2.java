package kotlinx.coroutines.flow.internal;

import androidx.exifinterface.media.ExifInterface;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.collections.f0;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.v;
import kotlinx.coroutines.channels.t;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0006\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"R", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/i0;", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2", f = "Combine.kt", l = {57, 79, 82}, m = "invokeSuspend")
final class CombineKt$combineInternal$2 extends SuspendLambda implements kotlin.jvm.b.p<i0, kotlin.coroutines.c<? super v>, Object> {
    final /* synthetic */ kotlin.jvm.b.a $arrayFactory;
    final /* synthetic */ kotlinx.coroutines.flow.c[] $flows;
    final /* synthetic */ kotlinx.coroutines.flow.d $this_combineInternal;
    final /* synthetic */ kotlin.jvm.b.q $transform;
    byte B$0;
    int I$0;
    int I$1;
    int I$2;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    Object L$6;
    int label;
    private i0 p$;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1, reason: invalid class name */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0006\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"R", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/i0;", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
    @kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1", f = "Combine.kt", l = {cn.mucang.android.jiakaoyi.signal.communicate.receive.l.Receive_GEAR_DATA2}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements kotlin.jvm.b.p<i0, kotlin.coroutines.c<? super v>, Object> {
        final /* synthetic */ int $i;
        final /* synthetic */ AtomicInteger $nonClosed;
        final /* synthetic */ kotlinx.coroutines.channels.f $resultChannel;
        Object L$0;
        Object L$1;
        int label;
        private i0 p$;
        final /* synthetic */ CombineKt$combineInternal$2 this$0;

        AnonymousClass1(CombineKt$combineInternal$2 r1, int r2, kotlinx.coroutines.channels.f r3, AtomicInteger r4, kotlin.coroutines.c r5) {
            this.this$0 = r1;
            this.$i = r2;
            this.$resultChannel = r3;
            this.$nonClosed = r4;
            super(2, r5);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final kotlin.coroutines.c<v> create(Object r8, kotlin.coroutines.c<?> r9) {
            AnonymousClass1 r6 = new AnonymousClass1(this.this$0, this.$i, this.$resultChannel, this.$nonClosed, r9);
            r6.p$ = (i0) r8;
            return r6;
        }

        @Override // kotlin.jvm.b.p
        public final Object invoke(i0 r1, kotlin.coroutines.c<? super v> r2) {
            return ((AnonymousClass1) create(r1, r2)).invokeSuspend(v.f15822a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object r6) {
            Object r0 = kotlin.coroutines.intrinsics.a.d();
            int r1 = this.label;
            if (r1 == 0) goto L10;
            if (r1 != 1) goto L9;
            kotlinx.coroutines.flow.c r2 = (kotlinx.coroutines.flow.c) this.L$1;
            i0 r3 = (i0) this.L$0;
            kotlin.k.b(r6);     // Catch: Throwable -> L19
        L14:
            if (this.$nonClosed.decrementAndGet() != 0) goto L18;
            t.a.a(this.$resultChannel, null, 1, null);
        L18:
            return v.f15822a;
        L9:
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        L10:
            kotlin.k.b(r6);
            i0 r7 = this.p$;
            kotlinx.coroutines.flow.c r4 = this.this$0.$flows[this.$i];     // Catch: Throwable -> L19
            CombineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1 r5 = new CombineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1(this);     // Catch: Throwable -> L19
            this.L$0 = r7;     // Catch: Throwable -> L19
            this.L$1 = r4;     // Catch: Throwable -> L19
            this.label = 1;     // Catch: Throwable -> L19
            if (r4.d(r5, this) != r0) goto L14;
            return r0;
        L19:
            th = move-exception;
            if (this.$nonClosed.decrementAndGet() != 0) goto L23;
            t.a.a(this.$resultChannel, null, 1, null);
        L23:
            throw th;
        }
    }

    CombineKt$combineInternal$2(kotlinx.coroutines.flow.d r1, kotlinx.coroutines.flow.c[] r2, kotlin.jvm.b.a r3, kotlin.jvm.b.q r4, kotlin.coroutines.c r5) {
        this.$this_combineInternal = r1;
        this.$flows = r2;
        this.$arrayFactory = r3;
        this.$transform = r4;
        super(2, r5);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.c<v> create(Object r8, kotlin.coroutines.c<?> r9) {
        CombineKt$combineInternal$2 r6 = new CombineKt$combineInternal$2(this.$this_combineInternal, this.$flows, this.$arrayFactory, this.$transform, r9);
        r6.p$ = (i0) r8;
        return r6;
    }

    @Override // kotlin.jvm.b.p
    public final Object invoke(i0 r1, kotlin.coroutines.c<? super v> r2) {
        return ((CombineKt$combineInternal$2) create(r1, r2)).invokeSuspend(v.f15822a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x01c2 -> B:46:0x01c5). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x01cd -> B:48:0x01ce). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object r25) {
        Object r7 = kotlin.coroutines.intrinsics.a.d();
        int r0 = this.label;
        int r8 = 0;
        int r11 = 1;
        if (r0 == 0) goto L12;
        if (r0 == 1) goto L11;
        if (r0 == 2) goto L10;
        if (r0 != 3) goto L9;
        Object[] r1 = (Object[]) this.L$6;
        f0 r2 = (f0) this.L$5;
        int r3 = this.I$2;
        byte[] r4 = (byte[]) this.L$4;
        int r5 = this.I$1;
        AtomicInteger r6 = (AtomicInteger) this.L$3;
        kotlinx.coroutines.channels.f r9 = (kotlinx.coroutines.channels.f) this.L$2;
        Object[] r10 = (Object[]) this.L$1;
        int r12 = this.I$0;
        i0 r13 = (i0) this.L$0;
        kotlin.k.b(r25);
        AtomicInteger r14 = r6;
        CombineKt$combineInternal$2 r15 = this;
        i0 r16 = r13;
        int r17 = r12;
        Object r18 = r7;
        Object[] r19 = r10;
        int r20 = r3;
    L48:
        int r21 = r20;
    L46:
        Object[] r110 = r19;
        r7 = r18;
        int r111 = r17;
        int r22 = r21;
        byte[] r23 = r4;
        kotlinx.coroutines.channels.f r24 = r9;
        i0 r112 = r16;
    L49:
        r11 = 1;
        r8 = r22;
    L20:
        byte r26 = (byte) (r8 + r11);
        r15.L$0 = r112;
        r15.I$0 = r111;
        r15.L$1 = r110;
        r15.L$2 = r24;
        r15.L$3 = r14;
        r15.I$1 = r5;
        r15.L$4 = r23;
        r15.B$0 = r26;
        r15.label = r11;
        Object r27 = kotlinx.coroutines.channels.i.j0(r24, r15);
        if (r27 != r7) goto L23;
        return r7;
    L23:
        r18 = r7;
        r19 = r110;
        kotlinx.coroutines.channels.f r28 = r24;
        r4 = r23;
        byte r29 = r26;
        r9 = r28;
        int r210 = r111;
        i0 r113 = r112;
        r17 = r210;
    L24:
        f0 r30 = (f0) r27;
        if (r30 == null) goto L51;
    L26:
        int r114 = r30.c();
        Object r115 = r19[r114];
        r19[r114] = r30.d();
        if (r115 != p.b) goto L30;
        r5 = r5 - 1;
    L30:
        if (r4[r114] == r29) goto L35;
        r4[r114] = r29;
        f0 r31 = (f0) r9.poll();
        if (r31 == null) goto L35;
        r30 = r31;
    L35:
        if (r5 != 0) goto L47;
        Object[] r32 = (Object[]) r15.$arrayFactory.invoke();
        if (r32 != null) goto L43;
        kotlin.jvm.b.q r116 = r15.$transform;
        kotlinx.coroutines.flow.d r117 = r15.$this_combineInternal;
        Objects.requireNonNull(r19, "null cannot be cast to non-null type kotlin.Array<T>");
        r15.L$0 = r113;
        r15.I$0 = r17;
        r15.L$1 = r19;
        r15.L$2 = r9;
        r15.L$3 = r14;
        r15.I$1 = r5;
        r15.L$4 = r4;
        r15.I$2 = r29;
        r15.L$5 = r30;
        r15.L$6 = r32;
        r15.label = 2;
        if (r116.invoke(r117, r19, r15) != r18) goto L41;
        return r18;
    L41:
        Object[] r33 = r19;
        r7 = r18;
        int r34 = r17;
        r112 = r113;
        r110 = r33;
        r111 = r34;
        r22 = r29;
        r23 = r4;
        r24 = r9;
        goto L49
    L43:
        Objects.requireNonNull(r19, "null cannot be cast to non-null type kotlin.Array<T?>");
        r16 = r113;
        kotlin.collections.k.f(r19, r32, 0, 0, 0, 14, null);
        kotlin.jvm.b.q r118 = r15.$transform;
        kotlinx.coroutines.flow.d r119 = r15.$this_combineInternal;
        r15.L$0 = r16;
        r15.I$0 = r17;
        r15.L$1 = r19;
        r15.L$2 = r9;
        r15.L$3 = r14;
        r15.I$1 = r5;
        r15.L$4 = r4;
        r15.I$2 = r29;
        r15.L$5 = r30;
        r15.L$6 = r32;
        r15.label = 3;
        r21 = r29;
        if (r118.invoke(r119, r32, r15) != r18) goto L46;
        return r18;
    L47:
        r16 = r113;
        r20 = r29;
        goto L48
    L51:
        return v.f15822a;
    L9:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L10:
        Object[] r35 = (Object[]) this.L$6;
        f0 r36 = (f0) this.L$5;
        int r37 = this.I$2;
        byte[] r38 = (byte[]) this.L$4;
        r5 = this.I$1;
        AtomicInteger r39 = (AtomicInteger) this.L$3;
        kotlinx.coroutines.channels.f r40 = (kotlinx.coroutines.channels.f) this.L$2;
        Object[] r41 = (Object[]) this.L$1;
        int r42 = this.I$0;
        r112 = (i0) this.L$0;
        kotlin.k.b(r25);
        r14 = r39;
        r15 = this;
        r110 = r41;
        r111 = r42;
        r22 = r37;
        r23 = r38;
        r24 = r40;
        goto L49
    L11:
        byte r43 = this.B$0;
        r4 = (byte[]) this.L$4;
        r5 = this.I$1;
        AtomicInteger r44 = (AtomicInteger) this.L$3;
        r9 = (kotlinx.coroutines.channels.f) this.L$2;
        Object[] r45 = (Object[]) this.L$1;
        int r46 = this.I$0;
        i0 r120 = (i0) this.L$0;
        kotlin.k.b(r25);
        r14 = r44;
        r15 = this;
        r113 = r120;
        r17 = r46;
        r18 = r7;
        r19 = r45;
        r27 = r25;
        r29 = r43;
        goto L24
    L12:
        kotlin.k.b(r25);
        r112 = this.p$;
        int r121 = this.$flows.length;
        if (r121 == 0) goto L15;
        r110 = new Object[r121];
        kotlin.collections.k.j(r110, p.b, 0, 0, 6, null);
        kotlinx.coroutines.channels.f r122 = kotlinx.coroutines.channels.h.b(r121, null, null, 6, null);
        r14 = new AtomicInteger(r121);
        int r47 = 0;
    L17:
        if (r47 >= r121) goto L19;
        kotlinx.coroutines.f.b(r112, null, null, new AnonymousClass1(this, r47, r122, r14, null), 3, null);
        r47 = r47 + 1;
        r14 = r14;
        r110 = r110;
        r121 = r121;
        goto L17
    L19:
        int r48 = r121;
        r23 = new byte[r48];
        r5 = r48;
        r111 = r5;
        r15 = this;
        r24 = r122;
        goto L20
    L15:
        return v.f15822a;
    }
}
