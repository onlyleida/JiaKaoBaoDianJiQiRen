package kotlin.reflect.jvm.internal.impl.name;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.r;
import kotlin.text.t;

/* JADX INFO: loaded from: classes6.dex */
public final class e {

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f15391a;

        static {
            int[] iArr = new int[State.values().length];
            iArr[State.BEGINNING.ordinal()] = 1;
            iArr[State.AFTER_DOT.ordinal()] = 2;
            iArr[State.MIDDLE.ordinal()] = 3;
            f15391a = iArr;
        }
    }

    public static final <V> V a(c cVar, Map<c, ? extends V> values) {
        Object next;
        r.e(cVar, "<this>");
        r.e(values, "values");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<Map.Entry<c, ? extends V>> it = values.entrySet().iterator();
        while (true) {
            boolean z = true;
            if (!it.hasNext()) {
                break;
            }
            Map.Entry<c, ? extends V> next2 = it.next();
            c key = next2.getKey();
            if (!r.a(cVar, key) && !b(cVar, key)) {
                z = false;
            }
            if (z) {
                linkedHashMap.put(next2.getKey(), next2.getValue());
            }
        }
        if (!(!linkedHashMap.isEmpty())) {
            linkedHashMap = null;
        }
        if (linkedHashMap == null) {
            return null;
        }
        Iterator it2 = linkedHashMap.entrySet().iterator();
        if (it2.hasNext()) {
            next = it2.next();
            if (it2.hasNext()) {
                int length = g((c) ((Map.Entry) next).getKey(), cVar).b().length();
                do {
                    Object next3 = it2.next();
                    int length2 = g((c) ((Map.Entry) next3).getKey(), cVar).b().length();
                    if (length > length2) {
                        next = next3;
                        length = length2;
                    }
                } while (it2.hasNext());
            }
        } else {
            next = null;
        }
        Map.Entry entry = (Map.Entry) next;
        if (entry == null) {
            return null;
        }
        return (V) entry.getValue();
    }

    public static final boolean b(c cVar, c packageName) {
        r.e(cVar, "<this>");
        r.e(packageName, "packageName");
        return r.a(f(cVar), packageName);
    }

    private static final boolean c(String str, String str2) {
        return t.B(str, str2, false, 2, null) && str.charAt(str2.length()) == '.';
    }

    public static final boolean d(c cVar, c packageName) {
        r.e(cVar, "<this>");
        r.e(packageName, "packageName");
        if (r.a(cVar, packageName) || packageName.d()) {
            return true;
        }
        String strB = cVar.b();
        r.d(strB, "this.asString()");
        String strB2 = packageName.b();
        r.d(strB2, "packageName.asString()");
        return c(strB, strB2);
    }

    public static final boolean e(String str) {
        if (str == null) {
            return false;
        }
        State state = State.BEGINNING;
        int i = 0;
        while (i < str.length()) {
            char cCharAt = str.charAt(i);
            i++;
            int i2 = a.f15391a[state.ordinal()];
            if (i2 == 1 || i2 == 2) {
                if (!Character.isJavaIdentifierPart(cCharAt)) {
                    return false;
                }
                state = State.MIDDLE;
            } else if (i2 != 3) {
                continue;
            } else if (cCharAt == '.') {
                state = State.AFTER_DOT;
            } else if (!Character.isJavaIdentifierPart(cCharAt)) {
                return false;
            }
        }
        return state != State.AFTER_DOT;
    }

    public static final c f(c cVar) {
        r.e(cVar, "<this>");
        if (cVar.d()) {
            return null;
        }
        return cVar.e();
    }

    public static final c g(c cVar, c prefix) {
        r.e(cVar, "<this>");
        r.e(prefix, "prefix");
        if (!d(cVar, prefix) || prefix.d()) {
            return cVar;
        }
        if (r.a(cVar, prefix)) {
            c ROOT = c.c;
            r.d(ROOT, "ROOT");
            return ROOT;
        }
        String strB = cVar.b();
        r.d(strB, "asString()");
        String strSubstring = strB.substring(prefix.b().length() + 1);
        r.d(strSubstring, "(this as java.lang.String).substring(startIndex)");
        return new c(strSubstring);
    }
}
