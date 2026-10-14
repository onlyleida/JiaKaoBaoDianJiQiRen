package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;

/* JADX INFO: Add missing generic type declarations: [E] */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/n;", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$dropWhile$1", f = "Channels.common.kt", l = {720, 721, 722, 726, 727}, m = "invokeSuspend")
final class ChannelsKt__Channels_commonKt$dropWhile$1<E> extends SuspendLambda implements kotlin.jvm.b.p<n<? super E>, kotlin.coroutines.c<? super kotlin.v>, Object> {
    final /* synthetic */ kotlin.jvm.b.p $predicate;
    final /* synthetic */ p $this_dropWhile;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    private n p$;

    ChannelsKt__Channels_commonKt$dropWhile$1(p r1, kotlin.jvm.b.p r2, kotlin.coroutines.c r3) {
        this.$this_dropWhile = r1;
        this.$predicate = r2;
        super(2, r3);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.c<kotlin.v> create(Object r4, kotlin.coroutines.c<?> r5) {
        ChannelsKt__Channels_commonKt$dropWhile$1 r0 = new ChannelsKt__Channels_commonKt$dropWhile$1(this.$this_dropWhile, this.$predicate, r5);
        r0.p$ = (n) r4;
        return r0;
    }

    @Override // kotlin.jvm.b.p
    public final Object invoke(Object r1, kotlin.coroutines.c<? super kotlin.v> r2) {
        return ((ChannelsKt__Channels_commonKt$dropWhile$1) create(r1, r2)).invokeSuspend(kotlin.v.f15822a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r8v0, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v16 */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v18 */
    /* JADX WARN: Type inference failed for: r8v19 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [java.lang.Object, kotlinx.coroutines.channels.t] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5, types: [java.lang.Object, kotlinx.coroutines.channels.t] */
    /* JADX WARN: Type inference failed for: r8v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x00ac -> B:27:0x00af). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00fa -> B:34:0x00cf). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object r12) {
        Object r0 = kotlin.coroutines.intrinsics.a.d();
        int r1 = this.label;
        if (r1 == 0) goto L16;
        if (r1 == 1) goto L15;
        if (r1 == 2) goto L14;
        if (r1 == 3) goto L13;
        if (r1 == 4) goto L12;
        if (r1 != 5) goto L11;
        ChannelIterator<E> r2 = (ChannelIterator) this.L$2;
        n r4 = (n) this.L$0;
        kotlin.k.b(r12);
        ChannelIterator<E> r13 = r2;
        ?? r8 = r4;
        Object r3 = r0;
        ChannelsKt__Channels_commonKt$dropWhile$1<E> r5 = this;
    L34:
        r5.L$0 = r8;
        r5.L$1 = r13;
        r5.label = 4;
        Object r6 = r13.a(r5);
        if (r6 != r3) goto L37;
        return r3;
    L37:
        ChannelIterator<E> r7 = r13;
        r12 = r6;
        ?? r9 = r8;
    L39:
        if (((Boolean) r12).booleanValue() == false) goto L45;
        E r14 = r7.next();
        r5.L$0 = r9;
        r5.L$1 = r14;
        r5.L$2 = r7;
        r5.label = 5;
        if (r9.F(r14, r5) != r3) goto L43;
        return r3;
    L43:
        r13 = r7;
        r8 = r9;
        goto L34
    L45:
        return kotlin.v.f15822a;
    L11:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L12:
        ChannelIterator<E> r10 = (ChannelIterator) this.L$1;
        n r11 = (n) this.L$0;
        kotlin.k.b(r12);
        r9 = r11;
        r7 = r10;
        r3 = r0;
        r5 = this;
        goto L39
    L13:
        n r15 = (n) this.L$0;
        kotlin.k.b(r12);
        ?? r16 = r15;
        r3 = r0;
        r5 = this;
    L33:
        r13 = r5.$this_dropWhile.iterator();
        r8 = r16;
        goto L34
    L14:
        ChannelIterator<E> r17 = (ChannelIterator) this.L$2;
        Object r18 = this.L$1;
        n r19 = (n) this.L$0;
        kotlin.k.b(r12);
        Object r20 = r18;
        ChannelIterator<E> r21 = r17;
        r3 = r0;
        r5 = this;
        ?? r22 = r19;
    L28:
        if (((Boolean) r12).booleanValue() == true) goto L32;
        r5.L$0 = r22;
        r5.L$1 = r20;
        r5.label = 3;
        Object r110 = r22.F(r20, r5);
        r16 = r22;
        if (r110 != r3) goto L33;
        return r3;
    L32:
        ChannelsKt__Channels_commonKt$dropWhile$1<E> r111 = r5;
        r0 = r3;
        ChannelIterator<E> r23 = r21;
        ?? r24 = r22;
    L17:
        r111.L$0 = r24;
        r111.L$1 = r23;
        r111.label = 1;
        Object r25 = r23.a(r111);
        if (r25 != r0) goto L20;
        return r0;
    L20:
        Object r112 = r0;
        r5 = r111;
        r12 = r25;
        ?? r26 = r24;
        r21 = r23;
        r3 = r112;
    L21:
        r16 = r26;
        if (((Boolean) r12).booleanValue() == false) goto L33;
        E r113 = r21.next();
        kotlin.jvm.b.p r27 = r5.$predicate;
        r5.L$0 = r26;
        r5.L$1 = r113;
        r5.L$2 = r21;
        r5.label = 2;
        Object r28 = r27.invoke(r113, r5);
        if (r28 != r3) goto L26;
        return r3;
    L26:
        r20 = r113;
        r12 = r28;
        r22 = r26;
        goto L28
    L15:
        ChannelIterator<E> r29 = (ChannelIterator) this.L$1;
        n r30 = (n) this.L$0;
        kotlin.k.b(r12);
        r26 = r30;
        r21 = r29;
        r3 = r0;
        r5 = this;
        goto L21
    L16:
        kotlin.k.b(r12);
        n r114 = this.p$;
        r23 = this.$this_dropWhile.iterator();
        r24 = r114;
        r111 = this;
        goto L17
    }
}
