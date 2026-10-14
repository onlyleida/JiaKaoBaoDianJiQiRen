package kotlinx.coroutines.channels;

import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.internal.y;

/* JADX INFO: loaded from: classes6.dex */
public abstract class o<E> extends kotlinx.coroutines.internal.n implements q<E> {
    @Override // kotlinx.coroutines.channels.q
    /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
    public y a() {
        return a.b;
    }

    public Function1<Throwable, kotlin.v> S(E e2) {
        return null;
    }

    public abstract void T(j<?> jVar);
}
