package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;

/* JADX INFO: Add missing generic type declarations: [E] */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/n;", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$take$1", f = "Channels.common.kt", l = {989, 990}, m = "invokeSuspend")
final class ChannelsKt__Channels_commonKt$take$1<E> extends SuspendLambda implements kotlin.jvm.b.p<n<? super E>, kotlin.coroutines.c<? super kotlin.v>, Object> {
    final /* synthetic */ int $n;
    final /* synthetic */ p $this_take;
    int I$0;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    private n p$;

    ChannelsKt__Channels_commonKt$take$1(p r1, int r2, kotlin.coroutines.c r3) {
        this.$this_take = r1;
        this.$n = r2;
        super(2, r3);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.c<kotlin.v> create(Object r4, kotlin.coroutines.c<?> r5) {
        ChannelsKt__Channels_commonKt$take$1 r0 = new ChannelsKt__Channels_commonKt$take$1(this.$this_take, this.$n, r5);
        r0.p$ = (n) r4;
        return r0;
    }

    @Override // kotlin.jvm.b.p
    public final Object invoke(Object r1, kotlin.coroutines.c<? super kotlin.v> r2) {
        return ((ChannelsKt__Channels_commonKt$take$1) create(r1, r2)).invokeSuspend(kotlin.v.f15822a);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0083 -> B:29:0x0085). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object r10) {
        Object r0 = kotlin.coroutines.intrinsics.a.d();
        int r1 = this.label;
        if (r1 == 0) goto L10;
        if (r1 == 1) goto L9;
        if (r1 != 2) goto L8;
        ChannelIterator<E> r2 = (ChannelIterator) this.L$2;
        int r4 = this.I$0;
        n r5 = (n) this.L$0;
        kotlin.k.b(r10);
        n r11 = r5;
        ChannelsKt__Channels_commonKt$take$1<E> r6 = this;
    L29:
        int r7 = r4 - 1;
        if (r7 == 0) goto L32;
        ChannelIterator<E> r8 = r2;
        int r3 = r7;
    L19:
        r6.L$0 = r11;
        r6.I$0 = r3;
        r6.L$1 = r8;
        r6.label = 1;
        Object r9 = r8.a(r6);
        if (r9 != r0) goto L22;
        return r0;
    L22:
        ChannelsKt__Channels_commonKt$take$1<E> r12 = r6;
        n r13 = r11;
        r10 = r9;
        ChannelsKt__Channels_commonKt$take$1<E> r14 = r12;
        ChannelIterator<E> r15 = r8;
        r4 = r3;
        r2 = r15;
    L24:
        if (((Boolean) r10).booleanValue() == false) goto L35;
        E r16 = r2.next();
        r14.L$0 = r13;
        r14.I$0 = r4;
        r14.L$1 = r16;
        r14.L$2 = r2;
        r14.label = 2;
        if (r13.F(r16, r14) != r0) goto L28;
        return r0;
    L28:
        r11 = r13;
        r6 = r14;
        goto L29
    L35:
        return kotlin.v.f15822a;
    L32:
        return kotlin.v.f15822a;
    L8:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L9:
        r2 = (ChannelIterator) this.L$1;
        r4 = this.I$0;
        r13 = (n) this.L$0;
        kotlin.k.b(r10);
        r14 = this;
        goto L24
    L10:
        kotlin.k.b(r10);
        r11 = this.p$;
        r3 = this.$n;
        if (r3 == 0) goto L13;
        if (r3 < 0) goto L16;
        boolean r17 = true;
    L17:
        if (r17 == false) goto L37;
        r8 = this.$this_take.iterator();
        r6 = this;
        goto L19
    L37:
        throw new IllegalArgumentException(("Requested element count " + this.$n + " is less than zero.").toString());
    L16:
        r17 = false;
        goto L17
    L13:
        return kotlin.v.f15822a;
    }
}
