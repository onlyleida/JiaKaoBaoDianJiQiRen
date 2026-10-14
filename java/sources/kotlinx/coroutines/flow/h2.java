package kotlinx.coroutines.flow;

/* JADX INFO: loaded from: classes6.dex */
public interface h2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f15960a = a.c;

    public static final class a {
        static final /* synthetic */ a c = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final h2 f15961a = new i2();
        private static final h2 b = new StartedLazily();

        private a() {
        }

        public final h2 a() {
            return f15961a;
        }

        public final h2 b() {
            return b;
        }
    }

    c<SharingCommand> a(k2<Integer> k2Var);
}
