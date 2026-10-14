package kotlin.reflect.jvm.internal.impl.load.java.lazy;

/* JADX INFO: loaded from: classes6.dex */
public interface c {

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ a f15076a = new a();

        private a() {
        }
    }

    public static final class b implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f15077a = new b();

        private b() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.c
        public boolean a() {
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.c
        public boolean b() {
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.c
        public boolean c() {
            return false;
        }
    }

    static {
        a aVar = a.f15076a;
    }

    boolean a();

    boolean b();

    boolean c();
}
