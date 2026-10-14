package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.collections.f0;
import kotlin.coroutines.jvm.internal.SuspendLambda;

/* JADX INFO: Add missing generic type declarations: [E] */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0006\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00020\u0001H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/n;", "Lkotlin/collections/f0;", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$withIndex$1", f = "Channels.common.kt", l = {1653, 1654}, m = "invokeSuspend")
final class ChannelsKt__Channels_commonKt$withIndex$1<E> extends SuspendLambda implements kotlin.jvm.b.p<n<? super f0<? extends E>>, kotlin.coroutines.c<? super kotlin.v>, Object> {
    final /* synthetic */ p $this_withIndex;
    int I$0;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    private n p$;

    ChannelsKt__Channels_commonKt$withIndex$1(p r1, kotlin.coroutines.c r2) {
        this.$this_withIndex = r1;
        super(2, r2);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.c<kotlin.v> create(Object r3, kotlin.coroutines.c<?> r4) {
        ChannelsKt__Channels_commonKt$withIndex$1 r0 = new ChannelsKt__Channels_commonKt$withIndex$1(this.$this_withIndex, r4);
        r0.p$ = (n) r3;
        return r0;
    }

    @Override // kotlin.jvm.b.p
    public final Object invoke(Object r1, kotlin.coroutines.c<? super kotlin.v> r2) {
        return ((ChannelsKt__Channels_commonKt$withIndex$1) create(r1, r2)).invokeSuspend(kotlin.v.f15822a);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x007f -> B:11:0x0045). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object r12) {
        Object r0 = kotlin.coroutines.intrinsics.a.d();
        int r1 = this.label;
        if (r1 == 0) goto L10;
        if (r1 == 1) goto L9;
        if (r1 != 2) goto L8;
        ChannelIterator<E> r2 = (ChannelIterator) this.L$2;
        int r4 = this.I$0;
        n r5 = (n) this.L$0;
        kotlin.k.b(r12);
        n r13 = r5;
        ChannelsKt__Channels_commonKt$withIndex$1<E> r6 = this;
        ChannelIterator<E> r7 = r2;
        int r3 = r4;
    L11:
        r6.L$0 = r13;
        r6.I$0 = r3;
        r6.L$1 = r7;
        r6.label = 1;
        Object r8 = r7.a(r6);
        if (r8 != r0) goto L14;
        return r0;
    L14:
        ChannelsKt__Channels_commonKt$withIndex$1<E> r9 = r6;
        n r10 = r13;
        r12 = r8;
        ChannelsKt__Channels_commonKt$withIndex$1<E> r11 = r9;
        ChannelIterator<E> r14 = r7;
        int r15 = r3;
        ChannelIterator<E> r16 = r14;
    L16:
        if (((Boolean) r12).booleanValue() == false) goto L22;
        E r17 = r16.next();
        int r18 = r15 + 1;
        f0 r19 = new f0(r15, r17);
        r11.L$0 = r10;
        r11.I$0 = r18;
        r11.L$1 = r17;
        r11.L$2 = r16;
        r11.label = 2;
        if (r10.F(r19, r11) != r0) goto L20;
        return r0;
    L20:
        r7 = r16;
        r13 = r10;
        r6 = r11;
        r3 = r18;
        goto L11
    L22:
        return kotlin.v.f15822a;
    L8:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L9:
        r16 = (ChannelIterator) this.L$1;
        r15 = this.I$0;
        r10 = (n) this.L$0;
        kotlin.k.b(r12);
        r11 = this;
        goto L16
    L10:
        kotlin.k.b(r12);
        r13 = this.p$;
        r3 = 0;
        r7 = this.$this_withIndex.iterator();
        r6 = this;
        goto L11
    }
}
