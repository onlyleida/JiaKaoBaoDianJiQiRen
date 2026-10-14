package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.List;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class u {
    public static final List<kotlin.reflect.jvm.internal.impl.name.f> a(kotlin.reflect.jvm.internal.impl.name.f name) {
        kotlin.jvm.internal.r.e(name, "name");
        String strB = name.b();
        kotlin.jvm.internal.r.d(strB, "name.asString()");
        if (q.b(strB)) {
            return kotlin.collections.u.n(b(name));
        }
        return q.c(strB) ? f(name) : c.f15028a.b(name);
    }

    public static final kotlin.reflect.jvm.internal.impl.name.f b(kotlin.reflect.jvm.internal.impl.name.f methodName) {
        kotlin.jvm.internal.r.e(methodName, "methodName");
        kotlin.reflect.jvm.internal.impl.name.f fVarE = e(methodName, "get", false, null, 12, null);
        return fVarE == null ? e(methodName, "is", false, null, 8, null) : fVarE;
    }

    public static final kotlin.reflect.jvm.internal.impl.name.f c(kotlin.reflect.jvm.internal.impl.name.f methodName, boolean z) {
        kotlin.jvm.internal.r.e(methodName, "methodName");
        return e(methodName, "set", false, z ? "is" : null, 4, null);
    }

    private static final kotlin.reflect.jvm.internal.impl.name.f d(kotlin.reflect.jvm.internal.impl.name.f fVar, String str, boolean z, String str2) {
        if (fVar.h()) {
            return null;
        }
        String strD = fVar.d();
        kotlin.jvm.internal.r.d(strD, "methodName.identifier");
        boolean z2 = false;
        if (!kotlin.text.t.B(strD, str, false, 2, null) || strD.length() == str.length()) {
            return null;
        }
        char cCharAt = strD.charAt(str.length());
        if ('a' <= cCharAt && cCharAt <= 'z') {
            z2 = true;
        }
        if (z2) {
            return null;
        }
        if (str2 != null) {
            return kotlin.reflect.jvm.internal.impl.name.f.g(kotlin.jvm.internal.r.m(str2, StringsKt__StringsKt.i0(strD, str)));
        }
        if (!z) {
            return fVar;
        }
        String strC = kotlin.reflect.jvm.internal.impl.util.j.a.c(StringsKt__StringsKt.i0(strD, str), true);
        if (kotlin.reflect.jvm.internal.impl.name.f.k(strC)) {
            return kotlin.reflect.jvm.internal.impl.name.f.g(strC);
        }
        return null;
    }

    static /* synthetic */ kotlin.reflect.jvm.internal.impl.name.f e(kotlin.reflect.jvm.internal.impl.name.f fVar, String str, boolean z, String str2, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        if ((i & 8) != 0) {
            str2 = null;
        }
        return d(fVar, str, z, str2);
    }

    public static final List<kotlin.reflect.jvm.internal.impl.name.f> f(kotlin.reflect.jvm.internal.impl.name.f methodName) {
        kotlin.jvm.internal.r.e(methodName, "methodName");
        return kotlin.collections.u.o(c(methodName, false), c(methodName, true));
    }
}
