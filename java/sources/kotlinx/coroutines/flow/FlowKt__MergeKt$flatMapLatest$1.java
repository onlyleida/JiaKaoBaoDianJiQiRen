package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: Add missing generic type declarations: [R, T] */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0007\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010\u0003\u001a\u00028\u0000H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlinx/coroutines/flow/d;", "it", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 1, 15})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapLatest$1", f = "Merge.kt", l = {190, 216}, m = "invokeSuspend")
public final class FlowKt__MergeKt$flatMapLatest$1<R, T> extends SuspendLambda implements Function3<d<? super R>, T, Continuation<? super kotlin.v>, Object> {
    final /* synthetic */ Function2 $transform;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    private d p$;
    private Object p$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__MergeKt$flatMapLatest$1(Function2 function2, Continuation continuation) {
        super(3, continuation);
        this.$transform = function2;
    }

    public final Continuation<kotlin.v> create(d<? super R> dVar, T t, Continuation<? super kotlin.v> continuation) {
        FlowKt__MergeKt$flatMapLatest$1 flowKt__MergeKt$flatMapLatest$1 = new FlowKt__MergeKt$flatMapLatest$1(this.$transform, continuation);
        flowKt__MergeKt$flatMapLatest$1.p$ = dVar;
        flowKt__MergeKt$flatMapLatest$1.p$0 = t;
        return flowKt__MergeKt$flatMapLatest$1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Continuation<? super kotlin.v> continuation) {
        return ((FlowKt__MergeKt$flatMapLatest$1) create((d) obj, obj2, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        d<? super T> dVar;
        d<? super T> dVar2;
        Object obj2;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                dVar = (d) this.L$2;
                obj2 = this.L$1;
                dVar2 = (d) this.L$0;
                kotlin.k.b(obj);
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.k.b(obj);
            }
            return kotlin.v.f15822a;
        }
        kotlin.k.b(obj);
        dVar = this.p$;
        Object obj3 = this.p$0;
        Function2 function2 = this.$transform;
        this.L$0 = dVar;
        this.L$1 = obj3;
        this.L$2 = dVar;
        this.label = 1;
        Object objInvoke = function2.invoke(obj3, this);
        if (objInvoke == objD) {
            return objD;
        }
        dVar2 = dVar;
        obj2 = obj3;
        obj = objInvoke;
        c cVar = (c) obj;
        this.L$0 = dVar2;
        this.L$1 = obj2;
        this.L$2 = dVar;
        this.L$3 = cVar;
        this.label = 2;
        if (cVar.d(dVar, this) == objD) {
            return objD;
        }
        return kotlin.v.f15822a;
    }

    public final Object invokeSuspend$$forInline(Object obj) {
        d<? super T> dVar = this.p$;
        c cVar = (c) this.$transform.invoke(this.p$0, this);
        kotlin.jvm.internal.q.c(0);
        cVar.d(dVar, this);
        kotlin.jvm.internal.q.c(2);
        kotlin.jvm.internal.q.c(1);
        return kotlin.v.f15822a;
    }
}
