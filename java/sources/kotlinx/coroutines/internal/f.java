package kotlinx.coroutines.internal;

import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.i0;

/* JADX INFO: loaded from: classes6.dex */
public final class f implements i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CoroutineContext f16014a;

    public f(CoroutineContext coroutineContext) {
        this.f16014a = coroutineContext;
    }

    @Override // kotlinx.coroutines.i0
    public CoroutineContext E() {
        return this.f16014a;
    }

    public String toString() {
        return "CoroutineScope(coroutineContext=" + E() + ')';
    }
}
