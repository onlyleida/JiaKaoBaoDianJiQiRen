package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;

/* JADX INFO: Add missing generic type declarations: [V] */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0007\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0002*\b\u0012\u0004\u0012\u00028\u00020\u0003H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {ExifInterface.LONGITUDE_EAST, "R", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlinx/coroutines/channels/n;", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$zip$2", f = "Channels.common.kt", l = {2196, 2186, 2188}, m = "invokeSuspend")
final class ChannelsKt__Channels_commonKt$zip$2<V> extends SuspendLambda implements kotlin.jvm.b.p<n<? super V>, kotlin.coroutines.c<? super kotlin.v>, Object> {
    final /* synthetic */ p $other;
    final /* synthetic */ p $this_zip;
    final /* synthetic */ kotlin.jvm.b.p $transform;
    Object L$0;
    Object L$1;
    Object L$10;
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

    ChannelsKt__Channels_commonKt$zip$2(p r1, p r2, kotlin.jvm.b.p r3, kotlin.coroutines.c r4) {
        this.$this_zip = r1;
        this.$other = r2;
        this.$transform = r3;
        super(2, r4);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.c<kotlin.v> create(Object r5, kotlin.coroutines.c<?> r6) {
        ChannelsKt__Channels_commonKt$zip$2 r0 = new ChannelsKt__Channels_commonKt$zip$2(this.$this_zip, this.$other, this.$transform, r6);
        r0.p$ = (n) r5;
        return r0;
    }

    @Override // kotlin.jvm.b.p
    public final Object invoke(Object r1, kotlin.coroutines.c<? super kotlin.v> r2) {
        return ((ChannelsKt__Channels_commonKt$zip$2) create(r1, r2)).invokeSuspend(kotlin.v.f15822a);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x010b -> B:22:0x00bc). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x013a -> B:38:0x013e). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object r18) {
        Object r0 = kotlin.coroutines.intrinsics.a.d();
        int r2 = this.label;
        int r4 = 2;
        int r5 = 1;
        if (r2 == 0) goto L20;
        if (r2 == 1) goto L17;
        if (r2 == 2) goto L12;
        if (r2 != 3) goto L11;
        ChannelIterator r3 = (ChannelIterator) this.L$7;
        p r6 = (p) this.L$6;
        Throwable r7 = (Throwable) this.L$5;
        p r8 = (p) this.L$4;
        ChannelsKt__Channels_commonKt$zip$2<V> r9 = (ChannelsKt__Channels_commonKt$zip$2) this.L$3;
        p r10 = (p) this.L$2;
        ChannelIterator r11 = (ChannelIterator) this.L$1;
        n r12 = (n) this.L$0;
        kotlin.k.b(r18);     // Catch: Throwable -> L42
        ChannelsKt__Channels_commonKt$zip$2<V> r13 = this;
    L38:
        r4 = 2;
        r5 = 1;
    L22:
        r13.L$0 = r12;     // Catch: Throwable -> L42
        r13.L$1 = r11;     // Catch: Throwable -> L42
        r13.L$2 = r10;     // Catch: Throwable -> L42
        r13.L$3 = r9;     // Catch: Throwable -> L42
        r13.L$4 = r8;     // Catch: Throwable -> L42
        r13.L$5 = r7;     // Catch: Throwable -> L42
        r13.L$6 = r6;     // Catch: Throwable -> L42
        r13.L$7 = r3;     // Catch: Throwable -> L42
        r13.label = r5;     // Catch: Throwable -> L42
        Object r14 = r3.a(r9);     // Catch: Throwable -> L42
        if (r14 != r0) goto L26;
        return r0;
    L26:
        if (((Boolean) r14).booleanValue() == false) goto L39;
        Object r15 = r3.next();     // Catch: Throwable -> L42
        r13.L$0 = r12;     // Catch: Throwable -> L42
        r13.L$1 = r11;     // Catch: Throwable -> L42
        r13.L$2 = r10;     // Catch: Throwable -> L42
        r13.L$3 = r9;     // Catch: Throwable -> L42
        r13.L$4 = r8;     // Catch: Throwable -> L42
        r13.L$5 = r7;     // Catch: Throwable -> L42
        r13.L$6 = r6;     // Catch: Throwable -> L42
        r13.L$7 = r3;     // Catch: Throwable -> L42
        r13.L$8 = r15;     // Catch: Throwable -> L42
        r13.L$9 = r15;     // Catch: Throwable -> L42
        r13.label = r4;     // Catch: Throwable -> L42
        Object r16 = r11.a(r13);     // Catch: Throwable -> L42
        if (r16 != r0) goto L30;
        return r0;
    L30:
        ChannelsKt__Channels_commonKt$zip$2<V> r17 = r13;
        ChannelIterator r19 = r11;
        ChannelsKt__Channels_commonKt$zip$2<V> r110 = r9;
        Throwable r20 = r7;
        Object r21 = r15;
    L32:
        if (((Boolean) r16).booleanValue() == true) goto L34;
        r7 = r20;
        r9 = r110;
        r11 = r19;
        r13 = r17;
        r4 = 2;
        goto L22
    L34:
        Object r111 = r19.next();     // Catch: Throwable -> L42
        Object r22 = r17.$transform.invoke(r15, r111);     // Catch: Throwable -> L42
        r17.L$0 = r12;     // Catch: Throwable -> L42
        r17.L$1 = r19;     // Catch: Throwable -> L42
        r17.L$2 = r10;     // Catch: Throwable -> L42
        r17.L$3 = r110;     // Catch: Throwable -> L42
        r17.L$4 = r8;     // Catch: Throwable -> L42
        r17.L$5 = r20;     // Catch: Throwable -> L42
        r17.L$6 = r6;     // Catch: Throwable -> L42
        r17.L$7 = r3;     // Catch: Throwable -> L42
        r17.L$8 = r21;     // Catch: Throwable -> L42
        r17.L$9 = r15;     // Catch: Throwable -> L42
        r17.L$10 = r111;     // Catch: Throwable -> L42
        r17.label = 3;     // Catch: Throwable -> L42
        if (r12.F(r22, r17) != r0) goto L37;
        return r0;
    L37:
        r7 = r20;
        r9 = r110;
        r11 = r19;
        r13 = r17;
        goto L38
    L39:
        kotlin.v r1 = kotlin.v.f15822a;     // Catch: Throwable -> L42
        i.j(r8, r7);
        return r1;
    L11:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L12:
        Object r23 = this.L$9;
        Object r24 = this.L$8;
        ChannelIterator r25 = (ChannelIterator) this.L$7;
        p r26 = (p) this.L$6;
        r20 = (Throwable) this.L$5;
        p r112 = (p) this.L$4;
        r110 = (ChannelsKt__Channels_commonKt$zip$2) this.L$3;
        p r113 = (p) this.L$2;
        r19 = (ChannelIterator) this.L$1;
        n r114 = (n) this.L$0;
        kotlin.k.b(r18);     // Catch: Throwable -> L15
        r16 = r18;
        r17 = this;
        r15 = r23;
        r3 = r25;
        r21 = r24;
        r6 = r26;
        r8 = r112;
        r10 = r113;
        r12 = r114;
    L15:
        th = move-exception;
        Throwable r27 = th;
        r8 = r112;
    L52:
        throw r27;     // Catch: Throwable -> L45
    L45:
        th = move-exception;
        i.j(r8, r27);
        throw th;
    L17:
        r3 = (ChannelIterator) this.L$7;
        r6 = (p) this.L$6;
        r7 = (Throwable) this.L$5;
        r8 = (p) this.L$4;
        r9 = (ChannelsKt__Channels_commonKt$zip$2) this.L$3;
        r10 = (p) this.L$2;
        r11 = (ChannelIterator) this.L$1;
        r12 = (n) this.L$0;
        kotlin.k.b(r18);     // Catch: Throwable -> L42
        r14 = r18;
        r13 = this;
        goto L26
    L20:
        kotlin.k.b(r18);
        n r28 = this.p$;
        ChannelIterator r29 = this.$other.iterator();
        r8 = this.$this_zip;
        r7 = null;
        r13 = this;
        r12 = r28;
        r11 = r29;
        r6 = r8;
        r10 = r6;
        r3 = r8.iterator();     // Catch: Throwable -> L42
        r9 = r13;
    L42:
        th = move-exception;
        r27 = th;
        goto L52
    }
}
