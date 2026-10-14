package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;

/* JADX INFO: Add missing generic type declarations: [E] */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/n;", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$filter$1", f = "Channels.common.kt", l = {746, 747, 747}, m = "invokeSuspend")
final class ChannelsKt__Channels_commonKt$filter$1<E> extends SuspendLambda implements kotlin.jvm.b.p<n<? super E>, kotlin.coroutines.c<? super kotlin.v>, Object> {
    final /* synthetic */ kotlin.jvm.b.p $predicate;
    final /* synthetic */ p $this_filter;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    private n p$;

    ChannelsKt__Channels_commonKt$filter$1(p r1, kotlin.jvm.b.p r2, kotlin.coroutines.c r3) {
        this.$this_filter = r1;
        this.$predicate = r2;
        super(2, r3);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.c<kotlin.v> create(Object r4, kotlin.coroutines.c<?> r5) {
        ChannelsKt__Channels_commonKt$filter$1 r0 = new ChannelsKt__Channels_commonKt$filter$1(this.$this_filter, this.$predicate, r5);
        r0.p$ = (n) r4;
        return r0;
    }

    @Override // kotlin.jvm.b.p
    public final Object invoke(Object r1, kotlin.coroutines.c<? super kotlin.v> r2) {
        return ((ChannelsKt__Channels_commonKt$filter$1) create(r1, r2)).invokeSuspend(kotlin.v.f15822a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.Object, kotlinx.coroutines.channels.t] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object r10) {
        Object r0 = kotlin.coroutines.intrinsics.a.d();
        int r1 = this.label;
        if (r1 == 0) goto L12;
        if (r1 == 1) goto L11;
        if (r1 == 2) goto L10;
        if (r1 != 3) goto L9;
        ChannelIterator<E> r2 = (ChannelIterator) this.L$2;
        n r5 = (n) this.L$0;
        kotlin.k.b(r10);
        ?? r6 = r5;
    L13:
        ChannelsKt__Channels_commonKt$filter$1<E> r11 = this;
    L14:
        r11.L$0 = r6;
        r11.L$1 = r2;
        r11.label = 1;
        Object r7 = r2.a(r11);
        if (r7 != r0) goto L17;
        return r0;
    L17:
        Object r8 = r0;
        ChannelsKt__Channels_commonKt$filter$1<E> r3 = r11;
        r10 = r7;
        ?? r9 = r6;
        ChannelIterator<E> r12 = r2;
        Object r4 = r8;
    L19:
        if (((Boolean) r10).booleanValue() == false) goto L31;
        E r13 = r12.next();
        kotlin.jvm.b.p r14 = r3.$predicate;
        r3.L$0 = r9;
        r3.L$1 = r13;
        r3.L$2 = r12;
        r3.label = 2;
        Object r15 = r14.invoke(r13, r3);
        if (r15 != r4) goto L23;
        return r4;
    L23:
        Object r16 = r13;
        r10 = r15;
        ?? r17 = r9;
    L25:
        if (((Boolean) r10).booleanValue() == false) goto L29;
        r3.L$0 = r17;
        r3.L$1 = r16;
        r3.L$2 = r12;
        r3.label = 3;
        if (r17.F(r16, r3) != r4) goto L29;
        return r4;
    L29:
        r11 = r3;
        r0 = r4;
        r2 = r12;
        r6 = r17;
        goto L14
    L32:
        r11 = r3;
        r0 = r4;
        r2 = r12;
        r6 = r17;
        goto L14
    L31:
        return kotlin.v.f15822a;
    L9:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L10:
        ChannelIterator<E> r18 = (ChannelIterator) this.L$2;
        Object r19 = this.L$1;
        n r20 = (n) this.L$0;
        kotlin.k.b(r10);
        r16 = r19;
        r12 = r18;
        r4 = r0;
        r3 = this;
        r17 = r20;
        goto L25
    L11:
        ChannelIterator<E> r21 = (ChannelIterator) this.L$1;
        n r22 = (n) this.L$0;
        kotlin.k.b(r10);
        r9 = r22;
        r12 = r21;
        r4 = r0;
        r3 = this;
        goto L19
    L12:
        kotlin.k.b(r10);
        n r110 = this.p$;
        r2 = this.$this_filter.iterator();
        r6 = r110;
        goto L13
    }
}
