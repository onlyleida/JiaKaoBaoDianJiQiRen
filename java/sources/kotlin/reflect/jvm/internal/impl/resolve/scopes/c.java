package kotlin.reflect.jvm.internal.impl.resolve.scopes;

/* JADX INFO: loaded from: classes6.dex */
public abstract class c {

    public static final class a extends c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f15524a = new a();
        private static final int b;

        static {
            d.a aVar = d.c;
            b = (~(aVar.i() | aVar.d())) & aVar.b();
        }

        private a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.c
        public int a() {
            return b;
        }
    }

    public static final class b extends c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f15525a = new b();

        private b() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.c
        public int a() {
            return 0;
        }
    }

    public abstract int a();

    public String toString() {
        return getClass().getSimpleName();
    }
}
