package kotlinx.coroutines;

/* JADX INFO: loaded from: classes6.dex */
public final class r2 {
    public static final r2 b = new r2();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ThreadLocal<c1> f16066a = new ThreadLocal<>();

    private r2() {
    }

    public final c1 a() {
        ThreadLocal<c1> threadLocal = f16066a;
        c1 c1Var = threadLocal.get();
        if (c1Var != null) {
            return c1Var;
        }
        c1 c1VarA = f1.a();
        threadLocal.set(c1VarA);
        return c1VarA;
    }

    public final void b() {
        f16066a.set(null);
    }

    public final void c(c1 c1Var) {
        f16066a.set(c1Var);
    }
}
