package androidx.lifecycle;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.t1;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/i0;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
@DebugMetadata(c = "androidx.lifecycle.PausingDispatcherKt$whenStateAtLeast$2", f = "PausingDispatcher.kt", l = {162}, m = "invokeSuspend")
final class PausingDispatcherKt$whenStateAtLeast$2<T> extends SuspendLambda implements Function2<kotlinx.coroutines.i0, Continuation<? super T>, Object> {
    final /* synthetic */ Function2 $block;
    final /* synthetic */ Lifecycle.State $minState;
    final /* synthetic */ Lifecycle $this_whenStateAtLeast;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PausingDispatcherKt$whenStateAtLeast$2(Lifecycle lifecycle, Lifecycle.State state, Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.$this_whenStateAtLeast = lifecycle;
        this.$minState = state;
        this.$block = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> completion) {
        kotlin.jvm.internal.r.e(completion, "completion");
        PausingDispatcherKt$whenStateAtLeast$2 pausingDispatcherKt$whenStateAtLeast$2 = new PausingDispatcherKt$whenStateAtLeast$2(this.$this_whenStateAtLeast, this.$minState, this.$block, completion);
        pausingDispatcherKt$whenStateAtLeast$2.L$0 = obj;
        return pausingDispatcherKt$whenStateAtLeast$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.i0 i0Var, Object obj) {
        return ((PausingDispatcherKt$whenStateAtLeast$2) create(i0Var, (Continuation) obj)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        LifecycleController lifecycleController;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            lifecycleController = (LifecycleController) this.L$0;
            try {
                kotlin.k.b(obj);
                lifecycleController.c();
                return obj;
            } catch (Throwable th) {
                th = th;
                lifecycleController.c();
                throw th;
            }
        }
        kotlin.k.b(obj);
        t1 t1Var = (t1) ((kotlinx.coroutines.i0) this.L$0).getCoroutineContext().get(t1.R);
        if (t1Var == null) {
            throw new IllegalStateException("when[State] methods should have a parent job".toString());
        }
        c0 c0Var = new c0();
        LifecycleController lifecycleController2 = new LifecycleController(this.$this_whenStateAtLeast, this.$minState, c0Var.b, t1Var);
        try {
            Function2 function2 = this.$block;
            this.L$0 = lifecycleController2;
            this.label = 1;
            obj = kotlinx.coroutines.f.c(c0Var, function2, this);
            if (obj == objD) {
                return objD;
            }
            lifecycleController = lifecycleController2;
            lifecycleController.c();
            return obj;
        } catch (Throwable th2) {
            th = th2;
            lifecycleController = lifecycleController2;
            lifecycleController.c();
            throw th;
        }
    }
}
