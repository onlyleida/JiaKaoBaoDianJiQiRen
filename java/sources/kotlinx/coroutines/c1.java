package kotlinx.coroutines;

/* JADX INFO: loaded from: classes6.dex */
public abstract class c1 extends CoroutineDispatcher {
    private long b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private kotlinx.coroutines.internal.a<u0<?>> f15854d;

    private final long C(boolean z) {
        return z ? 4294967296L : 1L;
    }

    public static /* synthetic */ void G(c1 c1Var, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: incrementUseCount");
        }
        if ((i & 1) != 0) {
            z = false;
        }
        c1Var.F(z);
    }

    public final void B(boolean z) {
        long jC = this.b - C(z);
        this.b = jC;
        if (jC > 0) {
            return;
        }
        if (l0.a()) {
            if (!(this.b == 0)) {
                throw new AssertionError();
            }
        }
        if (this.c) {
            shutdown();
        }
    }

    public final void D(u0<?> u0Var) {
        kotlinx.coroutines.internal.a<u0<?>> aVar = this.f15854d;
        if (aVar == null) {
            aVar = new kotlinx.coroutines.internal.a<>();
            this.f15854d = aVar;
        }
        aVar.a(u0Var);
    }

    protected long E() {
        kotlinx.coroutines.internal.a<u0<?>> aVar = this.f15854d;
        return (aVar == null || aVar.c()) ? Long.MAX_VALUE : 0L;
    }

    public final void F(boolean z) {
        this.b += C(z);
        if (z) {
            return;
        }
        this.c = true;
    }

    public final boolean J() {
        return this.b >= C(true);
    }

    public final boolean K() {
        kotlinx.coroutines.internal.a<u0<?>> aVar = this.f15854d;
        if (aVar != null) {
            return aVar.c();
        }
        return true;
    }

    public final boolean L() {
        u0<?> u0VarD;
        kotlinx.coroutines.internal.a<u0<?>> aVar = this.f15854d;
        if (aVar == null || (u0VarD = aVar.d()) == null) {
            return false;
        }
        u0VarD.run();
        return true;
    }

    protected void shutdown() {
    }
}
