package kotlinx.coroutines.channels;

import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.f0;

/* JADX INFO: loaded from: classes6.dex */
public class m<E> extends g<E> implements n<E> {
    public m(CoroutineContext coroutineContext, f<E> fVar) {
        super(coroutineContext, fVar, true);
    }

    @Override // kotlinx.coroutines.a
    protected void T0(Throwable th, boolean z) {
        if (Y0().D(th) || z) {
            return;
        }
        f0.a(getContext(), th);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.a
    /* JADX INFO: renamed from: c1, reason: merged with bridge method [inline-methods] */
    public void U0(kotlin.v vVar) {
        t.a.a(Y0(), null, 1, null);
    }

    @Override // kotlinx.coroutines.a, kotlinx.coroutines.a2, kotlinx.coroutines.t1
    public boolean isActive() {
        return super.isActive();
    }

    @Override // kotlinx.coroutines.channels.n
    public /* bridge */ /* synthetic */ t k() {
        X0();
        return this;
    }
}
