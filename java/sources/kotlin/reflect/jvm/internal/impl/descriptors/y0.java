package kotlin.reflect.jvm.internal.impl.descriptors;

import com.mobile.auth.gatewayauth.Constant;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class y0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final y0 f15001a = new y0();
    private static final Map<z0, Integer> b;

    public static final class a extends z0 {
        public static final a c = new a();

        private a() {
            super("inherited", false);
        }
    }

    public static final class b extends z0 {
        public static final b c = new b();

        private b() {
            super("internal", false);
        }
    }

    public static final class c extends z0 {
        public static final c c = new c();

        private c() {
            super("invisible_fake", false);
        }
    }

    public static final class d extends z0 {
        public static final d c = new d();

        private d() {
            super("local", false);
        }
    }

    public static final class e extends z0 {
        public static final e c = new e();

        private e() {
            super("private", false);
        }
    }

    public static final class f extends z0 {
        public static final f c = new f();

        private f() {
            super("private_to_this", false);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.z0
        public String b() {
            return "private/*private to this*/";
        }
    }

    public static final class g extends z0 {
        public static final g c = new g();

        private g() {
            super("protected", true);
        }
    }

    public static final class h extends z0 {
        public static final h c = new h();

        private h() {
            super("public", true);
        }
    }

    public static final class i extends z0 {
        public static final i c = new i();

        private i() {
            super(Constant.VENDOR_UNKNOWN, false);
        }
    }

    static {
        Map mapC = kotlin.collections.n0.c();
        mapC.put(f.c, 0);
        mapC.put(e.c, 0);
        mapC.put(b.c, 1);
        mapC.put(g.c, 1);
        mapC.put(h.c, 2);
        b = kotlin.collections.n0.b(mapC);
    }

    private y0() {
    }

    public final Integer a(z0 first, z0 second) {
        kotlin.jvm.internal.r.e(first, "first");
        kotlin.jvm.internal.r.e(second, "second");
        if (first == second) {
            return 0;
        }
        Map<z0, Integer> map = b;
        Integer num = map.get(first);
        Integer num2 = map.get(second);
        if (num == null || num2 == null || kotlin.jvm.internal.r.a(num, num2)) {
            return null;
        }
        return Integer.valueOf(num.intValue() - num2.intValue());
    }

    public final boolean b(z0 visibility) {
        kotlin.jvm.internal.r.e(visibility, "visibility");
        return visibility == e.c || visibility == f.c;
    }
}
