package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Add missing generic type declarations: [V] */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0007\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0002*\b\u0012\u0004\u0012\u00028\u00020\u0003H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {ExifInterface.LONGITUDE_EAST, "R", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlinx/coroutines/channels/n;", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$zip$2", f = "Channels.common.kt", l = {2196, 2186, 2188}, m = "invokeSuspend")
final class ChannelsKt__Channels_commonKt$zip$2<V> extends SuspendLambda implements Function2<n<? super V>, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ p $other;
    final /* synthetic */ p $this_zip;
    final /* synthetic */ Function2 $transform;
    Object L$0;
    Object L$1;
    Object L$10;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    Object L$6;
    Object L$7;
    Object L$8;
    Object L$9;
    int label;
    private n p$;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ChannelsKt__Channels_commonKt$zip$2(p pVar, p pVar2, Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.$this_zip = pVar;
        this.$other = pVar2;
        this.$transform = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        ChannelsKt__Channels_commonKt$zip$2 channelsKt__Channels_commonKt$zip$2 = new ChannelsKt__Channels_commonKt$zip$2(this.$this_zip, this.$other, this.$transform, continuation);
        channelsKt__Channels_commonKt$zip$2.p$ = (n) obj;
        return channelsKt__Channels_commonKt$zip$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Continuation<? super kotlin.v> continuation) {
        return ((ChannelsKt__Channels_commonKt$zip$2) create(obj, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x00d4 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:27:0x00dd A[Catch: all -> 0x0148, TryCatch #1 {all -> 0x0148, blocks: (B:8:0x0033, B:22:0x00bc, B:25:0x00d5, B:27:0x00dd, B:31:0x0103, B:34:0x0111, B:39:0x0142, B:18:0x009c, B:21:0x00b1), top: B:50:0x000b }] */
    /* JADX WARN: Code duplicated, block: B:29:0x00fd A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:30:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:33:0x010b  */
    /* JADX WARN: Code duplicated, block: B:34:0x0111 A[Catch: all -> 0x0148, TryCatch #1 {all -> 0x0148, blocks: (B:8:0x0033, B:22:0x00bc, B:25:0x00d5, B:27:0x00dd, B:31:0x0103, B:34:0x0111, B:39:0x0142, B:18:0x009c, B:21:0x00b1), top: B:50:0x000b }] */
    /* JADX WARN: Code duplicated, block: B:36:0x0139 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:37:0x013a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x010b -> B:22:0x00bc). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x013a -> B:38:0x013e). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r18) {
        /*
            Method dump skipped, instruction units count: 337
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$zip$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
