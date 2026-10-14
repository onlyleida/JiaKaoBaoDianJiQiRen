package kotlinx.coroutines.channels;

import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.internal.OnUndeliveredElementKt;

/* JADX INFO: loaded from: classes6.dex */
public final class v<E> extends u<E> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Function1<E, kotlin.v> f15890f;

    /* JADX WARN: Multi-variable type inference failed */
    public v(E e2, kotlinx.coroutines.k<? super kotlin.v> kVar, Function1<? super E, kotlin.v> function1) {
        super(e2, kVar);
        this.f15890f = function1;
    }

    @Override // kotlinx.coroutines.internal.n
    public boolean N() {
        if (!super.N()) {
            return false;
        }
        V();
        return true;
    }

    @Override // kotlinx.coroutines.channels.s
    public void V() {
        OnUndeliveredElementKt.b(this.f15890f, S(), this.f15889e.getContext());
    }
}
