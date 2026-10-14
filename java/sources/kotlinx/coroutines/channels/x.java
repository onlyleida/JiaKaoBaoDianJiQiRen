package kotlinx.coroutines.channels;

/* JADX INFO: loaded from: classes6.dex */
public final class x<T> {
    public static final b b = new b(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f15892a;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Throwable f15893a;

        public a(Throwable th) {
            this.f15893a = th;
        }

        public boolean equals(Object obj) {
            return (obj instanceof a) && kotlin.jvm.internal.r.a(this.f15893a, ((a) obj).f15893a);
        }

        public int hashCode() {
            Throwable th = this.f15893a;
            if (th != null) {
                return th.hashCode();
            }
            return 0;
        }

        public String toString() {
            return "Closed(" + this.f15893a + ')';
        }
    }

    public static final class b {
        private b() {
        }

        public /* synthetic */ b(kotlin.jvm.internal.o oVar) {
            this();
        }
    }

    private /* synthetic */ x(Object obj) {
        this.f15892a = obj;
    }

    public static final /* synthetic */ x a(Object obj) {
        return new x(obj);
    }

    public static Object b(Object obj) {
        return obj;
    }

    public static boolean c(Object obj, Object obj2) {
        return (obj2 instanceof x) && kotlin.jvm.internal.r.a(obj, ((x) obj2).i());
    }

    public static final Throwable d(Object obj) {
        if (obj instanceof a) {
            return ((a) obj).f15893a;
        }
        throw new IllegalStateException("Channel was not closed".toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final T e(Object obj) {
        if (obj instanceof a) {
            throw new IllegalStateException("Channel was closed".toString());
        }
        return obj;
    }

    public static int f(Object obj) {
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public static final boolean g(Object obj) {
        return obj instanceof a;
    }

    public static String h(Object obj) {
        if (obj instanceof a) {
            return obj.toString();
        }
        return "Value(" + obj + ')';
    }

    public boolean equals(Object obj) {
        return c(this.f15892a, obj);
    }

    public int hashCode() {
        return f(this.f15892a);
    }

    public final /* synthetic */ Object i() {
        return this.f15892a;
    }

    public String toString() {
        return h(this.f15892a);
    }
}
