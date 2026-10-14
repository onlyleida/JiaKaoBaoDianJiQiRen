package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;

/* JADX INFO: Add missing generic type declarations: [E] */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/n;", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$drop$1", f = "Channels.common.kt", l = {695, 700, 701}, m = "invokeSuspend")
final class ChannelsKt__Channels_commonKt$drop$1<E> extends SuspendLambda implements kotlin.jvm.b.p<n<? super E>, kotlin.coroutines.c<? super kotlin.v>, Object> {
    final /* synthetic */ int $n;
    final /* synthetic */ p $this_drop;
    int I$0;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    private n p$;

    ChannelsKt__Channels_commonKt$drop$1(p r1, int r2, kotlin.coroutines.c r3) {
        this.$this_drop = r1;
        this.$n = r2;
        super(2, r3);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.c<kotlin.v> create(Object r4, kotlin.coroutines.c<?> r5) {
        ChannelsKt__Channels_commonKt$drop$1 r0 = new ChannelsKt__Channels_commonKt$drop$1(this.$this_drop, this.$n, r5);
        r0.p$ = (n) r4;
        return r0;
    }

    @Override // kotlin.jvm.b.p
    public final Object invoke(Object r1, kotlin.coroutines.c<? super kotlin.v> r2) {
        return ((ChannelsKt__Channels_commonKt$drop$1) create(r1, r2)).invokeSuspend(kotlin.v.f15822a);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x007d -> B:23:0x0084). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00d6 -> B:33:0x00a7). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object r10) {
        Object r0 = kotlin.coroutines.intrinsics.a.d();
        int r1 = this.label;
        if (r1 == 0) goto L12;
        if (r1 == 1) goto L11;
        if (r1 == 2) goto L10;
        if (r1 != 3) goto L9;
        ChannelIterator<E> r2 = (ChannelIterator) this.L$2;
        int r4 = this.I$0;
        n r5 = (n) this.L$0;
        kotlin.k.b(r10);
        int r6 = r4;
        n r11 = r5;
        ChannelIterator<E> r7 = r2;
        Object r3 = r0;
        ChannelsKt__Channels_commonKt$drop$1<E> r8 = this;
    L33:
        r8.L$0 = r11;
        r8.I$0 = r6;
        r8.L$1 = r7;
        r8.label = 2;
        Object r9 = r7.a(r8);
        if (r9 != r3) goto L36;
        return r3;
    L36:
        n r12 = r11;
        r10 = r9;
    L38:
        if (((Boolean) r10).booleanValue() == false) goto L44;
        E r13 = r7.next();
        r8.L$0 = r12;
        r8.I$0 = r6;
        r8.L$1 = r13;
        r8.L$2 = r7;
        r8.label = 3;
        if (r12.F(r13, r8) != r3) goto L42;
        return r3;
    L42:
        r11 = r12;
        goto L33
    L44:
        return kotlin.v.f15822a;
    L9:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L10:
        ChannelIterator<E> r14 = (ChannelIterator) this.L$1;
        int r15 = this.I$0;
        r12 = (n) this.L$0;
        kotlin.k.b(r10);
        r6 = r15;
        r7 = r14;
        r3 = r0;
        r8 = this;
        goto L38
    L11:
        ChannelIterator<E> r16 = (ChannelIterator) this.L$1;
        int r17 = this.I$0;
        n r18 = (n) this.L$0;
        kotlin.k.b(r10);
        n r19 = r18;
        r6 = r17;
        ChannelIterator<E> r20 = r16;
        r3 = r0;
        r8 = this;
    L24:
        if (((Boolean) r10).booleanValue() == false) goto L30;
        r20.next();
        int r110 = r6 - 1;
        if (r110 != 0) goto L28;
        r6 = r110;
        goto L30
    L28:
        n r21 = r19;
        ChannelIterator<E> r22 = r20;
        int r23 = r110;
        ChannelsKt__Channels_commonKt$drop$1<E> r111 = r8;
        r0 = r3;
    L29:
        ChannelIterator<E> r24 = r22;
        r111.L$0 = r21;
        r111.I$0 = r23;
        r111.L$1 = r24;
        r111.label = 1;
        Object r25 = r24.a(r111);
        if (r25 != r0) goto L22;
        return r0;
    L22:
        Object r26 = r0;
        r8 = r111;
        r10 = r25;
        r19 = r21;
        r6 = r23;
        r20 = r24;
        r3 = r26;
    L30:
        r11 = r19;
    L32:
        r7 = r8.$this_drop.iterator();
        goto L33
    L12:
        kotlin.k.b(r10);
        r11 = this.p$;
        int r27 = this.$n;
        if (r27 < 0) goto L15;
        boolean r28 = true;
    L16:
        if (r28 == false) goto L46;
        if (r27 <= 0) goto L31;
        r21 = r11;
        r111 = this;
        r22 = this.$this_drop.iterator();
        r23 = r27;
        goto L29
    L31:
        r6 = r27;
        r3 = r0;
        r8 = this;
        goto L32
    L46:
        throw new IllegalArgumentException(("Requested element count " + this.$n + " is less than zero.").toString());
    L15:
        r28 = false;
        goto L16
    }
}
