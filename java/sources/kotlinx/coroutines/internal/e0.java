package kotlinx.coroutines.internal;

import kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes6.dex */
final class e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Object[] f16013a;
    private int b;
    private final CoroutineContext c;

    public e0(CoroutineContext coroutineContext, int i) {
        this.c = coroutineContext;
        this.f16013a = new Object[i];
    }

    public final void a(Object obj) {
        Object[] objArr = this.f16013a;
        int i = this.b;
        this.b = i + 1;
        objArr[i] = obj;
    }

    public final CoroutineContext b() {
        return this.c;
    }

    public final void c() {
        this.b = 0;
    }

    public final Object d() {
        Object[] objArr = this.f16013a;
        int i = this.b;
        this.b = i + 1;
        return objArr[i];
    }
}
