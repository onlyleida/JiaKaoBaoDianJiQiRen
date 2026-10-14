package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;

/* JADX INFO: Add missing generic type declarations: [E] */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/n;", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$filterIndexed$1", f = "Channels.common.kt", l = {769, 770, 770}, m = "invokeSuspend")
final class ChannelsKt__Channels_commonKt$filterIndexed$1<E> extends SuspendLambda implements kotlin.jvm.b.p<n<? super E>, kotlin.coroutines.c<? super kotlin.v>, Object> {
    final /* synthetic */ kotlin.jvm.b.q $predicate;
    final /* synthetic */ p $this_filterIndexed;
    int I$0;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    private n p$;

    ChannelsKt__Channels_commonKt$filterIndexed$1(p r1, kotlin.jvm.b.q r2, kotlin.coroutines.c r3) {
        this.$this_filterIndexed = r1;
        this.$predicate = r2;
        super(2, r3);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.c<kotlin.v> create(Object r4, kotlin.coroutines.c<?> r5) {
        ChannelsKt__Channels_commonKt$filterIndexed$1 r0 = new ChannelsKt__Channels_commonKt$filterIndexed$1(this.$this_filterIndexed, this.$predicate, r5);
        r0.p$ = (n) r4;
        return r0;
    }

    @Override // kotlin.jvm.b.p
    public final Object invoke(Object r1, kotlin.coroutines.c<? super kotlin.v> r2) {
        return ((ChannelsKt__Channels_commonKt$filterIndexed$1) create(r1, r2)).invokeSuspend(kotlin.v.f15822a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r8v0, types: [java.lang.Object, kotlinx.coroutines.channels.t] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object r12) {
        Object r0 = kotlin.coroutines.intrinsics.a.d();
        int r1 = this.label;
        if (r1 == 0) goto L12;
        if (r1 == 1) goto L11;
        if (r1 == 2) goto L10;
        if (r1 != 3) goto L9;
        ChannelIterator<E> r2 = (ChannelIterator) this.L$2;
        int r5 = this.I$0;
        n r6 = (n) this.L$0;
        kotlin.k.b(r12);
        ?? r7 = r6;
    L13:
        ChannelsKt__Channels_commonKt$filterIndexed$1<E> r13 = this;
    L14:
        r13.L$0 = r7;
        r13.I$0 = r5;
        r13.L$1 = r2;
        r13.label = 1;
        Object r8 = r2.a(r13);
        if (r8 != r0) goto L17;
        return r0;
    L17:
        Object r10 = r0;
        ChannelsKt__Channels_commonKt$filterIndexed$1<E> r3 = r13;
        r12 = r8;
        ?? r9 = r7;
        int r11 = r5;
        ChannelIterator<E> r14 = r2;
        Object r4 = r10;
    L19:
        if (((Boolean) r12).booleanValue() == false) goto L31;
        E r15 = r14.next();
        kotlin.jvm.b.q r16 = r3.$predicate;
        Integer r17 = kotlin.coroutines.jvm.internal.a.d(r11);
        int r18 = r11 + 1;
        r3.L$0 = r9;
        r3.I$0 = r18;
        r3.L$1 = r15;
        r3.L$2 = r14;
        r3.label = 2;
        Object r19 = r16.invoke(r17, r15, r3);
        if (r19 != r4) goto L23;
        return r4;
    L23:
        ?? r110 = r9;
        Object r20 = r15;
        r12 = r19;
        ?? r21 = r110;
    L25:
        if (((Boolean) r12).booleanValue() == false) goto L29;
        r3.L$0 = r21;
        r3.I$0 = r18;
        r3.L$1 = r20;
        r3.L$2 = r14;
        r3.label = 3;
        if (r21.F(r20, r3) != r4) goto L29;
        return r4;
    L29:
        r13 = r3;
        r0 = r4;
        r2 = r14;
        r5 = r18;
        r7 = r21;
        goto L14
    L32:
        r13 = r3;
        r0 = r4;
        r2 = r14;
        r5 = r18;
        r7 = r21;
        goto L14
    L31:
        return kotlin.v.f15822a;
    L9:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L10:
        ChannelIterator<E> r22 = (ChannelIterator) this.L$2;
        Object r23 = this.L$1;
        r18 = this.I$0;
        n r24 = (n) this.L$0;
        kotlin.k.b(r12);
        r21 = r24;
        r20 = r23;
        r14 = r22;
        r4 = r0;
        r3 = this;
        goto L25
    L11:
        ChannelIterator<E> r25 = (ChannelIterator) this.L$1;
        int r26 = this.I$0;
        n r27 = (n) this.L$0;
        kotlin.k.b(r12);
        r9 = r27;
        r11 = r26;
        r14 = r25;
        r4 = r0;
        r3 = this;
        goto L19
    L12:
        kotlin.k.b(r12);
        n r111 = this.p$;
        r7 = r111;
        r2 = this.$this_filterIndexed.iterator();
        r5 = 0;
        goto L13
    }
}
