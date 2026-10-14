package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0007\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/i0;", "Lkotlinx/coroutines/flow/d;", "downstream", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1", f = "Delay.kt", l = {354, 358}, m = "invokeSuspend")
final class FlowKt__DelayKt$debounceInternal$1<T> extends SuspendLambda implements Function3<kotlinx.coroutines.i0, d<? super T>, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ c $this_debounceInternal;
    final /* synthetic */ Function1 $timeoutMillisSelector;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    int label;
    private kotlinx.coroutines.i0 p$;
    private d p$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FlowKt__DelayKt$debounceInternal$1(c cVar, Function1 function1, Continuation continuation) {
        super(3, continuation);
        this.$this_debounceInternal = cVar;
        this.$timeoutMillisSelector = function1;
    }

    public final Continuation<kotlin.v> create(kotlinx.coroutines.i0 i0Var, d<? super T> dVar, Continuation<? super kotlin.v> continuation) {
        FlowKt__DelayKt$debounceInternal$1 flowKt__DelayKt$debounceInternal$1 = new FlowKt__DelayKt$debounceInternal$1(this.$this_debounceInternal, this.$timeoutMillisSelector, continuation);
        flowKt__DelayKt$debounceInternal$1.p$ = i0Var;
        flowKt__DelayKt$debounceInternal$1.p$0 = dVar;
        return flowKt__DelayKt$debounceInternal$1;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Object obj, Continuation<? super kotlin.v> continuation) {
        return ((FlowKt__DelayKt$debounceInternal$1) create(i0Var, (d) obj, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x008c  */
    /* JADX WARN: Code duplicated, block: B:15:0x0097  */
    /* JADX WARN: Code duplicated, block: B:17:0x009d  */
    /* JADX WARN: Code duplicated, block: B:20:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:21:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:23:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:25:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:27:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:30:0x00d0 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:33:0x00da  */
    /* JADX WARN: Code duplicated, block: B:37:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:39:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:43:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:47:0x0105  */
    /* JADX WARN: Code duplicated, block: B:52:0x0122 A[Catch: all -> 0x0162, TRY_LEAVE, TryCatch #1 {all -> 0x0162, blocks: (B:50:0x011e, B:52:0x0122), top: B:77:0x011e }] */
    /* JADX WARN: Code duplicated, block: B:58:0x0142  */
    /* JADX WARN: Code duplicated, block: B:68:0x0176  */
    /* JADX WARN: Code duplicated, block: B:70:0x017b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:71:0x017c  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:71:0x017c -> B:72:0x0184). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r23) {
        /*
            Method dump skipped, instruction units count: 397
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
