package kotlinx.coroutines.internal;

/* JADX INFO: loaded from: classes6.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public d<?> f16008a;

    public abstract void a(d<?> dVar, Object obj);

    public final d<?> b() {
        d<?> dVar = this.f16008a;
        if (dVar != null) {
            return dVar;
        }
        kotlin.jvm.internal.r.u("atomicOp");
        throw null;
    }

    public abstract Object c(d<?> dVar);

    public final void d(d<?> dVar) {
        this.f16008a = dVar;
    }
}
