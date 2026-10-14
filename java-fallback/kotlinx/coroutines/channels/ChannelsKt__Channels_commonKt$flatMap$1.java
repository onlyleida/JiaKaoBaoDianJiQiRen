package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;

/* JADX INFO: Add missing generic type declarations: [R] */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0006\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u0002H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {ExifInterface.LONGITUDE_EAST, "R", "Lkotlinx/coroutines/channels/n;", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$flatMap$1", f = "Channels.common.kt", l = {1286, 1287, 1287}, m = "invokeSuspend")
final class ChannelsKt__Channels_commonKt$flatMap$1<R> extends SuspendLambda implements kotlin.jvm.b.p<n<? super R>, kotlin.coroutines.c<? super kotlin.v>, Object> {
    final /* synthetic */ p $this_flatMap;
    final /* synthetic */ kotlin.jvm.b.p $transform;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    private n p$;

    ChannelsKt__Channels_commonKt$flatMap$1(p r1, kotlin.jvm.b.p r2, kotlin.coroutines.c r3) {
        this.$this_flatMap = r1;
        this.$transform = r2;
        super(2, r3);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.c<kotlin.v> create(Object r4, kotlin.coroutines.c<?> r5) {
        ChannelsKt__Channels_commonKt$flatMap$1 r0 = new ChannelsKt__Channels_commonKt$flatMap$1(this.$this_flatMap, this.$transform, r5);
        r0.p$ = (n) r4;
        return r0;
    }

    @Override // kotlin.jvm.b.p
    public final Object invoke(Object r1, kotlin.coroutines.c<? super kotlin.v> r2) {
        return ((ChannelsKt__Channels_commonKt$flatMap$1) create(r1, r2)).invokeSuspend(kotlin.v.f15822a);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0098 -> B:14:0x0054). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object r10) {
        Object r0 = kotlin.coroutines.intrinsics.a.d();
        int r1 = this.label;
        if (r1 == 0) goto L12;
        if (r1 == 1) goto L11;
        if (r1 == 2) goto L10;
        if (r1 != 3) goto L9;
        ChannelIterator r2 = (ChannelIterator) this.L$2;
        n r5 = (n) this.L$0;
        kotlin.k.b(r10);
    L13:
        ChannelsKt__Channels_commonKt$flatMap$1<R> r11 = this;
    L14:
        r11.L$0 = r5;
        r11.L$1 = r2;
        r11.label = 1;
        Object r6 = r2.a(r11);
        if (r6 != r0) goto L17;
        return r0;
    L17:
        Object r8 = r0;
        ChannelsKt__Channels_commonKt$flatMap$1<R> r3 = r11;
        r10 = r6;
        n r7 = r5;
        ChannelIterator r9 = r2;
        Object r4 = r8;
    L19:
        if (((Boolean) r10).booleanValue() == false) goto L29;
        Object r12 = r9.next();
        kotlin.jvm.b.p r13 = r3.$transform;
        r3.L$0 = r7;
        r3.L$1 = r12;
        r3.L$2 = r9;
        r3.label = 2;
        Object r14 = r13.invoke(r12, r3);
        if (r14 != r4) goto L23;
        return r4;
    L23:
        Object r15 = r12;
        r10 = r14;
    L24:
        r3.L$0 = r7;
        r3.L$1 = r15;
        r3.L$2 = r9;
        r3.label = 3;
        if (i.s0((p) r10, r7, r3) != r4) goto L27;
        return r4;
    L27:
        r11 = r3;
        r0 = r4;
        r2 = r9;
        r5 = r7;
        goto L14
    L29:
        return kotlin.v.f15822a;
    L9:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L10:
        ChannelIterator r16 = (ChannelIterator) this.L$2;
        Object r17 = this.L$1;
        r7 = (n) this.L$0;
        kotlin.k.b(r10);
        r15 = r17;
        r9 = r16;
        r4 = r0;
        r3 = this;
        goto L24
    L11:
        ChannelIterator r18 = (ChannelIterator) this.L$1;
        n r19 = (n) this.L$0;
        kotlin.k.b(r10);
        r7 = r19;
        r9 = r18;
        r4 = r0;
        r3 = this;
        goto L19
    L12:
        kotlin.k.b(r10);
        n r110 = this.p$;
        r2 = this.$this_flatMap.iterator();
        r5 = r110;
        goto L13
    }
}
