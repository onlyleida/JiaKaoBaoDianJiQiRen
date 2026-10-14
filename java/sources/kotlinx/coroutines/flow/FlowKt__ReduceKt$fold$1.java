package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0010\t\u001a\u0004\u0018\u00010\u0006\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\u0003\u001a\u00028\u00012*\b\u0004\u0010\u0007\u001a$\b\u0001\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005H\u0086H"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlinx/coroutines/flow/c;", "initial", "Lkotlin/Function3;", "Lkotlin/coroutines/c;", "", "operation", "continuation", "fold"}, k = 3, mv = {1, 1, 15})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", l = {151}, m = "fold")
public final class FlowKt__ReduceKt$fold$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;
    /* synthetic */ Object result;

    public FlowKt__ReduceKt$fold$1(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return f.v(null, null, null, this);
    }
}
