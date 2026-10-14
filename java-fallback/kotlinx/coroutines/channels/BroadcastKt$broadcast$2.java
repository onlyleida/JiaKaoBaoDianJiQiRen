package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;

/* JADX INFO: Add missing generic type declarations: [E] */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/n;", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.channels.BroadcastKt$broadcast$2", f = "Broadcast.kt", l = {51, 52}, m = "invokeSuspend")
final class BroadcastKt$broadcast$2<E> extends SuspendLambda implements kotlin.jvm.b.p<n<? super E>, kotlin.coroutines.c<? super kotlin.v>, Object> {
    final /* synthetic */ p $this_broadcast;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    private n p$;

    BroadcastKt$broadcast$2(p r1, kotlin.coroutines.c r2) {
        this.$this_broadcast = r1;
        super(2, r2);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.c<kotlin.v> create(Object r3, kotlin.coroutines.c<?> r4) {
        BroadcastKt$broadcast$2 r0 = new BroadcastKt$broadcast$2(this.$this_broadcast, r4);
        r0.p$ = (n) r3;
        return r0;
    }

    @Override // kotlin.jvm.b.p
    public final Object invoke(Object r1, kotlin.coroutines.c<? super kotlin.v> r2) {
        return ((BroadcastKt$broadcast$2) create(r1, r2)).invokeSuspend(kotlin.v.f15822a);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0068 -> B:12:0x003c). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object r8) {
        Object r0 = kotlin.coroutines.intrinsics.a.d();
        int r1 = this.label;
        if (r1 == 0) goto L10;
        if (r1 == 1) goto L9;
        if (r1 != 2) goto L8;
        ChannelIterator<E> r2 = (ChannelIterator) this.L$2;
        n r4 = (n) this.L$0;
        kotlin.k.b(r8);
        n r9 = r4;
    L11:
        BroadcastKt$broadcast$2<E> r5 = this;
    L12:
        r5.L$0 = r9;
        r5.L$1 = r2;
        r5.label = 1;
        Object r6 = r2.a(r5);
        if (r6 != r0) goto L15;
        return r0;
    L15:
        BroadcastKt$broadcast$2<E> r7 = r5;
        n r10 = r9;
        r8 = r6;
        BroadcastKt$broadcast$2<E> r11 = r7;
    L17:
        if (((Boolean) r8).booleanValue() == false) goto L23;
        E r12 = r2.next();
        r11.L$0 = r10;
        r11.L$1 = r12;
        r11.L$2 = r2;
        r11.label = 2;
        if (r10.F(r12, r11) != r0) goto L21;
        return r0;
    L21:
        r9 = r10;
        r5 = r11;
        goto L12
    L23:
        return kotlin.v.f15822a;
    L8:
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    L9:
        r2 = (ChannelIterator) this.L$1;
        r10 = (n) this.L$0;
        kotlin.k.b(r8);
        r11 = this;
        goto L17
    L10:
        kotlin.k.b(r8);
        r9 = this.p$;
        r2 = this.$this_broadcast.iterator();
        goto L11
    }
}
