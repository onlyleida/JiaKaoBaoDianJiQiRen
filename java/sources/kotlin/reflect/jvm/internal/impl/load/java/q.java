package kotlin.reflect.jvm.internal.impl.load.java;

/* JADX INFO: loaded from: classes6.dex */
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final q f15136a = new q();
    public static final kotlin.reflect.jvm.internal.impl.name.c b = new kotlin.reflect.jvm.internal.impl.name.c("kotlin.jvm.JvmField");

    static {
        kotlin.jvm.internal.r.d(kotlin.reflect.jvm.internal.impl.name.b.m(new kotlin.reflect.jvm.internal.impl.name.c("kotlin.reflect.jvm.internal.ReflectionFactoryImpl")), "topLevel(FqName(\"kotlin.….ReflectionFactoryImpl\"))");
    }

    private q() {
    }

    public static final String a(String propertyName) {
        kotlin.jvm.internal.r.e(propertyName, "propertyName");
        return e(propertyName) ? propertyName : kotlin.jvm.internal.r.m("get", kotlin.reflect.jvm.internal.impl.util.j.a.a(propertyName));
    }

    public static final boolean b(String name) {
        kotlin.jvm.internal.r.e(name, "name");
        return kotlin.text.t.B(name, "get", false, 2, null) || kotlin.text.t.B(name, "is", false, 2, null);
    }

    public static final boolean c(String name) {
        kotlin.jvm.internal.r.e(name, "name");
        return kotlin.text.t.B(name, "set", false, 2, null);
    }

    public static final String d(String propertyName) {
        String strA;
        kotlin.jvm.internal.r.e(propertyName, "propertyName");
        if (e(propertyName)) {
            strA = propertyName.substring(2);
            kotlin.jvm.internal.r.d(strA, "(this as java.lang.String).substring(startIndex)");
        } else {
            strA = kotlin.reflect.jvm.internal.impl.util.j.a.a(propertyName);
        }
        return kotlin.jvm.internal.r.m("set", strA);
    }

    public static final boolean e(String name) {
        kotlin.jvm.internal.r.e(name, "name");
        if (!kotlin.text.t.B(name, "is", false, 2, null) || name.length() == 2) {
            return false;
        }
        char cCharAt = name.charAt(2);
        return kotlin.jvm.internal.r.g(97, cCharAt) > 0 || kotlin.jvm.internal.r.g(cCharAt, 122) > 0;
    }
}
