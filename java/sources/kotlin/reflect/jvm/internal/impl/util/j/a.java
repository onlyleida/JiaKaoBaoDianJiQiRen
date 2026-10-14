package kotlin.reflect.jvm.internal.impl.util.j;

import java.util.Iterator;
import java.util.Locale;
import java.util.Objects;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class a {
    public static final String a(String str) {
        r.e(str, "<this>");
        boolean z = false;
        if (str.length() == 0) {
            return str;
        }
        char cCharAt = str.charAt(0);
        if ('a' <= cCharAt && cCharAt <= 'z') {
            z = true;
        }
        if (!z) {
            return str;
        }
        char upperCase = Character.toUpperCase(cCharAt);
        String strSubstring = str.substring(1);
        r.d(strSubstring, "(this as java.lang.String).substring(startIndex)");
        return String.valueOf(upperCase) + strSubstring;
    }

    public static final String b(String str) {
        r.e(str, "<this>");
        boolean z = false;
        if (str.length() == 0) {
            return str;
        }
        char cCharAt = str.charAt(0);
        if ('A' <= cCharAt && cCharAt <= 'Z') {
            z = true;
        }
        if (!z) {
            return str;
        }
        char lowerCase = Character.toLowerCase(cCharAt);
        String strSubstring = str.substring(1);
        r.d(strSubstring, "(this as java.lang.String).substring(startIndex)");
        return String.valueOf(lowerCase) + strSubstring;
    }

    public static final String c(String str, boolean z) {
        Integer next;
        r.e(str, "<this>");
        if ((str.length() == 0) || !d(str, 0, z)) {
            return str;
        }
        if (str.length() == 1 || !d(str, 1, z)) {
            if (z) {
                return b(str);
            }
            if (!(str.length() > 0)) {
                return str;
            }
            char lowerCase = Character.toLowerCase(str.charAt(0));
            String strSubstring = str.substring(1);
            r.d(strSubstring, "(this as java.lang.String).substring(startIndex)");
            return String.valueOf(lowerCase) + strSubstring;
        }
        Iterator<Integer> it = StringsKt__StringsKt.M(str).iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!(!d(str, next.intValue(), z)));
        Integer num = next;
        if (num == null) {
            return e(str, z);
        }
        int iIntValue = num.intValue() - 1;
        String strSubstring2 = str.substring(0, iIntValue);
        r.d(strSubstring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        String strE = e(strSubstring2, z);
        String strSubstring3 = str.substring(iIntValue);
        r.d(strSubstring3, "(this as java.lang.String).substring(startIndex)");
        return r.m(strE, strSubstring3);
    }

    private static final boolean d(String str, int i, boolean z) {
        char cCharAt = str.charAt(i);
        if (z) {
            return 'A' <= cCharAt && cCharAt <= 'Z';
        }
        return Character.isUpperCase(cCharAt);
    }

    private static final String e(String str, boolean z) {
        if (z) {
            return f(str);
        }
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = str.toLowerCase(Locale.ROOT);
        r.d(lowerCase, "(this as java.lang.Strin….toLowerCase(Locale.ROOT)");
        return lowerCase;
    }

    public static final String f(String str) {
        r.e(str, "<this>");
        StringBuilder sb = new StringBuilder(str.length());
        int length = str.length();
        int i = 0;
        while (i < length) {
            char cCharAt = str.charAt(i);
            i++;
            if ('A' <= cCharAt && cCharAt <= 'Z') {
                cCharAt = Character.toLowerCase(cCharAt);
            }
            sb.append(cCharAt);
        }
        String string = sb.toString();
        r.d(string, "builder.toString()");
        return string;
    }
}
