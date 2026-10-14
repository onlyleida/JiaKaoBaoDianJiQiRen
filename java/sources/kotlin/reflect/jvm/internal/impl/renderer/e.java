package kotlin.reflect.jvm.internal.impl.renderer;

import java.util.List;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.name.f;

/* JADX INFO: loaded from: classes6.dex */
public final class e {
    public static final String a(kotlin.reflect.jvm.internal.impl.name.d dVar) {
        r.e(dVar, "<this>");
        List<f> listH = dVar.h();
        r.d(listH, "pathSegments()");
        return c(listH);
    }

    public static final String b(f fVar) {
        r.e(fVar, "<this>");
        if (!d(fVar)) {
            String strB = fVar.b();
            r.d(strB, "asString()");
            return strB;
        }
        String strB2 = fVar.b();
        r.d(strB2, "asString()");
        return r.m(String.valueOf('`') + strB2, "`");
    }

    public static final String c(List<f> pathSegments) {
        r.e(pathSegments, "pathSegments");
        StringBuilder sb = new StringBuilder();
        for (f fVar : pathSegments) {
            if (sb.length() > 0) {
                sb.append(".");
            }
            sb.append(b(fVar));
        }
        String string = sb.toString();
        r.d(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    /* JADX WARN: Code duplicated, block: B:25:? A[RETURN, SYNTHETIC] */
    private static final boolean d(f fVar) {
        boolean z;
        if (fVar.h()) {
            return false;
        }
        String strB = fVar.b();
        r.d(strB, "asString()");
        if (!d.f15478a.contains(strB)) {
            for (int i = 0; i < strB.length(); i++) {
                char cCharAt = strB.charAt(i);
                if ((Character.isLetterOrDigit(cCharAt) || cCharAt == '_') ? false : true) {
                    z = true;
                    if (z) {
                        return false;
                    }
                }
            }
            z = false;
            if (z) {
                return false;
            }
        }
        return true;
    }
}
