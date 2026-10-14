package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;

/* JADX INFO: loaded from: classes6.dex */
public abstract class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f15212a = new b(null);
    private static final d b = new d(JvmPrimitiveType.BOOLEAN);
    private static final d c = new d(JvmPrimitiveType.CHAR);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final d f15213d = new d(JvmPrimitiveType.BYTE);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final d f15214e = new d(JvmPrimitiveType.SHORT);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final d f15215f = new d(JvmPrimitiveType.INT);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final d f15216g = new d(JvmPrimitiveType.FLOAT);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final d f15217h = new d(JvmPrimitiveType.LONG);
    private static final d i = new d(JvmPrimitiveType.DOUBLE);

    public static final class a extends h {
        private final h j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(h elementType) {
            super(null);
            kotlin.jvm.internal.r.e(elementType, "elementType");
            this.j = elementType;
        }

        public final h i() {
            return this.j;
        }
    }

    public static final class b {
        private b() {
        }

        public /* synthetic */ b(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final d a() {
            return h.b;
        }

        public final d b() {
            return h.f15213d;
        }

        public final d c() {
            return h.c;
        }

        public final d d() {
            return h.i;
        }

        public final d e() {
            return h.f15216g;
        }

        public final d f() {
            return h.f15215f;
        }

        public final d g() {
            return h.f15217h;
        }

        public final d h() {
            return h.f15214e;
        }
    }

    public static final class c extends h {
        private final String j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(String internalName) {
            super(null);
            kotlin.jvm.internal.r.e(internalName, "internalName");
            this.j = internalName;
        }

        public final String i() {
            return this.j;
        }
    }

    public static final class d extends h {
        private final JvmPrimitiveType j;

        public d(JvmPrimitiveType jvmPrimitiveType) {
            super(null);
            this.j = jvmPrimitiveType;
        }

        public final JvmPrimitiveType i() {
            return this.j;
        }
    }

    private h() {
    }

    public /* synthetic */ h(kotlin.jvm.internal.o oVar) {
        this();
    }

    public String toString() {
        return j.f15232a.d(this);
    }
}
