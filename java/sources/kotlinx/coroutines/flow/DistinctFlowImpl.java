package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes6.dex */
final class DistinctFlowImpl<T> implements c<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c<T> f15922a;
    public final Function1<T, Object> b;
    public final Function2<Object, Object, Boolean> c;

    /* JADX WARN: Multi-variable type inference failed */
    public DistinctFlowImpl(c<? extends T> cVar, Function1<? super T, ? extends Object> function1, Function2<Object, Object, Boolean> function2) {
        this.f15922a = cVar;
        this.b = function1;
        this.c = function2;
    }

    @Override // kotlinx.coroutines.flow.c
    public Object d(d<? super T> dVar, Continuation<? super kotlin.v> continuation) {
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        ref$ObjectRef.element = (T) kotlinx.coroutines.flow.internal.p.f15980a;
        Object objD = this.f15922a.d(new DistinctFlowImpl$collect$$inlined$collect$1(this, ref$ObjectRef, dVar), continuation);
        return objD == kotlin.coroutines.intrinsics.b.d() ? objD : kotlin.v.f15822a;
    }
}
