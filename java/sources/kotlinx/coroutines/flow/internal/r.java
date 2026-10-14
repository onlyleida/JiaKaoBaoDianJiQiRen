package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.Continuation;
import kotlin.v;
import kotlinx.coroutines.channels.t;

/* JADX INFO: loaded from: classes6.dex */
public final class r<T> implements kotlinx.coroutines.flow.d<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final t<T> f15981a;

    /* JADX WARN: Multi-variable type inference failed */
    public r(t<? super T> tVar) {
        this.f15981a = tVar;
    }

    @Override // kotlinx.coroutines.flow.d
    public Object emit(T t, Continuation<? super v> continuation) {
        Object objF = this.f15981a.F(t, continuation);
        return objF == kotlin.coroutines.intrinsics.b.d() ? objF : v.f15822a;
    }
}
