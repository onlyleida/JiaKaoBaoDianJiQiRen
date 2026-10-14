package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

/* JADX INFO: loaded from: classes6.dex */
public interface h {

    public static final class a implements h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f15592a = new a();

        private a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.h
        public boolean a() {
            return b.b(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.h
        public boolean b() {
            return b.f(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.h
        public boolean c() {
            return b.g(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.h
        public boolean d() {
            return b.a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.h
        public boolean e() {
            return b.e(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.h
        public boolean f() {
            return b.d(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.h
        public boolean g() {
            return b.c(this);
        }
    }

    public static final class b {
        public static boolean a(h hVar) {
            kotlin.jvm.internal.r.e(hVar, "this");
            return false;
        }

        public static boolean b(h hVar) {
            kotlin.jvm.internal.r.e(hVar, "this");
            return false;
        }

        public static boolean c(h hVar) {
            kotlin.jvm.internal.r.e(hVar, "this");
            return false;
        }

        public static boolean d(h hVar) {
            kotlin.jvm.internal.r.e(hVar, "this");
            return false;
        }

        public static boolean e(h hVar) {
            kotlin.jvm.internal.r.e(hVar, "this");
            return false;
        }

        public static boolean f(h hVar) {
            kotlin.jvm.internal.r.e(hVar, "this");
            return false;
        }

        public static boolean g(h hVar) {
            kotlin.jvm.internal.r.e(hVar, "this");
            return true;
        }
    }

    boolean a();

    boolean b();

    boolean c();

    boolean d();

    boolean e();

    boolean f();

    boolean g();
}
