package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;

/* JADX INFO: Add missing generic type declarations: [E] */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/n;", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$takeWhile$1", f = "Channels.common.kt", l = {1012, 1013, 1014}, m = "invokeSuspend")
final class ChannelsKt__Channels_commonKt$takeWhile$1<E> extends SuspendLambda implements kotlin.jvm.b.p<n<? super E>, kotlin.coroutines.c<? super kotlin.v>, Object> {
    final /* synthetic */ kotlin.jvm.b.p $predicate;
    final /* synthetic */ p $this_takeWhile;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    private n p$;

    ChannelsKt__Channels_commonKt$takeWhile$1(p r1, kotlin.jvm.b.p r2, kotlin.coroutines.c r3) {
        this.$this_takeWhile = r1;
        this.$predicate = r2;
        super(2, r3);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.c<kotlin.v> create(Object r4, kotlin.coroutines.c<?> r5) {
        ChannelsKt__Channels_commonKt$takeWhile$1 r0 = new ChannelsKt__Channels_commonKt$takeWhile$1(this.$this_takeWhile, this.$predicate, r5);
        r0.p$ = (n) r4;
        return r0;
    }

    @Override // kotlin.jvm.b.p
    public final Object invoke(Object r1, kotlin.coroutines.c<? super kotlin.v> r2) {
        return ((ChannelsKt__Channels_commonKt$takeWhile$1) create(r1, r2)).invokeSuspend(kotlin.v.f15822a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.Object, kotlinx.coroutines.channels.t] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a1 -> B:14:0x0054). Please report as a decompilation issue!!! */
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
        n r6 = r5;
    L13:
        ChannelsKt__Channels_commonKt$takeWhile$1<E> r11 = this;
        ?? r7 = r6;
    L14:
        r11.L$0 = r7;
        r11.L$1 = r2;
        r11.label = 1;
        Object r8 = r2.a(r11);
        if (r8 != r0) goto L17;
        return r0;
    L17:
        Object r9 = r0;
        ChannelsKt__Channels_commonKt$takeWhile$1<E> r3 = r11;
        r10 = r8;
        ?? r12 = r7;
        ChannelIterator<E> r13 = r2;
        Object r4 = r9;
    L19:
        if (((Boolean) r10).booleanValue() == false) goto L33;
        E r14 = r13.next();
        kotlin.jvm.b.p r15 = r3.$predicate;
        r3.L$0 = r12;
        r3.L$1 = r14;
        r3.L$2 = r13;
        r3.label = 2;
        Object r16 = r15.invoke(r14, r3);
        if (r16 != r4) goto L23;
        return r4;
    L23:
        Object r17 = r14;
        r10 = r16;
        ?? r18 = r12;
    L25:
        if (((Boolean) r10).booleanValue() == false) goto L27;
        r3.L$0 = r18;
        r3.L$1 = r17;
        r3.L$2 = r13;
        r3.label = 3;
        if (r18.F(r17, r3) != r4) goto L31;
        return r4;
    L31:
        r11 = r3;
        r0 = r4;
        r2 = r13;
        r7 = r18;
        goto L14
    L27:
        return kotlin.v.f15822a;
    L33:
        return kotlin.v.f15822a;
    L9:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L10:
        ChannelIterator<E> r19 = (ChannelIterator) this.L$2;
        Object r20 = this.L$1;
        n r21 = (n) this.L$0;
        kotlin.k.b(r10);
        r17 = r20;
        r13 = r19;
        r4 = r0;
        r3 = this;
        r18 = r21;
        goto L25
    L11:
        ChannelIterator<E> r22 = (ChannelIterator) this.L$1;
        n r23 = (n) this.L$0;
        kotlin.k.b(r10);
        r12 = r23;
        r13 = r22;
        r4 = r0;
        r3 = this;
        goto L19
    L12:
        kotlin.k.b(r10);
        n r110 = this.p$;
        r2 = this.$this_takeWhile.iterator();
        r6 = r110;
        goto L13
    }
}
