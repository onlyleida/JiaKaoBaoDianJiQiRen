package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/i0;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
@DebugMetadata(c = "kotlinx.coroutines.InterruptibleKt$runInterruptible$2", f = "Interruptible.kt", l = {}, m = "invokeSuspend")
final class InterruptibleKt$runInterruptible$2<T> extends SuspendLambda implements Function2<i0, Continuation<? super T>, Object> {
    final /* synthetic */ Function0 $block;
    int label;
    private i0 p$;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    InterruptibleKt$runInterruptible$2(Function0 function0, Continuation continuation) {
        super(2, continuation);
        this.$block = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        InterruptibleKt$runInterruptible$2 interruptibleKt$runInterruptible$2 = new InterruptibleKt$runInterruptible$2(this.$block, continuation);
        interruptibleKt$runInterruptible$2.p$ = (i0) obj;
        return interruptibleKt$runInterruptible$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i0 i0Var, Object obj) {
        return ((InterruptibleKt$runInterruptible$2) create(i0Var, (Continuation) obj)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlin.coroutines.intrinsics.b.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.k.b(obj);
        return p1.b(this.p$.getCoroutineContext(), this.$block);
    }
}
