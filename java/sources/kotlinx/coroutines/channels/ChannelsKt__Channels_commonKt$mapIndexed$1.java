package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: Add missing generic type declarations: [R] */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0006\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u0002H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {ExifInterface.LONGITUDE_EAST, "R", "Lkotlinx/coroutines/channels/n;", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$mapIndexed$1", f = "Channels.common.kt", l = {1418, 1419, 1419}, m = "invokeSuspend")
final class ChannelsKt__Channels_commonKt$mapIndexed$1<R> extends SuspendLambda implements Function2<n<? super R>, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ p $this_mapIndexed;
    final /* synthetic */ Function3 $transform;
    int I$0;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    private n p$;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ChannelsKt__Channels_commonKt$mapIndexed$1(p pVar, Function3 function3, Continuation continuation) {
        super(2, continuation);
        this.$this_mapIndexed = pVar;
        this.$transform = function3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        ChannelsKt__Channels_commonKt$mapIndexed$1 channelsKt__Channels_commonKt$mapIndexed$1 = new ChannelsKt__Channels_commonKt$mapIndexed$1(this.$this_mapIndexed, this.$transform, continuation);
        channelsKt__Channels_commonKt$mapIndexed$1.p$ = (n) obj;
        return channelsKt__Channels_commonKt$mapIndexed$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Continuation<? super kotlin.v> continuation) {
        return ((ChannelsKt__Channels_commonKt$mapIndexed$1) create(obj, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x006e A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:16:0x006f  */
    /* JADX WARN: Code duplicated, block: B:19:0x007b  */
    /* JADX WARN: Code duplicated, block: B:21:0x0098 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:22:0x0099  */
    /* JADX WARN: Code duplicated, block: B:25:0x00b0 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:26:0x00b1  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x00b1 -> B:13:0x0060). Please report as a decompilation issue!!! */
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
            r2 = 3
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L51
            if (r1 == r4) goto L42
            if (r1 == r3) goto L29
            if (r1 != r2) goto L21
            java.lang.Object r1 = r11.L$2
            kotlinx.coroutines.channels.ChannelIterator r1 = (kotlinx.coroutines.channels.ChannelIterator) r1
            int r5 = r11.I$0
            java.lang.Object r6 = r11.L$0
            kotlinx.coroutines.channels.n r6 = (kotlinx.coroutines.channels.n) r6
            kotlin.k.b(r12)
            r12 = r6
            r6 = r11
            goto L60
        L21:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r0)
            throw r12
        L29:
            java.lang.Object r1 = r11.L$3
            kotlinx.coroutines.channels.n r1 = (kotlinx.coroutines.channels.n) r1
            java.lang.Object r5 = r11.L$2
            kotlinx.coroutines.channels.ChannelIterator r5 = (kotlinx.coroutines.channels.ChannelIterator) r5
            java.lang.Object r6 = r11.L$1
            int r7 = r11.I$0
            java.lang.Object r8 = r11.L$0
            kotlinx.coroutines.channels.n r8 = (kotlinx.coroutines.channels.n) r8
            kotlin.k.b(r12)
            r9 = r11
            r10 = r8
            r8 = r6
            r6 = r10
            goto La0
        L42:
            java.lang.Object r1 = r11.L$1
            kotlinx.coroutines.channels.ChannelIterator r1 = (kotlinx.coroutines.channels.ChannelIterator) r1
            int r5 = r11.I$0
            java.lang.Object r6 = r11.L$0
            kotlinx.coroutines.channels.n r6 = (kotlinx.coroutines.channels.n) r6
            kotlin.k.b(r12)
            r7 = r11
            goto L73
        L51:
            kotlin.k.b(r12)
            kotlinx.coroutines.channels.n r12 = r11.p$
            r1 = 0
            kotlinx.coroutines.channels.p r5 = r11.$this_mapIndexed
            kotlinx.coroutines.channels.ChannelIterator r5 = r5.iterator()
            r6 = r11
            r1 = r5
            r5 = 0
        L60:
            r6.L$0 = r12
            r6.I$0 = r5
            r6.L$1 = r1
            r6.label = r4
            java.lang.Object r7 = r1.a(r6)
            if (r7 != r0) goto L6f
            return r0
        L6f:
            r10 = r6
            r6 = r12
            r12 = r7
            r7 = r10
        L73:
            java.lang.Boolean r12 = (java.lang.Boolean) r12
            boolean r12 = r12.booleanValue()
            if (r12 == 0) goto Lb6
            java.lang.Object r12 = r1.next()
            kotlin.jvm.b.q r8 = r7.$transform
            java.lang.Integer r9 = kotlin.coroutines.jvm.internal.a.d(r5)
            int r5 = r5 + r4
            r7.L$0 = r6
            r7.I$0 = r5
            r7.L$1 = r12
            r7.L$2 = r1
            r7.L$3 = r6
            r7.label = r3
            java.lang.Object r8 = r8.invoke(r9, r12, r7)
            if (r8 != r0) goto L99
            return r0
        L99:
            r9 = r7
            r7 = r5
            r5 = r1
            r1 = r6
            r10 = r8
            r8 = r12
            r12 = r10
        La0:
            r9.L$0 = r6
            r9.I$0 = r7
            r9.L$1 = r8
            r9.L$2 = r5
            r9.label = r2
            java.lang.Object r12 = r1.F(r12, r9)
            if (r12 != r0) goto Lb1
            return r0
        Lb1:
            r1 = r5
            r12 = r6
            r5 = r7
            r6 = r9
            goto L60
        Lb6:
            kotlin.v r12 = kotlin.v.f15822a
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$mapIndexed$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
