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
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\t\u001a\u00020\u0005\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u008a@¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlinx/coroutines/flow/d;", "", "it", "Lkotlin/v;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__ZipKt$combineUnsafe$1$1", "<anonymous>"}, k = 3, mv = {1, 1, 15})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineUnsafe$$inlined$unsafeFlow$3$lambda$1", f = "Zip.kt", l = {262, 262}, m = "invokeSuspend")
public final class FlowKt__ZipKt$combineUnsafe$$inlined$unsafeFlow$3$lambda$1<R, T> extends SuspendLambda implements Function3<d<? super R>, T[], Continuation<? super kotlin.v>, Object> {
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    private d p$;
    private Object[] p$0;
    final /* synthetic */ z1 this$0;

    public FlowKt__ZipKt$combineUnsafe$$inlined$unsafeFlow$3$lambda$1(Continuation continuation, z1 z1Var) {
        super(3, continuation);
    }

    public final Continuation<kotlin.v> create(d<? super R> dVar, T[] tArr, Continuation<? super kotlin.v> continuation) {
        FlowKt__ZipKt$combineUnsafe$$inlined$unsafeFlow$3$lambda$1 flowKt__ZipKt$combineUnsafe$$inlined$unsafeFlow$3$lambda$1 = new FlowKt__ZipKt$combineUnsafe$$inlined$unsafeFlow$3$lambda$1(continuation, this.this$0);
        flowKt__ZipKt$combineUnsafe$$inlined$unsafeFlow$3$lambda$1.p$ = dVar;
        flowKt__ZipKt$combineUnsafe$$inlined$unsafeFlow$3$lambda$1.p$0 = tArr;
        return flowKt__ZipKt$combineUnsafe$$inlined$unsafeFlow$3$lambda$1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Continuation<? super kotlin.v> continuation) {
        return ((FlowKt__ZipKt$combineUnsafe$$inlined$unsafeFlow$3$lambda$1) create((d) obj, (Object[]) obj2, continuation)).invokeSuspend(kotlin.v.f15822a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        d dVar;
        Object[] objArr;
        d dVar2;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                d dVar3 = (d) this.L$2;
                objArr = (Object[]) this.L$1;
                d dVar4 = (d) this.L$0;
                kotlin.k.b(obj);
                dVar2 = dVar3;
                dVar = dVar4;
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.k.b(obj);
            }
            return kotlin.v.f15822a;
        }
        kotlin.k.b(obj);
        d dVar5 = this.p$;
        Object[] objArr2 = this.p$0;
        Function2 function2 = this.this$0.f15996a;
        this.L$0 = dVar5;
        this.L$1 = objArr2;
        this.L$2 = dVar5;
        this.label = 1;
        Object objInvoke = function2.invoke(objArr2, this);
        if (objInvoke == objD) {
            return objD;
        }
        dVar = dVar5;
        objArr = objArr2;
        obj = objInvoke;
        dVar2 = dVar5;
        this.L$0 = dVar;
        this.L$1 = objArr;
        this.label = 2;
        if (dVar2.emit(obj, this) == objD) {
            return objD;
        }
        return kotlin.v.f15822a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Object invokeSuspend$$forInline(Object obj) {
        d dVar = this.p$;
        Object objInvoke = this.this$0.f15996a.invoke(this.p$0, this);
        kotlin.jvm.internal.q.c(0);
        dVar.emit(objInvoke, this);
        kotlin.jvm.internal.q.c(2);
        kotlin.jvm.internal.q.c(1);
        return kotlin.v.f15822a;
    }
}
