package kotlinx.coroutines;

/* JADX INFO: loaded from: classes6.dex */
public final class b2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final kotlinx.coroutines.internal.y f15844a = new kotlinx.coroutines.internal.y("COMPLETING_ALREADY");
    public static final kotlinx.coroutines.internal.y b = new kotlinx.coroutines.internal.y("COMPLETING_WAITING_CHILDREN");
    private static final kotlinx.coroutines.internal.y c = new kotlinx.coroutines.internal.y("COMPLETING_RETRY");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final kotlinx.coroutines.internal.y f15845d = new kotlinx.coroutines.internal.y("TOO_LATE_TO_CANCEL");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final kotlinx.coroutines.internal.y f15846e = new kotlinx.coroutines.internal.y("SEALED");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final b1 f15847f = new b1(false);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final b1 f15848g = new b1(true);

    public static final Object g(Object obj) {
        return obj instanceof n1 ? new o1((n1) obj) : obj;
    }

    public static final Object h(Object obj) {
        n1 n1Var;
        o1 o1Var = (o1) (!(obj instanceof o1) ? null : obj);
        return (o1Var == null || (n1Var = o1Var.f16060a) == null) ? obj : n1Var;
    }
}
