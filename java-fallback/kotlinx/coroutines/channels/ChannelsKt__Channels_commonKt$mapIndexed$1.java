package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;

/* JADX INFO: Add missing generic type declarations: [R] */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0006\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u0002H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {ExifInterface.LONGITUDE_EAST, "R", "Lkotlinx/coroutines/channels/n;", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$mapIndexed$1", f = "Channels.common.kt", l = {1418, 1419, 1419}, m = "invokeSuspend")
final class ChannelsKt__Channels_commonKt$mapIndexed$1<R> extends SuspendLambda implements kotlin.jvm.b.p<n<? super R>, kotlin.coroutines.c<? super kotlin.v>, Object> {
    final /* synthetic */ p $this_mapIndexed;
    final /* synthetic */ kotlin.jvm.b.q $transform;
    int I$0;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    private n p$;

    ChannelsKt__Channels_commonKt$mapIndexed$1(p r1, kotlin.jvm.b.q r2, kotlin.coroutines.c r3) {
        this.$this_mapIndexed = r1;
        this.$transform = r2;
        super(2, r3);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.c<kotlin.v> create(Object r4, kotlin.coroutines.c<?> r5) {
        ChannelsKt__Channels_commonKt$mapIndexed$1 r0 = new ChannelsKt__Channels_commonKt$mapIndexed$1(this.$this_mapIndexed, this.$transform, r5);
        r0.p$ = (n) r4;
        return r0;
    }

    @Override // kotlin.jvm.b.p
    public final Object invoke(Object r1, kotlin.coroutines.c<? super kotlin.v> r2) {
        return ((ChannelsKt__Channels_commonKt$mapIndexed$1) create(r1, r2)).invokeSuspend(kotlin.v.f15822a);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x00b1 -> B:13:0x0060). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object r12) {
        Object r0 = kotlin.coroutines.intrinsics.a.d();
        int r1 = this.label;
        if (r1 == 0) goto L12;
        if (r1 == 1) goto L11;
        if (r1 == 2) goto L10;
        if (r1 != 3) goto L9;
        ChannelIterator r2 = (ChannelIterator) this.L$2;
        int r5 = this.I$0;
        n r6 = (n) this.L$0;
        kotlin.k.b(r12);
        n r13 = r6;
        ChannelsKt__Channels_commonKt$mapIndexed$1<R> r7 = this;
    L13:
        r7.L$0 = r13;
        r7.I$0 = r5;
        r7.L$1 = r2;
        r7.label = 1;
        Object r8 = r2.a(r7);
        if (r8 != r0) goto L16;
        return r0;
    L16:
        ChannelsKt__Channels_commonKt$mapIndexed$1<R> r10 = r7;
        n r9 = r13;
        r12 = r8;
        ChannelsKt__Channels_commonKt$mapIndexed$1<R> r11 = r10;
    L18:
        if (((Boolean) r12).booleanValue() == false) goto L28;
        Object r14 = r2.next();
        kotlin.jvm.b.q r15 = r11.$transform;
        Integer r16 = kotlin.coroutines.jvm.internal.a.d(r5);
        int r17 = r5 + 1;
        r11.L$0 = r9;
        r11.I$0 = r17;
        r11.L$1 = r14;
        r11.L$2 = r2;
        r11.L$3 = r9;
        r11.label = 2;
        Object r18 = r15.invoke(r16, r14, r11);
        if (r18 != r0) goto L22;
        return r0;
    L22:
        ChannelsKt__Channels_commonKt$mapIndexed$1<R> r19 = r11;
        int r20 = r17;
        ChannelIterator r21 = r2;
        n r3 = r9;
        Object r22 = r14;
        r12 = r18;
    L23:
        r19.L$0 = r9;
        r19.I$0 = r20;
        r19.L$1 = r22;
        r19.L$2 = r21;
        r19.label = 3;
        if (r3.F(r12, r19) != r0) goto L26;
        return r0;
    L26:
        r2 = r21;
        r13 = r9;
        r5 = r20;
        r7 = r19;
        goto L13
    L28:
        return kotlin.v.f15822a;
    L9:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L10:
        r3 = (n) this.L$3;
        r21 = (ChannelIterator) this.L$2;
        Object r23 = this.L$1;
        r20 = this.I$0;
        n r24 = (n) this.L$0;
        kotlin.k.b(r12);
        r19 = this;
        r22 = r23;
        r9 = r24;
        goto L23
    L11:
        r2 = (ChannelIterator) this.L$1;
        r5 = this.I$0;
        r9 = (n) this.L$0;
        kotlin.k.b(r12);
        r11 = this;
        goto L18
    L12:
        kotlin.k.b(r12);
        r13 = this.p$;
        r7 = this;
        r2 = this.$this_mapIndexed.iterator();
        r5 = 0;
        goto L13
    }
}
