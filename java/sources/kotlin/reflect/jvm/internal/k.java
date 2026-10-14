package kotlin.reflect.jvm.internal;

import java.lang.ref.SoftReference;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes6.dex */
public class k {

    public static class a<T> extends c<T> implements Function0<T> {
        private final Function0<T> b;
        private volatile SoftReference<Object> c;

        public a(T t, Function0<T> function0) {
            if (function0 == null) {
                d(0);
                throw null;
            }
            this.c = null;
            this.b = function0;
            if (t != null) {
                this.c = new SoftReference<>(a(t));
            }
        }

        private static /* synthetic */ void d(int i) {
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "initializer", "kotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal", "<init>"));
        }

        @Override // kotlin.reflect.jvm.internal.k.c, kotlin.jvm.functions.Function0
        public T invoke() {
            Object obj;
            SoftReference<Object> softReference = this.c;
            if (softReference != null && (obj = softReference.get()) != null) {
                return c(obj);
            }
            T tInvoke = this.b.invoke();
            this.c = new SoftReference<>(a(tInvoke));
            return tInvoke;
        }
    }

    public static class b<T> extends c<T> {
        private final Function0<T> b;
        private volatile Object c;

        public b(Function0<T> function0) {
            if (function0 == null) {
                d(0);
                throw null;
            }
            this.c = null;
            this.b = function0;
        }

        private static /* synthetic */ void d(int i) {
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "initializer", "kotlin/reflect/jvm/internal/ReflectProperties$LazyVal", "<init>"));
        }

        @Override // kotlin.reflect.jvm.internal.k.c, kotlin.jvm.functions.Function0
        public T invoke() {
            Object obj = this.c;
            if (obj != null) {
                return c(obj);
            }
            T tInvoke = this.b.invoke();
            this.c = a(tInvoke);
            return tInvoke;
        }
    }

    public static abstract class c<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final Object f15757a = new a();

        static class a {
            a() {
            }
        }

        protected Object a(T t) {
            return t == null ? f15757a : t;
        }

        public final T b(Object obj, Object obj2) {
            return invoke();
        }

        /* JADX WARN: Multi-variable type inference failed */
        protected T c(Object obj) {
            if (obj == f15757a) {
                return null;
            }
            return obj;
        }

        public abstract T invoke();
    }

    private static /* synthetic */ void a(int i) {
        Object[] objArr = new Object[3];
        objArr[0] = "initializer";
        objArr[1] = "kotlin/reflect/jvm/internal/ReflectProperties";
        if (i == 1 || i == 2) {
            objArr[2] = "lazySoft";
        } else {
            objArr[2] = "lazy";
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    public static <T> b<T> b(Function0<T> function0) {
        if (function0 != null) {
            return new b<>(function0);
        }
        a(0);
        throw null;
    }

    public static <T> a<T> c(T t, Function0<T> function0) {
        if (function0 != null) {
            return new a<>(t, function0);
        }
        a(1);
        throw null;
    }

    public static <T> a<T> d(Function0<T> function0) {
        if (function0 != null) {
            return c(null, function0);
        }
        a(2);
        throw null;
    }
}
