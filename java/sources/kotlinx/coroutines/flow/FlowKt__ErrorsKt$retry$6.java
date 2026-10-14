package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\u0010\t\u001a\u00020\u0006\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u008a@¢\u0006\u0004\b\u0007\u0010\b"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/d;", "", "cause", "", "attempt", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$retry$6", f = "Errors.kt", l = {}, m = "invokeSuspend")
final class FlowKt__ErrorsKt$retry$6<T> extends SuspendLambda implements Function4<d<? super T>, Throwable, Long, Continuation<? super Boolean>, Object> {
    final /* synthetic */ Function1 $predicate;
    final /* synthetic */ int $retries;
    int label;
    private d p$;
    private Throwable p$0;
    private long p$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FlowKt__ErrorsKt$retry$6(int i, Function1 function1, Continuation continuation) {
        super(4, continuation);
        this.$retries = i;
        this.$predicate = function1;
    }

    public final Continuation<kotlin.v> create(d<? super T> dVar, Throwable th, long j, Continuation<? super Boolean> continuation) {
        FlowKt__ErrorsKt$retry$6 flowKt__ErrorsKt$retry$6 = new FlowKt__ErrorsKt$retry$6(this.$retries, this.$predicate, continuation);
        flowKt__ErrorsKt$retry$6.p$ = dVar;
        flowKt__ErrorsKt$retry$6.p$0 = th;
        flowKt__ErrorsKt$retry$6.p$1 = j;
        return flowKt__ErrorsKt$retry$6;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object invoke(Object obj, Throwable th, Long l, Continuation<? super Boolean> continuation) {
        return ((FlowKt__ErrorsKt$retry$6) create((d) obj, th, l.longValue(), continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        return kotlin.coroutines.jvm.internal.a.a(((Boolean) this.$predicate.invoke(this.p$0)).booleanValue() && this.p$1 < ((long) this.$retries));
    }
}
