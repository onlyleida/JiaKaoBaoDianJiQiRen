package kotlinx.coroutines;

/* JADX INFO: loaded from: classes6.dex */
public final class w0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final CoroutineDispatcher f16124a = d0.a();
    private static final CoroutineDispatcher b;

    static {
        w2 w2Var = w2.b;
        b = kotlinx.coroutines.scheduling.b.f16084h.E();
    }

    public static final CoroutineDispatcher a() {
        return f16124a;
    }

    public static final CoroutineDispatcher b() {
        return b;
    }

    public static final d2 c() {
        return kotlinx.coroutines.internal.r.b;
    }
}
