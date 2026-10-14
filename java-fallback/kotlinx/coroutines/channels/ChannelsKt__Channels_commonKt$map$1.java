package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;

/* JADX INFO: Add missing generic type declarations: [R] */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0006\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u0002H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {ExifInterface.LONGITUDE_EAST, "R", "Lkotlinx/coroutines/channels/n;", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$map$1", f = "Channels.common.kt", l = {2196, 1395, 1395}, m = "invokeSuspend")
final class ChannelsKt__Channels_commonKt$map$1<R> extends SuspendLambda implements kotlin.jvm.b.p<n<? super R>, kotlin.coroutines.c<? super kotlin.v>, Object> {
    final /* synthetic */ p $this_map;
    final /* synthetic */ kotlin.jvm.b.p $transform;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    Object L$6;
    Object L$7;
    Object L$8;
    Object L$9;
    int label;
    private n p$;

    ChannelsKt__Channels_commonKt$map$1(p r1, kotlin.jvm.b.p r2, kotlin.coroutines.c r3) {
        this.$this_map = r1;
        this.$transform = r2;
        super(2, r3);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.c<kotlin.v> create(Object r4, kotlin.coroutines.c<?> r5) {
        ChannelsKt__Channels_commonKt$map$1 r0 = new ChannelsKt__Channels_commonKt$map$1(this.$this_map, this.$transform, r5);
        r0.p$ = (n) r4;
        return r0;
    }

    @Override // kotlin.jvm.b.p
    public final Object invoke(Object r1, kotlin.coroutines.c<? super kotlin.v> r2) {
        return ((ChannelsKt__Channels_commonKt$map$1) create(r1, r2)).invokeSuspend(kotlin.v.f15822a);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x012e -> B:36:0x0134). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object r18) {
        Object r0 = kotlin.coroutines.intrinsics.a.d();
        int r2 = this.label;
        int r4 = 2;
        if (r2 == 0) goto L20;
        if (r2 == 1) goto L17;
        if (r2 == 2) goto L12;
        if (r2 != 3) goto L11;
        ChannelIterator r3 = (ChannelIterator) this.L$6;
        p r6 = (p) this.L$5;
        Throwable r7 = (Throwable) this.L$4;
        p r8 = (p) this.L$3;
        ChannelsKt__Channels_commonKt$map$1<R> r9 = (ChannelsKt__Channels_commonKt$map$1) this.L$2;
        p r10 = (p) this.L$1;
        n r11 = (n) this.L$0;
        kotlin.k.b(r18);     // Catch: Throwable -> L42
        ChannelsKt__Channels_commonKt$map$1<R> r12 = this;
        p r13 = r6;
        n r14 = r11;
        p r15 = r10;
        ChannelsKt__Channels_commonKt$map$1<R> r16 = r9;
        p r17 = r8;
    L36:
        r4 = 2;
    L53:
        r12.L$0 = r14;     // Catch: Throwable -> L40
        r12.L$1 = r15;     // Catch: Throwable -> L40
        r12.L$2 = r16;     // Catch: Throwable -> L40
        r12.L$3 = r17;     // Catch: Throwable -> L40
        r12.L$4 = r7;     // Catch: Throwable -> L40
        r12.L$5 = r13;     // Catch: Throwable -> L40
        r12.L$6 = r3;     // Catch: Throwable -> L40
        r12.label = 1;     // Catch: Throwable -> L40
        Object r19 = r3.a(r16);     // Catch: Throwable -> L40
        if (r19 != r0) goto L27;
        return r0;
    L27:
        if (((Boolean) r19).booleanValue() == false) goto L37;
        Object r110 = r3.next();     // Catch: Throwable -> L40
        kotlin.jvm.b.p r111 = r12.$transform;     // Catch: Throwable -> L40
        r12.L$0 = r14;     // Catch: Throwable -> L40
        r12.L$1 = r15;     // Catch: Throwable -> L40
        r12.L$2 = r16;     // Catch: Throwable -> L40
        r12.L$3 = r17;     // Catch: Throwable -> L40
        r12.L$4 = r7;     // Catch: Throwable -> L40
        r12.L$5 = r13;     // Catch: Throwable -> L40
        r12.L$6 = r3;     // Catch: Throwable -> L40
        r12.L$7 = r110;     // Catch: Throwable -> L40
        r12.L$8 = r110;     // Catch: Throwable -> L40
        r12.L$9 = r14;     // Catch: Throwable -> L40
        r12.label = r4;     // Catch: Throwable -> L40
        kotlin.jvm.internal.q.c(6);     // Catch: Throwable -> L40
        Object r112 = r111.invoke(r110, r12);     // Catch: Throwable -> L40
        kotlin.jvm.internal.q.c(7);     // Catch: Throwable -> L40
        if (r112 != r0) goto L31;
        return r0;
    L31:
        n r113 = r14;
        ChannelsKt__Channels_commonKt$map$1<R> r5 = r12;
        p r20 = r13;
        p r114 = r15;
        ChannelIterator r21 = r3;
        n r22 = r113;
        p r115 = r17;
        Object r23 = r110;
    L32:
        r5.L$0 = r113;     // Catch: Throwable -> L15
        r5.L$1 = r114;     // Catch: Throwable -> L15
        r5.L$2 = r16;     // Catch: Throwable -> L15
        r5.L$3 = r115;     // Catch: Throwable -> L15
        r5.L$4 = r7;     // Catch: Throwable -> L15
        r5.L$5 = r20;     // Catch: Throwable -> L15
        r5.L$6 = r21;     // Catch: Throwable -> L15
        r5.L$7 = r23;     // Catch: Throwable -> L15
        r5.L$8 = r110;     // Catch: Throwable -> L15
        r5.label = 3;     // Catch: Throwable -> L15
        if (r22.F(r112, r5) != r0) goto L35;
        return r0;
    L35:
        r3 = r21;
        r17 = r115;
        r15 = r114;
        r12 = r5;
        r13 = r20;
        r14 = r113;
    L15:
        th = move-exception;
        Throwable r24 = th;
        p r25 = r115;
    L49:
        throw r24;     // Catch: Throwable -> L45
    L45:
        th = move-exception;
        i.j(r25, r24);
        throw th;
    L37:
        kotlin.v r1 = kotlin.v.f15822a;     // Catch: Throwable -> L40
        i.j(r17, r7);
        return r1;
    L40:
        th = move-exception;
        r24 = th;
        r25 = r17;
        goto L49
    L11:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L12:
        r22 = (n) this.L$9;
        Object r26 = this.L$8;
        Object r27 = this.L$7;
        r21 = (ChannelIterator) this.L$6;
        p r28 = (p) this.L$5;
        Throwable r116 = (Throwable) this.L$4;
        r115 = (p) this.L$3;
        ChannelsKt__Channels_commonKt$map$1<R> r117 = (ChannelsKt__Channels_commonKt$map$1) this.L$2;
        p r118 = (p) this.L$1;
        n r119 = (n) this.L$0;
        kotlin.k.b(r18);     // Catch: Throwable -> L15
        r5 = this;
        r113 = r119;
        r112 = r18;
        r110 = r26;
        r20 = r28;
        r23 = r27;
        r7 = r116;
        r16 = r117;
        r114 = r118;
        goto L32
    L17:
        r3 = (ChannelIterator) this.L$6;
        p r29 = (p) this.L$5;
        r7 = (Throwable) this.L$4;
        p r30 = (p) this.L$3;
        ChannelsKt__Channels_commonKt$map$1<R> r31 = (ChannelsKt__Channels_commonKt$map$1) this.L$2;
        p r120 = (p) this.L$1;
        n r121 = (n) this.L$0;
        kotlin.k.b(r18);     // Catch: Throwable -> L42
        r19 = r18;
        r12 = this;
        r13 = r29;
        r14 = r121;
        r15 = r120;
        r16 = r31;
        r17 = r30;
        goto L27
    L20:
        kotlin.k.b(r18);
        n r32 = this.p$;
        r13 = this.$this_map;
        r16 = this;
        r12 = r16;
        r17 = r13;
        r15 = r17;
        r14 = r32;
        r3 = r13.iterator();     // Catch: Throwable -> L42
        r7 = null;
    L42:
        th = move-exception;
        r24 = th;
        goto L49
    }
}
