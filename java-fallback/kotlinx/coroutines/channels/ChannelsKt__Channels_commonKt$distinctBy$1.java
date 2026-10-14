package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import java.util.HashSet;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;

/* JADX INFO: Add missing generic type declarations: [E] */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0006\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u0002H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {ExifInterface.LONGITUDE_EAST, "K", "Lkotlinx/coroutines/channels/n;", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$distinctBy$1", f = "Channels.common.kt", l = {1695, 1696, 1698}, m = "invokeSuspend")
final class ChannelsKt__Channels_commonKt$distinctBy$1<E> extends SuspendLambda implements kotlin.jvm.b.p<n<? super E>, kotlin.coroutines.c<? super kotlin.v>, Object> {
    final /* synthetic */ kotlin.jvm.b.p $selector;
    final /* synthetic */ p $this_distinctBy;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;
    private n p$;

    ChannelsKt__Channels_commonKt$distinctBy$1(p r1, kotlin.jvm.b.p r2, kotlin.coroutines.c r3) {
        this.$this_distinctBy = r1;
        this.$selector = r2;
        super(2, r3);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.c<kotlin.v> create(Object r4, kotlin.coroutines.c<?> r5) {
        ChannelsKt__Channels_commonKt$distinctBy$1 r0 = new ChannelsKt__Channels_commonKt$distinctBy$1(this.$this_distinctBy, this.$selector, r5);
        r0.p$ = (n) r4;
        return r0;
    }

    @Override // kotlin.jvm.b.p
    public final Object invoke(Object r1, kotlin.coroutines.c<? super kotlin.v> r2) {
        return ((ChannelsKt__Channels_commonKt$distinctBy$1) create(r1, r2)).invokeSuspend(kotlin.v.f15822a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9, types: [java.util.Collection] */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.lang.Object, java.util.HashSet] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r8v0, types: [java.lang.Object, kotlinx.coroutines.channels.t] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x00c5 -> B:29:0x00c7). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00d0 -> B:13:0x0072). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object r12) {
        Object r0 = kotlin.coroutines.intrinsics.a.d();
        int r1 = this.label;
        if (r1 == 0) goto L12;
        if (r1 == 1) goto L11;
        if (r1 == 2) goto L10;
        if (r1 != 3) goto L9;
        Object r2 = this.L$4;
        ChannelIterator<E> r5 = (ChannelIterator) this.L$3;
        HashSet r6 = (HashSet) this.L$1;
        n r7 = (n) this.L$0;
        kotlin.k.b(r12);
        r12 = r2;
        Object r3 = r0;
        ChannelsKt__Channels_commonKt$distinctBy$1<E> r4 = this;
        ?? r8 = r6;
        ?? r9 = r7;
    L29:
        r8.add(r12);
        ChannelsKt__Channels_commonKt$distinctBy$1<E> r13 = r4;
        r0 = r3;
        ChannelIterator<E> r10 = r5;
        ?? r11 = r8;
        ?? r14 = r9;
    L13:
        r13.L$0 = r14;
        r13.L$1 = r11;
        r13.L$2 = r10;
        r13.label = 1;
        Object r15 = r10.a(r13);
        if (r15 != r0) goto L16;
        return r0;
    L16:
        Object r16 = r0;
        r4 = r13;
        r12 = r15;
        ?? r17 = r14;
        ?? r18 = r11;
        r5 = r10;
        r3 = r16;
    L18:
        if (((Boolean) r12).booleanValue() == false) goto L32;
        E r19 = r5.next();
        kotlin.jvm.b.p r20 = r4.$selector;
        r4.L$0 = r17;
        r4.L$1 = r18;
        r4.L$2 = r19;
        r4.L$3 = r5;
        r4.label = 2;
        Object r21 = r20.invoke(r19, r4);
        if (r21 != r3) goto L22;
        return r3;
    L22:
        ?? r110 = r18;
        Object r22 = r19;
        r12 = r21;
        ?? r23 = r17;
        ?? r24 = r110;
    L24:
        if (r24.contains(r12) == true) goto L30;
        r4.L$0 = r23;
        r4.L$1 = r24;
        r4.L$2 = r22;
        r4.L$3 = r5;
        r4.L$4 = r12;
        r4.label = 3;
        if (r23.F(r22, r4) != r3) goto L28;
        return r3;
    L28:
        r8 = r24;
        r9 = r23;
        goto L29
    L30:
        r13 = r4;
        r0 = r3;
        r10 = r5;
        r11 = r24;
        r14 = r23;
        goto L13
    L32:
        return kotlin.v.f15822a;
    L9:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L10:
        ChannelIterator<E> r25 = (ChannelIterator) this.L$3;
        Object r26 = this.L$2;
        HashSet r27 = (HashSet) this.L$1;
        n r28 = (n) this.L$0;
        kotlin.k.b(r12);
        r23 = r28;
        r24 = r27;
        r22 = r26;
        r5 = r25;
        r3 = r0;
        r4 = this;
        goto L24
    L11:
        ChannelIterator<E> r29 = (ChannelIterator) this.L$2;
        HashSet r30 = (HashSet) this.L$1;
        n r31 = (n) this.L$0;
        kotlin.k.b(r12);
        r17 = r31;
        r18 = r30;
        r5 = r29;
        r3 = r0;
        r4 = this;
        goto L18
    L12:
        kotlin.k.b(r12);
        n r111 = this.p$;
        HashSet r32 = new HashSet();
        ChannelIterator<E> r33 = this.$this_distinctBy.iterator();
        r14 = r111;
        r13 = this;
        r11 = r32;
        r10 = r33;
        goto L13
    }
}
