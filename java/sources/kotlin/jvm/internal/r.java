package kotlin.jvm.internal;

import java.util.Arrays;
import kotlin.KotlinNullPointerException;
import kotlin.UninitializedPropertyAccessException;

/* JADX INFO: loaded from: classes6.dex */
public class r {

    public static class a {
        private a() {
        }
    }

    private r() {
    }

    public static boolean a(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    public static void b(Object obj, String str) {
        if (obj != null) {
            return;
        }
        IllegalStateException illegalStateException = new IllegalStateException(str + " must not be null");
        k(illegalStateException);
        throw illegalStateException;
    }

    public static void c(Object obj) {
        if (obj != null) {
            return;
        }
        n();
        throw null;
    }

    public static void d(Object obj, String str) {
        if (obj != null) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException(str + " must not be null");
        k(nullPointerException);
        throw nullPointerException;
    }

    public static void e(Object obj, String str) {
        if (obj != null) {
            return;
        }
        q(str);
        throw null;
    }

    public static void f(Object obj, String str) {
        if (obj != null) {
            return;
        }
        p(str);
        throw null;
    }

    public static int g(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        return i == i2 ? 0 : 1;
    }

    private static String h(String str) {
        StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[4];
        return "Parameter specified as non-null is null: method " + stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName() + ", parameter " + str;
    }

    public static void i() {
        r();
        throw null;
    }

    public static void j(int i, String str) {
        r();
        throw null;
    }

    private static <T extends Throwable> T k(T t) {
        l(t, r.class.getName());
        return t;
    }

    static <T extends Throwable> T l(T t, String str) {
        StackTraceElement[] stackTrace = t.getStackTrace();
        int length = stackTrace.length;
        int i = -1;
        for (int i2 = 0; i2 < length; i2++) {
            if (str.equals(stackTrace[i2].getClassName())) {
                i = i2;
            }
        }
        t.setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, i + 1, length));
        return t;
    }

    public static String m(String str, Object obj) {
        return str + obj;
    }

    public static void n() {
        NullPointerException nullPointerException = new NullPointerException();
        k(nullPointerException);
        throw nullPointerException;
    }

    public static void o() {
        KotlinNullPointerException kotlinNullPointerException = new KotlinNullPointerException();
        k(kotlinNullPointerException);
        throw kotlinNullPointerException;
    }

    private static void p(String str) {
        IllegalArgumentException illegalArgumentException = new IllegalArgumentException(h(str));
        k(illegalArgumentException);
        throw illegalArgumentException;
    }

    private static void q(String str) {
        NullPointerException nullPointerException = new NullPointerException(h(str));
        k(nullPointerException);
        throw nullPointerException;
    }

    public static void r() {
        s("This function has a reified type parameter and thus can only be inlined at compilation time, not called directly.");
        throw null;
    }

    public static void s(String str) {
        throw new UnsupportedOperationException(str);
    }

    public static void t(String str) {
        UninitializedPropertyAccessException uninitializedPropertyAccessException = new UninitializedPropertyAccessException(str);
        k(uninitializedPropertyAccessException);
        throw uninitializedPropertyAccessException;
    }

    public static void u(String str) {
        t("lateinit property " + str + " has not been initialized");
        throw null;
    }
}
