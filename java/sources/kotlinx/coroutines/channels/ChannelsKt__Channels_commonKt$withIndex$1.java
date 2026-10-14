package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.collections.IndexedValue;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Add missing generic type declarations: [E] */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0006\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00020\u0001H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/n;", "Lkotlin/collections/f0;", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$withIndex$1", f = "Channels.common.kt", l = {1653, 1654}, m = "invokeSuspend")
final class ChannelsKt__Channels_commonKt$withIndex$1<E> extends SuspendLambda implements Function2<n<? super IndexedValue<? extends E>>, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ p $this_withIndex;
    int I$0;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    private n p$;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ChannelsKt__Channels_commonKt$withIndex$1(p pVar, Continuation continuation) {
        super(2, continuation);
        this.$this_withIndex = pVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        ChannelsKt__Channels_commonKt$withIndex$1 channelsKt__Channels_commonKt$withIndex$1 = new ChannelsKt__Channels_commonKt$withIndex$1(this.$this_withIndex, continuation);
        channelsKt__Channels_commonKt$withIndex$1.p$ = (n) obj;
        return channelsKt__Channels_commonKt$withIndex$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Continuation<? super kotlin.v> continuation) {
        return ((ChannelsKt__Channels_commonKt$withIndex$1) create(obj, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0053 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:14:0x0054  */
    /* JADX WARN: Code duplicated, block: B:17:0x0063  */
    /* JADX WARN: Code duplicated, block: B:19:0x007e A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:20:0x007f  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x007f -> B:11:0x0045). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            r11 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.d()
            int r1 = r11.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L38
            if (r1 == r3) goto L29
            if (r1 != r2) goto L21
            java.lang.Object r1 = r11.L$2
            kotlinx.coroutines.channels.ChannelIterator r1 = (kotlinx.coroutines.channels.ChannelIterator) r1
            int r4 = r11.I$0
            java.lang.Object r5 = r11.L$0
            kotlinx.coroutines.channels.n r5 = (kotlinx.coroutines.channels.n) r5
            kotlin.k.b(r12)
            r12 = r5
            r5 = r11
            r9 = r4
            r4 = r1
            r1 = r9
            goto L45
        L21:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r0)
            throw r12
        L29:
            java.lang.Object r1 = r11.L$1
            kotlinx.coroutines.channels.ChannelIterator r1 = (kotlinx.coroutines.channels.ChannelIterator) r1
            int r4 = r11.I$0
            java.lang.Object r5 = r11.L$0
            kotlinx.coroutines.channels.n r5 = (kotlinx.coroutines.channels.n) r5
            kotlin.k.b(r12)
            r6 = r11
            goto L5b
        L38:
            kotlin.k.b(r12)
            kotlinx.coroutines.channels.n r12 = r11.p$
            r1 = 0
            kotlinx.coroutines.channels.p r4 = r11.$this_withIndex
            kotlinx.coroutines.channels.ChannelIterator r4 = r4.iterator()
            r5 = r11
        L45:
            r5.L$0 = r12
            r5.I$0 = r1
            r5.L$1 = r4
            r5.label = r3
            java.lang.Object r6 = r4.a(r5)
            if (r6 != r0) goto L54
            return r0
        L54:
            r9 = r5
            r5 = r12
            r12 = r6
            r6 = r9
            r10 = r4
            r4 = r1
            r1 = r10
        L5b:
            java.lang.Boolean r12 = (java.lang.Boolean) r12
            boolean r12 = r12.booleanValue()
            if (r12 == 0) goto L84
            java.lang.Object r12 = r1.next()
            kotlin.collections.f0 r7 = new kotlin.collections.f0
            int r8 = r4 + 1
            r7.<init>(r4, r12)
            r6.L$0 = r5
            r6.I$0 = r8
            r6.L$1 = r12
            r6.L$2 = r1
            r6.label = r2
            java.lang.Object r12 = r5.F(r7, r6)
            if (r12 != r0) goto L7f
            return r0
        L7f:
            r4 = r1
            r12 = r5
            r5 = r6
            r1 = r8
            goto L45
        L84:
            kotlin.v r12 = kotlin.v.f15822a
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$withIndex$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
