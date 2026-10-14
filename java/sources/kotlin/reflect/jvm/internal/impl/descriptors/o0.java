package kotlin.reflect.jvm.internal.impl.descriptors;

/* JADX INFO: loaded from: classes6.dex */
public interface o0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final o0 f14970a = new a();

    static class a implements o0 {
        a() {
        }

        private static /* synthetic */ void d(int i) {
            throw new IllegalStateException(String.format("@NotNull method %s.%s must not return null", "kotlin/reflect/jvm/internal/impl/descriptors/SourceElement$1", "getContainingFile"));
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.o0
        public p0 b() {
            p0 p0Var = p0.f14972a;
            if (p0Var != null) {
                return p0Var;
            }
            d(0);
            throw null;
        }

        public String toString() {
            return "NO_SOURCE";
        }
    }

    p0 b();
}
