package kotlin.reflect.jvm.internal.impl.storage;

import com.tencent.open.SocialConstants;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.utils.WrappedValues;
import kotlin.text.StringsKt__StringsKt;
import kotlin.v;

/* JADX INFO: loaded from: classes6.dex */
public class LockBasedStorageManager implements kotlin.reflect.jvm.internal.impl.storage.m {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f15620d = StringsKt__StringsKt.H0(LockBasedStorageManager.class.getCanonicalName(), ".", "");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final kotlin.reflect.jvm.internal.impl.storage.m f15621e = new a("NO_LOCKS", f.f15626a, kotlin.reflect.jvm.internal.impl.storage.e.b);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final kotlin.reflect.jvm.internal.impl.storage.j f15622a;
    private final f b;
    private final String c;

    private enum NotValue {
        NOT_COMPUTED,
        COMPUTING,
        RECURSION_WAS_DETECTED
    }

    static class a extends LockBasedStorageManager {
        a(String str, f fVar, kotlin.reflect.jvm.internal.impl.storage.j jVar) {
            super(str, fVar, jVar, null);
        }

        private static /* synthetic */ void j(int i) {
            String str = i != 1 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
            Object[] objArr = new Object[i != 1 ? 3 : 2];
            if (i != 1) {
                objArr[0] = SocialConstants.PARAM_SOURCE;
            } else {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$1";
            }
            if (i != 1) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$1";
            } else {
                objArr[1] = "recursionDetectedDefault";
            }
            if (i != 1) {
                objArr[2] = "recursionDetectedDefault";
            }
            String str2 = String.format(str, objArr);
            if (i == 1) {
                throw new IllegalStateException(str2);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager
        protected <K, V> n<V> p(String str, K k) {
            if (str == null) {
                j(0);
                throw null;
            }
            n<V> nVarA = n.a();
            if (nVarA != null) {
                return nVarA;
            }
            j(1);
            throw null;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class b<T> extends j<T> {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Object f15623d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(LockBasedStorageManager lockBasedStorageManager, LockBasedStorageManager lockBasedStorageManager2, Function0 function0, Object obj) {
            super(lockBasedStorageManager2, function0);
            this.f15623d = obj;
        }

        private static /* synthetic */ void a(int i) {
            throw new IllegalStateException(String.format("@NotNull method %s.%s must not return null", "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$4", "recursionDetected"));
        }

        @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.h
        protected n<T> c(boolean z) {
            n<T> nVarD = n.d(this.f15623d);
            if (nVarD != null) {
                return nVarD;
            }
            a(0);
            throw null;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class c<T> extends k<T> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ Function1 f15624e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ Function1 f15625f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(LockBasedStorageManager lockBasedStorageManager, LockBasedStorageManager lockBasedStorageManager2, Function0 function0, Function1 function1, Function1 function2) {
            super(lockBasedStorageManager2, function0);
            this.f15624e = function1;
            this.f15625f = function2;
        }

        private static /* synthetic */ void a(int i) {
            String str = i != 2 ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[i != 2 ? 2 : 3];
            if (i != 2) {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5";
            } else {
                objArr[0] = "value";
            }
            if (i != 2) {
                objArr[1] = "recursionDetected";
            } else {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5";
            }
            if (i == 2) {
                objArr[2] = "doPostCompute";
            }
            String str2 = String.format(str, objArr);
            if (i == 2) {
                throw new IllegalArgumentException(str2);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.h
        protected n<T> c(boolean z) {
            Function1 function1 = this.f15624e;
            if (function1 == null) {
                n<T> nVarC = super.c(z);
                if (nVarC != null) {
                    return nVarC;
                }
                a(0);
                throw null;
            }
            n<T> nVarD = n.d(function1.invoke(Boolean.valueOf(z)));
            if (nVarD != null) {
                return nVarD;
            }
            a(1);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.i
        protected void d(T t) {
            if (t != null) {
                this.f15625f.invoke(t);
            } else {
                a(2);
                throw null;
            }
        }
    }

    private static class d<K, V> extends e<K, V> implements kotlin.reflect.jvm.internal.impl.storage.a<K, V> {
        /* synthetic */ d(LockBasedStorageManager lockBasedStorageManager, ConcurrentMap concurrentMap, a aVar) {
            this(lockBasedStorageManager, concurrentMap);
        }

        private static /* synthetic */ void b(int i) {
            String str = i != 3 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
            Object[] objArr = new Object[i != 3 ? 3 : 2];
            if (i == 1) {
                objArr[0] = "map";
            } else if (i == 2) {
                objArr[0] = "computation";
            } else if (i != 3) {
                objArr[0] = "storageManager";
            } else {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNotNullValuesBasedOnMemoizedFunction";
            }
            if (i != 3) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNotNullValuesBasedOnMemoizedFunction";
            } else {
                objArr[1] = "computeIfAbsent";
            }
            if (i == 2) {
                objArr[2] = "computeIfAbsent";
            } else if (i != 3) {
                objArr[2] = "<init>";
            }
            String str2 = String.format(str, objArr);
            if (i == 3) {
                throw new IllegalStateException(str2);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.e, kotlin.reflect.jvm.internal.impl.storage.a
        public V a(K k, Function0<? extends V> function0) {
            if (function0 == null) {
                b(2);
                throw null;
            }
            V v = (V) super.a(k, function0);
            if (v != null) {
                return v;
            }
            b(3);
            throw null;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        private d(LockBasedStorageManager lockBasedStorageManager, ConcurrentMap<g<K, V>, Object> concurrentMap) {
            a aVar = null;
            if (lockBasedStorageManager == null) {
                b(0);
                throw null;
            }
            if (concurrentMap != null) {
                super(lockBasedStorageManager, concurrentMap, aVar);
            } else {
                b(1);
                throw null;
            }
        }
    }

    private static class e<K, V> extends l<g<K, V>, V> implements kotlin.reflect.jvm.internal.impl.storage.b<K, V> {

        class a implements Function1<g<K, V>, V> {
            a() {
            }

            @Override // kotlin.jvm.functions.Function1
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public V invoke(g<K, V> gVar) {
                return (V) ((g) gVar).b.invoke();
            }
        }

        /* synthetic */ e(LockBasedStorageManager lockBasedStorageManager, ConcurrentMap concurrentMap, a aVar) {
            this(lockBasedStorageManager, concurrentMap);
        }

        private static /* synthetic */ void b(int i) {
            Object[] objArr = new Object[3];
            if (i == 1) {
                objArr[0] = "map";
            } else if (i != 2) {
                objArr[0] = "storageManager";
            } else {
                objArr[0] = "computation";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNullableValuesBasedOnMemoizedFunction";
            if (i != 2) {
                objArr[2] = "<init>";
            } else {
                objArr[2] = "computeIfAbsent";
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        public V a(K k, Function0<? extends V> function0) {
            if (function0 != null) {
                return invoke(new g(k, function0));
            }
            b(2);
            throw null;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private e(LockBasedStorageManager lockBasedStorageManager, ConcurrentMap<g<K, V>, Object> concurrentMap) {
            super(lockBasedStorageManager, concurrentMap, new a());
            if (lockBasedStorageManager == null) {
                b(0);
                throw null;
            }
            if (concurrentMap != null) {
            } else {
                b(1);
                throw null;
            }
        }
    }

    public interface f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final f f15626a = new a();

        static class a implements f {
            a() {
            }

            private static /* synthetic */ void b(int i) {
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "throwable", "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$ExceptionHandlingStrategy$1", "handleException"));
            }

            @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.f
            public RuntimeException a(Throwable th) throws Throwable {
                if (th == null) {
                    b(0);
                    throw null;
                }
                kotlin.reflect.jvm.internal.impl.utils.c.b(th);
                throw null;
            }
        }

        RuntimeException a(Throwable th);
    }

    private static class g<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final K f15627a;
        private final Function0<? extends V> b;

        public g(K k, Function0<? extends V> function0) {
            this.f15627a = k;
            this.b = function0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && g.class == obj.getClass() && this.f15627a.equals(((g) obj).f15627a);
        }

        public int hashCode() {
            return this.f15627a.hashCode();
        }
    }

    private static class h<T> implements kotlin.reflect.jvm.internal.impl.storage.i<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final LockBasedStorageManager f15628a;
        private final Function0<? extends T> b;
        private volatile Object c;

        public h(LockBasedStorageManager lockBasedStorageManager, Function0<? extends T> function0) {
            if (lockBasedStorageManager == null) {
                a(0);
                throw null;
            }
            if (function0 == null) {
                a(1);
                throw null;
            }
            this.c = NotValue.NOT_COMPUTED;
            this.f15628a = lockBasedStorageManager;
            this.b = function0;
        }

        private static /* synthetic */ void a(int i) {
            String str = (i == 2 || i == 3) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[(i == 2 || i == 3) ? 2 : 3];
            if (i == 1) {
                objArr[0] = "computable";
            } else if (i == 2 || i == 3) {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue";
            } else {
                objArr[0] = "storageManager";
            }
            if (i == 2) {
                objArr[1] = "recursionDetected";
            } else if (i != 3) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue";
            } else {
                objArr[1] = "renderDebugInformation";
            }
            if (i != 2 && i != 3) {
                objArr[2] = "<init>";
            }
            String str2 = String.format(str, objArr);
            if (i != 2 && i != 3) {
                throw new IllegalArgumentException(str2);
            }
            throw new IllegalStateException(str2);
        }

        protected void b(T t) {
        }

        protected n<T> c(boolean z) {
            n<T> nVarP = this.f15628a.p("in a lazy value", null);
            if (nVarP != null) {
                return nVarP;
            }
            a(2);
            throw null;
        }

        /* JADX WARN: Code duplicated, block: B:17:0x003a A[Catch: all -> 0x0081, TryCatch #0 {all -> 0x0081, blocks: (B:7:0x0011, B:9:0x0017, B:12:0x0022, B:14:0x0026, B:16:0x0035, B:17:0x003a, B:19:0x003e, B:21:0x0049, B:22:0x004e, B:26:0x005d, B:28:0x0063, B:30:0x0069, B:31:0x006f, B:34:0x007a, B:35:0x0080, B:23:0x0050), top: B:39:0x0011, inners: #1 }] */
        /* JADX WARN: Code duplicated, block: B:19:0x003e A[Catch: all -> 0x0081, TryCatch #0 {all -> 0x0081, blocks: (B:7:0x0011, B:9:0x0017, B:12:0x0022, B:14:0x0026, B:16:0x0035, B:17:0x003a, B:19:0x003e, B:21:0x0049, B:22:0x004e, B:26:0x005d, B:28:0x0063, B:30:0x0069, B:31:0x006f, B:34:0x007a, B:35:0x0080, B:23:0x0050), top: B:39:0x0011, inners: #1 }] */
        /* JADX WARN: Code duplicated, block: B:21:0x0049 A[Catch: all -> 0x0081, TryCatch #0 {all -> 0x0081, blocks: (B:7:0x0011, B:9:0x0017, B:12:0x0022, B:14:0x0026, B:16:0x0035, B:17:0x003a, B:19:0x003e, B:21:0x0049, B:22:0x004e, B:26:0x005d, B:28:0x0063, B:30:0x0069, B:31:0x006f, B:34:0x007a, B:35:0x0080, B:23:0x0050), top: B:39:0x0011, inners: #1 }] */
        /* JADX WARN: Code duplicated, block: B:22:0x004e A[Catch: all -> 0x0081, TRY_LEAVE, TryCatch #0 {all -> 0x0081, blocks: (B:7:0x0011, B:9:0x0017, B:12:0x0022, B:14:0x0026, B:16:0x0035, B:17:0x003a, B:19:0x003e, B:21:0x0049, B:22:0x004e, B:26:0x005d, B:28:0x0063, B:30:0x0069, B:31:0x006f, B:34:0x007a, B:35:0x0080, B:23:0x0050), top: B:39:0x0011, inners: #1 }] */
        @Override // kotlin.jvm.functions.Function0
        public T invoke() throws Throwable {
            n<T> nVarC;
            T t = (T) this.c;
            if (!(t instanceof NotValue)) {
                WrappedValues.f(t);
                return t;
            }
            this.f15628a.f15622a.lock();
            try {
                T tInvoke = (T) this.c;
                if (tInvoke instanceof NotValue) {
                    NotValue notValue = NotValue.COMPUTING;
                    if (tInvoke == notValue) {
                        this.c = NotValue.RECURSION_WAS_DETECTED;
                        n<T> nVarC2 = c(true);
                        if (!nVarC2.c()) {
                            tInvoke = nVarC2.b();
                        } else if (tInvoke == NotValue.RECURSION_WAS_DETECTED) {
                            nVarC = c(false);
                            if (nVarC.c()) {
                                this.c = notValue;
                                try {
                                    tInvoke = this.b.invoke();
                                    b(tInvoke);
                                    this.c = tInvoke;
                                } catch (Throwable th) {
                                    if (kotlin.reflect.jvm.internal.impl.utils.c.a(th)) {
                                        this.c = NotValue.NOT_COMPUTED;
                                        throw th;
                                    }
                                    if (this.c == NotValue.COMPUTING) {
                                        this.c = WrappedValues.c(th);
                                    }
                                    this.f15628a.b.a(th);
                                    throw null;
                                }
                            } else {
                                tInvoke = nVarC.b();
                            }
                        } else {
                            this.c = notValue;
                            tInvoke = this.b.invoke();
                            b(tInvoke);
                            this.c = tInvoke;
                        }
                    } else if (tInvoke == NotValue.RECURSION_WAS_DETECTED) {
                        nVarC = c(false);
                        if (nVarC.c()) {
                            tInvoke = nVarC.b();
                        } else {
                            this.c = notValue;
                            tInvoke = this.b.invoke();
                            b(tInvoke);
                            this.c = tInvoke;
                        }
                    } else {
                        this.c = notValue;
                        tInvoke = this.b.invoke();
                        b(tInvoke);
                        this.c = tInvoke;
                    }
                } else {
                    WrappedValues.f(tInvoke);
                }
                this.f15628a.f15622a.unlock();
                return tInvoke;
            } catch (Throwable th2) {
                this.f15628a.f15622a.unlock();
                throw th2;
            }
        }

        public boolean k() {
            return (this.c == NotValue.NOT_COMPUTED || this.c == NotValue.COMPUTING) ? false : true;
        }
    }

    private static abstract class i<T> extends h<T> {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private volatile kotlin.reflect.jvm.internal.impl.storage.k<T> f15629d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(LockBasedStorageManager lockBasedStorageManager, Function0<? extends T> function0) {
            super(lockBasedStorageManager, function0);
            if (lockBasedStorageManager == null) {
                a(0);
                throw null;
            }
            if (function0 == null) {
                a(1);
                throw null;
            }
            this.f15629d = null;
        }

        private static /* synthetic */ void a(int i) {
            Object[] objArr = new Object[3];
            if (i != 1) {
                objArr[0] = "storageManager";
            } else {
                objArr[0] = "computable";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValueWithPostCompute";
            objArr[2] = "<init>";
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.h
        protected final void b(T t) {
            this.f15629d = new kotlin.reflect.jvm.internal.impl.storage.k<>(t);
            try {
                d(t);
            } finally {
                this.f15629d = null;
            }
        }

        protected abstract void d(T t);

        @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.h, kotlin.jvm.functions.Function0
        public T invoke() {
            kotlin.reflect.jvm.internal.impl.storage.k<T> kVar = this.f15629d;
            return (kVar == null || !kVar.b()) ? (T) super.invoke() : kVar.a();
        }
    }

    private static class j<T> extends h<T> implements kotlin.reflect.jvm.internal.impl.storage.h<T> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(LockBasedStorageManager lockBasedStorageManager, Function0<? extends T> function0) {
            super(lockBasedStorageManager, function0);
            if (lockBasedStorageManager == null) {
                a(0);
                throw null;
            }
            if (function0 != null) {
            } else {
                a(1);
                throw null;
            }
        }

        private static /* synthetic */ void a(int i) {
            String str = i != 2 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
            Object[] objArr = new Object[i != 2 ? 3 : 2];
            if (i == 1) {
                objArr[0] = "computable";
            } else if (i != 2) {
                objArr[0] = "storageManager";
            } else {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue";
            }
            if (i != 2) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue";
            } else {
                objArr[1] = "invoke";
            }
            if (i != 2) {
                objArr[2] = "<init>";
            }
            String str2 = String.format(str, objArr);
            if (i == 2) {
                throw new IllegalStateException(str2);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.h, kotlin.jvm.functions.Function0
        public T invoke() {
            T t = (T) super.invoke();
            if (t != null) {
                return t;
            }
            a(2);
            throw null;
        }
    }

    private static abstract class k<T> extends i<T> implements kotlin.reflect.jvm.internal.impl.storage.h<T> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(LockBasedStorageManager lockBasedStorageManager, Function0<? extends T> function0) {
            super(lockBasedStorageManager, function0);
            if (lockBasedStorageManager == null) {
                a(0);
                throw null;
            }
            if (function0 != null) {
            } else {
                a(1);
                throw null;
            }
        }

        private static /* synthetic */ void a(int i) {
            String str = i != 2 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
            Object[] objArr = new Object[i != 2 ? 3 : 2];
            if (i == 1) {
                objArr[0] = "computable";
            } else if (i != 2) {
                objArr[0] = "storageManager";
            } else {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValueWithPostCompute";
            }
            if (i != 2) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValueWithPostCompute";
            } else {
                objArr[1] = "invoke";
            }
            if (i != 2) {
                objArr[2] = "<init>";
            }
            String str2 = String.format(str, objArr);
            if (i == 2) {
                throw new IllegalStateException(str2);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.i, kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.h, kotlin.jvm.functions.Function0
        public T invoke() {
            T t = (T) super.invoke();
            if (t != null) {
                return t;
            }
            a(2);
            throw null;
        }
    }

    private static class l<K, V> implements kotlin.reflect.jvm.internal.impl.storage.g<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final LockBasedStorageManager f15630a;
        private final ConcurrentMap<K, Object> b;
        private final Function1<? super K, ? extends V> c;

        public l(LockBasedStorageManager lockBasedStorageManager, ConcurrentMap<K, Object> concurrentMap, Function1<? super K, ? extends V> function1) {
            if (lockBasedStorageManager == null) {
                b(0);
                throw null;
            }
            if (concurrentMap == null) {
                b(1);
                throw null;
            }
            if (function1 == null) {
                b(2);
                throw null;
            }
            this.f15630a = lockBasedStorageManager;
            this.b = concurrentMap;
            this.c = function1;
        }

        private static /* synthetic */ void b(int i) {
            String str = (i == 3 || i == 4) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[(i == 3 || i == 4) ? 2 : 3];
            if (i == 1) {
                objArr[0] = "map";
            } else if (i == 2) {
                objArr[0] = "compute";
            } else if (i == 3 || i == 4) {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction";
            } else {
                objArr[0] = "storageManager";
            }
            if (i == 3) {
                objArr[1] = "recursionDetected";
            } else if (i != 4) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction";
            } else {
                objArr[1] = "raceCondition";
            }
            if (i != 3 && i != 4) {
                objArr[2] = "<init>";
            }
            String str2 = String.format(str, objArr);
            if (i != 3 && i != 4) {
                throw new IllegalArgumentException(str2);
            }
            throw new IllegalStateException(str2);
        }

        private AssertionError c(K k, Object obj) {
            AssertionError assertionError = new AssertionError("Race condition detected on input " + k + ". Old value is " + obj + " under " + this.f15630a);
            LockBasedStorageManager.l(assertionError);
            return assertionError;
        }

        protected n<V> d(K k, boolean z) {
            n<V> nVarP = this.f15630a.p("", k);
            if (nVarP != null) {
                return nVarP;
            }
            b(3);
            throw null;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x003b A[Catch: all -> 0x00b6, PHI: r0
          0x003b: PHI (r0v8 java.lang.Object) = (r0v7 java.lang.Object), (r0v13 java.lang.Object) binds: [B:10:0x0020, B:12:0x002d] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #0 {all -> 0x00b6, blocks: (B:9:0x0018, B:11:0x0022, B:13:0x002f, B:16:0x003b, B:18:0x003f, B:20:0x004a, B:22:0x0051, B:35:0x007f, B:38:0x0087, B:40:0x0095, B:41:0x0099, B:42:0x009a, B:44:0x00a4, B:46:0x00ae, B:47:0x00b5), top: B:51:0x0018 }] */
        /* JADX WARN: Code duplicated, block: B:18:0x003f A[Catch: all -> 0x00b6, TryCatch #0 {all -> 0x00b6, blocks: (B:9:0x0018, B:11:0x0022, B:13:0x002f, B:16:0x003b, B:18:0x003f, B:20:0x004a, B:22:0x0051, B:35:0x007f, B:38:0x0087, B:40:0x0095, B:41:0x0099, B:42:0x009a, B:44:0x00a4, B:46:0x00ae, B:47:0x00b5), top: B:51:0x0018 }] */
        /* JADX WARN: Code duplicated, block: B:20:0x004a A[Catch: all -> 0x00b6, TryCatch #0 {all -> 0x00b6, blocks: (B:9:0x0018, B:11:0x0022, B:13:0x002f, B:16:0x003b, B:18:0x003f, B:20:0x004a, B:22:0x0051, B:35:0x007f, B:38:0x0087, B:40:0x0095, B:41:0x0099, B:42:0x009a, B:44:0x00a4, B:46:0x00ae, B:47:0x00b5), top: B:51:0x0018 }] */
        /* JADX WARN: Code duplicated, block: B:21:0x004f A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:22:0x0051 A[Catch: all -> 0x00b6, TRY_LEAVE, TryCatch #0 {all -> 0x00b6, blocks: (B:9:0x0018, B:11:0x0022, B:13:0x002f, B:16:0x003b, B:18:0x003f, B:20:0x004a, B:22:0x0051, B:35:0x007f, B:38:0x0087, B:40:0x0095, B:41:0x0099, B:42:0x009a, B:44:0x00a4, B:46:0x00ae, B:47:0x00b5), top: B:51:0x0018 }] */
        /* JADX WARN: Code duplicated, block: B:24:0x0056  */
        /* JADX WARN: Code duplicated, block: B:27:0x006e  */
        /* JADX WARN: Code duplicated, block: B:29:0x0076 A[Catch: all -> 0x007d, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x007d, blocks: (B:25:0x0057, B:29:0x0076), top: B:54:0x0057 }] */
        /* JADX WARN: Code duplicated, block: B:37:0x0085 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:38:0x0087 A[Catch: all -> 0x00b6, TryCatch #0 {all -> 0x00b6, blocks: (B:9:0x0018, B:11:0x0022, B:13:0x002f, B:16:0x003b, B:18:0x003f, B:20:0x004a, B:22:0x0051, B:35:0x007f, B:38:0x0087, B:40:0x0095, B:41:0x0099, B:42:0x009a, B:44:0x00a4, B:46:0x00ae, B:47:0x00b5), top: B:51:0x0018 }] */
        /* JADX WARN: Code duplicated, block: B:40:0x0095 A[Catch: all -> 0x00b6, TryCatch #0 {all -> 0x00b6, blocks: (B:9:0x0018, B:11:0x0022, B:13:0x002f, B:16:0x003b, B:18:0x003f, B:20:0x004a, B:22:0x0051, B:35:0x007f, B:38:0x0087, B:40:0x0095, B:41:0x0099, B:42:0x009a, B:44:0x00a4, B:46:0x00ae, B:47:0x00b5), top: B:51:0x0018 }] */
        /* JADX WARN: Code duplicated, block: B:42:0x009a A[Catch: all -> 0x00b6, TRY_LEAVE, TryCatch #0 {all -> 0x00b6, blocks: (B:9:0x0018, B:11:0x0022, B:13:0x002f, B:16:0x003b, B:18:0x003f, B:20:0x004a, B:22:0x0051, B:35:0x007f, B:38:0x0087, B:40:0x0095, B:41:0x0099, B:42:0x009a, B:44:0x00a4, B:46:0x00ae, B:47:0x00b5), top: B:51:0x0018 }] */
        /* JADX WARN: Code duplicated, block: B:44:0x00a4 A[Catch: all -> 0x00b6, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x00b6, blocks: (B:9:0x0018, B:11:0x0022, B:13:0x002f, B:16:0x003b, B:18:0x003f, B:20:0x004a, B:22:0x0051, B:35:0x007f, B:38:0x0087, B:40:0x0095, B:41:0x0099, B:42:0x009a, B:44:0x00a4, B:46:0x00ae, B:47:0x00b5), top: B:51:0x0018 }] */
        /* JADX WARN: Code duplicated, block: B:46:0x00ae A[Catch: all -> 0x00b6, TRY_ENTER, TryCatch #0 {all -> 0x00b6, blocks: (B:9:0x0018, B:11:0x0022, B:13:0x002f, B:16:0x003b, B:18:0x003f, B:20:0x004a, B:22:0x0051, B:35:0x007f, B:38:0x0087, B:40:0x0095, B:41:0x0099, B:42:0x009a, B:44:0x00a4, B:46:0x00ae, B:47:0x00b5), top: B:51:0x0018 }] */
        @Override // kotlin.jvm.functions.Function1
        public V invoke(K k) {
            AssertionError assertionErrorC;
            Object objPut;
            V vInvoke;
            Object objPut2;
            V vB;
            n<V> nVarD;
            Object obj = this.b.get(k);
            if (obj != null && obj != NotValue.COMPUTING) {
                return (V) WrappedValues.d(obj);
            }
            this.f15630a.f15622a.lock();
            try {
                Object obj2 = this.b.get(k);
                NotValue notValue = NotValue.COMPUTING;
                if (obj2 == notValue) {
                    obj2 = NotValue.RECURSION_WAS_DETECTED;
                    n<V> nVarD2 = d(k, true);
                    if (!nVarD2.c()) {
                        vB = nVarD2.b();
                    } else if (obj2 == NotValue.RECURSION_WAS_DETECTED) {
                        nVarD = d(k, false);
                        if (!nVarD.c()) {
                            vB = nVarD.b();
                        } else {
                            if (obj2 != null) {
                                try {
                                    this.b.put(k, notValue);
                                    vInvoke = this.c.invoke(k);
                                    objPut2 = this.b.put(k, WrappedValues.b(vInvoke));
                                    if (objPut2 == notValue) {
                                        this.f15630a.f15622a.unlock();
                                        return vInvoke;
                                    }
                                    assertionErrorC = c(k, objPut2);
                                    try {
                                        throw assertionErrorC;
                                    } catch (Throwable th) {
                                        th = th;
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    assertionErrorC = null;
                                }
                                if (!kotlin.reflect.jvm.internal.impl.utils.c.a(th)) {
                                    this.b.remove(k);
                                    throw th;
                                }
                                if (th != assertionErrorC) {
                                    this.f15630a.b.a(th);
                                    throw null;
                                }
                                objPut = this.b.put(k, WrappedValues.c(th));
                                if (objPut != NotValue.COMPUTING) {
                                    throw c(k, objPut);
                                }
                                this.f15630a.b.a(th);
                                throw null;
                            }
                            vB = (V) WrappedValues.d(obj2);
                        }
                    } else {
                        if (obj2 != null) {
                            this.b.put(k, notValue);
                            vInvoke = this.c.invoke(k);
                            objPut2 = this.b.put(k, WrappedValues.b(vInvoke));
                            if (objPut2 == notValue) {
                                this.f15630a.f15622a.unlock();
                                return vInvoke;
                            }
                            assertionErrorC = c(k, objPut2);
                            throw assertionErrorC;
                            if (!kotlin.reflect.jvm.internal.impl.utils.c.a(th)) {
                                this.b.remove(k);
                                throw th;
                            }
                            if (th != assertionErrorC) {
                                this.f15630a.b.a(th);
                                throw null;
                            }
                            objPut = this.b.put(k, WrappedValues.c(th));
                            if (objPut != NotValue.COMPUTING) {
                                throw c(k, objPut);
                            }
                            this.f15630a.b.a(th);
                            throw null;
                        }
                        vB = (V) WrappedValues.d(obj2);
                    }
                } else if (obj2 == NotValue.RECURSION_WAS_DETECTED) {
                    nVarD = d(k, false);
                    if (!nVarD.c()) {
                        vB = nVarD.b();
                    } else {
                        if (obj2 != null) {
                            this.b.put(k, notValue);
                            vInvoke = this.c.invoke(k);
                            objPut2 = this.b.put(k, WrappedValues.b(vInvoke));
                            if (objPut2 == notValue) {
                                this.f15630a.f15622a.unlock();
                                return vInvoke;
                            }
                            assertionErrorC = c(k, objPut2);
                            throw assertionErrorC;
                            if (!kotlin.reflect.jvm.internal.impl.utils.c.a(th)) {
                                this.b.remove(k);
                                throw th;
                            }
                            if (th != assertionErrorC) {
                                this.f15630a.b.a(th);
                                throw null;
                            }
                            objPut = this.b.put(k, WrappedValues.c(th));
                            if (objPut != NotValue.COMPUTING) {
                                throw c(k, objPut);
                            }
                            this.f15630a.b.a(th);
                            throw null;
                        }
                        vB = (V) WrappedValues.d(obj2);
                    }
                } else {
                    if (obj2 != null) {
                        this.b.put(k, notValue);
                        vInvoke = this.c.invoke(k);
                        objPut2 = this.b.put(k, WrappedValues.b(vInvoke));
                        if (objPut2 == notValue) {
                            this.f15630a.f15622a.unlock();
                            return vInvoke;
                        }
                        assertionErrorC = c(k, objPut2);
                        throw assertionErrorC;
                        if (!kotlin.reflect.jvm.internal.impl.utils.c.a(th)) {
                            this.b.remove(k);
                            throw th;
                        }
                        if (th != assertionErrorC) {
                            this.f15630a.b.a(th);
                            throw null;
                        }
                        objPut = this.b.put(k, WrappedValues.c(th));
                        if (objPut != NotValue.COMPUTING) {
                            throw c(k, objPut);
                        }
                        this.f15630a.b.a(th);
                        throw null;
                    }
                    vB = (V) WrappedValues.d(obj2);
                }
                this.f15630a.f15622a.unlock();
                return vB;
            } catch (Throwable th3) {
                this.f15630a.f15622a.unlock();
                throw th3;
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.storage.g
        public boolean n(K k) {
            Object obj = this.b.get(k);
            return (obj == null || obj == NotValue.COMPUTING) ? false : true;
        }
    }

    private static class m<K, V> extends l<K, V> implements kotlin.reflect.jvm.internal.impl.storage.f<K, V> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public m(LockBasedStorageManager lockBasedStorageManager, ConcurrentMap<K, Object> concurrentMap, Function1<? super K, ? extends V> function1) {
            super(lockBasedStorageManager, concurrentMap, function1);
            if (lockBasedStorageManager == null) {
                b(0);
                throw null;
            }
            if (concurrentMap == null) {
                b(1);
                throw null;
            }
            if (function1 != null) {
            } else {
                b(2);
                throw null;
            }
        }

        private static /* synthetic */ void b(int i) {
            String str = i != 3 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
            Object[] objArr = new Object[i != 3 ? 3 : 2];
            if (i == 1) {
                objArr[0] = "map";
            } else if (i == 2) {
                objArr[0] = "compute";
            } else if (i != 3) {
                objArr[0] = "storageManager";
            } else {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull";
            }
            if (i != 3) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull";
            } else {
                objArr[1] = "invoke";
            }
            if (i != 3) {
                objArr[2] = "<init>";
            }
            String str2 = String.format(str, objArr);
            if (i == 3) {
                throw new IllegalStateException(str2);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.l, kotlin.jvm.functions.Function1
        public V invoke(K k) {
            V v = (V) super.invoke(k);
            if (v != null) {
                return v;
            }
            b(3);
            throw null;
        }
    }

    private static class n<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final T f15631a;
        private final boolean b;

        private n(T t, boolean z) {
            this.f15631a = t;
            this.b = z;
        }

        public static <T> n<T> a() {
            return new n<>(null, true);
        }

        public static <T> n<T> d(T t) {
            return new n<>(t, false);
        }

        public T b() {
            return this.f15631a;
        }

        public boolean c() {
            return this.b;
        }

        public String toString() {
            return c() ? "FALL_THROUGH" : String.valueOf(this.f15631a);
        }
    }

    /* synthetic */ LockBasedStorageManager(String str, f fVar, kotlin.reflect.jvm.internal.impl.storage.j jVar, a aVar) {
        this(str, fVar, jVar);
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0065  */
    private static /* synthetic */ void j(int i2) {
        String str = (i2 == 10 || i2 == 13 || i2 == 20 || i2 == 37) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i2 == 10 || i2 == 13 || i2 == 20 || i2 == 37) ? 2 : 3];
        if (i2 == 1 || i2 == 3 || i2 == 5) {
            objArr[0] = "exceptionHandlingStrategy";
        } else if (i2 != 6) {
            switch (i2) {
                case 8:
                    objArr[0] = "exceptionHandlingStrategy";
                    break;
                case 9:
                case 11:
                case 14:
                case 16:
                case 19:
                case 21:
                    objArr[0] = "compute";
                    break;
                case 10:
                case 13:
                case 20:
                case 37:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager";
                    break;
                case 12:
                case 17:
                case 25:
                case 27:
                    objArr[0] = "onRecursiveCall";
                    break;
                case 15:
                case 18:
                case 22:
                    objArr[0] = "map";
                    break;
                case 23:
                case 24:
                case 26:
                case 28:
                case 30:
                case 31:
                case 32:
                case 34:
                    objArr[0] = "computable";
                    break;
                case 29:
                case 33:
                    objArr[0] = "postCompute";
                    break;
                case 35:
                    objArr[0] = SocialConstants.PARAM_SOURCE;
                    break;
                case 36:
                    objArr[0] = "throwable";
                    break;
                default:
                    objArr[0] = "debugText";
                    break;
            }
        } else {
            objArr[0] = "lock";
        }
        if (i2 == 10 || i2 == 13) {
            objArr[1] = "createMemoizedFunction";
        } else if (i2 == 20) {
            objArr[1] = "createMemoizedFunctionWithNullableValues";
        } else if (i2 != 37) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager";
        } else {
            objArr[1] = "sanitizeStackTrace";
        }
        switch (i2) {
            case 4:
            case 5:
            case 6:
                objArr[2] = "<init>";
                break;
            case 7:
            case 8:
                objArr[2] = "replaceExceptionHandling";
                break;
            case 9:
            case 11:
            case 12:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
                objArr[2] = "createMemoizedFunction";
                break;
            case 10:
            case 13:
            case 20:
            case 37:
                break;
            case 19:
            case 21:
            case 22:
                objArr[2] = "createMemoizedFunctionWithNullableValues";
                break;
            case 23:
            case 24:
            case 25:
                objArr[2] = "createLazyValue";
                break;
            case 26:
            case 27:
                objArr[2] = "createRecursionTolerantLazyValue";
                break;
            case 28:
            case 29:
                objArr[2] = "createLazyValueWithPostCompute";
                break;
            case 30:
                objArr[2] = "createNullableLazyValue";
                break;
            case 31:
                objArr[2] = "createRecursionTolerantNullableLazyValue";
                break;
            case 32:
            case 33:
                objArr[2] = "createNullableLazyValueWithPostCompute";
                break;
            case 34:
                objArr[2] = "compute";
                break;
            case 35:
                objArr[2] = "recursionDetectedDefault";
                break;
            case 36:
                objArr[2] = "sanitizeStackTrace";
                break;
            default:
                objArr[2] = "createWithExceptionHandling";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i2 != 10 && i2 != 13 && i2 != 20 && i2 != 37) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    static /* synthetic */ Throwable l(Throwable th) {
        q(th);
        return th;
    }

    private static <K> ConcurrentMap<K, Object> m() {
        return new ConcurrentHashMap(3, 1.0f, 2);
    }

    private static <T extends Throwable> T q(T t) {
        if (t == null) {
            j(36);
            throw null;
        }
        StackTraceElement[] stackTrace = t.getStackTrace();
        int length = stackTrace.length;
        int i2 = -1;
        for (int i3 = 0; i3 < length; i3++) {
            if (!stackTrace[i3].getClassName().startsWith(f15620d)) {
                i2 = i3;
                break;
            }
        }
        List listSubList = Arrays.asList(stackTrace).subList(i2, length);
        t.setStackTrace((StackTraceElement[]) listSubList.toArray(new StackTraceElement[listSubList.size()]));
        if (t != null) {
            return t;
        }
        j(37);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.m
    public <K, V> kotlin.reflect.jvm.internal.impl.storage.a<K, V> a() {
        return new d(this, m(), null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.m
    public <T> kotlin.reflect.jvm.internal.impl.storage.h<T> b(Function0<? extends T> function0, T t) {
        if (function0 == null) {
            j(26);
            throw null;
        }
        if (t != null) {
            return new b(this, this, function0, t);
        }
        j(27);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.m
    public <T> kotlin.reflect.jvm.internal.impl.storage.h<T> c(Function0<? extends T> function0) {
        if (function0 != null) {
            return new j(this, function0);
        }
        j(23);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.m
    public <T> T d(Function0<? extends T> function0) {
        if (function0 == null) {
            j(34);
            throw null;
        }
        this.f15622a.lock();
        try {
            T tInvoke = function0.invoke();
            this.f15622a.unlock();
            return tInvoke;
        } catch (Throwable th) {
            try {
                this.b.a(th);
                throw null;
            } catch (Throwable th2) {
                this.f15622a.unlock();
                throw th2;
            }
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.m
    public <T> kotlin.reflect.jvm.internal.impl.storage.i<T> e(Function0<? extends T> function0) {
        if (function0 != null) {
            return new h(this, function0);
        }
        j(30);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.m
    public <T> kotlin.reflect.jvm.internal.impl.storage.h<T> f(Function0<? extends T> function0, Function1<? super Boolean, ? extends T> function1, Function1<? super T, v> function2) {
        if (function0 == null) {
            j(28);
            throw null;
        }
        if (function2 != null) {
            return new c(this, this, function0, function1, function2);
        }
        j(29);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.m
    public <K, V> kotlin.reflect.jvm.internal.impl.storage.g<K, V> g(Function1<? super K, ? extends V> function1) {
        if (function1 == null) {
            j(19);
            throw null;
        }
        kotlin.reflect.jvm.internal.impl.storage.g<K, V> gVarO = o(function1, m());
        if (gVarO != null) {
            return gVarO;
        }
        j(20);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.m
    public <K, V> kotlin.reflect.jvm.internal.impl.storage.b<K, V> h() {
        return new e(this, m(), null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.m
    public <K, V> kotlin.reflect.jvm.internal.impl.storage.f<K, V> i(Function1<? super K, ? extends V> function1) {
        if (function1 == null) {
            j(9);
            throw null;
        }
        kotlin.reflect.jvm.internal.impl.storage.f<K, V> fVarN = n(function1, m());
        if (fVarN != null) {
            return fVarN;
        }
        j(10);
        throw null;
    }

    public <K, V> kotlin.reflect.jvm.internal.impl.storage.f<K, V> n(Function1<? super K, ? extends V> function1, ConcurrentMap<K, Object> concurrentMap) {
        if (function1 == null) {
            j(14);
            throw null;
        }
        if (concurrentMap != null) {
            return new m(this, concurrentMap, function1);
        }
        j(15);
        throw null;
    }

    public <K, V> kotlin.reflect.jvm.internal.impl.storage.g<K, V> o(Function1<? super K, ? extends V> function1, ConcurrentMap<K, Object> concurrentMap) {
        if (function1 == null) {
            j(21);
            throw null;
        }
        if (concurrentMap != null) {
            return new l(this, concurrentMap, function1);
        }
        j(22);
        throw null;
    }

    protected <K, V> n<V> p(String str, K k2) {
        String str2;
        if (str == null) {
            j(35);
            throw null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Recursion detected ");
        sb.append(str);
        if (k2 == null) {
            str2 = "";
        } else {
            str2 = "on input: " + k2;
        }
        sb.append(str2);
        sb.append(" under ");
        sb.append(this);
        AssertionError assertionError = new AssertionError(sb.toString());
        q(assertionError);
        throw assertionError;
    }

    public String toString() {
        return getClass().getSimpleName() + "@" + Integer.toHexString(hashCode()) + " (" + this.c + ")";
    }

    private LockBasedStorageManager(String str, f fVar, kotlin.reflect.jvm.internal.impl.storage.j jVar) {
        if (str == null) {
            j(4);
            throw null;
        }
        if (fVar == null) {
            j(5);
            throw null;
        }
        if (jVar == null) {
            j(6);
            throw null;
        }
        this.f15622a = jVar;
        this.b = fVar;
        this.c = str;
    }

    public LockBasedStorageManager(String str) {
        this(str, (Runnable) null, (Function1<InterruptedException, v>) null);
    }

    public LockBasedStorageManager(String str, Runnable runnable, Function1<InterruptedException, v> function1) {
        this(str, f.f15626a, kotlin.reflect.jvm.internal.impl.storage.j.f15633a.a(runnable, function1));
    }
}
