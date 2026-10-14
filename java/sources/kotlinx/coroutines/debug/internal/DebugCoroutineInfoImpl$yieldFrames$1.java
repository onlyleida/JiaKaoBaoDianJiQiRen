package kotlinx.coroutines.debug.internal;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedContinuationImpl;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007*\b\u0012\u0004\u0012\u00020\u00010\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0082P¢\u0006\u0004\b\b\u0010\t"}, d2 = {"Lkotlin/sequences/j;", "Ljava/lang/StackTraceElement;", "Lkotlin/coroutines/jvm/internal/c;", "frame", "Lkotlin/coroutines/c;", "Lkotlin/v;", "continuation", "", "yieldFrames", "(Lkotlin/sequences/j;Lkotlin/coroutines/jvm/internal/c;Lkotlin/coroutines/c;)Ljava/lang/Object;"}, k = 3, mv = {1, 1, 15})
@DebugMetadata(c = "kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl", f = "DebugCoroutineInfoImpl.kt", l = {80}, m = "yieldFrames")
final class DebugCoroutineInfoImpl$yieldFrames$1 extends RestrictedContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ b this$0;

    DebugCoroutineInfoImpl$yieldFrames$1(b bVar, Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.d(null, null, this);
    }
}
