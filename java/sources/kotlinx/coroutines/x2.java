package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.internal.ThreadContextKt;

/* JADX INFO: loaded from: classes6.dex */
final class x2<T> extends kotlinx.coroutines.internal.w<T> {
    public x2(CoroutineContext coroutineContext, Continuation<? super T> continuation) {
        super(coroutineContext, continuation);
    }

    @Override // kotlinx.coroutines.internal.w, kotlinx.coroutines.a
    protected void R0(Object obj) {
        Object objA = b0.a(obj, this.f16039d);
        CoroutineContext context = this.f16039d.getContext();
        Object objC = ThreadContextKt.c(context, null);
        try {
            this.f16039d.resumeWith(objA);
            kotlin.v vVar = kotlin.v.f15822a;
        } finally {
            ThreadContextKt.a(context, objC);
        }
    }
}
