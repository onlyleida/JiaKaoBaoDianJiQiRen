package kotlin.reflect.jvm.internal.impl.utils;

/* JADX INFO: loaded from: classes6.dex */
public class WrappedValues {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f15746a = new a();
    public static volatile boolean b = false;

    public static class WrappedProcessCanceledException extends RuntimeException {
        public WrappedProcessCanceledException(Throwable th) {
            super("Rethrow stored exception", th);
        }
    }

    static class a {
        a() {
        }

        public String toString() {
            return "NULL_VALUE";
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Throwable f15747a;

        /* synthetic */ b(Throwable th, a aVar) {
            this(th);
        }

        private static /* synthetic */ void a(int i) {
            String str = i != 1 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
            Object[] objArr = new Object[i != 1 ? 3 : 2];
            if (i != 1) {
                objArr[0] = "throwable";
            } else {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/utils/WrappedValues$ThrowableWrapper";
            }
            if (i != 1) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/utils/WrappedValues$ThrowableWrapper";
            } else {
                objArr[1] = "getThrowable";
            }
            if (i != 1) {
                objArr[2] = "<init>";
            }
            String str2 = String.format(str, objArr);
            if (i == 1) {
                throw new IllegalStateException(str2);
            }
        }

        public Throwable b() {
            Throwable th = this.f15747a;
            if (th != null) {
                return th;
            }
            a(1);
            throw null;
        }

        public String toString() {
            return this.f15747a.toString();
        }

        private b(Throwable th) {
            if (th != null) {
                this.f15747a = th;
            } else {
                a(0);
                throw null;
            }
        }
    }

    private static /* synthetic */ void a(int i) {
        String str = (i == 1 || i == 2) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 1 || i == 2) ? 2 : 3];
        if (i == 1 || i == 2) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/utils/WrappedValues";
        } else if (i != 3) {
            objArr[0] = "value";
        } else {
            objArr[0] = "throwable";
        }
        if (i == 1 || i == 2) {
            objArr[1] = "escapeNull";
        } else {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/utils/WrappedValues";
        }
        if (i != 1 && i != 2) {
            if (i == 3) {
                objArr[2] = "escapeThrowable";
            } else if (i != 4) {
                objArr[2] = "unescapeNull";
            } else {
                objArr[2] = "unescapeExceptionOrNull";
            }
        }
        String str2 = String.format(str, objArr);
        if (i != 1 && i != 2) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public static <V> Object b(V v) {
        if (v != null) {
            if (v != null) {
                return v;
            }
            a(2);
            throw null;
        }
        Object obj = f15746a;
        if (obj != null) {
            return obj;
        }
        a(1);
        throw null;
    }

    public static Object c(Throwable th) {
        a aVar = null;
        if (th != null) {
            return new b(th, aVar);
        }
        a(3);
        throw null;
    }

    public static <V> V d(Object obj) throws Throwable {
        if (obj != null) {
            f(obj);
            return (V) e(obj);
        }
        a(4);
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <V> V e(Object obj) {
        if (obj == 0) {
            a(0);
            throw null;
        }
        if (obj == f15746a) {
            return null;
        }
        return obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <V> V f(Object obj) throws Throwable {
        if (!(obj instanceof b)) {
            return obj;
        }
        Throwable thB = ((b) obj).b();
        if (b && c.a(thB)) {
            throw new WrappedProcessCanceledException(thB);
        }
        c.b(thB);
        throw null;
    }
}
