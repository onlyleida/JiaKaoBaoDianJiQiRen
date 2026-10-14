package kotlinx.coroutines;

import kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes6.dex */
class n2 extends a<kotlin.v> {
    public n2(CoroutineContext coroutineContext, boolean z) {
        super(coroutineContext, z);
    }

    @Override // kotlinx.coroutines.a2
    protected boolean l0(Throwable th) {
        f0.a(getContext(), th);
        return true;
    }
}
