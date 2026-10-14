package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* JADX INFO: Add missing generic type declarations: [R] */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\u000b\u001a\u00020\u0007\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0002*\b\u0012\u0004\u0012\u00028\u00020\u00032\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004H\u008a@¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"T1", "T2", "R", "Lkotlinx/coroutines/flow/d;", "", "", "it", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__ZipKt$combine$1$1", "<anonymous>"}, k = 3, mv = {1, 1, 15})
final class FlowKt__ZipKt$combine$$inlined$unsafeFlow$1$lambda$1<R> extends SuspendLambda implements Function3<d<? super R>, Object[], Continuation<? super kotlin.v>, Object> {
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    private d p$;
    private Object[] p$0;
    final /* synthetic */ t1 this$0;

    FlowKt__ZipKt$combine$$inlined$unsafeFlow$1$lambda$1(Continuation continuation, t1 t1Var) {
        super(3, continuation);
    }

    public final Continuation<kotlin.v> create(d<? super R> dVar, Object[] objArr, Continuation<? super kotlin.v> continuation) {
        FlowKt__ZipKt$combine$$inlined$unsafeFlow$1$lambda$1 flowKt__ZipKt$combine$$inlined$unsafeFlow$1$lambda$1 = new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1$lambda$1(continuation, this.this$0);
        flowKt__ZipKt$combine$$inlined$unsafeFlow$1$lambda$1.p$ = dVar;
        flowKt__ZipKt$combine$$inlined$unsafeFlow$1$lambda$1.p$0 = objArr;
        return flowKt__ZipKt$combine$$inlined$unsafeFlow$1$lambda$1;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object[] objArr, Continuation<? super kotlin.v> continuation) {
        return ((FlowKt__ZipKt$combine$$inlined$unsafeFlow$1$lambda$1) create((d) obj, objArr, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        d dVar;
        d dVar2;
        Object[] objArr;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                dVar = (d) this.L$2;
                objArr = (Object[]) this.L$1;
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
        Object[] objArr2 = this.p$0;
        Function3 function3 = this.this$0.f15990a;
        Object obj2 = objArr2[0];
        Object obj3 = objArr2[1];
        this.L$0 = dVar;
        this.L$1 = objArr2;
        this.L$2 = dVar;
        this.label = 1;
        kotlin.jvm.internal.q.c(6);
        Object objInvoke = function3.invoke(obj2, obj3, this);
        kotlin.jvm.internal.q.c(7);
        if (objInvoke == objD) {
            return objD;
        }
        dVar2 = dVar;
        objArr = objArr2;
        obj = objInvoke;
        this.L$0 = dVar2;
        this.L$1 = objArr;
        this.label = 2;
        if (dVar.emit(obj, this) == objD) {
            return objD;
        }
        return kotlin.v.f15822a;
    }
}
